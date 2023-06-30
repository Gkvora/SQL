use join_sql
show tables

select * from bank_marketing

select * from bank_marketing where job like "b%"
select * from bank_marketing where job regexp "^b"

select count(*) from bank_marketing where job like "b%"
select count(*) from bank_marketing where job regexp "^b"


3:00 thi baki