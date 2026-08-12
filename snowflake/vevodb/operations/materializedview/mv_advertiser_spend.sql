CREATE DYNAMIC TABLE vevodb.operations.mv_advertiser_spend
--** SSC-FDM-0031 - DYNAMIC TABLE REQUIRED PARAMETERS SET BY DEFAULT **
TARGET_LAG='1 day'
WAREHOUSE=UPDATE_DUMMY_WAREHOUSE
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
AS
       SELECT c.advertiser,
              SUM(p.impressions) as total_impressions,
              SUM(p.clicks) as total_clicks,
              SUM(p.cost_usd) as total_spend,
              ROUND(SUM(p.clicks)::FLOAT / NULLIF(SUM(p.impressions), 0) * 100, 3) as overall_ctr
       FROM
              operations.ad_campaigns c
       JOIN
                     operations.ad_placements p ON c.campaign_id = p.campaign_id
       GROUP BY c.advertiser;