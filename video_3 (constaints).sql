create database video_3
drop table students
use students
create table students
( 
Roll_no int ,
Studen_Name varchar(50) not null,
age int,
gender varchar(1),
location varchar(100)
)

select * from students

insert into students values (01,"raghu",15,"M","ayodhya")
insert into students values (02,null,16,"M","vrund")



drop table dep
create table dep
(
dep_id int not null,
dep_name varchar(25), 
dep_address varchar(100),
primary key (dep_id)
)
 insert into dep values (null,null,null)
 
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