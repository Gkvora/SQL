select * from movies
SELECT * FROM movies where industry="Bollywood";
SELECT * FROM movies where industry="Hollywood";
SELECT * FROM movies where title like "%thor%";
SELECT * FROM movies where title like "america";
SELECT * FROM movies where title like "%america%";
SELECT * FROM movies where studio="" ;
SELECT * FROM movies where imdb_rating>9;
SELECT * FROM movies where imdb_rating<=5;
SELECT * FROM movies where imdb_rating>=6 and imdb_rating<=8;
SELECT * FROM movies where imdb_rating between 6 and 8;
SELECT * 
FROM movies 
where release_year =2022;
SELECT * FROM movies where release_year =2022 or release_year=2019;
SELECT * FROM movies where release_year =2022 or release_year=2019 or release_year=2018;
SELECT * FROM movies where release_year in (2022 ,2019 ,2018) 
SELECT * FROM movies where studio in ("marvel studios","hombale films"); 
SELECT * FROM movies where imdb_rating is null
SELECT * FROM movies where imdb_rating is not null
SELECT * FROM movies where industry="Bollywood" order by imdb_rating asc
SELECT * FROM movies where industry="Bollywood" order by imdb_rating desc
SELECT * FROM movies where industry="Bollywood" order by imdb_rating desc limit 
SELECT * FROM movies where industry="Bollywood" order by imdb_rating desc limit 5 offset 1