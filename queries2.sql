
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Alexandr', 'Alexandrov', 'm', 35);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Vasilii', 'Vasilieb', 'm', 45);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Anna', 'Zharikova', 'm', 55);

SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age NOT BETWEEN 30 AND 50;
-- или
SELECT * FROM employee WHERE age < 30 OR age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT first_name FROM employee WHERE LENGTH(first_name) > 4;

-- у меня уже есть пара одинаковых имен, но запрос бы выглядет так:
UPDATE employee SET first_name='Anna' WHERE id=6;
SELECT first_name as Имя, SUM(age) as Суммарный_возраст FROM employee GROUP BY first_name;
SELECT first_name as Имя, MIN(age) as Минимальный_возраст FROM employee GROUP BY first_name;
SELECT first_name, MAX(age) as max FROM employee GROUP BY first_name HAVING count(*) > 1 ORDER BY max;