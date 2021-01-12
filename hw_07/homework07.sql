use example;


-- Task 3 v1
select f.id, c.city_name as 'from', ct.city_name as 'to'
from flights as f
inner join cities as c
on f.city_from = c.label
inner join cities as ct
on f.city_to = ct.label
order by f.id;

-- Task 3 v2
select f.id, c.city_name as 'from', ct.city_name as 'to'
from flights as f, cities as c, cities as ct
where f.city_from = c.label and f.city_to = ct.label
order by f.id;

-- Task 3 v3
select f.id
, (select city_name from cities where f.city_from = cities.label)
, (select city_name from cities where f.city_to = cities.label)
from flights as f
