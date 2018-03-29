## Steven Rhodes
### T-SQL Chapter 9 Homework

### 1. What is a temporal table?
Temporal tables display data at specific points in time

### 2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
You could use temporal tables to show states of data prior to manipulation

### 3. What are the semantics of a temporal table? There are seven of them.
Primary key, two columns defined as datetime2, start column, end column, period columns, system_versioning on, linked history table

### 4. How do you search a history table?
Use the new FOR SYSTEM_TIME clause with four temporal-specific sub-clauses to query data across the current 	
	AS OF <date_time>

	FROM <start_date_time> TO <end_date_time>

	BETWEEN <start_date_time> AND <end_date_time>

	CONTAINED IN (<start_date_time> , <end_date_time>)

	ALL

### 5. How do you modify a history table?
You modify current tables with insert, update, delete, and merge

### 6. How do you delete date from a history table? Why would you want to delete data from a history table?
DELETE FROM the current table

### 8. How do you query all data from both a history file and the current data?
FROM @start to @end (end being infinity)

### 9. How do you drop a temporal table?
Set system_versioning = off, Drop current table (Drop table if exists)
