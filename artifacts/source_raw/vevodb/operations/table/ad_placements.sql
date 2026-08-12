CREATE TABLE IF NOT EXISTS vevodb.operations.ad_placements
(
placement_id BIGINT NOT NULL DEFAULT "identity"(107817, 0, '1,1'::text) ENCODE az64
,campaign_id INTEGER   ENCODE az64
,video_id INTEGER   ENCODE az64
,placement_date DATE   ENCODE RAW
,impressions BIGINT   ENCODE az64
,clicks BIGINT   ENCODE az64
,cost_usd NUMERIC(10,2)   ENCODE az64
,ctr NUMERIC(5,4)   ENCODE az64
	,PRIMARY KEY (placement_id)
)
;
