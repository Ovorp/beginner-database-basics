-- 1
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