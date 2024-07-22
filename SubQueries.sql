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

SELECT * FROM student;


SELECT name, marks
FROM student
WHERE marks > (SELECT avg(marks) FROM student);

SELECT rollno,name,marks 
FROM student
WHERE rollno IN 
( SELECT rollno FROM student WHERE rollno % 2 = 0);

SELECT MAX(marks) 
FROM (SELECT * FROM student WHERE city = "delhi") AS temp;

SELECT (SELECT MAX(marks) FROM student) as maxMarks , name FROM student;
