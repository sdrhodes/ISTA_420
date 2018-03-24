.headers on
.echo on

--select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice*od.quantity) as lineitem,
--sum(lineitem) as total
--from order_details od
--order by od.orderid;

--(od.lineitem*(1/(select distinct od.orderid, (od.unitprice*od.quantity) from order_details)) as total 

select 
	od.orderid, od. productid, od.unitprice, od.quantity,  -- one row 
	(od.unitprice*od.quantity) as linetotal,
	(round((od.unitprice * od.quantity)/
	(select sum(od3.unitprice * od3.quantity)         
		as ordertotal from order_details od3            
		where od3.orderid = od.orderid) *100, 2) as ordertotal  -- select order ids (od3) that match the order ids(od) and sum them to create order total
from order_details od limit 10;                                 -- * 100 creates percent, 2 rounds number of decimals