.echo on --displays queries you're writing
.headers on --displays column headers

-- Name: Tsql_LAB_ch5.sql
-- Author: Steven Rhodes
-- Date: March 21, 2018

--1 List the number of orders by each customer who lives in the US using a CTE. 
--Sort highest to lowest
--with USAcust as 
	--(select customerid from customers where country like 'USA')
	--select count(orderid) as numorders, customerid 
	--from orders 
	--where customerid in USAcust
	--group by customerid order by numorders desc;
	
--2 List the product name and the number of each product from a German supplier sold
--to a customer in Germany using a CTE. Sort from highest to lowest.

with GERprod as (select s.supplierid ,s.country , p.supplierid , p.productid as pid,
p.productname from suppliers s join products p on s.supplierid = p.supplierid
where s.country like ’Germany’),
GERord as (select d.productid as pid , d.quantity , d.orderid , o.orderid , o.shipcountry
from orders o join orderdetails d on o.orderid = d.orderid
where o.ship country like ’Germany’ )
select distinct gp.productname, sum(go.quantity) as TotalSold from GERprod gp join
GERord go
on gp.pid = go.pid group by gp.productname order by TotalSold desc;


  