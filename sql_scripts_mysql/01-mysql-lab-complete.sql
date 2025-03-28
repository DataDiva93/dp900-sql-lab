CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100),
  author VARCHAR(100),
  price DECIMAL(5,2)
);

INSERT INTO books (title, author, price) VALUES
('PostgreSQL Made Easy', 'DataDiva', 19.99),
('Learning SQL', 'Joe Celko', 24.99),
('Hands-On Cloud', 'K21 Academy', 29.99);

CREATE TABLE authors (
  name VARCHAR(100) PRIMARY KEY,
  country VARCHAR(100)
);

INSERT INTO authors (name, country) VALUES
('DataDiva', 'USA'),
('Joe Celko', 'USA'),
('K21 Academy', 'India');

-- Filter and Sort
SELECT * FROM books
WHERE price BETWEEN 20 AND 30
ORDER BY price DESC;

-- JOIN
SELECT b.title, b.author, b.price, a.country
FROM books b
JOIN authors a ON b.author = a.name;

-- Filter by country
SELECT b.title, b.author, b.price, a.country
FROM books b
JOIN authors a ON b.author = a.name
WHERE a.country = 'USA';

-- Group by country
SELECT a.country, COUNT(*) AS book_count
FROM books b
JOIN authors a ON b.author = a.name
GROUP BY a.country;

-- Sort by price within country
SELECT b.title, b.author, b.price, a.country
FROM books b
JOIN authors a ON b.author = a.name
ORDER BY a.country, b.price DESC;

-- Average price by country
SELECT a.country, AVG(b.price) AS avg_price
FROM books b
JOIN authors a ON b.author = a.name
GROUP BY a.country;

-- Subquery: books above average price
SELECT title, author, price
FROM books
WHERE price > (
  SELECT AVG(price) FROM books
)
ORDER BY price DESC;

-- Create read-only user
CREATE USER 'readuser'@'localhost' IDENTIFIED BY 'ReadOnly2025!';
GRANT SELECT ON bookstore.* TO 'readuser'@'localhost';

