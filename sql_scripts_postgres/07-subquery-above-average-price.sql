-- Show books priced above the average book price
SELECT title, author, price
FROM books
WHERE price > (
  SELECT AVG(price) FROM books
)
ORDER BY price DESC;

