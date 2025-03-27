-- Books priced between $15 and $25
SELECT title, author, price
FROM books
WHERE price BETWEEN 15 AND 25
ORDER BY price ASC;

