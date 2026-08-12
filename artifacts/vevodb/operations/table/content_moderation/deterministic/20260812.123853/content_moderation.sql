CREATE TABLE IF NOT EXISTS vevodb.operations.content_moderation
(
moderation_id INTEGER NOT NULL IDENTITY(1,1) ORDER
,video_id INTEGER
,flag_date TIMESTAMP_NTZ
,flag_reason VARCHAR(200)
,severity VARCHAR(20)
,reviewer VARCHAR(100)
,resolution VARCHAR(50)
,resolved_at TIMESTAMP_NTZ
,PRIMARY KEY (moderation_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;