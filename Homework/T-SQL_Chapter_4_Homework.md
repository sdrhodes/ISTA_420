## Steven Rhodes
### T-SQL Chapter 4 Homework

### 1. In your own words, what is a subquery?
A subquery is a query that the results of which are only used as the input parameters to outer queries.
### 2. In your own words, what is a self contained subquery?
Self contained queries have no connection to the outer query. Self queries can be evaluated independent of the outer query. Can run by itself
### 3. In your own words, what is a correlated subquery?
Correlated subqueries refer to attributes from the tables that appear in the outer query. The correlated query is dependent on the outer query
### 4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
AVG, SUM, COUNT - scalar values
### 5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
(Select * FROM Sales.Orders AS O WHERE O.custid = C.custid); You could use this query to return a list of customers that are listed in both tables. A query that returns a list
### 6. Give an example of a subquery that returns table values. When would you use this kind of subquery?
(Select * FROM Sales.Orders). Same as a outer query that returns a table.
### 7. What does the exists predicate do? Give an example.
The exist predicate accepts subquerys as inputs and evaluates either true or false. An example would be ...EXISTS (Select * from Sales.Orders where sales.country like 'USA');
Returns rows if they exist (true), otherwise, if they don't exist (false)
### 8. What happens if we use the not operator before a predicate? Give an example.
A not operator inverts a predicate. True result are now false, false, are true. An example would be NOT LIKE 'USA'
### 9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
Exists returns two values. Rows either exist or they don't, there is no NULL with the exist predicate

### 10. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
Review pg 145