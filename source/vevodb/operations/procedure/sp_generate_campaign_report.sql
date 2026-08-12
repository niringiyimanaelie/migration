CREATE OR REPLACE PROCEDURE vevodb.operations.sp_generate_campaign_report(p_advertiser character varying(200))
 LANGUAGE plpgsql
AS $$
DECLARE
  v_total_spend DECIMAL(12,2);
  v_total_impressions BIGINT;
  v_campaign_count INT;
BEGIN
  SELECT COUNT(*), SUM(budget_usd)
  INTO v_campaign_count, v_total_spend
  FROM operations.ad_campaigns
  WHERE advertiser = p_advertiser;

  SELECT SUM(impressions)
  INTO v_total_impressions
  FROM operations.ad_placements p
  JOIN operations.ad_campaigns c ON p.campaign_id = c.campaign_id
  WHERE c.advertiser = p_advertiser;

  RAISE INFO 'Advertiser: %, Campaigns: %, Total Budget: %, Total Impressions: %',
    p_advertiser, v_campaign_count, v_total_spend, v_total_impressions;
END;
$$

