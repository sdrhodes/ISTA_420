.echo on
.headers on

-- Name: Tsql_LAB_ch6.sql
-- Author: Steven Rhodes
-- Date: March 21, 2018

--1
--select distinct country from suppliers 
--union
--select distinct country from customers;

--2
--select city, country from suppliers 
--union
--select city, country from customers
--order by city, country;

--3
--select country from suppliers 
---intersect
--select country from customers
--order by country;

--4
--select city, country from suppliers 
---intersect
--select city, country from customers
--order by city, country;

--5
--select country from customers 
--except
--select country from suppliers
--order by country;

--6
--select country from suppliers
--except
--select country from customers
--order by country;

--ex3book
--SELECT [custid],[empid],[orderdate]
  --FROM [TSQLV4].[Sales].[Orders]
  --where orderdate like '2016-01-%'
  --except 
  --SELECT [custid],[empid],[orderdate]
  --FROM [TSQLV4].[Sales].[Orders]
  --where orderdate like '2016-02-%';

  --ex4book
--SELECT [custid],[empid]
  --FROM [TSQLV4].[Sales].[Orders]
  --where orderdate like '2016-01-%'
  --intersect 
  --SELECT [custid],[empid]
  --FROM [TSQLV4].[Sales].[Orders]
  --where orderdate like '2016-02-%'
  --order by empid desc;
  
  --ex5book
  SELECT [custid],[empid]
  FROM [TSQLV4].[Sales].[Orders]
  where orderdate like '2016-01-%'
  intersect 
  SELECT [custid],[empid]
  FROM [TSQLV4].[Sales].[Orders]
  where orderdate like '2016-02-%'
  except
  SELECT [custid],[empid]
  FROM [TSQLV4].[Sales].[Orders]
  where orderdate like '2015-%'
  order by empid desc;
  