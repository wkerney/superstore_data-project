# Project Overview
In this project I simulate a BI solution for a retail company focused on analyzing sales data to understand trends and make data-driven decisions. I create a data warehouse, build ETL processes, and develop a dashboard in Tableau.
The dataset I use is the "Superstore Sales" dataset from Kaggle. This dataset contains sales records, customer information, product details, and order details.

## Step 1: Project Planning
### Business Goals:
Analyze sales trends, customer behavior, and product performance to support business decisions.

### Scope and Stakeholders: 
This project is focused on sales analytics for a retail company. Stakeholders include sales managers, marketing, and executives.
## Step 2: Technical Architecture
Set up a new dataset for the project in Google BigQuery, and installed required libraries for data manipulation and BigQuery integration (dplyr, bigrquery, readr) in R.
## Step 3: Dimensional Modeling
### Identify Business Processes: 
In this project, the business process is "Sales."
### Define Fact and Dimension Tables:
Fact Table: fact_sales containing sales transactions.

Dimension Tables: dim_customers, dim_products, dim_time.
## Step 4: ETL Development
### Extract Data: 
Loaded the "Superstore Sales" dataset in R.
### Transform Data: 
Created Dimension Tables and Fact Tables in R:
Then loaded the data into BigQuery via R.
## Step 5: Data Warehousing
### Implement Schema in BigQuery: 
Ensured that tables were created and relationships were defined.
## Step 6: Business Intelligence
### Connect Tableau to BigQuery: 
In Tableau, created a connection to the BigQuery dataset.
### Develop Dashboards and Reports:
Created a dashboard showing sales trends over time.
Included breakdowns by customer segment, product category, and region.
Added visualizations for total sales, profit margins, and high-performing products.







