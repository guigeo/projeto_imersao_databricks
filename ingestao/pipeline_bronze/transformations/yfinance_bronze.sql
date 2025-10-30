CREATE OR REFRESH STREAMING LIVE TABLE lakehouse_imersao_jornada.bronze.yfinance
TBLPROPERTIES ("quality" = "bronze")
AS
SELECT *
FROM cloud_files(
  '/Volumes/lakehouse_imersao_jornada/raw/yfinance/commodities/latest_prices/',
  'json'
);