create table emp(
  E_id int,
  E_name VARCHAR(10),
  sal INT
);
INSERT into emp(E_id,E_name,sal) values
(1,'A',1000),
(2,'B',2000),
(3,'C',3000);
SELECT * from emp;
select E_name, sal*12 from emp;
select E_name as Employee_Name, sal*12 as Annual_Salary from emp;
