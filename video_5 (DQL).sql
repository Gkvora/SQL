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
# if any id same then give me error bcoz id is pk and pk is unique

select * from emp_info
select first_name,last_name from emp_info

select count(id) from emp_info
select count(*) from emp_info
select count(id) as record_count from emp_info

select first_name as fn,last_name as ln from emp_info

select first_name,last_name,city from emp_info

select * from emp_info
where age>55 and age<80;

select * from emp_info
where age between 55 and 80

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
where city="aaa" and id=90909

select * from emp_info
where city="aaa" or id=90909

select * from emp_info where age=65 or age=45
select * from emp_info where age in (45,65)
select * from emp_info where age in (45,65,35,90)