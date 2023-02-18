CREATE DATABASE skypro;

CREATE TABLE employee(
                         id BIGSERIAL NOT NULL PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50) NOT NULL,
                         gender VARCHAR(6) NOT NULL,
                         age INT NOT NULL
);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Ivan', 'Ivanov', 'm', 20);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Petr', 'Petrov', 'm', 25);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Darya', 'Sidorova', 'f', 30);

SELECT * FROM employee;

UPDATE employee SET first_name='Anna', last_name='Karenina', gender='f', age=26
WHERE id=2;

DELETE FROM employee WHERE  id=3;

SELECT * FROM employee;