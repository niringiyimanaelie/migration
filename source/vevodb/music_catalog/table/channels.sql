CREATE TABLE IF NOT EXISTS vevodb.music_catalog.channels
(
channel_id INTEGER NOT NULL DEFAULT "identity"(107783, 0, '1,1'::text) ENCODE az64
,artist_id INTEGER   ENCODE az64
,channel_name VARCHAR(300)   ENCODE lzo
,platform VARCHAR(50)  DEFAULT 'YouTube'::character varying ENCODE lzo
,subscriber_count BIGINT   ENCODE az64
,verified BOOLEAN  DEFAULT false ENCODE RAW
,created_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
	,PRIMARY KEY (channel_id)
)
;
