## Steven Rhodes
# T-SQL Homework Chapter 2c

### 1. What is a data type? Why do we have data type?
A data type determines how much memory will be allocated for each character. In the book, we deal with regular and Unicode data types. Regular use one byte of storage per character (allowing for two languages to be used), unitype uses 2 bytes per character (allowing for multiple languages). In cases where surrogate pairs are used, 4 bytes per character are required

### 2. What is a collation? Name four elements of a collation
Collation is a property of character data that includes elements such as language support, sort order, case sensitivity, and accent sensitivity

### 3. How would you strip whitespace from a string? For example, supposed you had "___Dave___" but wanted only "Dave"
	SELECT LTRIM(RTRIM('    DAVE    '));

### 4. Suppose you wanted to make a list of every college and university that was called an institute from the college table. write the query
	select institutionid, institutionname
	from higherlearning
	where institutionname like 'institute';

### 5. How would you find out the index of the first space in a string? for example, the index of the first space in "Barack Hussein Obama" would be 7
		Select charindex(' ','Barack Hussein Obama");

### 6. How would you select just the first name in a list of the presidents. First names can be an arbitrary length, from "Cal" to "benjamin."
		Select charindex(' ', '%'), presidentname
			from presidentname;
		Select substring(presidentname, 1, charindex);

		Substring(presidentname, 1, charindex(' ', presidentname) - 1) as firstname
	

### 7. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries
	Select dateadd(day, 30, firstinvoice) as secondinvoice
	from firstinvoice;
	

### 8. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. write a select query that does this 
	select datediff(day, sysdatetime(), 20251203)

### 9. What function returns the current date? This is very useful in a table that maintains a log of events such as user logins
	getdate, sysdatetime