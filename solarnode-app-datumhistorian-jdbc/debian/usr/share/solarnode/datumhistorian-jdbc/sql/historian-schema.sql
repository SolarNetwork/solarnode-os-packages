/* Included by historian-setup.sql, with :schema, :init_sql and :agg_sql set.
 * Creates the schema from the init and agg scripts in one transaction, as the
 * owner role, unless the schema already exists. */

SELECT EXISTS (SELECT FROM pg_namespace WHERE nspname = :'schema') AS schema_exists \gset
\if :schema_exists
	\echo 'Schema' :schema 'exists: left as it is.'
\else
	\echo 'Creating schema' :schema
	BEGIN;
	SET LOCAL client_min_messages = warning;
	SET LOCAL ROLE :"historian_owner";
	\if :{?tablespace}
	SET LOCAL default_tablespace = :'tablespace';
	\endif
	\ir :init_sql
	\ir :agg_sql
	COMMIT;
\endif
