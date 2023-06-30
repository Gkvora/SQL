use join_sql

show tables
select * from e

select prod_id,prod_name,datediff(sysdate(),order_date) ,order_date from e

select date_format('2010-06-13','%Y')
select date_format('2010-06-13','%m')
select date_format('2010-06-13','%d')

select date_format(order_date,'%Y'),order_date from e
select date_format(order_date,'%m'),order_date from e
select date_format(order_date,'%d'),order_date from e

select day('2010-06-13')
select month('2010-06-13')
select year('2010-06-13')

select quarter('2010-06-13')
select quarter(order_date) from e

select adddate('2010-06-13',interval 10 day) # add=addition
select adddate('2010-06-13',interval 10 month)
select adddate('2010-06-13',interval 10 year)
select adddate('2010-06-13',interval 10 quarter)

select adddate('2010-06-13',interval -2 day)

select subdate('2010-06-13',interval 2 day)
select subdate('2010-06-13',interval 2 month)
select subdate('2010-06-13',interval 2 year)
select subdate('2010-06-13',interval 2 quarter) #sub=substract
