CREATE VIEW vevodb.operations.v_campaign_performance AS
 SELECT c.campaign_name, c.advertiser, c.status, c.budget_usd, sum(p.impressions) AS total_impressions, sum(p.clicks) AS total_clicks, sum(p.cost_usd) AS total_spent, round(sum(p.cost_usd) / 
        CASE
            WHEN c.budget_usd = 0::numeric(12,2) THEN NULL::numeric
            ELSE c.budget_usd
        END * 100::numeric, 2) AS budget_utilization_pct, round(avg(p.ctr) * 100::numeric, 2) AS avg_ctr_pct
   FROM operations.ad_campaigns c
   LEFT JOIN operations.ad_placements p ON c.campaign_id = p.campaign_id
  GROUP BY c.campaign_name, c.advertiser, c.status, c.budget_usd;

