select *
from netflix_titles
limit 10;
select *
from netflix_titles
where type = 'Movie';
select *
from netflix_titles
where type = 'TV Show';
select title, release_year
from netflix_titles
where release_year = '2021';
select *
from netflix_titles
where country like '%INDIA%';
select title, release_year
from netflix_titles
where release_year = '2022'
and country Like '%INDIA%';
select Title, release_year
from netflix_titles
where rating = '5'
and country Like '%INDIA%';
select type,
count(*) as total
from netflix_titles
group by type;
select count(*) as total_Movie
from netflix_titles
where type = 'Movie'
and country Like '%INDIA%';
select country
from netflix_titles
where type = 'Movie'
and rating like '5';
SELECT title,
       release_year
FROM netflix_titles
ORDER BY release_year DESC;
Select	country, release_year,
            count(*) as total
from netflix_titles
group by country, release_year
order by total desc;
