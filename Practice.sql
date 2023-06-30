*** Constains ***

create database gk123
use gk123
drop table students123
create table students123
(
Roll_no int not null,
Student_Name varchar(50),
Age int,
Gender varchar(1),
Location varchar(100)
)

select * from students123

insert into students123
values
(1,"Rahul",23,"M","Surat"),
(2,"Keval",22,"M","AMD"),
(3,"shani",20,"M","Rajkot")

drop table dep	
create table dep
(
dep_id int not null,
dep_name varchar(25), 
dep_address varchar(100),
primary key (dep_id)
)
select * from dep

 create table emp
 (
 emp_id int,
 emp_name varchar(50),
 emp_add varchar(100),
 depid int,
 primary key (emp_id),
 foreign key (depid) references dep(dep_id)
 )
 select * from emp
 
 ##############################################################################################################
 *** DDL ***
 show tables
 
 create table employees
(
emp_name varchar(50),
emp_id int not null,
man_name varchar(50),
Division int,
primary key (emp_id)
)

create table emp_new
( 
first_name varchar(50),
last_name varchar(50),
title varchar(5),
Age int,
salary int
)

select * from emp_new

# any column can added by using alter
alter table emp_new
add gender varchar(1)

alter table emp_new
add random_ varchar(1)

# if we delete any column then use drop

alter table emp_new
drop column random_

show tables

drop table emp_new

show tables


create database random_new
drop database random_new
show databases

###############################################################################
*** DQL ***
show databases
show tables
use gk123
drop table emp_info

create table emp_info
(
first_name varchar(50),
last_name varchar(50),
emp_id int not null,
age int,
city varchar(20),
state varchar(200),
primary key (emp_id)
)
 select * from emp_info
 
insert into emp_info values ("john","jo",99980,45,"paysin","gj");
insert into emp_info values ("bohn","po",99983,55,"sin","yj");
insert into emp_info values ("lohn","no",90909,35,"aysin","gk");
insert into emp_info values ("kohn","vo",99234,65,"pain","kl");
insert into emp_info values ("kon","ko",99274,90,"ain","l");
insert into emp_info values ("hhohn","xjo",99960,45,"paysin","rr");
insert into emp_info values ("yyohn","zxpo",79983,66,"hy","cc");
insert into emp_info values ("loyyhn","sno",80909,85,"bhd","rr");
insert into emp_info values ("tktohn","fvo",69234,67,"cdf","r");
insert into emp_info values ("nnkon","yko",49274,98,"aaa","l");

select first_name,last_name from emp_info
select * from emp_info

select count(emp_id) from emp_info
select count(*) from emp_info
select count(state) as No_of_state from emp_info # column name rename from using as

select * from emp_info
where age>85

select * from emp_info where age>80 and age<90

# starts from l
select * from emp_info
where first_name like "l%"
#or
select * from emp_info
where first_name like "L%"

# ends with o
select * from emp_info
where last_name like "%o"

select * from emp_info
where city like "%a%"

select * from emp_info
where city="aaa" and emp_id=49274

select * from emp_info
where city="aaa" or emp_id=90909

select * from emp_info where age=65 or age=45
select * from emp_info where age in (45,65)
select * from emp_info where age in (45,65,35,90)

##################################################################################################
*** DML ***

drop table emp_info
create table emp_info
( 
first_name varchar(50),
last_name varchar(50),
id int not null,
age int,
city varchar(20),
state varchar(20),	
primary key (id)
)

select * from emp_info

insert into emp_info values ("john","jo",99980,45,"paysin","gj");
insert into emp_info values ("bohn","po",99983,55,"sin","yj");
insert into emp_info values ("lohn","no",90909,35,"aysin","gk");
insert into emp_info values ("kohn","vo",99234,65,"pain","kl");
insert into emp_info values ("kon","ko",99274,90,"ain","l");
insert into emp_info values ("hhohn","xjo",99960,45,"paysin","rr");
insert into emp_info values ("yyohn","zxpo",79983,66,"hy","cc");
insert into emp_info values ("loyyhn","sno",80909,85,"bhd","rr");
insert into emp_info values ("tktohn","fvo",69234,67,"cdf","r");
insert into emp_info values ("nnkon","yko",49274,98,"aaa","l");
select * from emp_info

insert into emp_info values (gk,"vora",32569,25,"afg","dfd");

insert into emp_info values ("gk","vora","67569","65","atg","ghgh");
# it is calles typecasting ,it is converting into integer values

insert into emp_info values ("ravi","arora","hello","55","rtg","gsshgh");
# it is not able to convert this string into integer ,if we passing integer in quate then ok

create table exercise
(
emp_Name varchar(25),
designation varchar(25),
age int,
salary float
)
drop table exercise
select * from exercise

insert into exercise values ("jonie weber","secretery",28,19500.00);
insert into exercise values ("posty weber","programmer",32,45300.00);
insert into exercise values ("dirk smith","programmer II",45,75020.00);
insert into exercise values ("ram kumar","supporter",27,65200.00);
insert into exercise values ("sam kumar","manager",67,56300.00);
insert into exercise values ("var pandit","analyst",34,78020.00);
insert into exercise values ("aviksit pandit","data analyst",23,15420.00);
insert into exercise values ("krishna kumar","data scientist",34,55300.00);
insert into exercise values ("nil josi","it supporter",42,25020.00);

select 	* from exercise
where salary<30000

select 	emp_name from exercise
where age<30

select 	emp_name,salary from exercise
where designation like "%programmer%"

select * from exercise
where emp_name like "%ebe%"

select 	* from exercise
where age=45

select 	* from exercise
where emp_name like "%ith"


select 	* from exercise
set sql_safe_updates=0;
update exercise set designation = "Senior programmer" where emp_name="posty weber"
select * from exercise	where emp_name="posty weber"

select * from exercise

update exercise 
set designation="sr data analyst",age=36
where emp_name="var pandit"


update exercise set emp_name="weber williams" where age=32
select * from exercise

update exercise set age=age+1 where emp_name="dirk smith"

select * from exercise

delete from exercise where designation ="it supporter"
select * from exercise

delete from exercise
select * from exercise # table is exist but values/data are not exist

############################################################################################
*** Join_ ***

use gk123

create table joins_
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

select * from joins_

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

insert into joins_ values (1,"satyjit","satyjit","hongkong","hongkong","000000","hongkong sar");
insert into joins_ values (2,"salini","salini","bangalore","bangalore","000000","India");
insert into joins_ values (3,"yjit","yjit","bangalore","bangalore","000000","India");
insert into joins_ values (4,"ramit","ramit","bangalore","bangalore","000000","India");
insert into joins_ values (5,"suresh","suresh","bangalore","bangalore","000000","India");
insert into joins_ values (6,"rem","rem","delhi","delhi","000000","India");
insert into joins_ values (7,"gau","gau","delhi","delhi","000000","India");
insert into joins_ values (8,"kona","kona","mumbai","mumbai","000000","India");
insert into joins_ values (9,"saliya","saliya","goa","goa","000000","India");
insert into joins_ values (10,"roopali","roopali","pune","pune","000000","India");

insert into orders values (901,1,1,sysdate(),92801);
insert into orders values (902,1,1,sysdate()-10,92801);
insert into orders values (903,4,4,sysdate()-20,92801);
insert into orders values (904,5,5,sysdate()-30,92801);
insert into orders values (905,6,6,sysdate()-40,92801);
insert into orders values (906,11,11,sysdate()-10,92801);

select * from joins_
select * from orders

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
left join orders o
on j.customersid=o.customersid

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
right join orders o
on j.customersid=o.customersid

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
inner join orders o
on j.customersid=o.customersid

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
left join orders o
on j.customersid=o.customersid
union
select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
right join orders o
on j.customersid=o.customersid

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
left outer join orders o
on j.customersid=o.customersid
union
select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
right outer join orders o
on j.customersid=o.customersid


select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
cross join orders o
on j.customersid=o.customersid

select j.customersid,j.customersname,j.country,o.orderid,o.orderdate
from joins_ j
inner join orders o
on j.customersid=o.customersid

##########################################################################################################
*** Import_Export ***
show tables
use gk123

select * from bank_marketing__


