## Steven Rhodes
### T-SQL Chapter 3 Homework

### 1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
One reason would be to create all possible combinations of two tables. This could also include multiplying a table by itself.

### 2. Describe in your own words the output from an inner join.
An inner join results in multiplying tables together, and filtering the results to some predicate, such as color = red

### 3. Describe in your own words the output from an outer join.
Outer joins multiple tables, filtering results by a predicate. Finally, rows that do not find a match, based on the predicate, are added to the results

### 4. Describe in your own words the output from an cross join.
Cross joins create a cartesian product of two tables. Example, table x and table y, cross joined would be xy

### 5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?


### 6. Give an example of a composite join.
A composite key requires matching multiple predicates in the return table. For example, on color = red, and engine = v8

### 7. What is the diﬀerence between the following two queries? The business problem is “How many orders do we have from each customer?”
================first query=============== 

SELECT C.custid, COUNT(*) AS numorders FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid GROUP BY C.custid; 


================second query=============== 
SELECT C.custid, COUNT(O.orderid) AS numorders FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid GROUP BY C.custid;

### 8. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid WHERE O.orderdate >= ’20160101’;