CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee
    ADD COLUMN city_id INT;

ALTER TABLE employee
    ADD CONSTRAINT fk_city_id
        FOREIGN KEY (city_id) REFERENCES city (city_id);

INSERT INTO city (city_name)
VALUES ('Moscow');
INSERT INTO city (city_name)
VALUES ('Khabarovsk');
INSERT INTO city (city_name)
VALUES ('Saint Petersburg');
INSERT INTO city (city_name)
VALUES ('Vladivostok');
INSERT INTO city (city_name)
VALUES ('Samara');
INSERT INTO city (city_name)
VALUES ('Komsomolsk-on-Amure');

UPDATE employee
SET city_id=1
WHERE id = 1;
UPDATE employee
SET city_id=2
WHERE id = 2;
UPDATE employee
SET city_id=4
WHERE id = 4;
UPDATE employee
SET city_id=1
WHERE id = 5;
UPDATE employee
SET city_id=5
WHERE id = 6;
UPDATE employee
SET city_id=2
WHERE id = 8;

SELECT first_name, last_name, city_name
FROM employee
         INNER JOIN city on city.city_id = employee.city_id;

SELECT city_name, first_name, last_name
FROM city
         LEFT JOIN employee on city.city_id = employee.city_id;

SELECT first_name, city_name
FROM city
         FULL OUTER JOIN employee on city.city_id = employee.city_id;

SELECT first_name, city_name
FROM city
         CROSS JOIN employee;