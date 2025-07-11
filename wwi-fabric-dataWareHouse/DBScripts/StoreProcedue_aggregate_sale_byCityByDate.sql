--Drop the stored procedure if it already exists.
 DROP PROCEDURE IF EXISTS [dbo].[populate_aggregate_sale_by_city];
 GO

 --Create the populate_aggregate_sale_by_city stored procedure.
 CREATE PROCEDURE [dbo].[populate_aggregate_sale_by_city]
 AS
 BEGIN
     --Drop the aggregate table if it already exists.
     DROP TABLE IF EXISTS [dbo].[aggregate_sale_by_date_city];
     --Create the aggregate table.
     CREATE TABLE [dbo].[aggregate_sale_by_date_city]
     (
        [Date] [DATETIME2](6),
        [City] [VARCHAR](8000),
        [StateProvince] [VARCHAR](8000),
        [SalesTerritory] [VARCHAR](8000),
        [SumOfTotalExcludingTax] [DECIMAL](38,2),
        [SumOfTaxAmount] [DECIMAL](38,6),
        [SumOfTotalIncludingTax] [DECIMAL](38,6),
        [SumOfProfit] [DECIMAL](38,2)
     );

     --Load aggregated data into the table.
     INSERT INTO [dbo].[aggregate_sale_by_date_city]
     SELECT
        FS.[InvoiceDateKey] AS [Date], 
        DC.[City], 
        DC.[StateProvince], 
        DC.[SalesTerritory], 
        SUM(FS.[TotalExcludingTax]) AS [SumOfTotalExcludingTax], 
        SUM(FS.[TaxAmount]) AS [SumOfTaxAmount], 
        SUM(FS.[TotalIncludingTax]) AS [SumOfTotalIncludingTax], 
        SUM(FS.[Profit]) AS [SumOfProfit]
     FROM [dbo].[fact_sale] AS FS
     INNER JOIN [dbo].[dimension_city] AS DC
        ON FS.[CityKey] = DC.[CityKey]
     GROUP BY
        FS.[InvoiceDateKey],
        DC.[City], 
        DC.[StateProvince], 
        DC.[SalesTerritory]
     ORDER BY 
        FS.[InvoiceDateKey], 
        DC.[StateProvince], 
        DC.[City];
 END;

-- RUN this Query in Fabric.
-- Run Procedure : EXEC dbo.populate_aggregate_sale_by_city