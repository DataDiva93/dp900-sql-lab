SELECT a.country, COUNT(*) AS book_count
FROM books b
JOIN authors a ON b.author = a.name
GROUP BY a.country
ORDER BY book_count DESC;

