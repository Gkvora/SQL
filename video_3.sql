select * from movies
SELECT MAX(imdb_rating) from movies
where industry="bollywood"
SELECT Min(imdb_rating) from movies where industry="bollywood"
select avg(imdb_rating) from movies where studio="marvel studios"
select round(avg(imdb_rating),2) from movies where studio="marvel studios"
select round(avg(imdb_rating),2) as rd from movies where studio="marvel studios"
select 
   max(imdb_rating) as max_rating,
   min(imdb_rating) as min_rating,
   round(avg(imdb_rating),2) as avg_rating
from movies where studio="marvel studios"

select industry ,count(*) from movies
group by industry

select studio ,count(*) from movies
group by studio

select studio ,count(*) as cnt from movies
group by studio
order by cnt desc

select 
     industry ,
     count(industry) as cnt,
     round(avg(imdb_rating),1) as avg_rating
from movies
group by industry

select 
     studio,
     count(studio) as cnt,
     round(avg(imdb_rating),1) as avg_rating
from movies
group by studio
order by avg_rating desc
'Universal Pictures'
'Universal Pictures  '

select 
     studio,
     count(studio) as cnt,
     round(avg(imdb_rating),1) as avg_rating
from movies
where studio!=""
group by studio
order by avg_rating desc
"search on google mysql inbuilt function"