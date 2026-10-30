SHOW DATABASES;
USE retail_analytics;
SELECT COUNT(*) AS total_rows
FROM supermarket_sales_csv;
DESCRIBE supermarket_sales_csv;
SELECT *
FROM supermarket_sales_csv;
LIMIT 5;
SHOW COLUMNS FROM supermarket_sales_csv;
SELECT
    COUNT(*) AS total_transactions,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    SUM(`Quantity`) AS units_sold,
    ROUND(SUM(`gross income`), 2) AS total_gross_income,
    ROUND(AVG(`Rating`), 2) AS average_rating
FROM supermarket_sales_csv;
SELECT
    `Product line`,
    COUNT(*) AS transactions,
    SUM(`Quantity`) AS units_sold,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`gross income`), 2) AS gross_income
FROM supermarket_sales_csv
GROUP BY `Product line`
ORDER BY total_sales DESC;
SELECT
    `City`,
    COUNT(*) AS transactions,
    SUM(`Quantity`) AS units_sold,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`gross income`), 2) AS gross_income,
    ROUND(AVG(`Rating`), 2) AS average_rating
FROM supermarket_sales_csv
GROUP BY `City`
ORDER BY total_sales DESC;
SELECT
    `Customer type`,
    COUNT(*) AS transactions,
    SUM(`Quantity`) AS units_sold,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`gross income`), 2) AS gross_income,
    ROUND(AVG(`Rating`), 2) AS average_rating
FROM supermarket_sales_csv
GROUP BY `Customer type`
ORDER BY total_sales DESC;
SELECT
    `Payment`,
    COUNT(*) AS transactions,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`gross income`), 2) AS gross_income,
    ROUND(AVG(`Sales`), 2) AS average_transaction_value
FROM supermarket_sales_csv
GROUP BY `Payment`
ORDER BY total_sales DESC;
SELECT
    DAYNAME(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS day_of_week,
    DAYOFWEEK(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS day_number,
    COUNT(*) AS transactions,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(AVG(`Sales`), 2) AS average_transaction_value
FROM supermarket_sales_csv
GROUP BY day_of_week, day_number
ORDER BY day_number;
SELECT
    `City`,
    `Product line`,
    COUNT(*) AS transactions,
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(
        100 * SUM(`Sales`) /
        SUM(SUM(`Sales`)) OVER (PARTITION BY `City`),
        2
    ) AS city_sales_percentage
FROM supermarket_sales_csv
GROUP BY `City`, `Product line`
ORDER BY `City`, total_sales DESC;