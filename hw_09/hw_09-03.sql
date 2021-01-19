/*1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".*/
use Sample;

drop function  IF EXISTS hello;

delimiter $$
create function hello()
	returns varchar(50)
    deterministic
    
	begin
		declare daytime time;
        declare greetings varchar(50);
		
        set daytime = (select current_time());
        set greetings = 
			(select 
				case 
					when daytime >= TIME('06:00:00') and daytime < TIME('12:00:00') then 'ое утро'
					when daytime >= TIME('12:00:00') and daytime < TIME('18:00:00') then 'ый день'
					when daytime >= TIME('18:00:00') and daytime <= TIME('23:59:59') then 'ый вечер'
					else 'ой ночи!'
				end);
        set greetings = concat('Добр', greetings, '!');        
    return greetings;
    end$$
delimiter ;

select hello();


/*2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.*/
create table products (name varchar(50), description varchar(50));

drop trigger if exists tg_products_nonulls ;

delimiter $$
create trigger tg_products_nonulls 
	before insert
    on products for each row
    begin
		if new.name is null and new.description is null then
			signal sqlstate '45000' set message_text = 'It is not allowed to have NULL in both columns';
        end if;    
    end $$
delimiter ;

insert into products values ('a', 'b');
insert into products values (NULL, 'b');
insert into products values ('a', NULL);
insert into products values (NULL, NULL);


/*3.(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
Вызов функции FIBONACCI(10) должен возвращать число 55.
*/
use Sample;

drop function  IF EXISTS FIBONACCI;

delimiter $$
create function FIBONACCI(n int2)
	returns int8 
    DETERMINISTIC
    begin
		declare counter int2; 
        declare fib1 int; 
        declare fib2 int;
        declare temp int;
        
        set counter = 2;
        set fib1 = 1;
        set fib2 = 1;
        
        if n = 0 THEN SET fib2 = 0; 
		elseif n = 1 then set fib2 = 1;
        elseif n = 2 then set fib2 = 2;
        else
			begin
				while counter < n DO
						set temp = fib1;
						set fib1 = fib2;
						set fib2 = temp + fib2;
						set counter = counter + 1;
					end while;
				end;
        end if;
       return fib2;	
	end $$   
delimiter ;

select FIBONACCI(1);


        
