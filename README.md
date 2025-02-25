# Ride hailing company analytics | Batching data pipeline using Google Cloud Platform

## Project Overview
This project explores analytics for a ride-hailing app company using modern data engineering practices on Google Cloud Platform (GCP). It utilizes BigQuery for data warehousing, dbt (Data Build Tool) for data modeling, and PostgreSQL for storing raw data.

## Data pipeline architecture

## Technology & Tools Used
1. Programming Language - Python (Libraries: pandas, faker, etc)
2. Scripting language - SQL
3. Google Cloud Platform - BigQuery - data warehouse
4. DBT - data modelling
5. Airflow - data pipeline orchestration
6. Docker - application containerization
7. Discord - task failure/retry notification

## Dataset used
This project utilizes synthetic data representing a ride-hailing company's operations, providing insights into customer and driver behavior as well as revenue generated from ride fares. The dataset is generated using a Python script and stored in PostgreSQL.

The following tables are utilized in this project:

1. Customer – Stores information on registered app users.
2. Driver – Contains records of registered driver partners.
3. Vehicle – Maintains a database of vehicles used by drivers.
4. Rides – Captures ride details, including distance, fare, pickup time, drop-off time, and other trip-related information.


## Data Model (facts and dim layer)


## Scripts for project (based on order)

## 1️⃣ Deploying Airflow and dbt with Docker  
- **Setup Airflow and dbt using Docker** → [docker-compose.yaml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/docker-compose.yaml)  

## 2️⃣ Deploying PostgreSQL with Docker  
- **Setup PostgreSQL using Docker** → [docker-compose.yaml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/postgresql_app/docker-compose.yaml)  

## 3️⃣ Data Generation and Loading into PostgreSQL (Airflow DAG)  
- **Generate and load data into PostgreSQL** → [DAG1_load_to_postgre.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG1_load_to_postgre.py)  
  **Supporting Scripts:**  
  - **Create schema and tables in PostgreSQL** → [postgres_helper.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/postgres_helper.py)  
  - **Generate and insert data into PostgreSQL** → [generate_data.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/generate_data.py)  
  - **Define table schemas via SQL scripts** → [SQL folder](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dags/sql)  

## 4️⃣ Incremental Data Load & Upsert to BigQuery (Airflow DAG)  
- **Load incremental data and perform upsert in BigQuery** → [DAG2_load_to_bigquery.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG2_load_to_bigquery.py)  
  **Supporting Scripts:**  
  - **BigQuery helper functions for table validation, fetching incremental data, and upsert operations** → [bigquery_helper.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/bigquery_helper.py)  
  - **Define table parameters using a YAML configuration** → [postgre_tables.yaml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/postgre_tables.yaml)  
  - **Send Discord alerts for task failures/retries** → [send_discord_alert.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/send_discord_alert.py)  

## 5️⃣ Data Modeling in BigQuery using dbt (Orchestrated by Airflow DAG)  
- **Execute dbt models for data warehouse transformation** → [DAG3_dbt_run_dwh.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG3_dbt_run_dwh.py)  
  **Supporting dbt Configuration:**  
  - **SQL DDL scripts for data modeling in the data warehouse** → [MODELS folder](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dbt_project/models)  
  - **Macros required for dbt transformations** → [MACROS folder](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dbt_project/macros)  
  - **Project settings for dbt execution** → [dbt_project.yml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dbt_project/dbt_project.yml)  
  - **BigQuery connection settings for dbt** → [profiles.yml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dbt_project/profiles.yml)  



## Project Results
