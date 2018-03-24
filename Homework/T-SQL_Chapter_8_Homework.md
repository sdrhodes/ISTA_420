## Steven Rhodes
### T-SQL Chapter 8 Homework

### 1. When using INSERT, is the list of columns necessary? Why or why not?
No, since SQL Service will use a default value if one was defined for a column. If a default value isn't available, and the table allows NULLs, null will be used. Otherwise, the insert will fail. The table will use the first position for the first value, second position for the second value, etc.

### 2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
You can use a subquery when using insert select. Insert into always requires a table body expression - subquery.

### 3. What is the operand for the INSERT EXEC statement?
Create procedure AS (query)
Insert exec statements accept parameters with the @ symbol

### 4. How would you use the SELECT INTO statement?
Select into generates a new table with the results of a query. 
		
	Select column names, into tablename, from source table

Number of columns and data types must be identical (names don't matter)

### 5. What are the parameters to the BULK INSERT statement?
Used to dump a bunch of data into a table
Data type, field terminator (separates columns), row terminator (end of row)
Page 258

### 6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
Numbering sequence = identity. Identity resets if you start a new session
Identity does not guarantee uniqueness, you must specify a primary key or unique constraint

### 7. How do you create a SEQUENCE object?
CREATE SEQUENCE. Sequences are guaranteed to be unique, they are not session specific (reset after session ends)

### 8. How do you use a SEQUENCE object?
First create sequence object (give it a name)
Use start with to determine the starting value, and Increment by, to determine the incremental value

### 9. How do you alter a SEQUENCE object?
You can change any properties besides data type with minval, maxval, restart with, increment by, cycle, no cycle, or cache

### 10. What is the difference between DELETE and TRUNCATE?
Delete can filter based on predicates (delete removes the whole table). Truncate deletes all rows (but table still exists)

### 11. What is the difference between DELETE and DROP TABLE?
Delete can be rolled back (it's a query that can remove specific values), 
drop table cannot be rolled back.
