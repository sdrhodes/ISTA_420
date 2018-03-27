.echo on
.headers on

-- Name: Tsql_LAB_ch3b.sql
-- Author: Steven Rhodes
-- Date: March 14, 2018

--2
--Select C.custid, c.companyname, o.orderid, o.orderdate
--from sales.customers as c
--inner join sales.orders
--on c.custid = o.custid

--3
select custid, country from sales.customers where country like 'USA';

select c.custid, count(o.orderid) as ordercount, sum(od.qty) as totalquantity
from sales.customers c
join sales.orders o on o.custid = c.custid
join sales.order_details od on od.orderid = o.orderid
where c.country like 'USA'
group by c.custid;
