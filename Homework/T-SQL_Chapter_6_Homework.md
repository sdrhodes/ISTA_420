## Steven Rhodes
### T-SQL Chapter 6 Homework

### 1. What does a set operator do?
Set operators are operators that combine rows from two query result sets (sets are groups of unique objects)

### 2. What are the general requirements of a set operator
A set operator follows the general form of:
Input Query1
an operator
Input Query2

Two input queries must produce results with the same number of columns and corresponding columns must have compatible data types (domain must be compatible-data type)

### 3. What is a Venn Diagram? This is not in the book.
A Venn diagram compares two or more concepts, or items, and highlights similarities or some common shared value

### 4. Draw a Venn Diagram of the UNION operator. What does it do?
See drawing in notebook

### 5. Draw a Venn Diagram of the UNION ALL operator. What does it do?
See drawing in notebook

### 6. Draw a Venn Diagram of the INTERSECT operator. What does it do?
See drawing in notebook

### 7. If SQL Server supported the INTERSECT ALL operator, what would it do?
Duplicate rows are included in the result table after the intersect operation

### 8. Draw a Venn Diagram of the EXCEPT operator. What does it do?
See drawing in notebook

### 9. If SQL Server supported the EXCEPT ALL operator, what would it do?
Returns rows from first input that don't have a corresponding occurrences in the second

### 10. What is the precedence of the set operators?
Intersect precedes union and except, and union and except are evaluated in order of appearance
