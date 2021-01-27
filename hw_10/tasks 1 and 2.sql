use social_network;

/*1. Проанализировать, какие запросы могут выполняться наиболее
часто в процессе работы приложения, и добавить необходимые индексы.*/
-- не учитывая  индексы созданные на занятии.
create index idx_user_fnln on user_profiles(first_name, last_name);

create index idx_phone on phone(phone);
create index idx_email on email(email);

create index ind_communities_user on communities_users(community_id, user_id);

create index idx_media_name on media(filename);

create unique index idx_u_friendship on friendship(user_id, friend_id, status_id);



/*2. Задание на оконные функции. Построить запрос, который будет выводить следующие столбцы:
имя группы
среднее количество пользователей в группах
самый молодой пользователь в группе
самый старший пользователь в группе
общее количество пользователей в группе
всего пользователей в системе
отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100*/

select distinct
c.name as group_name
, count(up.user_id) over () / count(c.id) over () as AVG_users_per_group -- учитывает группы без юзеров и юзеров без групп
, first_value (concat(first_name, ' ', last_name)) over (partition by c.id order by up.birthday desc) as the_most_young_user
, first_value (concat(first_name, ' ', last_name)) over (partition by c.id order by up.birthday) as the_most_old_user
, count(cu.user_id) over u_groups as user_qty_in_group
, count(up.user_id) over () as user_total
, count(cu.user_id) over u_groups * 100 / count(up.user_id) over () as percent_user_in_group
from communities as c
left join communities_users as cu
on c.id = cu.community_id
left join user_profiles as up
on cu.user_id = up.user_id
window u_groups as (partition by cu.community_id)
;





/* set @c_id = (select id from communities order by rand() limit 1);
set @u_id := (select id from users order by rand() limit 1);
insert into communities_users (community_id, user_id)
values (@c_id, @u_id);*/


