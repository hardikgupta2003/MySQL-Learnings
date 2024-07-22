USE college;

CREATE VIEW view1 AS
SELECT rollno,name, marks FROM student;

-- DROP VIEW view1;
SELECT * FROM view1;