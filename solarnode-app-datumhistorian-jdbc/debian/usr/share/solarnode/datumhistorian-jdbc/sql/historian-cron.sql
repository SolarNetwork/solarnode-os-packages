/* Included by historian-setup.sql, with :historian_db and :historian_schema set,
 * in the cron.database_name database. Schedules the schema's aggregate job with
 * postgres-init-agg-cron.sql, unless it is already scheduled. */

SELECT EXISTS (SELECT FROM cron.job WHERE jobname = 'solarnode-agg-' || :'historian_schema') AS job_exists \gset
\if :job_exists
	\echo 'Aggregate job for' :historian_schema 'exists: left as it is.'
\else
	\o /dev/null
	\ir postgres-init-agg-cron.sql
	\o
	\echo 'Aggregate job for' :historian_schema 'scheduled.'
\endif
