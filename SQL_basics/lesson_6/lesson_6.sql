use vk

alter table friendship
    add constraint friendship_fk_status_id
        foreign key (status_id) references friendship_statuses (id) on delete cascade,
    add constraint friendship_fk_user_id
        foreign key (user_id) references users (id) on delete cascade;


alter table likes
    add constraint likes_fk_target_type_id
        foreign key (target_type_id) references target_types (id) on delete cascade,
    add constraint likes_fk_user_id
        foreign key (user_id) references users (id) on delete cascade;

select count(l.id) as total_likes, g2.gender as user_gender
from likes l
         join users u on l.user_id = u.id
         join profiles p2 on p2.user_id = u.id
         join gender g2 on g2.id = p2.gender_id
group by g2.gender
order by total_likes desc;