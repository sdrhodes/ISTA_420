.echo on
.headers on

-- Name: chapter4labs.sql
-- Author: Steven Rhodes
-- Date: March 7, 2018

-- 1
--select e.lastname, e.firstname, e.employeeid, o.employeeid, o.orderdate, o.orderid
--from orders o join employees e on e.employeeid = o.employeeid;
--order by e.lastname, e.firtname, o.orderdate, o.orderid;

-- 2
 -- .mode csv
 -- select t.territorydescription, t.regionid, r.regionid, r.regiondescription 
 -- from region r inner join territories t on r.regionid = t.regionid
 -- order by r.regiondescription, t.territorydescription;
 
 -- 3
 -- select s.CompanyName, s.supplierID, p.productid, p.productname, p.productid
 -- from suppliers s join products p on s.supplierID = p.supplierID
 -- order by s.companyname, p.productname;
 
 -- 4
 -- select o.orderdate, o.orderid, od.orderid, od.productid, od.unitprice, od.quantity
 -- from orders o join order_details od on o.orderid = od.orderid
 -- where o.orderdate = '1998-05-05'
 -- order by o.orderid, od.productid;
 
 -- 5
 --select o.orderdate, o.orderid, od.orderid, od.unitprice, od.quantity,
 --	od.productid, p.productid, p.productname,
 --from orders o 
--		join order_details od on o.orderid = od.orderid
--		join products p on p.productid = od.productid
-- where o.orderdate = '1998-05-05'
-- order by o.orderid, od.productid;

-- 6
--select o.orderid, o.orderdate, o.customerid, o.shipperid, c.companyname 
--	as 'customer name', s.companyname as 'shipper name'
--   from orders o 
--   join customers c on c.customerid = o.customerid
--   join shippers s on s.shipperid = o.shipperid
--   where o.orderdate like '1998-05-%';

-- 7
--select o.orderid, o.customerid, o.employeeid, o.shipcountry, 
	--	e.employeeid, e.firstname || ' ' || e.lastname as EmployeeName,
	--	c.customerid, c.companyname as CustomerName
		
   --from orders o
   --join employees e on e.employeeid = o.employeeid
   --join customers c on c.customerid = o.customerid
   --where o.shipcountry like 'France';
   
-- 8
select o.orderid, o.shipcountry, od.productid, od.orderid, p.productid, p.productname
   ...> from orders o
   ...> join order_details od on o.orderid = od.orderid
   ...> join products p on p.productid = od.productid
   ...> where p.productname like 'Germany';
