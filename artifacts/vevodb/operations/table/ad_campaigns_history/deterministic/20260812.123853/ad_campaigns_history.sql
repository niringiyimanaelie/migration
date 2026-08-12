CREATE TABLE IF NOT EXISTS vevodb.operations.ad_campaigns_history
(
campaign_id INTEGER
,campaign_name VARCHAR(300)
,budget_usd NUMERIC(12,2)
,status VARCHAR(20)
,target_demographic VARCHAR(100)
,effective_start_date DATE
,effective_end_date DATE  DEFAULT '9999-12-31'::date
,is_current BOOLEAN  DEFAULT true
,created_at TIMESTAMP_NTZ DEFAULT GETDATE()
,updated_at TIMESTAMP_NTZ DEFAULT GETDATE()
)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 2,  "minor": 40,  "patch": "0-Pr.125" }, "attributes": {  "component": "redshift",  "convertedOn": "08/12/2026",  "domain": "no-domain-provided",  "migrationid": "DvefAe5IK3+lJQ1/aClvvQ==" }}'
;