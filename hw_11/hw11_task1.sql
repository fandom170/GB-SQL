use shop;


/* 1. Создайте таблицу logs типа Archive. 
Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
название таблицы, идентификатор первичного ключа и содержимое поля name.*/

create table logs (
id int8 unsigned not null auto_increment primary key,
event_date datetime,
table_name varchar(50),
entity_id int8 unsigned,
name varchar(50)
)
engine = archive;

create trigger tg_users after insert on users
for each row
insert into logs(event_date, table_name, entity_id, name)
values (new.created_at, 'user_profiles', new.id, new.name);

create trigger tg_products after insert on products
for each row
insert into logs(event_date, table_name, entity_id, name)
values (new.created_at, 'products', new.id, new.name);

create trigger tg_catalogs after insert on catalogs
for each row
insert into logs(event_date, table_name, entity_id, name)
values (NOW(), 'catalogs', new.id, new.name);


select * from logs;

insert into catalogs(name)
values ('Microphone');

insert into products (name, item_description, price, catalog_id)
values ('mic-990-AS', 'Микрофон для записи голоса', 680.00 ,9);

insert into users (name, birthday_at)
values ('Харитон', '2000-01-18');

select * from logs;

/* 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.*/
-- v1
drop procedure if exists data_generation;
delimiter $$ 
create procedure data_generation (in loop_amt int2)
begin
    declare counter int2;
    declare user_name varchar(25);
    declare birthday date;
    set counter = 0;
    while counter < loop_amt DO
		set user_name = (substring(md5(rand()) from 1 for 10));
        set birthday = now() -  interval floor(rand() * 720) MONTH  - interval floor(rand() * 30) DAY;
		insert into users (name, birthday_at)
		values (user_name, birthday);
        set counter = counter + 1;
	end while;
end$$
delimiter ;

 call data_generation(1000); 
 select * from users order by id desc;

-- v2 Amt of cross joins depends on amount of intital values in table. If it is about 100 entries, 4 joins are enough.
insert into users (name, birthday_at)
select u.name, u.birthday_at 
	from users as u 
    cross join users as u1 
    cross join users as u2 
    cross join users as u3 
    cross join users as u4;
    
-- v3 from lesson
CREATE OR REPLACE VIEW random_data AS
WITH RECURSIVE sequence AS (
  SELECT 1 AS level
  UNION ALL
  SELECT level + 1 AS value FROM sequence WHERE sequence.level < 1000
)
SELECT LEVEL,
CONCAT(SUBSTRING(MD5(UUID()), 1, 5 + rand()*10) , '@mail.com') email1,
CONCAT(SUBSTRING(MD5(UUID()), 1, 5 + rand()*10), '@', SUBSTRING(MD5(UUID()), 1, 3 + rand()*5), '.com') email2,
REGEXP_REPLACE(CONCAT(SUBSTRING(MD5(UUID()), 1, 20 + rand()*20) , '@mail.com'), '\\d', '') email3, -- only characters
concat('+', FLOOR(rand() * 100), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 10000)) phone1,
concat(FLOOR(rand() * 1000000000000)) phone2, -- only numbers
REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '') str1, -- chars a..f
REGEXP_REPLACE(MAKE_SET(rand()*9999999999999999,
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
), ',', '') str2, -- all chars
date_add(now(), INTERVAL rand() * 999999999 SECOND) date_future,
date_add(now(), INTERVAL - rand() * 999999999 SECOND) date_past, 
date_add(now(), INTERVAL - rand() * 999999999 - 16 * 365.25 * 24 * 3600 SECOND) date_past_older_16
FROM sequence;

START TRANSACTION;

INSERT INTO users (id, name, birthday_at, created_at, updated_at)
SELECT rd.LEVEL, 
		(SELECT name FROM users ORDER BY rand() LIMIT 1),
        rd.date_past_older_16,
		rd.date_past, now() FROM random_data as rd
        cross join random_data as rd1
WHERE rd.level < 100 -- BETWEEN 101 AND 200
;

COMMIT;