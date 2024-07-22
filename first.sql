CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS company;
 USE college;
 
 CREATE TABLE student(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL
 );
  CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL
 );
 
 INSERT INTO student VALUES(1, "HARDIK" , 26);
 INSERT INTO student VALUES(2, "lokesh" , 20);
 
  INSERT INTO teacher(id, name ,age) VALUES
  (6, "naman sir" , 30)
  ,(23 , "ayush" ,34);
  
  CREATE TABLE emp(
  id INT,salary INT default 25000);
  
  INSERT INTO emp (id) VALUES (101);
  
  CREATE TABLE city (
  id INT PRIMARY KEY,
  city VARCHAR(50),
  age INT,
  CONSTRAINT age_check CHECK (age >=18 AND city = "Delhi")
  );
  
INSERT INTO city(id,city,age) VALUES (101,"indore",30);
  select * from emp;
  
  select * from teacher;
  
 SELECT * FROM student;
 
 SHOW DATABASES;
 
 SHOW TABLES;
 
 drop database college;
 
 
 

