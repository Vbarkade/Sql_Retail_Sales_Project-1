-- SQL Retail sales project


-- Create table Retail sales
DROP TABLE IF EXISTS Retail_sales;
	  CREATE TABLE Retail_sales (
    transaction_id VARCHAR(10) PRIMARY KEY,
    sales_date DATE,
    customer_id VARCHAR(10),
    gender CHAR(1),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    total_sale NUMERIC(10,2)
);


-- 1.DATA cleaning/FIND NULL value in each COLUMN

SELECT * FROM Retail_sales
 WHERE 
 transaction_id IS NULL
 OR
 sales_date IS NULL
 OR
 customer_id IS NULL
 OR
 gender IS NULL
 OR
 age IS NULL
 OR
 category IS NULL
 OR
 quantity IS NULL
 OR
 price IS NULL
 OR
 total_sale IS NULL;

-- Data Analysis & Business Key Problems & Answers

--Q. Find all Data From Retail sales table ?
--Q.Top 5 highest sales transactions ?
--Q.Total Sales per category ?
--Q. Average customer age by gender ?
--Q.Find Total Retail sales ?
--Q. Find Average Price per category ?
--Q. Find Total Sales per category ?
--Q. Find Total Quantity Sold per Category ?
--Q. Find Average sale per transaction ?
--Q.Find Total Sales by Gender ?
--Q.Find Average Age by Gender ?
--Q.Create Age Groups for Analysis ?
--Q.Sales by Gender and Age Group ?
--Q.Revenue per Item Sold (Efficiency) ?
--Q.Total Sales by Date (Daily Revenue) ?
--Q.Find Sales Day Only Top Day ?
--Q.Most Loyal Customers (Most Frequent Shoppers) ?
--Q.Find High-Spending Customers ?
--Q. Unique Customers per Category ?
--Q.Find Monthly Sales Trend ?
--Q.Find Day of Week Performance ?
--Q.Find Lowest Sales Categories ?



 -- 2.Data Exploration  

 --Q. Find all Data From Retail sales table ?
 
 SELECT * FROM Retail_sales;

-- Q.Top 5 highest sales transactions ?

SELECT * FROM Retail_sales ORDER BY total_sale DESC
LIMIT 5;

-- 3.AGRREGATION

-- Q.Total Sales per category ?
 
SELECT category, SUM(total_sale) AS TOtal_sales
FROM Retail_sales
GROUP BY category;

--Q. Average customer age by gender ?

SELECT gender, AVG(age) AS avg_age
FROM Retail_sales
GROUP BY gender;

--Q.Find Total Retail sales ?

SELECT SUM(total_sale) AS Total_sales
 FROM Retail_sales;

--Q. Find Average Price per category ?

SELECT category, AVG(price) AS AVG_PRICE
FROM Retail_sales
GROUP BY category
ORDER BY AVG_PRICE DESC;

-- Q. Find Total Sales per category ?

SELECT category, SUM(total_sale) AS Total_sales
FROM Retail_sales
GROUP BY category
ORDER BY total_sales DESC;

--Q. Find Total Quantity Sold per Category ?

SELECT category, SUM(quantity) AS Total_quantity_sold
FROM Retail_sales
GROUP BY category
ORDER BY Total_quantity_sold DESC;

--Q. Find Average sale per transaction ?

SELECT AVG(total_sale) AS avg_transaction_value
FROM Retail_sales;

-- 4.Customer Analysis

-- Q.Find Total Sales by Gender ?

SELECT gender, SUM(total_sale) AS Total_sale_gender
FROM Retail_sales
GROUP BY gender;

-- Q.Find Average Age by Gender ?

SELECT gender, AVG(age) AS avg_age
FROM Retail_sales
GROUP BY gender;

-- CASE EXPRESSION

--Q.Create Age Groups for Analysis ?

SELECT
  CASE
   WHEN age BETWEEN 18 AND 25 THEN '18-25'
   WHEN age BETWEEN 26 AND 35 THEN '26-35'
   WHEN age BETWEEN 36 AND 45 THEN '36-45'
   WHEN age BETWEEN 46 AND 60 THEN '46-60'
   ELSE '60+'
  END AS age_group,
  COUNT(*) AS Customer_count,
  SUM(total_sale) AS Total_sale
 FROM Retail_sales
 GROUP BY age_group
 ORDER BY age_group;

--Q.Sales by Gender and Age Group ?

SELECT gender,
  CASE
   WHEN age BETWEEN 18 AND 25 THEN '18-25'
   WHEN age BETWEEN 26 AND 35 THEN '26-35'
   WHEN age BETWEEN 36 AND 45 THEN '36-45'
   WHEN age BETWEEN 46 AND 60 THEN '46-60'
   ELSE '60+'
  END AS age_group,
   COUNT(*) AS Transactions,
   SUM(total_sale) AS Total_sales
 FROM Retail_sales
 GROUP BY gender, age_group
 ORDER BY gender, age_group;

--5. Product Performance

--Q.Revenue per Item Sold (Efficiency) ?

SELECT category, 
       SUM(total_sale) AS total_revenue,
       SUM(quantity) AS total_quantity,
       ROUND(SUM(total_sale) * 1.0 / SUM(quantity), 2) AS revenue_per_item
FROM Retail_sales
GROUP BY category
ORDER BY revenue_per_item DESC;

--Q.Total Sales by Date (Daily Revenue) ?

SELECT sales_date, SUM(total_sale) AS total_sales
FROM Retail_sales
GROUP BY sales_date
ORDER BY total_sales DESC;

-- Q.Find Sales Day Only Top Day ?

SELECT sales_date, SUM(total_sale) AS total_sales
FROM Retail_sales
GROUP BY sales_date
ORDER BY total_sales DESC
LIMIT 1;

-- 7.Advanced SQL Examples

-- Q.Most Loyal Customers (Most Frequent Shoppers) ?

SELECT customer_id, COUNT(*) AS transactions, SUM(total_sale) AS total_spent
FROM Retail_sales
GROUP BY customer_id
ORDER BY transactions DESC
LIMIT 5;

-- Q.Find High-Spending Customers ?

SELECT customer_id, SUM(total_sale) AS total_spent
FROM Retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

--Q. Unique Customers per Category ?

SELECT category, COUNT(DISTINCT customer_id) AS unique_customers
FROM Retail_sales
GROUP BY category
ORDER BY unique_customers DESC;

-- 8. Time-Based Analysis

--Q.Find Monthly Sales Trend ?

SELECT DATE_TRUNC('month', sales_date) AS month, 
       SUM(total_sale) AS monthly_sales
FROM Retail_sales
GROUP BY month
ORDER BY month;

--Q.Find Day of Week Performance ?

SELECT TO_CHAR(sales_date, 'Day') AS weekday, 
       SUM(total_sale) AS total_sales
FROM Retail_sales
GROUP BY weekday
ORDER BY total_sales DESC;

--Q.Find Lowest Sales Categories ?

SELECT category, SUM(total_sale) AS total_sales
FROM Retail_sales
GROUP BY category
ORDER BY total_sales ASC
LIMIT 5;

-- End Of Project






















 






 
 
