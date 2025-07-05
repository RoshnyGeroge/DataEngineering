# Wide World Importers (WWI) – Microsoft Fabric Lakehouse E2E Pipeline

## 🎯 Objective
Build an end-to-end data engineering pipeline using Microsoft Fabric to ingest, transform, and analyze data from the Wide World Importers (WWI) dataset, and visualize KPIs such as top-selling products, Profit Tracking.

## 🛠️ Stack & Tools
- **Microsoft Fabric** (Notebooks, Lakehouse, Power BI)
- **OneLake** (Delta Lake format)
- **Pipeline and Dataflow2** (for optional ingestion)
- **PowerBI** (for Reporting)

## 🔄 Solution Architecture
1. Ingest Full load of  WWI dataset stored  at Azure storage into Lakehouse using Fabric pipeline. File format : Parquet, Compression: .Zip
2. Ingest raw CSVs  of WWI dataset staored in csv file on local filesystem into Lakehouse using Fabric data flow2.
3. Create/ load Dimension  and fact delta tables from Parquet Files using PySpark notebooks.
4. Perform transformations (e.g., joins, aggregations) using PySpark notebooks.
5. Load results into gold layer (Delta format) for analysis.
6. Visualize KPIs in Power BI connected to the Lakehouse.


## 📈 Example KPIs
- Profit Analyis: total, distribution over year, over SalesTerritory and by Employee
- Top 10 Products by Sales
-

## 🧱 Dataset
Based on Microsoft's [Wide World Importers sample](https://assetsprod.microsoft.com/en-us/wwi-sample-dataset.zip)

## 🖼️ Visuals
![Data Model](./diagram/data_model.jpg) 
![Techbical architecture](./diagram/TechnicalArchitecture.drawio) 
![ Lineage](./diagram/WW1_Lineage.jpg) 

![Power BI Dashboard](./images/Profit_Reporting.png)

## 🚀 Setup
1. Clone this repo
2. Open notebooks in Fabric
3. Set up Lakehouse connection and upload sample data
4. Run notebook steps in sequence
5. Open Power BI dashboard

## 📊 What I Learned
- Built layered lakehouse  (Bronze->Silver → gold)
- Automated refresh
- Gained deeper insight into enterprise-style datasets and transformations
- Fabric provides the V-order capability to write optimized Delta lake files. V-order often improves compression by three to four times, and up to 10 times, performance acceleration over the Delta Lake files that aren't optimized.
    -- spark.conf.set("spark.microsoft.delta.optimizeWrite.enabled", "true")
    --spark.conf.set("spark.microsoft.delta.optimizeWrite.binSize", "1073741824")  # 1 GB, avoids small file problem.
    --spark.conf.set("spark.databricks.delta.autoCompact.enabled", "true")
- Semantic Models
- Reports
- Error reolution:
    AnalysisException: [DELTA_FAILED_TO_MERGE_FIELDS] Failed to merge fields 'CustomerKey' and 'CustomerKey'  It typically indicates a schema conflict—specifically, the field CustomerKey exists in multiple places (e.g., in both source and target schemas), but with different definitions or metadata eg,differt datatype, nullability, case sensitivity etc.

## 👩‍💻 Author
Roshny George | [LinkedIn](https://www.linkedin.com/in/roshnygeorge)
