# 🔤 Lab 03: Data Types in Azure SQL

> Date Completed: March __, 2025  
> Lab Source: [Microsoft Learn - Data Types](https://github.com/MicrosoftLearning/DP-900T00A-Azure-Data-Fundamentals)

---

## ✅ Objective

Understand and explore SQL data types used in Azure databases.

- Numeric, character, date/time, binary, and spatial data types
- How to choose the right data type for performance and storage

---

## 🔍 What I Learned

- VARCHAR vs NVARCHAR — use NVARCHAR for Unicode (e.g., emojis or international chars)
- INT vs BIGINT — use wisely based on expected value range
- DATE and DATETIME — DATETIME includes time to the second

---

## 💡 Personal Notes

- Avoid using `TEXT` or `NTEXT` — they’re deprecated
- Always think about **range and storage size** when picking numeric types
- Azure SQL gives warnings when casting data incorrectly — pay attention!

---

## 🧪 Sample Queries

```sql
-- Check data types in a table
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Product';

-- Example of type casting
SELECT CAST(ListPrice AS INT) AS RoundedPrice
FROM SalesLT.Product;

