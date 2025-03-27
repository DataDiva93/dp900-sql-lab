
# 🔗 Lab 02: SQL Joins

> Date Completed: March __, 2025  
> Lab Source: [Microsoft Learn - DP-900 SQL Joins Lab](https://github.com/MicrosoftLearning/DP-900T00A-Azure-Data-Fundamentals)

---

## ✅ Objective

Learn how to join tables using different types of SQL JOINs to return combined data sets.

- Understand INNER, LEFT, RIGHT, and FULL OUTER joins
- Use joins to analyze related datasets in Azure SQL

---

## 🔍 What I Learned

- **INNER JOIN** returns only matching records
- **LEFT JOIN** shows all from the left table even if there's no match
- **JOINs** can be chained together for complex queries

---

## 💡 Personal Notes

- Always know which table is the “left” or “right” to avoid mix-ups
- Joins are powerful for data analysis — like merging spreadsheets
- Practice helps! Try drawing table relationships on paper

---

## 🧪 Sample Queries

```sql
SELECT C.FirstName, C.LastName, O.OrderDate
FROM SalesLT.Customer AS C
INNER JOIN SalesLT.SalesOrderHeader AS O
ON C.CustomerID = O.CustomerID;

SELECT P.Name, PC.Name AS Category
FROM SalesLT.Product AS P
LEFT JOIN SalesLT.ProductCategory AS PC
ON P.ProductCategoryID = PC.ProductCategoryID;

