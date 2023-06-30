use join_sql
show tables

select * from bank_marketing

select marital from bank_marketing
group by marital

select marital,count(*) from bank_marketing
group by marital

select job,count(*) from bank_marketing
group by job

select education,count(*) from bank_marketing
group by education 

select marital,education,count(*) from bank_marketing
group by marital,education

select marital,education,count(*) from bank_marketing
group by marital,education
order by marital asc

select marital,education,count(*) from bank_marketing
group by marital,education
order by education desc

select count(*) from bank_marketing
select count(job) from bank_marketing
select count(age) from bank_marketing where age>50

select * from bank_marketing

select balance from bank_marketing
select sum(balance) from bank_marketing
select round(sum(balance),2) from bank_marketing
select min(balance) from bank_marketing
select max(balance) from bank_marketing
select avg(balance) from bank_marketing
select round(avg(balance),2) from bank_marketing