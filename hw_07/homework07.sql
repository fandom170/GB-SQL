use shop;

-- Task 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
-- v1
select  u.name, u.id
from users as u
inner join orders as o
on u.id = o.user_id;

-- v2
select name, id
from users
where exists (select user_id from orders where orders.user_id = users.id);


-- Task 2 Выведите список товаров products и разделов catalogs, который соответствует товару.
use shop;

select p.name as product_name
		, c.name as catalog_position
from products as p
inner join catalogs as c
on p.catalog_id = c.id
order by c.id;


-- Task 3 
use examples;
/*(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов.*/
-- v1 

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
