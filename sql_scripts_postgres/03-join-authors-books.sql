SELECT b.title, a.name AS author, a.country
FROM books b
JOIN authors a ON b.author = a.name;

-- Filter: Only authors from the USA
SELECT b.title, a.name AS author, a.country
FROM books b
JOIN authors a ON b.author = a.name
WHERE a.country = 'USA';

