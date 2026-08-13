CREATE OR REPLACE PROCEDURE vevodb.operations.mv_sp__mv_advertiser_spend__4_2_cascade (start_xid bigint, end_xid bigint, recompute_mv boolean, finished_xid_list VARCHAR(65535), cascade_xid bigint, last_cascade_xids VARCHAR(65535))
RETURNS VARCHAR
LANGUAGE SQL
COMMENT = 'Redshift MV cascade procedure - replaced by Dynamic Table auto-refresh in Snowflake'
EXECUTE AS CALLER
AS $$
BEGIN
  RETURN 'No-op: mv_advertiser_spend is a Dynamic Table with automatic refresh';
END;
$$;
