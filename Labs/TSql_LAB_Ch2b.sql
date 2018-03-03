.echo on
.headers on

-- Name: Tsql_LAB_2b.sql
-- Author: Steven Rhodes
-- Date: February 28, 2018

-- 1. Who are our customers in North America?
select customerid, companyname, country from customers 
	where country in ('USA', 'Canada', 'Mexico');
	
-- 2. What orders were placed on April 1998?
select orderid, orderdate from orders where orderdate like '1998-04-%';

-- 3. What sauces do we sell?
select productid, productname, categoryid 
from products where productname like '%sauce%';

-- 4. You sell some kind of dried fruit I like. What was its name?
select productid, productname, categoryid 
from products where productname like '%dried%';

-- 5. What employees shipped products to Germany in December?
select shippeddate, employeeid, orderid, shipcountry from orders 
where shipcountry like 'Germany' and shippeddate like '%-12-%';

-- 6. We have an issue with product 19. I need to know the total amount and the 
--net amount of all orders for product 19 where the customer took a discount.
select orderid, productid, unitprice, quantity,
(unitprice * quantity) as total_price, discount,
((unitprice * quantity) - (unitprice * quantity *discount)) as net
from order_details where productid = 19 and discount > 0;

-- 7. I need a list of employees by title, first name, and last name, 
-- with the employee’s position under their
-- names, and a line separating each employee.
select titleofcourtesy || ' ' || firstname || ' ' || lastname || ' 
' || title || ' '   from employees;

-- 8. I need a list of our customers and the first name only of 
-- the customer representative.
select substr(contactname, 1, pos-1) as first.name, companyname
from (select *, instr(contactname, ' ') as pos from customers)
order by first.name;

-- 9. Give me a list of our customer contacts alphabetically by last name
select --contactname,
substr(contactname, instr(contactname, ' ')) || ', ' ||
substr(contactname, 1, instr(contactname, ' ')) as alphaname
from customers order by alphaname;



-- 10. How many days old are you today?
select julianday ('now') - julianday ('1987-02-25');




