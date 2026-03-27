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
