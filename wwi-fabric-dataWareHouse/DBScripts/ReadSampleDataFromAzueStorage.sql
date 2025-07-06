-- Read sample dimension_city data from the public Azure storage account.
SELECT TOP 10 *
FROM OPENROWSET(
  BULK 'https://fabrictutorialdata.blob.core.windows.net/sampledata/WideWorldImportersDW/tables/dimension_city.parquet'
) AS sample;

-- Read sample fact_sale data from the public Azure storage account.
SELECT TOP 10 *
FROM OPENROWSET(
  BULK 'https://fabrictutorialdata.blob.core.windows.net/sampledata/WideWorldImportersDW/tables/fact_sale.parquet'
) AS sample;