CREATE TABLE IF NOT EXISTS vevodb.operations.content_moderation
(
moderation_id INTEGER NOT NULL DEFAULT "identity"(107826, 0, '1,1'::text) ENCODE az64
,video_id INTEGER   ENCODE az64
,flag_date TIMESTAMP WITHOUT TIME ZONE   ENCODE az64
,flag_reason VARCHAR(200)   ENCODE lzo
,severity VARCHAR(20)   ENCODE lzo
,reviewer VARCHAR(100)   ENCODE lzo
,resolution VARCHAR(50)   ENCODE lzo
,resolved_at TIMESTAMP WITHOUT TIME ZONE   ENCODE az64
	,PRIMARY KEY (moderation_id)
)
;
