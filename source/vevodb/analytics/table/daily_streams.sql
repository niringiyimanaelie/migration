CREATE TABLE IF NOT EXISTS vevodb.analytics.daily_streams
(
stream_id BIGINT NOT NULL DEFAULT "identity"(107795, 0, '1,1'::text) ENCODE az64
,video_id INTEGER   ENCODE az64
,stream_date DATE NOT NULL  ENCODE RAW
,country VARCHAR(50)   ENCODE lzo
,device_type VARCHAR(30)   ENCODE lzo
,stream_count BIGINT   ENCODE az64
,unique_viewers BIGINT   ENCODE az64
,avg_watch_time_seconds INTEGER   ENCODE az64
,revenue_usd NUMERIC(12,2)   ENCODE az64
	,PRIMARY KEY (stream_id)
)
;
