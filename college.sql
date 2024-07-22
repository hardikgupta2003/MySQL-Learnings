CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name ,marks, grade ,city)
VALUES
(101 , "hardik" , 78 , "A","indore"),
(102 , "anil" , 78 , "C","delhi"),
(103 , "bhumika" , 78 , "O","bombay"),
(104 , "chetan" , 78 , "A","surat"),
(105 , "lokesh" , 78 , "C","chennai"),
(106 , "raj" , 78 , "B","pune");

SELECT * FROM student where marks > 75;
SELECT * FROM student where marks+10 > 80;

SELECT * FROM student where city = "pune";

SELECT * FROM student where marks > 75 AND grade = "A";

SELECT * FROM student where marks between 70 and 80;

SELECT * FROM student LIMIT 3;

SELECT * FROM student ORDER BY marks asc;

SELECT max(marks) FROM student ;

SELECT min(marks) FROM student ;

SELECT avg(marks) FROM student ;

SELECT count(rollno) FROM student ;

SELECT city, count(name) FROM student GROUP BY city;

SELECT city, avg(marks) FROM student GROUP BY city ORDER BY city asc;

SELECT grade , count(rollno)
 FROM student 
 GROUP BY grade 
 ORDER BY grade;

SELECT city, count(rollno) FROM student GROUP BY city
HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) >= 50
ORDER BY city DESC;

-- SELECT mode ,count(customer_id) FROM payment GROUP BY mode 

set sql_safe_updates = 0;
UPDATE student SET grade = "O" WHERE grade = "A";

UPDATE student SET grade = "B" WHERE marks > 70;

UPDATE student SET marks = marks + 1;

UPDATE student SET grade = "O" WHERE grade = "A";

UPDATE student SET marks = 30 WHERE NAME = "raj";

DELETE FROM student WHERE marks < 33;





SELECT * FROM student;


-- foriegn key

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO dept
VALUES
(101, "english"),
(102,"IT");

select * from dept;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "hardik",101),
(102,"lokesh",102);

-- DROP TABLE teacher;

select * from teacher;

-- cascading
UPDATE dept
SET id=105
WHERE id = 101;

-- Alter commands
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19; 

ALTER TABLE student
DROP COLUMN age; 

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2); 

ALTER TABLE student
CHANGE COLUMN age student_age INT; 

ALTER TABLE student
RENAME TO studentTable; 

SELECT * FROM  studentTable;

ALTER TABLE studentTable
RENAME TO student; 

-- to delete table's data
-- TRUNCATE TABLE student


-- practice question
ALTER TABLE student 
CHANGE COLUMN name full_name varchar(50);

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM  student;
