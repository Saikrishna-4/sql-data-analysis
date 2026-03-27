-- =====================================
-- PROJECT: Sales Data Analysis
-- AUTHOR: Sai Krishna
-- DESCRIPTION: SQL analysis on retail dataset
-- =====================================

-- Total revenue
SELECT SUM(amount) AS total_revenue FROM sales;

-- Top 5 customers
SELECT customer_id, SUM(amount) AS revenue
FROM sales
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;

-- Monthly sales
SELECT MONTH(order_date) AS month, SUM(amount)
FROM sales
GROUP BY month;
-- =========================
-- REAL DATA ANALYSIS (SUPERSTORE)
-- =========================

-- Total Sales
SELECT SUM(Sales) AS total_sales FROM superstore;

-- Top 5 Customers
SELECT Customer_Name, SUM(Sales) AS revenue
FROM superstore
GROUP BY Customer_Name
ORDER BY revenue DESC
LIMIT 5;

-- Region-wise Sales
SELECT Region, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Region;

-- Top 10 Products
SELECT Product_Name, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT EXTRACT(MONTH FROM Order_Date) AS month, SUM(Sales)
FROM superstore
GROUP BY month
ORDER BY month;
