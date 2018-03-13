## Steven Rhodes
### T-SQL Chapter 7 Homework

### 1. What is a window function?
A window function is a function that for each row computes a scalar result based on a calculation against a subset of the rows from the underlying query

### 2. What does PARTITION do?
Partition restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row

### 3. What does ORDER BY do?
Defines ordering by giving meaning to rank

### 4. What does ROWS BETWEEN do?
Filters a frame or a subset of rows from the window partition between the two specified delimiters

### 5. What is a ranking window function? Why would you use it? Give an example.
Ranking functions rank each row with respect to others in the window. Ranking might be used to sort information, such as a value

### 6. What is an offset window function? Why would you use it? Give an example.
Offset window functions return an element from a row that is a certain offset from the current row or at the beginning or end of a window frame. An example would be to see the next items in a list

### 7. What do LEAD and LAG DO
Lag and lead support window partitions and window order clauses by obtaining a row that is a certain offset from the current row within the partition

### 8. What do FIRST VALUE and LAST VALUE do?
Return a value from the first and last rows in a window frame

### 9. What is an aggragate window function? Why would you use it? Give an example.
Aggregate window functions are used to aggregate rows in the defined window

### 10. What is a pivot table and what does it do?
Pivot tables rotate rows to columns, and columns to rows