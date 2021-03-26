use vk

ALTER TABLE profiles
    ADD CONSTRAINT profiles_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT profiles_fk_gender_id FOREIGN KEY (gender_id) REFERENCES gender (id),
    ADD CONSTRAINT profiles_fk_user_status_id FOREIGN KEY (user_status_id) REFERENCES user_statuses (id),
    ADD CONSTRAINT profiles_fk_photo_id FOREIGN KEY (photo_id) REFERENCES media (id);

ALTER TABLE communities_users
    ADD CONSTRAINT communities_users_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT communities_users_fk_community_id FOREIGN KEY (community_id) REFERENCES communities (id);

ALTER TABLE friendship
    ADD CONSTRAINT friendship_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT friendship_fk_friend_id FOREIGN KEY (friend_id) REFERENCES users (id),
    ADD CONSTRAINT friendship_fk_status_id FOREIGN KEY (status_id) REFERENCES friendship_statuses (id);

ALTER TABLE media
    ADD CONSTRAINT media_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT media_fk_media_type_id FOREIGN KEY (media_type_id) REFERENCES media_types (id);

ALTER TABLE messages
    ADD CONSTRAINT messages_fk_from_user_id FOREIGN KEY (from_user_id) REFERENCES users (id),
    ADD CONSTRAINT messages_fk_to_user_id FOREIGN KEY (to_user_id) REFERENCES users (id);

ALTER TABLE likes
    ADD CONSTRAINT likes_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT likes_fk_target_type_id FOREIGN KEY (target_type_id) REFERENCES target_types (id);

ALTER TABLE posts
    ADD CONSTRAINT posts_fk_user_id FOREIGN KEY (user_id) REFERENCES users (id);

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