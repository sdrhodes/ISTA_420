## Steven Rhodes
### T-SQL Chapter 8b Homework

### 1. The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.
		UPDATE SalesTaxTable
			SET rate = newDiscount
		WHERE StateID like 'StateYouWantToChange';

### 2. The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?

	Select SalesAmount
	, salesid
	, 3.5 as newrate
	, (salesamount * newrate) as newtax,
	sum(salesamount * newrate) as newtotal,
	from salesforlastyear
	where year = 2017
	group by salesid;
	

### 3. Explain how the proprietary assignment update command works.
Assignment update updates data in a table and assigns values to variables at the same time, it is run as a syntax and is more efficient than running both individually

### 4. What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
ETL is extract, transform, and load, the action of taking large amounts of data and loading them into a database based on business rules and needs

### 5. What are the semantics of MERGE?
	MERGE targetTable
	Using sourceTable
	ON mergeCondition
	WHEN MATCHED
	THEN updateStatement
	WHEN NOT MATCHED BY TARGET
	THEN insertStatement
	WHEN NOT MATCHED BY SOURCE
	THEN deleteStatement

### 6. Write a typical INSERT OUTPUT statement.
	insert into dbo.t1(datacol)
	output inserted.keycol,inerted.datacol
	select lastname
	from hr.employees
	where country = 'usa';

### 7. Write a typical UPDATE OUTPUT statement.
	Update dbo.orderdetails
	set discount += 0.05
	output
	inserted.orderid

### 8. Write a typical DELETE OUTPUT statement.
	Delete from dbo.orders
	output
	deleted.orderid
	where orderdate < '20160101';

### 9. Write a typical MERGE OUTPUT statement.
see page 284

### 10. What is nested DML?
Nested DML is nested update, insert, or delete statements used in subqueries
