CREATE TABLE IF NOT EXISTS vevodb.music_catalog.videos
(
video_id INTEGER NOT NULL IDENTITY(1,1) ORDER
,artist_id INTEGER
,title VARCHAR(500) NOT NULL
,release_date DATE
,duration_seconds INTEGER
,genre VARCHAR(100)
,is_explicit BOOLEAN  DEFAULT false
,video_quality VARCHAR(10)  DEFAULT '1080p':: VARCHAR
,total_views BIGINT  DEFAULT 0
,created_at TIMESTAMP_NTZ DEFAULT GETDATE()
,PRIMARY KEY (video_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;