use vk

# Определить кто больше поставил лайков (всего) - мужчины или женщины?
select count(l.id) as total_likes, g2.gender as user_gender
from likes l
         join users u on l.user_id = u.id
         join profiles p2 on p2.user_id = u.id
         join gender g2 on g2.id = p2.gender_id
group by g2.gender
order by total_likes desc;

# Подсчитать количество лайков которые получили 10 самых молодых пользователей.
select count(l.id) as total_likes, round((datediff(date(now()), p2.birthday) / 365.25)) as age
from likes l
         join users u on l.user_id = u.id
         join profiles p2 on p2.user_id = u.id
group by age
order by age
limit 10;

# Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
select p2.first_name as      name,
       p2.last_name  as      lastname,
       count(l.id)   as      total_likes,
       count(m.from_user_id) total_messages
from likes l
         join users u on l.user_id = u.id
         join profiles p2 on p2.user_id = u.id
         join messages m on u.id = m.from_user_id
group by u.id
order by total_likes, total_messages
limit 10;