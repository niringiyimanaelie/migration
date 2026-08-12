CREATE TABLE IF NOT EXISTS vevodb.analytics.user_engagement
(
engagement_id BIGINT NOT NULL IDENTITY(1,1) ORDER
,video_id INTEGER
,engagement_date DATE
,likes BIGINT  DEFAULT 0
,dislikes BIGINT  DEFAULT 0
,comments BIGINT  DEFAULT 0
,shares BIGINT  DEFAULT 0
,saves BIGINT  DEFAULT 0
,PRIMARY KEY (engagement_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;