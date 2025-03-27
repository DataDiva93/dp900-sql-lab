# 🧪 Lab 01: SQL Basics in Azure

> Date Completed: March 26, 2025  
> Lab Source: [Microsoft Learn Lab - DP-900 SQL](https://github.com/MicrosoftLearning/DP-900T00A-Azure-Data-Fundamentals/blob/master/Instructions/Labs/dp900-01-sql-lab.md)

---

## ✅ Objective

Understand basic SQL commands using Azure SQL Database. Focus areas:

- Creating a database
- Querying tables using `SELECT`, `WHERE`, `ORDER BY`
- Using `JOIN`, `GROUP BY`, and `COUNT`

---

## 🔍 What I Learned

- How to use the **Azure portal to create and connect** to an SQL database
- Writing queries in the built-in query editor
- Using `TOP`, `DISTINCT`, and basic filtering to get results

---

## 💡 Personal Notes

- `TOP (N)` is great for limiting rows when you’re previewing large tables
- Azure SQL auto-generates sample databases — don't forget to delete them to save credits!
- SQL is easier to read when properly formatted

---

## 🧪 Sample Queries

```sql
SELECT TOP 10 * 
FROM SalesLT.Product
WHERE ListPrice > 1000
ORDER BY ListPrice DESC;
SELECT ProductCategoryID, COUNT(*) AS ProductCount
FROM SalesLT.Product
GROUP BY ProductCategoryID;

