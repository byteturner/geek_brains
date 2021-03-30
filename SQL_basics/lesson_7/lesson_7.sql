use
shop

SELECT u2.name
FROM users u2
WHERE u2.id IN (SELECT user_id FROM orders o2);

SELECT p.name as product_name, c.name as catalog_name
FROM products p
         JOIN catalogs c ON p.catalog_id = c.id;

SELECT id as flight_id,
       (SELECT name FROM cities c2 WHERE label = f.label_from) as 'from',
       (SELECT name FROM cities c2 WHERE label = f.label_to) as 'to'
FROM flights f
ORDER BY flight_id;