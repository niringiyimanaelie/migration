CREATE TABLE IF NOT EXISTS vevodb.operations.ad_campaigns
(
campaign_id INTEGER NOT NULL DEFAULT "identity"(107810, 0, '1,1'::text) ENCODE az64
,campaign_name VARCHAR(300) NOT NULL  ENCODE lzo
,advertiser VARCHAR(200)   ENCODE lzo
,start_date DATE   ENCODE az64
,end_date DATE   ENCODE az64
,budget_usd NUMERIC(12,2)   ENCODE az64
,status VARCHAR(20)  DEFAULT 'active'::character varying ENCODE lzo
,target_demographic VARCHAR(100)   ENCODE lzo
,created_at TIMESTAMP WITHOUT TIME ZONE  DEFAULT getdate() ENCODE az64
	,PRIMARY KEY (campaign_id)
)
;
