/*1. Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.*/
select *
from mysql.user;

create user 'shop'@'localhost' identified by 'password';
GRANT ALL PRIVILEGES ON shop.* TO 'shop'@'localhost';

create user 'shop_read'@'localhost' identified by 'password';
GRANT select ON shop.* TO 'shop_read'@'localhost';


/*2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, 
имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.*/

use Sample;

/*create table accounts (
id int unsigned not null primary key auto_increment,
name varchar(50),
password varchar(50)
)*/

create view v_users as (select id, name from accounts);
select * from v_users;

create user 'user_read'@'localhost' identified by 'password';
GRANT select ON Sample.v_users TO 'user_read'@'localhost';

