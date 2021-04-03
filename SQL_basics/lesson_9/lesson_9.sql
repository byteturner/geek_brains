-- В базе данных shop и sample присутствуют одни и те же таблицы,
-- учебной базы данных. Переместите запись id = 1 из таблицы shop.users
-- в таблицу sample.users. Используйте транзакции.
start transaction;

insert into sample.users
select *
from shop.users
where id = 1;
delete
from shop.users
where id = 1;

commit;

-- Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и соответствующее название каталога
-- name из таблицы catalogs.
create
or replace view prods_cats (product_name, catalog_name)
as
select p.name, c.name
from products p
         join catalogs c on p.catalog_id = c.id;

select *
from prods_cats;

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в з
-- ависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать
-- фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DROP FUNCTION IF EXISTS hello;

DELIMITER
~~

CREATE FUNCTION hello()
    RETURNS TINYTEXT
    NO SQL
BEGIN
  DECLARE
hour INT;
  SET
hour = HOUR(NOW());
CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
END
CASE;
END
~~

DELIMITER ;
-- ***

SELECT NOW(), hello();

-- В таблице products есть два текстовых поля: name с названием товара и
-- description с его описанием. Допустимо присутствие обоих полей или одного из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER
//
CREATE TRIGGER validate_name_description_insert
    BEFORE INSERT
    ON products
    FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cannot INSERT if name & description are NULL';
END IF;
END
//

CREATE TRIGGER validate_name_description_update
    BEFORE UPDATE
    ON products
    FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cannot UPDATE if name & description are NULL';
END IF;
END
//
DELIMITER ;