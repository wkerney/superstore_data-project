install.packages("dplyr")
install.packages("tidyverse")
install.packages("bigrquery")
install.packages("readr")

#Extract 
library(readr)
sales_data <- read_csv("Sample - Superstore.csv")
colnames(sales_data)
#creating dimension tables
library(dplyr)
dim_customers <- sales_data %>%
  select("Customer ID", "Customer Name", Segment) %>%
  distinct()

dim_products <- sales_data %>%
  select("Product ID", "Product Name", Category) %>%
  distinct()

dim_time <- sales_data %>%
  mutate("Order Date" = as.Date("Order Date", format="%m/%d/%Y")) %>%
  select("Order Date", "Ship Date") %>%
  distinct()

#Creating fact table
fact_sales <- sales_data %>%
  select("Order ID", "Customer ID", "Product ID", "Order Date", Sales, Quantity, Discount, Profit)

#Authenticating and setting up connection to BigQuery
library(bigrquery)
project_id <- "superstore-project-421803"
dataset <- "superstore_data"
bq_auth()  # Authenticate with Google # Authenticate with Google

#Loading Dimension Tables
bq_table_upload(bq_table(project_id, dataset, "dim_customers"), dim_customers)
bq_table_upload(bq_table(project_id, dataset, "dim_products"), dim_products)
bq_table_upload(bq_table(project_id, dataset, "dim_time"), dim_time)

#Loading Fact Table
bq_table_upload(bq_table(project_id, dataset, "fact_sales"), fact_sales)
