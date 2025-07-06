# Bike Points) – Microsoft Fabric RealTime Hub E2E Solution

## 🎯 Objective
Build an end-to-end data engineering pipeline using Microsoft Fabric Realtime Intelligence to ingest, transform, and analyze real time data Bycycle data set, and visualize KPIs.

## 🛠️ Stack & Tools
- **Microsoft Fabric** (EventHouse,   Power BI, KQL)
- **OneLake** (Delta Lake format)
- **Event Stream** (for optional ingestion)
- **RealTime Dashboard** (for Reporting)

## 🔄 Solution Architecture
1. Ingest to Realtime Hub using event stream
2. Prepare Bronze, silver and Gold layers in KQL
4. Perform transformations (e.g., joins, aggregations) using KQL.
5. Visualize using RealTime DashBoard.


## 📈 Example KPIs
-  Bike availalabity  in near real time , every Hr
- Top 10  Bike Points
- Map of Bike points with  higher Bikes availability

## 🧱 Dataset
Based on Microsoft's [Bike dataset]
![KQL](./KQL/KQL_Bronze_Silver_Gold.txt)


## 🖼️ Visuals
![EventData Ingesionl](./pipeline/Event Stream.jpg) 
![dataQuerying In KQL](./pipeline/VisualizationOfGoldDataUsingKQLjpgdrawio) 
![RealTime Dashboard](./images/RealTimeDashBoard.png)

## 🚀 Setup
1. Clone this repo
2. Create EventHouse
2. Create Eventtream and run it.
4. Run KQL Queries
5. Create RealTime Reports

## 📊 What I Learned
- Get data in the Real-Time hub, 
    - ingest realtime data
    - event Stream,Transform events
    - Prepare Medallion architeture using KQL
    - Perform DML and DDL using KQL
    - Using UpdatePolicy
    - avg_max() vs max()
- Subscribe and handle Fabric events
- Prepare RealTime DashBoard


## 👩‍💻 Author
Roshny George