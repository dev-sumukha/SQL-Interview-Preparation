USE interview;

DROP TABLE employee_salary;
CREATE TABLE employee_salary(
	id INT PRIMARY KEY,
    salary INT
);

INSERT INTO employee_salary VALUES(1,300000),(2,75000),(3,NULL),(4,500000),(5,300000),(6,80000),(7,75000),(8,NULL),(9,17000);

SELECT * FROM employee_salary;

-- 2nd highest salary without using LIMIT and OFFSET
SELECT MAX(salary) FROM employee_salary WHERE salary < (SELECT MAX(salary) FROM employee_salary);

-- Using LIMIT and OFFSET offset skips the number of rows in table 1 means it skips 1 row
SELECT * FROM employee_salary ORDER BY salary DESC;

SELECT salary FROM employee_salary ORDER BY salary DESC LIMIT 2,1;

-- Finding nth highest salary without LIMIT and OFFSET
-- It is achived through self join
-- Self join is joining of 2 tables itself

SELECT salary FROM employee_salary e1 WHERE 3 - 1 = (SELECT COUNT(DISTINCT salary) FROM employee_salary e2 WHERE e2.salary > e1.salary);

