use join_sql
show tables

select * from bank_marketing


select * from bank_marketing
order by marital asc

select * from bank_marketing
order by duration desc

select job from bank_marketing
group by job
order by job desc

select job,count(*) from bank_marketing
group by job
order by job desc

select job,count(*) as cnt from bank_marketing
group by job
order by cnt asc
#############################################################################################

select count(age) as cnt from bank_marketing where age>90 

select job,count(*) as cnt from bank_marketing  where cnt>500
group by job 
# error then we use having

select job,count(*) as cnt from bank_marketing  
group by job having cnt>500

select job,marital,count(*) as cnt from bank_marketing  
group by job,marital having cnt>500

select job,marital,count(*) as cnt from bank_marketing  
group by job,marital having cnt>100
order by job asc

select * from bank_marketing
limit 2

select job,marital,count(*) as cnt from bank_marketing  
group by job,marital having cnt>100
order by job asc
limit 5

