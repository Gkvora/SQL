create database join_sql
use join_sql

create table customers
(
customersid int not null,
customersname varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(10),
country varchar(20),
primary key(customersid)
)

create table orders
(
orderid int not null,
customersid int,
employeeid int,
orderdate datetime,
shipperid int,
primary key(orderid)
)
show tables 

insert into customers values (1,"satyjit","satyjit","hongkong","hongkong","000000","hongkong sar");
insert into customers values (2,"salini","salini","bangalore","bangalore","000000","India");
insert into customers values (3,"yjit","yjit","bangalore","bangalore","000000","India");
insert into customers values (4,"ramit","ramit","bangalore","bangalore","000000","India");
insert into customers values (5,"suresh","suresh","bangalore","bangalore","000000","India");
insert into customers values (6,"rem","rem","delhi","delhi","000000","India");
insert into customers values (7,"gau","gau","delhi","delhi","000000","India");
insert into customers values (8,"kona","kona","mumbai","mumbai","000000","India");
insert into customers values (9,"saliya","saliya","goa","goa","000000","India");
insert into customers values (10,"roopali","roopali","pune","pune","000000","India");

drop table customers
drop table orders

insert into orders values (901,1,1,sysdate(),92801);
insert into orders values (902,1,1,sysdate()-10,92801);
insert into orders values (903,4,4,sysdate()-20,92801);
insert into orders values (904,5,5,sysdate()-30,92801);
insert into orders values (905,6,6,sysdate()-40,92801);
insert into orders values (906,11,11,sysdate()-10,92801);

select * from customers
select * from orders

select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
left join orders o
on c.customersid=o.customersid

select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
right join orders o
on c.customersid=o.customersid

select o.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
right join orders o
on c.customersid=o.customersid

select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
inner join orders o
on c.customersid=o.customersid

select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
left outer join orders o
on c.customersid=o.customersid
union
select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
right outer join orders o
on c.customersid=o.customersid


select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
cross join orders o
on c.customersid=o.customersid

select c.customersid,c.customersname,c.country,o.orderid,o.orderdate 
from customers c
inner join orders o
on c.customersid=o.customersid