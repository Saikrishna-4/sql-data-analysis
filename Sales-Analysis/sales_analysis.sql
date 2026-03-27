-- =====================================
-- PROJECT: Sales Data Analysis
-- AUTHOR: Sai Krishna
-- =====================================

-- =========================
-- BASIC ANALYSIS
-- =========================

-- Total Orders
SELECT COUNT(*) AS total_orders FROM superstore;

-- Unique Customers
SELECT COUNT(DISTINCT Customer_Name) AS unique_customers
FROM superstore;

-- Total Sales
SELECT SUM(Sales) AS total_sales FROM superstore;


-- =========================
-- BUSINESS ANALYSIS
-- =========================

-- Top 3 Regions by Sales
SELECT Region, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC
LIMIT 3;

-- Average Sales per Customer
SELECT Customer_Name, AVG(Sales) AS avg_sales
FROM superstore
GROUP BY Customer_Name;

-- Highest Selling Product
SELECT Product_Name, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 1;

-- Highest Sales Month
SELECT EXTRACT(MONTH FROM Order_Date) AS month,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
