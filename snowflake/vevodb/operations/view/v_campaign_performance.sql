CREATE VIEW vevodb.operations.v_campaign_performance
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
AS
 SELECT c.campaign_name, c.advertiser, c.status, c.budget_usd,
 SUM(p.impressions) AS total_impressions,
 SUM(p.clicks) AS total_clicks,
 SUM(p.cost_usd) AS total_spent,
 ROUND(SUM(p.cost_usd) /
        CASE
            WHEN c.budget_usd = 0::numeric(12,2) THEN NULL::numeric
            ELSE c.budget_usd
        END * 100::numeric, 2) AS budget_utilization_pct,
 ROUND(AVG(p.ctr) * 100::numeric, 2) AS avg_ctr_pct
   FROM
 operations.ad_campaigns c
   LEFT JOIN
            operations.ad_placements p ON c.campaign_id = p.campaign_id
  GROUP BY c.campaign_name, c.advertiser, c.status, c.budget_usd;