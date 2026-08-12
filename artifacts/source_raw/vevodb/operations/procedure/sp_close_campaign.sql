CREATE OR REPLACE PROCEDURE vevodb.operations.sp_close_campaign(p_campaign_id integer)
 LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE operations.ad_campaigns
  SET status = 'completed', end_date = CURRENT_DATE
  WHERE campaign_id = p_campaign_id AND status = 'active';
END;
$$

