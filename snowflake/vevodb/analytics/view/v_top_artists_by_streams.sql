CREATE VIEW vevodb.analytics.v_top_artists_by_streams
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
AS
 SELECT a.artist_name, a.genre, a.country,
 SUM(ds.stream_count) AS total_streams,
 SUM(ds.revenue_usd) AS total_revenue,
 COUNT(DISTINCT ds.stream_date) AS active_days
   FROM
 music_catalog.artists a
   JOIN
  music_catalog.videos v ON a.artist_id = v.artist_id
   JOIN
  analytics.daily_streams ds ON v.video_id = ds.video_id
  GROUP BY a.artist_name, a.genre, a.country;