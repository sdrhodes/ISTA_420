.echo on
.headers on

-- Name: Programming_Exercise_TSQL_4.sql
-- Author: Steven Rhodes
-- Date: March 23, 2018

--1 Create an appropriate table schema
use Presidents;
drop table if exists dbo.presidents;
create table dbo.presidents
(
firstname varchar(100) not null,
middlename varchar(100),
lastname varchar(100) not null,
born varchar(100) not null,
died varchar(100) not null,
started varchar(100) not null,
ended varchar(100) not null,
party varchar(100) not null,
homestate varchar(100) not null
);

--2 Insert the CSV data into the table you created
bulk insert dbo.presidents from 'C:\Users\sdrho\Playpen\Presidents_DB.txt'
with
(
fieldterminator = ',',
rowterminator = '\n'
);

--3 Delete the first record from your table using the output clause. This is the header.
Delete from dbo.presidents
output 
	deleted.firstname,
	deleted.lastname,
	deleted.started,
	deleted.homestate
where firstname like 'First Name';


--4 Alter the presidents table by adding a primary key column.
alter table dbo.presidents
add
ID int IDENTITY(1,1) PRIMARY KEY;


--5 Bring the data up to date by updating the last row. Use the output clause
update dbo.presidents
set ended = '1/20/2017'
output inserted.firstname, inserted.lastname
where lastname like 'Obama';


--6 Bring the data up to date by adding a new row. Use the output clause
INSERT INTO dbo.presidents(
		[firstname]
      ,[middlename]
      ,[lastname]
      ,[born]
      ,[died]
      ,[started]
      ,[ended]
      ,[party]
      ,[homestate]) 
VALUES ('Donald', 'John', 'Trump', '6/14/1946',' ', '1/20/2017',' ', 'Republican', 'New York' )
output inserted.firstname, inserted.lastname;

--7 How many presidents from each state belonged to the various political parties? Sort by party and state.
select count(id), homestate, party 
from dbo.presidents 
group by homestate, party 
order by homestate, party;


--8 Create a report showing the number of days each president was in office.








