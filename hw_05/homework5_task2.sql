-- 1. Подсчитайте средний возраст пользователей в таблице users.
select round(avg(YEAR(now()) - YEAR(birthday)), 2) as avg_age
from user_profiles;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
select
	DAYNAME(birthday) as day_of_week
	, count(birthday) as birthday_qty_per_day
from user_profiles
group by (DAYNAME(birthday))
ORDER BY birthday_qty_per_day
;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы
WITH id_values (user_id) AS (
select  if(ifnull(user_id, 1), user_id, abs(user_id))
    from user_profiles
)

select exp(sum(ln(user_id))) as result
from id_values;
    








