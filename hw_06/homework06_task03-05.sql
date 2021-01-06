use social_network;

-- Task 3 Определить кто больше поставил лайков (всего) - мужчины или женщины?
-- with join
select count(g.gender), g.gender
from likes as lk
inner join user_profiles as up
on lk.user_id = up.user_id
inner join gender as g
on up.gender_id = g.id
where gender in ('M', 'F')
group by g.id
;

-- without join
select count(gender.gender), gender.gender
from likes, user_profiles, gender
where (user_profiles.gender_id = gender.id and likes.user_id = user_profiles.user_id)
and gender in ('M', 'F')
group by gender.gender;
;

-- Task 4 Подсчитать количество лайков которые получили 10 самых молодых пользователей.
CREATE TEMPORARY TABLE tmp SELECT user_id FROM user_profiles order by birthday desc LIMIT 10;
select count(user_id) as likes_number, user_id
from likes 
where user_id in(select * from tmp)
group by user_id;
drop temporary table tmp;


/*Task 5 Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети 
(критерии активности необходимо определить самостоятельно).*/
select * from users;
-- variant 1. By inactive time
select id as user_id, inactive_time
from (select id, datediff(updated_at, created_at) as inactive_time from users order by inactive_time) as diff
limit 10;

-- variant 2. minimal like amounts from registering date
-- результаты могут быть неоднозначны из-за совпадения ratio
create temporary table user_diff 
				select l.id, count(l.id) as likes
                from likes as l
                group by l.id;
                
select users.id,  ifnull(user_diff.likes/datediff(users.updated_at, users.created_at), 'not known') as ratio
from users, user_diff
where users.id = user_diff.id
order by ratio limit 10
;

drop temporary table user_diff;




