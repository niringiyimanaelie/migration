CREATE TABLE IF NOT EXISTS vevodb.music_catalog.channels
(
channel_id INTEGER NOT NULL IDENTITY(1,1) ORDER
,artist_id INTEGER
,channel_name VARCHAR(300)
,platform VARCHAR(50)  DEFAULT 'YouTube':: VARCHAR
,subscriber_count BIGINT
,verified BOOLEAN  DEFAULT false
,created_at TIMESTAMP_NTZ DEFAULT GETDATE()
,PRIMARY KEY (channel_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;