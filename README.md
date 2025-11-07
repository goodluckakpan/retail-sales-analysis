*Retail Sales Performance Analysis*

This project analyzes retail sales data to identify key business insights such as revenue trends, best-selling products, and regional performance.
The analysis was done using **SQL** and visualized using **Excel** to create a clear and professional dashbo

**Objectives**
* Understand overall revenue performance
* Identify top-selling products
* Compare revenue contribution by region
* Analyze monthly sales trends

Dataset Information**
The dataset contains:

| Column   | Description               |
| -------- | ------------------------- |
| order_id | Unique order number       |
| date     | Order date                |
| region   | Sales region              |
| product  | Product sold              |
| quantity | Number of units sold      |
| price    | Unit price of the product |

Tools Used

| Tool                | Purpose                             |
| ------------------- | ----------------------------------- |
| **MySQL Workbench** | Data analysis using SQL             |
| **Excel**           | Dashboard and visualization         |
| **GitHub**          | Project documentation and portfolio |

**SQL Analysis Queries**
*Total Revenue:*
`sql
SELECT SUM(quantity * price) AS total_revenue FROM sales;

**Top 5 Best-Selling Products:**
```sql
SELECT product, SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product
ORDER BY total_quantity_sold DESC
LIMIT 5;
```
**Revenue by Region:**
```sql
SELECT region, SUM(quantity * price) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;
```
**Monthly Sales Trend:**
```sql
SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(quantity * price) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
```

##**Dashboard Preview**
The Excel dashboard includes:
* **Top Products Chart**
* **Revenue by Region Chart**
* **Monthly Sales Trend Chart**

## **Key Insights**
* The company’s highest revenue comes from the **top-performing region(s)**.
* **Product demand varies**, and some products consistently sell more.
* Monthly sales trends show **patterns that can guide strategic decisions**.


### **👤 Created By**
**Goodluck Akpan** — Aspiring Data Analyst
Open to internships, collaborations, and data projects.

