.echo on
.headers on

--Name: cars.sql
--Author: Steven Rhodes
--Date: February 22, 2018

drop table if exists cars;

create table cars (
id integer,
make text,
model text,
year integer,
color text
);

insert into cars values (1, 'Dodge', 'Ram 3500', 2015, 'brown');
insert into cars values (2, 'Volkswagen', 'Jetta', 2017, 'red');
insert into cars values (3, 'Subaru', 'Outback', 2017, 'blue');
insert into cars values (4, 'Volkswagen', 'Jetta', 2017, 'blue');
insert into cars values (5, 'Toyota', 'Tacoma', 2014, 'black');
insert into cars values (6, 'Mazda', '3', 2006, 'silver');
insert into cars values (7, 'Ford', 'Fusion', 2016, 'red');
insert into cars values (8, 'Dodge', 'Challenger', 2016, 'orange');
insert into cars values (9, 'Ford', 'Focus', 2014, 'silver');
insert into cars values (10, 'Mercedes', 'E63', 2017, 'red');
insert into cars values (11, 'BMW', 'M3', 2013, 'green');

.schema cars

select * from cars;
select * from cars where make like 'volkswagen' and model like 'jetta';
select * from cars where year = 2018;
select avg(year) from cars;