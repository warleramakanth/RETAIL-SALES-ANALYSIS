
DROP TABLE IF EXISTS retail_sales ;
CREATE TABLE retail_sales (
    order_id VARCHAR(20),
    order_date VARCHAR(20),
    customer_name VARCHAR(100),
    city VARCHAR(100),
    state_ VARCHAR(100),
    region VARCHAR(50),
    country VARCHAR(100),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales NUMERIC(10,2),
    quantity numeric(10,2),
    discount NUMERIC(10,2),
    profit NUMERIC(10,2)
);

select * from retail_sales;


--1.[DATA CLEANING]
--1.1 CHECK NULL VALUES
SELECT *
FROM retail_sales
WHERE sales IS NULL
OR profit IS NULL;

--1.2 REMOVE DUPLICATES
SELECT order_id, COUNT(*)
FROM retail_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

--1.3 CHECK NEGITIVE PROFIT
SELECT *
FROM retail_sales
WHERE profit < 0;

--2.[BUSINESS ANALYSIS]
--2.1 TOTAL SALES
SELECT SUM(sales) AS total_sales
FROM retail_sales;

--2.2 Total Profit
SELECT SUM(profit) AS total_profit
FROM retail_sales;
SELECT * FROM RETAIL_SALES;

--2.3 Profit by Category
SELECT
category,
SUM(profit) AS profit
FROM retail_sales
GROUP BY category
ORDER BY profit DESC;

--2.4 Profit by Sub-Category
SELECT
sub_category,
SUM(profit) AS profit
FROM retail_sales
GROUP BY sub_category
ORDER BY profit DESC;

--2.5 Region-wise Sales
SELECT
region,
SUM(sales) AS sales
FROM retail_sales
GROUP BY region;

--2.6 Top 10 Products
SELECT
product_name,
SUM(profit) AS profit
FROM retail_sales
GROUP BY product_name
ORDER BY profit DESC
LIMIT 10;

create database ra

--Retrive all employees name and their quantity
 select customer_name,quantity
 from retail_sales; 



select * from retail_sales;

 --update the quantity of all e in the it department by increase it by10%
 update retail_sales
 set quantity= quantity*1.10
 where country='United states';