-- your code goes here

CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  sal INT,
  comm INT,
  des varchar(10),
  hDate varchar(10),
  dNo INT
);

INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate,dNo) VALUES (1, 'Clark', 120000,null,'sde','12-jan-1980',20);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate,dNo) VALUES (2, 'Dave', 100,10,'hr','10-feb-1981',30);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate,dNo) VALUES (3, 'Ava', 2000,20,'wd','12-dec-1982',30);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate, dNo) VALUES (4, 'Aady', 2200,2,'salesman','12-jan-2002',20);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate, dNo) VALUES (5, 'Charly', 22000,1400,'Manager','12-jan-2002',10);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate, dNo) VALUES (6, 'David', 21000, 400,'Analyst','12-jan-2002',10);
INSERT INTO EMPLOYEE(empId,name,sal,comm, des, hDate, dNo) VALUES (7, 'Keshav', 4000, 400,'president','11-jan-2002',20);

select * from EMPLOYEE where des='sde' and sal < 1500;
select name, hDate from EMPLOYEE where des='Manager' and dNo=30;
select *, sal*12 from EMPLOYEE where des='salesman'and  dNo=30 and sal*12 >14000;
select * from EMPLOYEE where dNo=30 or des='Analyst';
select name, sal, sal*12, dNo from EMPLOYEE where dNo=20 and sal>1100 and sal*12 >12000;
select empId, name from EMPLOYEE where des='Manager' and dNo=20;
select * from EMPLOYEE where dNo=20 or dNo=30;
select * from EMPLOYEE where des='Analyst' and dNo=10;
select * from EMPLOYEE where des='president' and sal=4000;
select name, dNo, des from EMPLOYEE where des='hr' and dNo=10 or dNo=20;
select name from EMPLOYEE where dNo=10 or dNo=20 or dNo=30;
select * from EMPLOYEE where empId=1 or empId=2;
select * from EMPLOYEE where des='Manager' or des='salesman' or des='hr';
select name from EMPLOYEE where hDate>'1-jan-1981' and hDate<'1-jan-1987';
select * from EMPLOYEE where sal > 1250 and sal<3000;
select name from EMPLOYEE where hDate>'1-jan-1981' and dNo=10 or dNo=30;
select name, sal*12 from EMPLOYEE where des='Manager' or des='sde' and dNo=10 and dNo=30;
select *, sal*12 from EMPLOYEE where sal>1000 and sal<4000 and sal*12 > 15000;





