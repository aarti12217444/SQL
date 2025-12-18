
-- CREATE TABLE Student (
--   name VARCHAR(10),
--   reg INT,
--   mob INT,
--   ca1Marks INT
-- );

-- INSERT INTO Student VALUES ('A', 1, 1234, 30);
-- INSERT INTO Student VALUES ('B', 2, 12234, 20);
-- INSERT INTO Student VALUES ('C', 3, 12342, 19);

-- SELECT * FROM Student;
-- ALTER TABLE Student ADD age INT;

-- UPDATE Student SET age = 20 WHERE reg = 1;
-- UPDATE Student SET age = 17 WHERE reg = 2;
-- UPDATE Student SET age = 21 WHERE reg = 3;
-- SELECT * FROM Student;

-- DELETE FROM Student WHERE reg = 2;
-- DELETE FROM Student;
-- SELECT * FROM Student;correct


-- CREATE TABLE employee (
--   empId INT PRIMARY KEY,
--   empName VARCHAR(10),
--   empDep VARCHAR(10)
-- );

-- INSERT INTO employee (empId, empName, empDep)
-- VALUES (1, 'Raju', 'cse');
-- SELECT * FROM employee;
-- ALTER TABLE employee
-- ADD emailId VARCHAR(50);

-- UPDATE employee
-- SET emailId = 'raju@gmail.com'
-- WHERE empId = 1;

-- SELECT * FROM employee;correct



-- create table employee1(
--   empId1 int,
--   empName1 varchar(10),
--   empDep1 varchar(10)
-- );

-- INSERT into employee1(empId1,empName1,empDep1) VALUES (1, 'Raju', 'cse');
-- SELECT * from employee1;
-- drop table employee1;
-- SELECT * from employee1;correct


-- create table employeeDetails(
--   empId int,
--   empName varchar(10),
--   empDep varchar(10)
-- );

-- INSERT into employeeDetails(empId,empName,empDep) VALUES (1,'Raju','cse');
-- SELECT * from employeeDetails;
-- alter table employeeDetails RENAME to employeeinfo;
-- SELECT * from employeeinfo;correct on other but here sql server not support rename


-- create table Courser(
--   courserId int,
--   courseName varchar(10)
-- );
-- INSERT into Courser(courserId, courseName) VALUES(1,'eng.');
-- alter table   Courser modify courseName varchar(20);
-- SELECT * from Courser;sql not support modify 


-- create table employee1(
--   empId1 int,
--   empName1 varchar(10),
--   empDep1 varchar(10),
--   empsal1 int
-- );

-- INSERT into employee1(empId1,empName1,empDep1, empsal1) VALUES (101,"Raju","cse",2000);
-- SELECT * from employee1;
-- update employee1 set empsal1= empsal1 + 3000 where empId1 is 101;
-- SELECT  * from employee1;correct




