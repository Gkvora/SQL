select m.movie_id,title,budget,revenue,currency,unit
from movies m 
join financials f 
on m.movie_id=f.movie_id

select m.movie_id,title,budget,revenue,currency,unit
from movies m 
inner join financials f 
on m.movie_id=f.movie_id    
# join is bydefault inner join

select m.movie_id,title,budget,revenue,currency,unit
from movies m 
left join financials f 
on m.movie_id=f.movie_id

select m.movie_id,title,budget,revenue,currency,unit
from movies m 
right join financials f 
on m.movie_id=f.movie_id


select m.movie_id,title,budget,revenue,currency,unit
from movies m 
left join financials f 
on m.movie_id=f.movie_id
union 
select f.movie_id,title,budget,revenue,currency,unit
from movies m 
right join financials f 
on m.movie_id=f.movie_id

select movie_id,title,budget,revenue,currency,unit
from movies m 
left join financials f 
using(movie_id)

select movie_id,title,budget,revenue,currency,unit
from movies m 
right join financials f 
using(movie_id)