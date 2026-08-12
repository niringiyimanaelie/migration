CREATE DYNAMIC TABLE vevodb.analytics.mv_daily_revenue_summary
--** SSC-FDM-0031 - DYNAMIC TABLE REQUIRED PARAMETERS SET BY DEFAULT **
TARGET_LAG='1 day'
WAREHOUSE=UPDATE_DUMMY_WAREHOUSE
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
AS
       SELECT stream_date,
              country,
              SUM(stream_count) as total_streams,
              SUM(unique_viewers) as total_unique_viewers,
              SUM(revenue_usd) as total_revenue,
              AVG(avg_watch_time_seconds) as avg_watch_time
       FROM
              analytics.daily_streams
       GROUP BY stream_date, country;