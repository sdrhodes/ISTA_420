## Steven Rhodes
### T-SQL Chapter 5 Homework

### 1. What is a table expression? Can you give a technical definition of a table expression?
A table expression is a named query that represents a valid relational table, relational meaning it meets the requirements of 1NF. No duplicate rows, unordered, every column has a unique name.

### 2. In what SQL clause are derived tables (table valued subqueries) located?
They are defined in the from clause of an outer query

### 3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?
You can use the alias from an outer table in an inner table because the inner table can contain a corregated subquery, but the outer cannot

A subquery in the from clause is created first, so it already exists

### 4. What SQL key word defines a common table expression?
CTEs are defined by the WITH statement

### 5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
Yes, a derived table can use table alias from a preceding table expression using the external form (specifying the target column list in parentheses)

### 6. Can a main query refer to a previously defined common table expression by multiple aliases?
Yes

### 7. In SQL, is a view a durable object?
Yes, views are durable objects that can be reused, they are stored as permanent objects

### 8. In a view, what does WITH CHECK OPTION do? Why is this important?
With check option prevents modifications through the view that conflicts with the view filter this prevents people from changing a view, which would affect the underlying table

### 9. In a view, what does SCHEMABINDING do? Why is this important?
Schemabinding binds the schema of referenced objects to the schema of referencing objects. Connects schema of a view to schema of a table, and keep them in sync (the columns)

### 10. What is a table valued function?
A table function is a reusable table expression that support input parameters (optionally accepts values and returns values)

### 11. What does the APPLY operator do?
Apply applies a table to each row of another table

### 12. What are the two forms of the APPLY operator? Give an example of each.
A cross apply applies a right table to each row of a left table. If the comparison returns an empty set, the outer apply applies a second logical processing phase and preserves all rows