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

update exercise set designation="sr data analyst",age=36 where emp_name="var pandit"


update exercise set emp_name="weber williams" where age=32
select * from exercise

update exercise set age=age+1 where emp_name="dirk smith"

select * from exercise

delete from exercise where designation ="it supporter"
select * from exercise

delete from exercise
select * from exercise # table is exist but values/data are not exist
