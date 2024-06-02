-- Perform INNER JOIN operation on two tables
SELECT books.title, books.year_published, authors.first, authors.last
FROM books
INNER JOIN authors ON books.author_id = authors.author_id;