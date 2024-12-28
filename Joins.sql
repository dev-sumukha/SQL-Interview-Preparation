-- CREATE DATABASE Interview;
USE Interview;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE salary(
	id INT PRIMARY KEY,
    salary INT
);

INSERT INTO employee VALUES (1,"Sumukha Sureban");
INSERT INTO employee VALUES (2,"Patakshi Sureban");
INSERT INTO employee VALUES (3,"Suchet Jogin");
INSERT INTO employee VALUES (4,"Nigar Dargad");
INSERT INTO employee VALUES (5,"Sahana H");

INSERT INTO salary VALUES(1,120000);
INSERT INTO salary VALUES(2,20000);
INSERT INTO salary VALUES(3,220000);
INSERT INTO salary VALUES(4,20000);

SELECT * FROM employee;
SELECT * FROM salary;

-- INNER JOIN - Common data in a single table
SELECT * FROM employee INNER JOIN salary ON employee.id = salary.id;
SELECT * FROM salary INNER JOIN employee ON salary.id = employee.id;

-- Using alias
SELECT * FROM employee AS e INNER JOIN salary ON e.id = salary.id;

-- LEFT JOIN - Returns all records from the left table, and the matched records from the right table
SELECT * FROM employee LEFT JOIN salary ON employee.id = salary.id;

-- RIGHT JOIN
SELECT * FROM employee RIGHT JOIN salary ON employee.id = salary.id;

-- FULL JOIN
SELECT * FROM employee RIGHT JOIN salary ON employee.id = salary.id
UNION
SELECT * FROM employee LEFT JOIN salary ON employee.id = salary.id;

-- ONLY LEFT JOIN 
SELECT * FROM employee LEFT JOIN salary ON employee.id = salary.id WHERE salary.id IS NOT NULL;

-- Full exclusive join
SELECT * FROM employee RIGHT JOIN salary ON employee.id = salary.id WHERE salary.id IS NULL
UNION
SELECT * FROM employee LEFT JOIN salary ON employee.id = salary.id WHERE salary.id IS NULL;









