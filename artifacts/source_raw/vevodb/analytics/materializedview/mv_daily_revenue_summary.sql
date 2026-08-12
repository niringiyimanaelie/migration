
CREATE MATERIALIZED VIEW vevodb.analytics.mv_daily_revenue_summary AS
SELECT stream_date,
       country,
       SUM(stream_count) as total_streams,
       SUM(unique_viewers) as total_unique_viewers,
       SUM(revenue_usd) as total_revenue,
       AVG(avg_watch_time_seconds) as avg_watch_time
FROM analytics.daily_streams
GROUP BY stream_date, country;
