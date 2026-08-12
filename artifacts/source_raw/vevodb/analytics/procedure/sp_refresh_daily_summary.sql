CREATE OR REPLACE PROCEDURE vevodb.analytics.sp_refresh_daily_summary(target_date date)
 LANGUAGE plpgsql
AS $$
BEGIN
  REFRESH MATERIALIZED VIEW analytics.mv_daily_revenue_summary;
END;
$$

