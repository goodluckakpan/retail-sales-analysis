CREATE DATABASE retail_sales;
USE retail_sales;

CREATE TABLE sales (
    order_id INT,
    date DATE,
    region VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

select * from sales limit 20;

SELECT SUM(quantity * price) AS total_revenue FROM sales;

SELECT product, SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product
ORDER BY total_quantity_sold DESC
LIMIT 5;

SELECT region, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(quantity * price) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;






