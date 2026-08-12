CREATE OR REPLACE PROCEDURE vevodb.operations.sp_generate_campaign_report (p_advertiser VARCHAR(200))
RETURNS VARCHAR
 LANGUAGE SQL
 COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
 EXECUTE AS CALLER
AS $$
   DECLARE
    v_total_spend DECIMAL(12,2);
    v_total_impressions BIGINT;
    v_campaign_count INT;
BEGIN
  SELECT
     COUNT(*),
     SUM(budget_usd)
  INTO
     : v_campaign_count,
     : v_total_spend
  FROM
     operations.ad_campaigns
  WHERE advertiser = : p_advertiser;

  SELECT
     SUM(impressions)
  INTO
     : v_total_impressions
  FROM
     operations.ad_placements p
  JOIN
      operations.ad_campaigns c ON p.campaign_id = c.campaign_id
  WHERE c.advertiser = : p_advertiser;
    CALL PUBLIC.RAISE_MESSAGE_UDP('INFO', 'Advertiser: %, Campaigns: %, Total Budget: %, Total Impressions: %', ARRAY_CONSTRUCT(:
    p_advertiser, :v_campaign_count, :v_total_spend, :v_total_impressions));
END;
$$;