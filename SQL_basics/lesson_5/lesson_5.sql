use shop

#Необходимо отсортировать записи таким образом, чтобы они выводились в порядке
# увеличения значения value. Однако нулевые запасы должны выводиться в конце,
# после всех записей.
select *
from storehouses_products
order by (case
              when value = 0 then 1
              else 0
    end),
         value;


#Из таблицы catalogs извлекаются записи при помощи запроса.
# SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте
# записи в порядке, заданном в списке IN.
select *
from catalogs
where id in (5, 1, 2)
order by case
             when id = 5 then 1
             when id = 1 then 2
             else 3
             end;

use vk

#Из таблицы users необходимо извлечь пользователей,
# родившихся в августе и мае.
select first_name, last_name
from profiles
where month(birthday) = 5
   or month(birthday) = 8;


#Подсчитайте средний возраст пользователей
# в таблице users.
select round(avg(datediff(date(now()), birthday) / 365.25), 1) as mean_age
from profiles;

#Подсчитайте количество дней рождения, которые приходятся
# на каждый из дней недели. Следует учесть, что необходимы
# дни недели текущего года, а не года рождения.
select dayname(date(date_format(birthday, '2021-%m-%d'))) as day_name, count(*) as total
from profiles
group by day_name;

#Подсчитайте произведение чисел в столбце таблицы.
select exp(sum(log(value)))
from nums;