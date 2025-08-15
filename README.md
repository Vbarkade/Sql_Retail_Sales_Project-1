
# 🛒 Retail Sales Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing retail sales data using PostgreSQL (pgAdmin). The dataset includes information about customer purchases such as transaction ID, sales date, product category, customer demographics, quantity, and sales amount.

## 🎯 Objectives

- Understand customer purchasing behavior.
- Analyze sales trends over time.
- Find top-performing products and customer segments.
- Use SQL queries to extract business insights.

## 🗃️ Dataset

The dataset contains the following columns:

| Column Name     | Description                         |
|-----------------|-------------------------------------|
| transaction_id  | Unique ID of the transaction        |
| sales_date      | Date of the transaction             |
| customer_id     | Unique ID of the customer           |
| gender          | Gender of the customer              |
| age             | Age of the customer                 |
| category        | Product category                    |
| quantity        | Quantity sold                       |
| price           | Price per item                      |
| total_sale      | Total sale amount (price * quantity)|

Data is stored in a single table called: `retail_sales`

## 🔍 Analysis Performed

### 🧾 1. Sales Overview
- Total sales amount
- Average price and quantity
- Highest & lowest transaction

### 📦 2. Category Performance
- Sales by category
- Best and worst performing product categories

### 👥 3. Customer Insights
- Sales by gender
- Age group behavior
- Top 5 highest spending customers

### 🕒 4. Time-Based Analysis
- Daily sales trends
- Peak sales day
- Monthly performance (if month extracted)

### ⭐ 5. Advanced Insights
- Repeat customers
- Category performance by gender
- Average spending per transaction

## 🧰 Tools Used

- PostgreSQL (pgAdmin 4)
- CSV data file
- SQL queries
- Optional: Excel/Python for visualization

## 📁 Project Structure

Retail_Sales_Analysis/
│
├── README.md                 # Project documentation
├── retail_sales.csv          # Raw dataset
├── setup.sql                 # SQL to create and load the table
├── queries/
│   ├── sales_overview.sql
│   ├── category_analysis.sql
│   ├── customer_analysis.sql
│   ├── time_analysis.sql
│   └── advanced_queries.sql
└── reports/
    └── retail_sales_report.md  # Summary of insights

## 📈 Sample Questions Answered

- Which category has the highest sales?
- Which day had the most revenue?
- What is the average sale per transaction?
- Which customer bought the most?

## 🙋‍♂️ Author

**Vaibhav Barkade**  
Data Analyst  
Building practical SQL projects using real-world data.
