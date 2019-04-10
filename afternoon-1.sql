CREATE TABLE person
(
    person_id SERIAL,
    name VARCHAR(225),
    age INT,
    height INT,
    city VARCHAR(225),
    favorite_color VARCHAR(225)
);

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('adam', 30, 150, 'dallas', 'blue'),
    ('sarah', 86, 130, 'dallas', 'blue'),
    ('kelly', 12, 180, 'dallas', 'blue'),
    ('edson', 34, 164, 'dallas', 'blue'),
    ('jorge', 57, 170, 'dallas', 'blue');

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT *
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');

CREATE TABLE orders
(
    person_id SERIAL,
    product_name VARCHAR(225),
    product_price NUMERIC,
    quantity INT
);

INSERT INTO orders
    (person_id, product_name, product_price, quantity)
VALUES
    (0, 'gloves', 15, 1),
    (1, 'hat', 10, 1),
    (2, 'scarf', 8, 1),
    (3, 'jacket', 50, 1),
    (4, 'pants', 50, 1);

SELECT *
FROM orders;

SELECT SUM(quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;

INSERT INTO artist
    (name)
VALUES
    ('frederick'),
    ('william'),
    ('mary');

SELECT *
FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE '%Black';

SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name
FROM employee
WHERE city ='Calgary';

SELECT MIN(birth_date)
FROM employee;
SELECT MAX(birth_date)
FROM employee;

SELECT *
FROM employee
WHERE reports_to=2;

SELECT COUNT(*)
FROM employee
WHERE city='Lethbridge';

SELECT *
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT *
FROM invoice
WHERE total < 5;

SELECT *
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total)
FROM invoice;

SELECT SUM(total)
from invoice;






    








