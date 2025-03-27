CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author TEXT NOT NULL
);

INSERT INTO books (title, author) VALUES
('PostgreSQL Made Easy', 'DataDiva'),
('Learning SQL', 'Joe Celko'),
('Hands-On Cloud', 'K21 Academy');

SELECT * FROM books;

