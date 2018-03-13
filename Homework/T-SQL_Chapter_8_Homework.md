## Steven Rhodes
### T-SQL Chapter 8 Homework

### 1. When using INSERT, is the list of columns necessary? Why or why not?
No, since SQL Service will use a default value if one was defined for a column. If a default value isn't available, and the table allows NULLs, null will be used. Otherwise, the insert will fail

### 2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
You can use a subquery when using insert select. I'm assuming you would not use as subquery of the table you would be inserting information in to

### 3. What is the operand for the INSERT EXEC statement?
Insert exec statements use the @ operand

### 4. How would you use the INSERT INTO statement?
Insert into would insert the table queried into a target table

### 5. What are the parameters to the BULK INSERT statement?
Data type, field terminator, row terminator

### 6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
Identity does not guarantee uniqueness, you must specify a primary key or unique constraint

### 7. How do you create a SEQUENCE object?
CREATE SEQUENCE

### 8. How do you use a SEQUENCE object?
Use start with to determine the starting value, and Increment by, to determine the incremental value

### 9. How do you alter a SEQUENCE object?
You can change any properties besides data type with minval, maxval, restart with, increment by, cycle, no cycle, or cache

### 10. What is the difference between DELETE and TRUNCATE?
Delete can filter based on predicates. Truncate deletes all rows

### 11. What is the difference between DELETE and DROP TABLE?
Delete can be rolled back, drop table cannot
