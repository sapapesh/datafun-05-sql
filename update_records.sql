-- update records in the authors data set to Potter where last name is Rowling
update authors
SET last = 'Potter'
where last = 'Rowling';

-- update records in the books data set to reflect Tolkien's Books
UPDATE books
SET title = 'Tolkien's Books'
WHERE year_published IN ('1937', '1954');