use video_3
show tables
select * from emp_info
select first_name from emp_info
select last_name from emp_info
select first_name,last_name from emp_info

select concat("hello","vora","GAUTAM")

select concat(first_name,last_name) from emp_info
select concat(first_name," ",last_name) from emp_info

select trim(first_name) from emp_info # some times name have space then remove it by using trim keyword

select substr("vora gautam",6,3)
select substr("vora gautam",6,6) as extractstring
select substr(first_name,1,3) from emp_info 

select first_name,upper(first_name),last_name,lower(last_name) from emp_info 

select character_length("Hello Vora")
select first_name,character_length(first_name) from emp_info

select mid("Hello vora",2,3)
select mid("Hello vora",2,3), substr("Hello vora",2,3)

select character_length(first_name) from emp_info
select floor(character_length(first_name)) from emp_info
select ceiling(character_length(first_name)) from emp_info

