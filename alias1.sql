
-- create
CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  sal INT,
  comm INT,
  des varchar(10)
);

-- insert
INSERT INTO EMPLOYEE(empId,name,sal,comm, des) VALUES (1, 'Clark', 200,null,'sde');
INSERT INTO EMPLOYEE(empId,name,sal,comm, des) VALUES (2, 'Dave', 100,10,'hr');
INSERT INTO EMPLOYEE(empId,name,sal,comm, des) VALUES (3, 'Ava', 200,20,'wd');

-- fetch 
SELECT * FROM EMPLOYEE;
SELECT name, sal from EMPLOYEE;
SELECT name, sal*6 from EMPLOYEE;
SELECT empId, name,sal*12+2000 from EMPLOYEE;
SELECT name, sal+sal/10 from EMPLOYEE;
SELECT name, sal-sal(25/100) from EMPLOYEE;
SELECT name, (sal+50) As SalaryWithHike from EMPLOYEE;
SELECT name, sal*12-sal*12*(10/100) from EMPLOYEE;
SELECT sal + ISNULL(comm,0) from EMPLOYEE;
SELECT empId, name,sal*12 from EMPLOYEE;
SELECT name, des, sal-100 from EMPLOYEE;