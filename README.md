RetailCo Sales Analysis 🛒
Overview
This project analyzes 12 months of retail sales data for a fictional company called RetailCo. The goal was to identify top-performing products, regional trends, monthly patterns, and data quality issues using SQL.

Tools Used

MySQL — data querying and analysis
MySQL Workbench — database management


Dataset

100 rows of sales transactions
12 months of data (January 2024 – December 2024)
Columns: order_id, date, region, category, product, units_sold, unit_price, revenue, sales_rep
4 regions: North, South, East, West
5 product categories: Electronics, Clothing, Stationery, Home & Kitchen, Sports


Business Questions Answered
#QuestionFinding1Are there data quality issues?No duplicate order IDs. Revenue calculations are accurate.2Which products perform best?Pen Set has the highest total units sold3Which region generates most revenue?East region leads in total revenue4Which months have lowest sales?February, March and August show lowest unit sales5Which category sells least?Electronics has lowest total units sold6What is the overall performance?Analyzed total orders, total revenue and average order value7Are there any outliers?November shows a moderate revenue spike — likely seasonal8What trends exist by category?Electronics shows flat trend Sep–Nov then moderate increase in Dec

Key Insights

📦 Stationery dominates volume — Pen Sets and Notebooks are the most sold products
🌍 East region leads revenue — strongest market for RetailCo
📉 February and August are weak months — potential targets for promotional campaigns
🔌 Electronics low in units but high in revenue — high value, low volume category
📈 November moderate outlier — likely driven by pre-holiday shopping demand


SQL Analyses Included
RetailCo_Sales_Data.sql

✅ Data quality checks (duplicates + revenue validation)
✅ Top 5 best performing products
✅ Regional revenue comparison
✅ Monthly sales trend analysis
✅ Category performance ranking
✅ Overall business snapshot (orders, revenue, avg order value)
✅ Outlier detection by month
✅ Category trend analysis (Sep–Dec)


How to Run

Import RetailCo_Sales_Data.csv into MySQL
Create a database: CREATE DATABASE ret;
Run RetailCo_Sales_Data.sql in MySQL Workbench


What I Learned

How to structure a full SQL analysis from data quality to business insights
Using GROUP BY + SUM() to aggregate data meaningfully
Using MONTH() to analyze time-based trends
Identifying outliers and trends from raw sales data
Translating data findings into business language


Author
Srishma Reddy Manne
