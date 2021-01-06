-- Lesson 5 Task 1
/*Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.*/
update users
set updated_at = now(), 
	created_at = now();
-- Lesson 5 Task 2
/*Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/

START TRANSACTION;
	ALTER TABLE users_hw1 ADD COLUMN created_at_ts DATETIME DEFAULT NOW(), 
						  ADD COLUMN updated_at_ts DATETIME DEFAULT NOW()
	;
	UPDATE users_hw1
    SET created_at_ts = (SELECT str_to_date(created_at, '%d.%m.%Y %H:%i')),
        updated_at_ts = (SELECT str_to_date(updated_at, '%d.%m.%Y %H:%i'))
	;    
    ALTER TABLE users_hw1 DROP COLUMN created_at, 
					  DROP COLUMN updated_at
	;	
    ALTER TABLE users_hw1 RENAME COLUMN created_at_ts to created_at,
					  RENAME COLUMN updated_at_ts to updated_at
	;
    ALTER TABLE users_hw1 
		CHANGE COLUMN updated_at updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
	;
COMMIT;

-- Lesson 5 Task 3
/*В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

-- v1
SELECT *
FROM storehouses_products as sp
order by sp.value = 0, value;

-- v2
SELECT *
FROM storehouses_profucts as sp
order by FIELD (value, 0), value;

-- Lesson 5 task 4
/*(по желанию) Из таблицы users необходимо извлечь пользователей, 
родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)*/
SELECT user_id, first_name, last_name
FROM user_profiles
where monthname(birthday) in ('August', 'May');

-- Lesson 5 task 5
/* (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.*/
SELECT * 
FROM catalogs 
WHERE id IN (5, 1, 2)
order by field(id, 5, 1, 2);













