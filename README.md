# datafun-05-sql

## Git Repository
1. Setup new repository in github including a readme
2. Clone to local
```powershell
    git clone url
```
3. Open in vs code

## Setup the environment
1. Activate the virtual environment
```powershell
    py -m venv .venv
    .\.venv\Scripts\Activate.ps1
```
2. Add a .gitignore file and include .vsode/ and .venv/

## Install dependencies
1. Add pyarrow and pandas
```powershell
    py -m pip install pandas pyarrow
    py -m pip freeze > requirements.txt
```

## How to force reinstall of pandas when it says pandas does not exist
```
pip install --upgrade --force-reinstall pandas
```

## Commit changes and push to github
```powershell
    git add . 
    git commit -m "message"
    git push -u origin main
```
## Add new folder and files
1. Add new folder "data"
2. Add new files authors.csv and books.csv

## Create the db_initialize_showard.py file
This file will create the project database when ran.

## Create the db_operations_showard.py file
This file will call the sql files to perform the manipulations to the data.

## Create the "create_tables.sql"
```powershell
    CREATE TABLE books (
        book_id TEXT PRIMARY KEY,
        title TEXT,
        year_published INTEGER,
        author_id TEXT,
        FOREIGN KEY (author_id) REFERENCES authors(author_id)
    );

    CREATE TABLE authors (
        author_id TEXT PRIMARY KEY,
        first TEXT,
        last TEXT,
        year_born INTEGER
    )
```

## Create the insert_records.sql file
```powershell
    INSERT INTO authors (author_id, first, last) VALUES
    INSERT INTO books (book_id, title, year_published, author_id) VALUES
```

## Create the delete_records.sql file
```powershell
    DELETE FROM authors
    WHERE last = 'Orwell';

    DELETE FROM books
    WHERE title = '1984';
```

## Create the query_aggregation.sql file
```powershell
    SELECT
        COUNT(*) AS total_books,
        AVG(year_published) AS avg_year_published,
        SUM(LENGTH(title)) AS sum_title_length
    FROM
        books;
```

## Create query_filter.sql file
```powershell
    SELECT 
        *
    FROM 
        books
    WHERE 
        year_published < 1900;
```

## Create query_sorting.sql file
```powershell
    SELECT *
        FROM books
    ORDER BY year_published ASC;
```
## Create query_group_by.sql
```powershell
    SELECT year_published, COUNT(*) AS book_count
    FROM books
    GROUP BY year_published
    ORDER BY year_published ASC;
```

## Create query_join.sql file
```powershell
    SELECT books.title, books.year_published, authors.first, authors.last
    FROM books
    INNER JOIN authors ON books.author_id = authors.author_id;
```

## Update the db_operations_showard.py file to run the sql updates
