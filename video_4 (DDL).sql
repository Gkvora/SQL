show tables

create table employees
(
emp_name varchar(50),
emp_id int not null,
man_name varchar(50),
Division int,
primary key (emp_id)
);
select * from employees
# in MySql ; is not necessarry but microsoft sql ,Oracle etc. in necessary


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

select * from emp_new

show tables

drop table emp_new

show tables

create database random_new
drop database random_new
show databases