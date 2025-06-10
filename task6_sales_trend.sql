-- Task 6: Monthly Revenue and Order Volume Analysis

SELECT
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales
WHERE InvoiceDate >= '2020-01-01'
GROUP BY year, month
ORDER BY year, month;
