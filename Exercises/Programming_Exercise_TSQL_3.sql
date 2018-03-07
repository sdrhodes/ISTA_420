--Exercise 1-1

--select hr.empid, hr.firstname + ' ' + hr.lastname, n.n
--from HR.Employees as hr
--cross join dbo.Nums as n
--where n.n < 6
--order by n.n, hr.empid;

--Exercise 1-2
--select hr.empid,
--dateadd(day, n.n - 1, cast ('20160612' as date)) as dt
--from hr.employees as hr
--cross join dbo.nums as n
--where n.n <= datediff(day, '20160612', '20160616') +1
--order by empid, dt;

--Exercise 2
--Select c.custid, c.companyname, o.orderid, o.orderdate
--from sales.customers as c
--inner join sales.orders as o
--on c.custid = o.custid;

--Exercise 3
--select c.custid, count(distinct o_d.orderid) as numorders, sum (o_d.qty) as totalqty
--from sales.orders as o
--join sales.customers as c on o.custid = c.custid
--join sales.orderdetails as o_d on o_d.orderid = o.orderid
--where c.country like 'USA'
--group by c.custid;

--Exercise 4
--select c.custid, c.companyname, o.orderid, o.orderdate
--from sales.customers as c
--left outer join sales.orders as o on c.custid = o.custid

--Exercise 5
select c.custid, c.companyname, o.orderid, o.orderdate
from sales.customers as c
left outer join sales.orders as o on c.custid = o.custid
where o.orderid is null;