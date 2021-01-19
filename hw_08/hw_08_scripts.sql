use social_network;

-- Task 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?
select count(g.gender), g.gender
from likes as lk
inner join user_profiles as up
on lk.user_id = up.user_id
inner join gender as g
on up.gender_id = g.id
where gender in ('M', 'F')
group by g.id
;


-- Task 4 Подсчитать количество лайков которые получили 10 самых молодых пользователей.
select count(sm.user_id) as likes_count
from (
	select l.id, l.user_id
	from likes as l
	inner join (
			select user_id
			from user_profiles as up
			order by birthday desc limit 10) as bhd
		on l.user_id = bhd.user_id) as sm
group by sm.user_id with rollup
;


/*Task 5 Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети 
(критерии активности необходимо определить самостоятельно).*/

-- minimal like amounts from registering date
-- результаты могут быть неоднозначны из-за совпадения ratio

select u.id
, concat(up.first_name, up.last_name) as full_name
, ifnull(l.likes_amt/datediff(u.updated_at, u.created_at), 'not known') as ratio
from user_profiles as up
inner join users as u
	on up.user_id = u.id
inner join (select user_id, count(user_id) as likes_amt from likes group by user_id) as l
	on l.user_id = up.user_id
order by ratio limit 10