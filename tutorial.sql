CREATE DATABASE college;
USE college;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(20),
    marks INT,
    grade VARCHAR(5)
);



CREATE TABLE payments(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO student (rollno, name, city, marks, grade) 
VALUES
(1, 'Alice', 'New York', 85, 'B'),
(2, 'Bob', 'Los Angeles', 92, 'A'),
(3, 'Charlie', 'Chicago', 76, 'C'),
(4, 'Diana', 'Houston', 88, 'B'),
(5, 'Suchet', 'Houston', 48, 'D');

INSERT INTO student VALUES (6,'Sumukha','Gadag',50,'E');
INSERT INTO student VALUES (7,'Akshata','veernarayan temple',90,'A',"23","F");
UPDATE student SET age = "22" WHERE name = "Akshata";

SELECT * FROM student;
SELECT city,name,COUNT(city) FROM student GROUP BY city,name;
SELECT city, avg(marks) FROM student GROUP BY city;
SELECT city,GROUP_CONCAT(name) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) DESC;
SELECT city, MAX(marks) FROM student GROUP BY city;
SELECT city, COUNT(name) FROM student GROUP BY city HAVING MAX(marks) > 90; -- HAVING APPLIES TO GROUPS

-- GENERAL ORDER FOR WRITING QUERIES
-- SELECT column(s) FROM table_name WHERE condition GROUP BY column(s) HAVING condition ORDER BY column(s) ASC;

SELECT city, MAX(marks) FROM student GROUP BY city HAVING MAX(marks) >= 90;
SELECT city FROM student WHERE grade="B" GROUP BY city HAVING MAX(marks) > 70 ORDER BY city;

-- Update Operation 
-- UPDATE table_name SET col1=val2, col2=val2 WHERE condition;

UPDATE student SET grade = "O" WHERE grade = "A";
UPDATE student SET grade = "A" WHERE grade = "B";
SELECT * FROM student;
UPDATE student SET marks = 35, grade="E" WHERE rollno = 4;
UPDATE student SET grade = "B" WHERE marks BETWEEN 70 AND 85;

UPDATE student SET marks = marks + 1;
DELETE FROM student WHERE marks = 50;



DELETE FROM student;

-- ALTER COMMAND

-- ADD COLUMN
ALTER TABLE student ADD COLUMN gender VARCHAR(20) DEFAULT "F";
UPDATE student SET gender = "M";

-- MODIFY COLUMN
ALTER TABLE student MODIFY age INT;
ALTER TABLE student MODIFY age VARCHAR(3);

-- CHANGE COLUMN NAME
ALTER TABLE student CHANGE age stu_age INT;

ALTER TABLE student DROP COLUMN gender;

-- RENAME TABLE
ALTER TABLE student RENAME TO student_dataset;
ALTER TABLE student_dataset RENAME TO student;
DESCRIBE student;









-- Payments data
INSERT INTO payments (customer_id, customer, mode, city)
VALUES 
(1, 'Alice', 'Credit Card', 'New York'),
(2, 'Bob', 'Debit Card', 'Los Angeles'),
(3, 'Charlie', 'Net Banking', 'Chicago'),
(4, 'Diana', 'UPI', 'Houston'),
(5, 'Edward', 'Cash', 'Phoenix'),
(6, 'Fiona', 'Credit Card', 'Seattle'),
(7, 'George', 'Net Banking', 'San Diego'),
(8, 'Hannah', 'Debit Card', 'San Francisco'),
(9, 'Ian', 'UPI', 'Dallas'),
(10, 'Jack', 'Cash', 'Austin'),
(11, 'Karen', 'Credit Card', 'Boston'),
(12, 'Liam', 'Net Banking', 'Denver'),
(13, 'Mona', 'Debit Card', 'Orlando'),
(14, 'Nathan', 'UPI', 'Atlanta'),
(15, 'Olivia', 'Cash', 'Miami'),
(16, 'Paul', 'Credit Card', 'Las Vegas'),
(17, 'Quinn', 'Net Banking', 'Portland'),
(18, 'Rachel', 'Debit Card', 'Nashville'),
(19, 'Steve', 'UPI', 'Indianapolis'),
(20, 'Tina', 'Cash', 'Charlotte'),
(21, 'Uma', 'Credit Card', 'San Jose'),
(22, 'Victor', 'Net Banking', 'Philadelphia'),
(23, 'Wendy', 'Debit Card', 'Columbus'),
(24, 'Xavier', 'UPI', 'Fort Worth'),
(25, 'Yara', 'Cash', 'El Paso'),
(26, 'Zane', 'Credit Card', 'Memphis'),
(27, 'Ava', 'Net Banking', 'Baltimore'),
(28, 'Ben', 'Debit Card', 'Milwaukee'),5
(29, 'Cara', 'UPI', 'Albuquerque'),
(30, 'Dean', 'Cash', 'Tucson');

SELECT * FROM payments;
SELECT mode, COUNT(mode) FROM payments GROUP BY mode;
SELECT mode, GROUP_CONCAT(customer), COUNT(customer) FROM payments GROUP BY mode;



