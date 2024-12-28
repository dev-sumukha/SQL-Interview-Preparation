USE college;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(40)
);

INSERT INTO dept VALUES (101,"english"),(102,"IT");
UPDATE dept SET id = 103 WHERE id = 102;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(40),
	dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
	ON DELETE CASCADE
);


INSERT INTO teacher VALUES (101,"Adam",101),(102,"Eve",102);

SELECT * FROM teacher;
SELECT * FROM dept;

DROP TABLE teacher, dept;



