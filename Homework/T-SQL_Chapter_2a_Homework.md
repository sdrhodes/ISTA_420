## Steven Rhodes
### T-SQL Homework Chapter 2a

### 1. What is a primary key constraint? What two other constraints is it equivalent to? 
A primary constraint enforces uniqueness of rows. It is equivalent to a uniqueness constraint and a nullability constraint (not null)

### 2. What is a nullability constraint? What does it prevent?
A nullability constraint disallows nulls in constraint attributes (has to contain a value)

### 3. What is a unique constraint? What does it prevent?
Unique constraints ensure all rows are unique. Multiple unique constraints on the same table prevents redundant information

### 4. What is a foreign key constraint? What does it allow?
Foreign key constraints are defined on attributes of a reference table. Reference tables contain attributes of referenced tables that can be used by referencing tables though the use of a canidate key (unique or primary). This allows for use of data between different tables. It also enforces "no action," deleting referenced rows is disallowed. When you specify foreign key, it must point to a column in another table, and it must contain a value.

### 5.What is a check constraint? What does it allow?
A check constraint (when creating columns) accepts or rejects rows based on predicates (true or false) that a row must meet. An example would be to check if values in a column are greater than 20, and return only those that evaluate to FALSE or TRUE.

### 6. What is a default constraint? What does it allow?
The default constraint (when creating columns) allows you to alter attributes as they're created. For example, code could be created that populates an entries "customeraddress" attribute. If no address is manually entered, the server could enter the data from a referenced "customerdetails" table. If you do not specifiy a ZIP code, it would automatically populate a ZIP code

### 7. What is domain integrity? This is not in your text book, but it's important
Wikipedia- Domain integrity specifies that all columns in a relational database must be declared upon a defined domain. I assume this means declaring a data type and ensuring that, for example, an attribute such as "StreetName" doesn't allow special characters, or "ZipCode" doesn't allow letters.

### 8. What is the difference between the where and the having clauses? How are they alike?
WHERE and HAVING are similar in they they both evaluate statements as true or false. WHERE evaluates all rows, HAVING evaluates groups (after the rows have been grouped). Where evaluates each row, having evaluates groups (not individual members of groups).

### 9. What SQL operator has the highest precedence? What SQL operator has the lowest precedence? 
() Perentheses highest, asignment =
Query clase: The FROM operator has the highest precedence. The ORDER BY operator has the lowest precedence

### 10. Yes or no: In the SQL standard, is NULL equal to NULL? Why or why not?
In SQL standard, a column with a unique constraint is supposed to accept multiple NULLS (as if two NULLS are different from each other)
No. Two unknown objects can't be equal to each other

Ask question about pg 23: "The index is defined as a unique one, and the filter excludes NULLs from the index, so duplicate NULLs will be allowed, whereas duplicate non-NULL values won't be allowed

	CREATE UNIQUE INDEX idx_ssn_notnull ON dbo.Employees(ssn) WHERE ssn IS NOT NULL;