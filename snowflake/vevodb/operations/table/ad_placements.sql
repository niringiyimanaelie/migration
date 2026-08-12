CREATE TABLE IF NOT EXISTS vevodb.operations.ad_placements
(
placement_id BIGINT NOT NULL IDENTITY(1,1) ORDER
,campaign_id INTEGER
,video_id INTEGER
,placement_date DATE
,impressions BIGINT
,clicks BIGINT
,cost_usd NUMERIC(10,2)
,ctr NUMERIC(5,4)
,PRIMARY KEY (placement_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;