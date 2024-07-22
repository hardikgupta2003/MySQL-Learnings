CREATE DATABASE StudentCourse;
USE StudentCourse;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
    );

INSERT INTO student (id,name)
VALUES
(101,"hardik"),
(102,"eve"),
(103,"adam");

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
    );

INSERT INTO course (id,course)
VALUES
(101,"machine learning"),
(104,"full stack web development"),
(105,"Data Analysis"),
(103,"DSA");
-- drop table course;

-- inner join
SELECT * 
FROM student as s
INNER JOIN course as c
ON s.id = c.id; 

-- left join
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id; 

-- RIGHT join
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id; 

-- FULL join
-- LEFT JOIN UNION RIGHT JOIN
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

-- LEFT EXCLUSIVE JOINS
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL; 

-- RIGHT EXCLUSIVE JOINS
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL; 

-- FULL EXCLUSIVE JOINS
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL; 

-- SELF JOIN
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL; 

-- UNION
SELECT * FROM student
UNION
SELECT * FROM course;

SELECT * FROM student;
SELECT * FROM course;

