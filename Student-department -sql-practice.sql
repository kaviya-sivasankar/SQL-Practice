CREATE DATABASE MYDB;

USE MYDB;
-- TOPIC STUDENT-DEPARTMENT 

-- create student table
CREATE TABLE Student(
stu_id INTEGER PRIMARY KEY ,
stu_name VARCHAR(200),
dept_id INTEGER,
FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Student(stu_id,stu_name)VALUES(001,'Abi'),(002,'Aish'),(003,'Mouni'),(004,'kiara');

UPDATE Student SET dept_id=100 WHERE stu_id = 001;
UPDATE Student SET dept_id=101 WHERE stu_id = 002;
UPDATE Student SET dept_id=100 WHERE stu_id = 003;
UPDATE Student SET dept_id=102 WHERE stu_id = 004;

-- create department table

CREATE TABLE Department(
dept_id INTEGER PRIMARY KEY ,
dept_name VARCHAR(200)
);

INSERT INTO Department VALUES (100,'CSE'),(101,'IT'),(102,'AIML');


-- practice inner join 
SELECT Student.stu_id,Student.stu_name,Department.dept_name
FROM Student
INNER JOIN Department
ON Student.dept_id = Department.dept_id
ORDER BY Student.stu_id;


SELECT *FROM Student;
SELECT * FROM Department;





