/* ============================================================================
 * psql script that sets up the JDBC DatumHistorian in a Postgres server: the
 * plugin README "Postgres setup" steps that run in the database. Run it as a
 * superuser, for example:
 *
 *   sudo -u postgres psql -X -f historian-setup.sql
 *   sudo -u postgres psql -X -f historian-setup.sql -v tablespace=history
 *
 * It is safe to run again. A schema that already exists is left as it is, and
 * so is an aggregate job that is already scheduled.
 *
 * Variables (psql -v name=value), all optional:
 *
 *   historian_db     the database for the history schemas (default solarnode)
 *   historian_owner  the role that owns the history schemas, the role SolarNode
 *                    connects with (default solarnode)
 *   tablespace       an existing tablespace for the history tables and indexes,
 *                    including the partitions created later (default: the
 *                    database's)
 *
 * Needs pg_cron in shared_preload_libraries, and the aggs_for_vecs extension
 * installed. The postgres-init-solaruhist.sql and
 * postgres-init-agg-solaruhist.sql scripts are made from the solarhist ones
 * when the package is built, as psql variables can't rename the schema inside
 * the function bodies.
 * ============================================================================
 */

\set ON_ERROR_STOP on

\if :{?historian_db}
\else
	\set historian_db solarnode
\endif
\if :{?historian_owner}
\else
	\set historian_owner solarnode
\endif

-- stop before changing anything if pg_cron is not loaded (cron.database_name is no
-- test of that, as a configuration file can set it without the library)
SELECT 'pg_cron' = ANY (regexp_split_to_array(current_setting('shared_preload_libraries'), '\s*,\s*')) AS cron_loaded
	, COALESCE(current_setting('cron.database_name', TRUE), 'postgres') AS cron_db
\gset
\if :cron_loaded
\else
DO $$ BEGIN
	RAISE EXCEPTION 'pg_cron is not loaded.'
	USING HINT = 'Add pg_cron to shared_preload_libraries and restart Postgres.';
END $$;
\endif

\connect :historian_db
SET client_min_messages = warning;

\if :{?tablespace}
-- the database's own tablespace is the default anyway, and Postgres refuses to name it
-- for a partitioned table
SELECT :'tablespace' = (SELECT t.spcname FROM pg_database d JOIN pg_tablespace t ON t.oid = d.dattablespace
	WHERE d.datname = current_database()) AS tablespace_is_default \gset
\if :tablespace_is_default
	\unset tablespace
\else
	-- the owner creates the datum partitions as it stores datum (this also fails early
	-- if there is no such tablespace)
	GRANT CREATE ON TABLESPACE :"tablespace" TO :"historian_owner";
\endif
\endif

CREATE EXTENSION IF NOT EXISTS aggs_for_vecs;
ALTER DATABASE :"historian_db" SET jit = off;

\set schema solarhist
\set init_sql postgres-init.sql
\set agg_sql postgres-init-agg.sql
\ir historian-schema.sql

\set schema solaruhist
\set init_sql postgres-init-solaruhist.sql
\set agg_sql postgres-init-agg-solaruhist.sql
\ir historian-schema.sql

-- pg_cron keeps all its jobs in its cron.database_name database
\connect :cron_db
SET client_min_messages = warning;
CREATE EXTENSION IF NOT EXISTS pg_cron;

\set historian_schema solarhist
\ir historian-cron.sql
\set historian_schema solaruhist
\ir historian-cron.sql

-- delete job run details older than 7 days, daily; scheduling a job name again
-- updates that job
SELECT cron.schedule('cron-job-run-details-cleanup', '30 3 * * *',
	$$DELETE FROM cron.job_run_details WHERE end_time < now() - INTERVAL 'P7D'$$) AS cleanup_jobid \gset
