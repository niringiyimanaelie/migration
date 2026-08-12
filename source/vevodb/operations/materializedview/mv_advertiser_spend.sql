
CREATE MATERIALIZED VIEW vevodb.operations.mv_advertiser_spend AS
SELECT c.advertiser,
       SUM(p.impressions) as total_impressions,
       SUM(p.clicks) as total_clicks,
       SUM(p.cost_usd) as total_spend,
       ROUND(SUM(p.clicks)::FLOAT / NULLIF(SUM(p.impressions), 0) * 100, 3) as overall_ctr
FROM operations.ad_campaigns c
JOIN operations.ad_placements p ON c.campaign_id = p.campaign_id
GROUP BY c.advertiser;
