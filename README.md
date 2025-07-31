# 🎬 Parking Management System for Cinema

This project simulates a parking management system integrated with movie info using Azure services.

## 📌 Features
- Customer, vehicle, parking slot, and movie management
- Real-time parking slot availability tracking
- Parking fee calculation based on entry/exit time
- Data pipeline using Azure Data Factory
- Structured relational database in Azure SQL
- CSV files as data sources from ADLS
- 
## ⚙️ Architecture
- Data stored in CSV files (200 records)
- Uploaded to ADLS (Azure Data Lake)
- Data loaded into Azure SQL using ADF pipeline
- Pipeline includes multiple Copy Data activities

## 📂 Files
- customers.csv
- vehicles.csv
- parking_slots.csv
- movies.csv
- parking_records.csv

## 🗂️ Folder Structure
Parking_Management_System_Cinema/
├── ADF_Pipeline/
│ └── dataset_json/
|         ├── SourceDataset.json
|         └── SinkDataset.json
│ └── Linked_Service_json/
|         ├── LS_ADLS.json
|         └── LS_Park_ASQL.json
├── data/
| └── files
├── database/
│ ├── Schema.sql
| └── Queries.sql
├── images/
│ ├── ADF_pipeline_flow.png
│ └── ER_diagram.png
| └── Copy_ADLS_to_ASQL.png
| └── Pipeline_runs_success.png|
└── README.md

## 🏗️ ADF Pipeline
- Source: ADLS Gen2
- Sink: Azure SQL Database
- Activities: Copy Data
- Scheduled pipeline or trigger-based

## 📈 Output
- Centralized parking data
- Movie info mapped to users
- Can be queried from Azure SQL

## 🔐 Tools Used
- Azure Data Factory
- Azure Data Lake Storage
- Azure SQL
- GitHub
