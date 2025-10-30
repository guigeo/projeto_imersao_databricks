CREATE OR REFRESH STREAMING LIVE TABLE lakehouse_imersao_jornada.bronze.sales_btc 
TBLPROPERTIES ("quality" = "bronze")
AS
SELECT
  *,
  current_timestamp() AS ingestion_ts_utc
FROM STREAM(lakehouse_imersao_jornada.postgres_public.sales_btc);