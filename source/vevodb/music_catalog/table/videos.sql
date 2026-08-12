CREATE TABLE IF NOT EXISTS vevodb.music_catalog.videos
(
video_id INTEGER NOT NULL DEFAULT "identity"(107770, 0, '1,1'::text) ENCODE az64
,artist_id INTEGER   ENCODE az64
,title VARCHAR(500) NOT NULL  ENCODE lzo
,release_date DATE   ENCODE az64
,duration_seconds INTEGER   ENCODE az64
,genre VARCHAR(100)   ENCODE lzo
,is_explicit BOOLEAN  DEFAULT false ENCODE RAW
,video_quality VARCHAR(10)  DEFAULT '1080p'::character varying ENCODE lzo
,total_views BIGINT  DEFAULT 0 ENCODE az64
,created_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
	,PRIMARY KEY (video_id)
)
;
