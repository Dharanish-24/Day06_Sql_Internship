# Subqueries
## Types Of Subquery
### 1. Scalar Subquery
Returns exactly one value (one row, one column)

    SELECT column1 FROM table
    WHERE column2 = (
    SELECT single_value
    FROM another_table
    WHERE condition
    );
![image](https://github.com/Dharanish-24/Day06_Sql_Internship/commit/b7e261ea73c87bbcd675b9d0c59dfeed8ee157cf)
### 2. Column Subquery
Returns one column, multiple rows

    SELECT column1 FROM table
    WHERE column2 IN (
        SELECT column2
        FROM another_table
        WHERE condition
    );
![image](https://github.com/Dharanish-24/Day06_Sql_Internship/blob/main/Screenshot%202025-07-01%20103447.png)
### 3. Row Subquery
 Returns one row, multiple columns.
 
    SELECT * FROM table
    WHERE (col1, col2) = (
        SELECT col1, col2
        FROM another_table
        WHERE condition
    );
![image](https://github.com/Dharanish-24/Day06_Sql_Internship/blob/main/Screenshot%202025-07-01%20104151.png)
## Nested Subquery
A nested subquery is a query inside another SQL statement that does not reference any column from the outer query.

    SELECT column1 FROM table1
    WHERE column2 = (
        SELECT column2
        FROM table2
        WHERE condition
    );
![image](https://github.com/Dharanish-24/Day06_Sql_Internship/blob/main/Screenshot%202025-07-01%20104512.png)
## Correlated Subquery
A correlated subquery is a subquery that references columns from the outer query.

    SELECT column1 FROM outer_table o
    WHERE EXISTS (
        SELECT 1
        FROM inner_table i
        WHERE i.related_column = o.column1
    );
![image](https://github.com/Dharanish-24/Day06_Sql_Internship/blob/main/Screenshot%202025-07-01%20104810.png)


    
