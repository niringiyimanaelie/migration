CREATE OR REPLACE PROCEDURE vevodb.analytics.sp_refresh_daily_summary (target_date date)
RETURNS VARCHAR
 LANGUAGE SQL
 COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
 EXECUTE AS CALLER
AS $$
BEGIN
  REFRESH MATERIALIZED VIEW analytics.mv_daily_revenue_summary !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'RefreshMaterializedView' NODE ***/!!!;
END;
$$;