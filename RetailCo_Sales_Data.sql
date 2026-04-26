-- -- ================================================
-- Project: RetailCo Sales Analysis
-- Author: Srishma Reddy Manne
-- Date: April 2026
-- Tools: MySQL
-- Description: Analysis of 12-month retail sales 
--              data to identify top products,
--              regional performance, trends and outliers
-- ================================================


use ret;
select product,category from retailco_sales_data;

-- Check for duplicate order IDs
SELECT order_id, COUNT(*) AS occurrences
FROM retailco_sales_data
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Check revenue matches units × price
SELECT order_id, units_sold, unit_price, revenue,
       ROUND(units_sold * unit_price, 2) AS expected_revenue
FROM retailco_sales_data
WHERE ROUND(units_sold * unit_price, 2) != revenue;

-- which products are perfoming the best?
select product,sum(units_sold) as total_sales from retailco_Sales_data
group by product
order by total_sales Desc
limit 5;   #pen set are sold most

-- which  region has more sales
select sum(revenue)as rev ,region from retailco_Sales_data
group by region
order by rev Desc
limit 1;  #east

-- months with low sales
SELECT  sum(units_sold) as total, month(date)
FROM retailco_sales_data
group  by month(date)
ORDER BY total ASC
LIMIT 3;

select category,sum(units_sold) as total from retailco_sales_data
group by category
order by total Asc
limit 1;  -- electronics sold less

-- Overall performance snapshot
SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS avg_order_value
FROM retailco_sales_data;

# outliers
SELECT month(date) AS month, 
       ROUND(SUM(revenue), 2) AS monthly_revenue,
       ROUND(AVG(SUM(revenue)) OVER(), 2) AS avg_revenue
FROM retailco_sales_data
GROUP BY month(date)
ORDER BY monthly_revenue DESC;


# Analyzing the trend
SELECT MONTH(date) AS month_Date, category, SUM(units_sold) AS total
FROM retailco_sales_data
WHERE MONTH(date) > 8
GROUP BY MONTH(date), category
ORDER BY month_Date, total DESC;







