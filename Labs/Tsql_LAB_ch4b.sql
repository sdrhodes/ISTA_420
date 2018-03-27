.echo on
.headers on

-- Name: Tsql_LAB_ch4b.sql
-- Author: Steven Rhodes
-- Date: March 15, 2018

--1
--select o.orderid, o.custid, o.empid from sales.orders o 
	--where o.orderdate = 
		--(select max(o1.orderdate) from sales.orders o1);
		
--2
--select o.orderid, o.custid, o.empid, o.orderdate 
--from sales.orders o
--where o.custid in 
--(select top (1) with ties o1.custid 
--from sales.orders o1 
--group by o1.custid
--order by count(*) desc);

--3
--select e.empid, e.Firstname, e.Lastname from hr.Employees e
--where e.empid not in (select o.empid from sales.orders o 
--where o.orderdate >= '2016-05-01');