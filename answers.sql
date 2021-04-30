-- 1 Person Table
CREATE TABLE person (
  id SERIAL primary key,
  name VARCHAR(50),
  age INT,
  height INT,
  city VARCHAR(50),
  favorite_color VARCHAR(50)
)

-- 2

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Nathaniel', 31, 162, 'Provo', 'Green');

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Beth', 28, 160, 'Andover', 'Purple');

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Luis', 59, 184, 'Vancouver', 'Blue');

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Bob', 1, 82, 'New York', 'Cyan');

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Mary', 94, 188, 'Salem', 'Red');

-- 3

SELECT *
FROM person
ORDER BY height DESC;

-- 4

SELECT *
FROM person
ORDER BY height ASC;

-- 5

SELECT *
FROM person
ORDER BY age DESC;

-- 6

SELECT *
FROM person
WHERE age > 20;

-- 7

SELECT *
FROM person
WHERE age = 18;

-- 8

SELECT *
FROM person
WHERE age < 20
  OR  age > 30;

-- 9

SELECT *
FROM person
WHERE age != 27;

-- 10

SELECT *
FROM person
WHERE favorite_color != 'red'
  OR  favorite_color != 'Red';

SELECT *
FROM person
WHERE favorite_color NOT IN ('red', 'Red', 'RED');

SELECT *
FROM person
WHERE favorite_color NOT ILIKE 'red';

-- 11

SELECT *
FROM person
WHERE favorite_color NOT ILIKE 'red'
AND favorite_color NOT ILIKE 'blue';

-- 12

SELECT *
FROM person
WHERE favorite_color ILIKE 'orange'
OR favorite_color ILIKE 'green';

SELECT *
FROM person
WHERE favorite_color ~* '(orange|green)';

-- 13

SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT *
FROM person
WHERE favorite_color ~* '(orange|green|blue)';

-- 14

SELECT *
FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

SELECT *
FROM person
WHERE favorite_color ~* '(yellow|purple)';

-- 1 Order Table

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT NOT NULL,
  product_name VARCHAR(100),
  product_price FLOAT,
  quantity INT
)

-- 2

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(2, 'Golf Clubs', 543.24, 2);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(2, 'Golf Bag', 1000.99, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(68, 'Fish Tank', 799.99, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(68, 'Coral', 9.99, 80);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(7, 'Jacket', 50.84, 5);

-- 3

SELECT *
FROM orders;

-- 4

SELECT SUM(quantity)
FROM orders;

-- 5

SELECT SUM(product_price * quantity)
FROM orders;

-- 6

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 68;

-- 1 Table Artist

INSERT INTO artist
(name)
VALUES
('The Best Artist Ever');

INSERT INTO artist
(name)
VALUES
('ME!');

INSERT INTO artist
(name)
VALUES
('You!');

-- 2

SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;

-- 3

SELECT *
FROM artist
ORDER BY name ASC
LIMIT 5;

-- 4

SELECT *
FROM artist
WHERE name ILIKE 'black%';

-- 5

SELECT *
FROM artist
WHERE name ILIKE '%black%';

-- 1 Table Employees

SELECT first_name, last_name
FROM employee
WHERE city ILIKE 'calgary';

-- 2

SELECT *
FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT MAX(birth_date)
FROM employee;

-- 3

SELECT birth_date
FROM employee
ORDER BY birth_date ASC
LIMIT 1;

SELECT MIN(birth_date)
FROM employee;

-- 4

SELECT *
FROM employee
WHERE reports_to = (
	SELECT employee_id
	FROM employee
	WHERE first_name ILIKE 'nancy'
  	AND last_name ILIKE 'edwards');

-- 6

SELECT count(*)
FROM employee
WHERE city ILIKE 'lethbridge';

SELECT count(*)
FROM employee
WHERE city ~* 'lethbridge';

-- 1 Table Invoice

SELECT COUNT(*)
FROM invoice
WHERE billing_country ~* 'usa';

-- 2

SELECT MAX(total)
FROM invoice;

-- 3

SELECT MIN(total)
FROM invoice;

-- 4

SELECT *
FROM invoice
WHERE total > 5;

-- 5

SELECT COUNT(*)
FROM invoice
WHERE total < 5;

-- 6

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT COUNT(*)
FROM invoice
WHERE billing_state ~* '(ca|tx|az)';

-- 7

SELECT AVG(total)
FROM invoice;

-- 8

SELECT SUM(total)
FROM invoice;