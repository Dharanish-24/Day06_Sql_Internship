# Subqueries
## Types Of Subquery
### 1. Scalar Subquery
    SELECT column1 FROM table
    WHERE column2 = (
    SELECT single_value
    FROM another_table
    WHERE condition
    );
![Scalar Subquery](https://github.com/Dharanish-24/Day06_Sql_Internship/commit/b7e261ea73c87bbcd675b9d0c59dfeed8ee157cf)
### 2. Column Subquery
    SELECT column1 FROM table
    WHERE column2 IN (
        SELECT column2
        FROM another_table
        WHERE condition
    );
![Column Subquery]()
### 3. Row Subquery
    SELECT * FROM table
    WHERE (col1, col2) = (
        SELECT col1, col2
        FROM another_table
        WHERE condition
    );
![Row Subquery]()
## Nested Subquery
    SELECT column1 FROM table1
    WHERE column2 = (
        SELECT column2
        FROM table2
        WHERE condition
    );
![Nested Subquery]()
## Correlated Subquery
    SELECT column1 FROM outer_table o
    WHERE EXISTS (
        SELECT 1
        FROM inner_table i
        WHERE i.related_column = o.column1
    );
![Nested Subquery]()


    
