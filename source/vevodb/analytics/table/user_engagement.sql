CREATE TABLE IF NOT EXISTS vevodb.analytics.user_engagement
(
engagement_id BIGINT NOT NULL DEFAULT "identity"(107800, 0, '1,1'::text) ENCODE az64
,video_id INTEGER   ENCODE az64
,engagement_date DATE   ENCODE RAW
,likes BIGINT  DEFAULT 0 ENCODE az64
,dislikes BIGINT  DEFAULT 0 ENCODE az64
,comments BIGINT  DEFAULT 0 ENCODE az64
,shares BIGINT  DEFAULT 0 ENCODE az64
,saves BIGINT  DEFAULT 0 ENCODE az64
	,PRIMARY KEY (engagement_id)
)
;
