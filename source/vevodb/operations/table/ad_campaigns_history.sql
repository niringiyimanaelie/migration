CREATE TABLE IF NOT EXISTS vevodb.operations.ad_campaigns_history
(
campaign_id INTEGER   ENCODE az64
,campaign_name VARCHAR(300)   ENCODE lzo
,budget_usd NUMERIC(12,2)   ENCODE az64
,status VARCHAR(20)   ENCODE lzo
,target_demographic VARCHAR(100)   ENCODE lzo
,effective_start_date DATE   ENCODE RAW
,effective_end_date DATE  DEFAULT '9999-12-31'::date ENCODE az64
,is_current BOOLEAN  DEFAULT true ENCODE RAW
,created_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
,updated_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
)
;
