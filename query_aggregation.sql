-- Query to perform aggregation functions on the books table
SELECT
    COUNT(*) AS total_books,
    AVG(year_published) AS avg_year_published,
    SUM(LENGTH(title)) AS sum_title_length
FROM
    books;