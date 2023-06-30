# print all the years where more than 2 movies were released
select * from movies
select release_year,count(*) as movies_count
 from movies
 group by release_year
 order by movies_count desc
 
 select release_year,count(*) as movies_count
 from movies
 group by release_year
 having movies_count>2
 order by movies_count desc
 
# FROM -- WHERE -- GROUP BY -- HAVING -- ORDER BY 
select release_year,count(*) as movies_count
 from movies
 where imdb_rating>6
 group by release_year
 having movies_count>2
 order by movies_count desc
  
select release_year,count(*) as movies_count
 from movies
 where imdb_rating>6
 group by release_year
 having imdb_rating>2
 order by movies_count desc
  # because imdb_rating is not available in select column
 
 select curdate()
 select year(curdate())actors
 
 select *,year(curdate()) as current_year,year(curdate()) - birth_year as age
 from actors
 
 select * from financials
 
 select *,(revenue - budget) as profit
 from financials
 
 select *,
 if (currency="usd",revenue*77,revenue) as revenue_INR
 from financials
 # if(condition,true,false)
 
 select distinct unit from financials
 
 select *,
   case 
       when unit="billions" then revenue*1000
	   when unit="thousands" then revenue/1000
       else revenue
	end as revenue_mill
from financials