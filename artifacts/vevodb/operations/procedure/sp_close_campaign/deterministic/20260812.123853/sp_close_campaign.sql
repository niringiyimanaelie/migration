CREATE OR REPLACE PROCEDURE vevodb.operations.sp_close_campaign (p_campaign_id integer)
RETURNS VARCHAR
 LANGUAGE SQL
 COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
 EXECUTE AS CALLER
AS $$
BEGIN
  UPDATE operations.ad_campaigns
  SET status = 'completed', end_date = CURRENT_DATE()
  WHERE campaign_id = : p_campaign_id AND status = 'active';
END;
$$;