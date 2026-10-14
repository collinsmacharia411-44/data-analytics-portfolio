# Sales Analysis Using SQL

## Project Overview

This project analyzes sales performance using MySQL and SQL.

The objective is to identify revenue patterns across products, categories, and regions and translate the results into actionable business insights.

The analysis was performed using a sales dataset containing information about products, categories, regions, units sold, and unit prices.

## Business Questions

The analysis answers the following questions:

1. Which products generate the most revenue?
2. Which regions generate the most revenue?
3. Which product category performs best?
4. What percentage of total revenue does each product and region contribute?
5. What is the overall sales performance?
6. What is the highest-revenue product in each region?
7. Are there missing or invalid values in the dataset?

## Tools Used

- MySQL
- DBeaver
- SQL
- GitHub

## Dataset Structure

The main `sales` table contains the following columns:

| Column | Description |
|---|---|
| `order_id` | Unique identifier for the sales record |
| `product` | Product sold |
| `category` | Product category |
| `region` | Sales region |
| `units` | Number of units sold |
| `unit_price` | Price per unit in KES |

## SQL Techniques Used

The project demonstrates:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- Aggregate functions such as `SUM()`, `COUNT()` and `AVG()`
- Subqueries
- `CASE`
- Common Table Expressions (CTEs)
- Window functions
- `DENSE_RANK()`
- Data-quality checks
- Revenue calculations

## Key Findings

### Product Performance

Phones generated the highest revenue at **KES 765,000**, followed by laptops at **KES 640,000**.

Although chairs had the highest unit volume with **27 units sold**, they generated only **KES 135,000** in revenue.

This demonstrates that sales volume alone does not necessarily indicate revenue performance.

### Regional Performance

Nairobi generated the highest revenue at **KES 862,000**, representing approximately **50.5%** of total revenue.

Mombasa generated **KES 510,000**, while Kisumu generated **KES 336,000**.

Nairobi therefore represents the strongest-performing region in the dataset.

### Category Performance

Electronics generated **KES 1,405,000**, representing **82.26%** of total revenue.

Furniture generated **KES 303,000**, representing **17.74%**.

Despite selling more units overall, Furniture generated substantially less revenue than Electronics.

### Regional Product Leaders

The highest-revenue products by region were:

| Region | Top Product | Revenue |
|---|---|---:|
| Kisumu | Laptop | KES 240,000 |
| Mombasa | Phone | KES 450,000 |
| Nairobi | Laptop | KES 400,000 |

## Overall Performance

| KPI | Result |
|---|---:|
| Total Revenue | KES 1,708,000 |
| Total Units Sold | 66 |
| Sales Records | 8 |
| Average Revenue per Record | KES 213,500 |

## Business Recommendations

Based on the analysis:

1. **Prioritize Electronics** because it accounts for the majority of revenue.
2. **Investigate Nairobi's strong performance** to understand which factors contribute to its higher sales.
3. **Analyze Furniture performance further** because it generates relatively low revenue despite higher unit volume.
4. **Investigate regional product preferences**, particularly the strong performance of phones in Mombasa and laptops in Nairobi and Kisumu.
5. Before making inventory or pricing decisions, analyze costs and profit margins because the current dataset contains revenue information but does not contain product costs.

## Limitations

This analysis has several limitations:

- The dataset contains only 8 sales records.
- There is no customer information.
- There are no transaction dates, so time-based trends cannot be analyzed.
- There is no product cost information, so profit and profit margin cannot be calculated.
- Revenue is calculated as `units × unit_price`.
- The findings should therefore be treated as an analytical demonstration rather than a full business performance assessment.

## Project Structure

```text
sales-analysis/
│
├── README.md
└── sales_analysis.sql
```

## Conclusion

The analysis demonstrates how SQL can be used to transform raw sales records into business insights.

The strongest finding is the concentration of revenue in Electronics, which generated more than 82% of total revenue. Regional analysis also showed that Nairobi was the strongest-performing market.

The project demonstrates fundamental and intermediate SQL skills while establishing a foundation for more advanced data analytics projects.