CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE empInfo(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO empInfo VALUES
(1, "adam",25000),
(2, "bob",30000),
(3, "casey",40000);

SELECT * FROM empInfo;

SHOW TABLES;
SHOW DATABASES;