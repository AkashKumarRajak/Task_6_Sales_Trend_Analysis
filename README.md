# Task_6_Sales_Trend_Analysis

# Task 6: Sales Trend Analysis Using Aggregations

**Internship**: Data Analyst Intern  
**Company**: Elevate Labs  
**Submitted By**: Akash Kumar Rajak  
**Date**: June 2025

---

## Objective

The goal of this task is to analyze **monthly revenue** and **order volume** using SQL aggregation functions. The analysis helps identify sales trends over time for better business planning and decision-making.

---  

## Dataset Details

- **Name**: `online_sales_dataset.csv`
- **Source**: (Kaggle): https://www.kaggle.com/datasets/yusufdelikkaya/online-sales-dataset
- **Table Name (in SQL)**: `online_sales`

### Key Columns Used

| Column Name     | Description                       |
|------------------|-----------------------------------|
| `InvoiceDate`    | Order date and time               |
| `Quantity`       | Number of items per order         |
| `UnitPrice`      | Price per unit                    |
| `InvoiceNo`      | Unique identifier for each order  |
| `StockCode`      | Product ID                        |

> 💡 Revenue is calculated as `Quantity * UnitPrice`.

---

## Tools Used

- MySQL
- SQL aggregation functions
  

---

## SQL Query

```sql
SELECT
  EXTRACT(YEAR FROM InvoiceDate) AS year,
  EXTRACT(MONTH FROM InvoiceDate) AS month,
  ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue,
  COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales
WHERE InvoiceDate >= '2020-01-01'
GROUP BY year, month
ORDER BY year, month;
```

##Insights

- Peak revenue observed in February 2020.

- January had the highest number of distinct orders.

- Overall revenue trends align with promotional campaigns and seasonality.

---

## Project Files

File Name	Description:
- `task6_sales_trend.sql`: SQL script to run monthly trend query
- `online_sales_dataset.csv`:	Raw dataset used in analysis
- `monthly_trend_output.csv`:	Output table from SQL script
- `README.md`: This project summary and documentation

---

## Contact

- Akash Kumar Rajak
- Email Id: akashkumarrajak200@gmail.com
- LinkedIn: https://www.linkedin.com/in/akash-kumar-rajak-22a98623b/

## Outcome
This task demonstrates the use of SQL for grouped data analysis, revenue aggregation, and temporal trend identification, which are core components of any sales analytics role.
