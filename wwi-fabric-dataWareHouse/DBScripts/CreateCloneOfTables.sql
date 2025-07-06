--Create a clone of the dbo.dimension_city table in the dbo schema.
CREATE TABLE [dbo].[dimension_city2] AS CLONE OF [dbo].[dimension_city] AT '2025-07-05T18:00:00.000';

--You should replace the timestamp with a past date that is within 30 days of today, but after the date and time (in UTC) that you completed the Ingest data into a Warehouse.

--Create a clone of the dbo.fact_sale table in the dbo1 schema.
CREATE TABLE [dbo1].[fact_sale2] AS CLONE OF [dbo].[fact_sale] AT '2025-07-05T18:00:00.000';