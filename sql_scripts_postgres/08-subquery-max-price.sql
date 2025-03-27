-- Show the book(s) with the highest price
SELECT title, author, price
FROM books
WHERE price = (
  SELECT MAX(price) FROM books
);

