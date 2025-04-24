# 🎵 SQL Data Analysis - Music Store Database

This project contains advanced SQL queries written for analyzing an **Ecommerce (Music Store) SQL Database**. The queries were executed using **PostgreSQL**, primarily via **pgAdmin 4**, and are part of a data analysis task.

## 📌 Objective

Use SQL to extract meaningful insights from a relational music store database by performing:
- Filtering with `WHERE`, `ORDER BY`
- Aggregations with `SUM`, `AVG`
- Complex joins (`INNER`, `LEFT`, `RIGHT`)
- Subqueries
- CTEs (Common Table Expressions)
- Views and Index optimization (where applicable)

## 📂 Files

- `music_store_query.sql`: Contains SQL queries written for Task 3 - Data Analysis
- `screenshot_output.png`: (optional) Screenshots of query output
- `README.md`: This file

## 🧠 Sample Query Highlight

This project includes queries like:

```sql
SELECT cc.billing_country, cc.total_spending, cc.first_name, cc.last_name, cc.customer_id
FROM customer_with_country cc
JOIN country_max_spending ms
ON cc.billing_country = ms.billing_country
WHERE cc.total_spending = ms.max_spending
ORDER BY 1;
