CREATE TABLE IF NOT EXISTS vevodb.operations.ad_campaigns
(
campaign_id INTEGER NOT NULL IDENTITY(1,1) ORDER
,campaign_name VARCHAR(300) NOT NULL
,advertiser VARCHAR(200)
,start_date DATE
,end_date DATE
,budget_usd NUMERIC(12,2)
,status VARCHAR(20)  DEFAULT 'active':: VARCHAR
,target_demographic VARCHAR(100)
,created_at TIMESTAMP_NTZ DEFAULT GETDATE()
,PRIMARY KEY (campaign_id)
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;