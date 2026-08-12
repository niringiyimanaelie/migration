CREATE TABLE IF NOT EXISTS vevodb.analytics.daily_streams
(
stream_id BIGINT NOT NULL IDENTITY(1,1) ORDER
,video_id INTEGER
,stream_date DATE NOT NULL
,country VARCHAR(50)
,device_type VARCHAR(30)
,stream_count BIGINT
,unique_viewers BIGINT
,avg_watch_time_seconds INTEGER
,revenue_usd NUMERIC(12,2)
,PRIMARY KEY (stream_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;