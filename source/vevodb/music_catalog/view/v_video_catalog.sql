CREATE VIEW vevodb.music_catalog.v_video_catalog AS
 SELECT v.video_id, v.title, a.artist_name, a.genre, v.release_date, v.duration_seconds, v.total_views, v.is_explicit, v.video_quality, ch.channel_name, ch.subscriber_count
   FROM music_catalog.videos v
   JOIN music_catalog.artists a ON v.artist_id = a.artist_id
   LEFT JOIN music_catalog.channels ch ON a.artist_id = ch.artist_id;

