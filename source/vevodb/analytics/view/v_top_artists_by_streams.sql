CREATE VIEW vevodb.analytics.v_top_artists_by_streams AS
 SELECT a.artist_name, a.genre, a.country, sum(ds.stream_count) AS total_streams, sum(ds.revenue_usd) AS total_revenue, count(DISTINCT ds.stream_date) AS active_days
   FROM music_catalog.artists a
   JOIN music_catalog.videos v ON a.artist_id = v.artist_id
   JOIN analytics.daily_streams ds ON v.video_id = ds.video_id
  GROUP BY a.artist_name, a.genre, a.country;

