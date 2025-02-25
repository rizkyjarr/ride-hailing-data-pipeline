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
1. [Build Airflow and DBT using Docker](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/docker-compose.yaml)
2. [Build PostgreSQL using Docker](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/postgresql_app/docker-compose.yaml)
3. [Generate and load data to PostgreSQL using Airflow's DAG](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG1_load_to_postgre.py). Supported by helpers:
    - [generate_data.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/generate_data.py)
    - [postgres_helper.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/postgres_helper.py)
    - [SQL DDL command to create schemas in PostgreSQL](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dags/sql)
4. [Load incremental data and perform upsert to BigQuery using Airflow's DAG](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG2_load_to_bigquery.py). Supported by helpers:
    - [bigquery_helper.py](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/bigquery_helper.py)
    - [yaml file for parameter setting](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/postgre_tables.yaml)
    - [discord alert](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/helpers/send_discord_alert.py)
5. [Data modelling in Data Warehouse using DBT and orchestrated using Airflow's DAG](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dags/DAG3_dbt_run_dwh.py). Supported by DBT pre-requisite scripts:
    - [SQL DDL command to data modelling in dwh](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dbt_project/models)
    - [Macros needed](https://github.com/rizkyjarr/final-project-purwadhika/tree/main/airflow_app/dbt_project/macros)
    - [dbt_project.yml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dbt_project/dbt_project.yml)
    - [profiles.yml](https://github.com/rizkyjarr/final-project-purwadhika/blob/main/airflow_app/dbt_project/profiles.yml)


Documentation building is underway
