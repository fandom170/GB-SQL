/*Практическое задание по теме “Транзакции, переменные, представления”*/

/*1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.*/

start transaction;
    insert into Sample.users
	select *
	from shop.users
	where shop.users.id = 1;
commit;

/*2 Создайте представление, которое выводит название name товарной позиции 
из таблицы products и соответствующее название каталога name из таблицы catalogs.*/
use shop;

create view product_name as
	select p.name as goods_name
		, c.name as catalog_name
	from products as p
    inner join catalogs as c
    on p.catalog_id = c.id;

select *
from product_name;


/*3. по желанию) Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, 
если она отсутствует.*/
use Sample;
-- v1
select birthday_at, if(birthday_at in('2018-08-01', '2016-08-04', '2018-08-16', '2018-08-17'), 1, 0)
from users;

/*update users
set birthday_at = '2018-08-17'
order by rand() limit 1*/



/*4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/
use Sample;

select * 
from users;

delete from users
where id not in 
	(select * 
    from (select id
		  from users
          order by created_at desc limit 5) as u
	);



