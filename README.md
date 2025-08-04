# 🎬 End-to-End Streaming Analytics Project for Online OTT Platform | Azure Databricks, Power BI, SQL, Python

> **Domain : Media and Entertainment**


> 🚀 An end-to-end data analytics solution that leverages Azure Data Factory, Azure Databricks for large-scale transformation and Power BI for interactive dashboarding, focused on analyzing streaming content trends in the media and entertainment industry.

![Streaming Content Analytics Dashboard](https://github.com/developersview/media-and-entertainment-azure-databricks-project/blob/master/img/project_diagram1.png)

---

## 📌 Project Overview

This project demonstrates how to build a **cloud-native analytics platform** on **Azure** that processes and visualizes streaming content metadata. The goal is to derive meaningful insights such as content growth trends, genre popularity, country-wise distribution, and platform evolution over time using modern data engineering tools.

The project mimics the kind of content and operational intelligence used by top OTT platforms (e.g., Netflix, Prime Video, etc.).

---

## 📌 Project Highlights

- ✅ End-to-End Azure-based Pipeline (Github → Data Factory → Data Lake → Databricks → Power BI)
- ✅ Structured Bronze–Silver–Gold Medallion Architecture in Databricks
- ✅ Advanced data cleaning, transformations, and DAX metrics
- ✅ Key KPIs: Monthly/Quarterly trends, Genre Performance, Title Growth by Country, and more
- ✅ Stakeholder-ready Power BI dashboard for strategic decisions

---

## 🛠️ Tech Stack

| Layer | Technology Used |
|-------|-----------------|
| Cloud | Microsoft Azure |
| Storage | Azure Data Lake Storage (ADLS) Gen 2 |
| Data Ingestion | Azure Data Factory |
| ETL Pipeline Job | Azure Databricks (PySpark) |
| Data Warehousing | Azure Synapse Analytics |
| Visualization | Microsoft Power BI |
| Language | Python (Library - PySpark), SQL, DAX |
| File Format | CSV, Delta (Parquet) |

---

## 📂 Project Structure
```bash
📁 azure-databricks-media-analytics/
├── data/                        # All raw data files
├── notebooks/                   # Databricks Notebooks
│ ├── Autoloader.ipynb
│ ├── extract_bronze.ipynb
│ ├── ingest_silver.ipynb
│ ├── load_gold.ipynb
│ ├── Lookup.ipynb
│ ├── transform_silver.ipynb
├── reports/                    # Business and Power BI reports
│ └── Netflix_Report.pbix
│ └── Business_Report.pdf
├── README.md
└── img/
```

## 📊 Key Features

- 📈 **Streaming Content Growth** — Monthly and yearly analysis of new titles added.
- 🌍 **Country-Level Insights** — Top countries producing or distributing content.
- 🏷️ **Genre Distribution** — Content classification by genre/category.
- 🔄 **YoY Growth Metrics** — Year-over-year comparison of title releases.
- 📆 **Seasonal Trends** — Quarterly and monthly trends in content additions.
- 🧠 **KPI Tiles in Power BI** — Total Titles, YoY Growth %, Top Country, Genre Count, etc.

---
## 📸 Dashboard Preview

1. **Content Overview**:
![content overview](https://github.com/developersview/media-and-entertainment-azure-databricks-project/blob/master/img/1_Content_Overview_Page.png)

2. **Geography and People Analytics**:
![people analytics](https://github.com/developersview/media-and-entertainment-azure-databricks-project/blob/master/img/2_Geography_People_Analytics_Page.png)

3. **Content Consumption**: 
![content consumption](https://github.com/developersview/media-and-entertainment-azure-databricks-project/blob/master/img/3_Content_Consumption_Overview_Page.png)

🚀 Future Enhancements
- Connect to real-time streaming data using Azure Event Hubs or Kafka.
- Add sentiment or viewer rating analysis using NLP.
- Extend to predictive analytics on viewership trends.

📚 Learnings & Takeaways
- ✅ Hands-on with PySpark transformations in Azure Databricks
- ✅ Created visual storytelling dashboards in Power BI
- ✅ Practiced DAX measures for time series KPIs
- ✅ Emulated enterprise-grade architecture in media domain

> 🤝 Let's Connect

- 📧 My Email : pcslg1998@gmail.com

- 🔗 Pranoy Chakraborty | [LinkedIn](https://www.linkedin.com/in/pranoy-chakraborty/)