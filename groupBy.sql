CREATE TABLE EMP (
  EID INT PRIMARY KEY,
  ENAME VARCHAR(10),
  JOB VARCHAR(20),
  SAL INT,
  DEPTNO INT,
  COOMM INT
);
INSERT INTO EMP (EID, ENAME, JOB, SAL, DEPTNO, COOMM) VALUES
(1, 'A', 'CLERK',     100, 20, null),
(2, 'B', 'SALESMAN',  200, 10, 100),
(3, 'C', 'MANAGER',   300, 30, 200),
(4, 'D', 'CLERK',     100, 10, 300),
(5, 'E', 'SALESMAN',  200, 10, null),
(6, 'A', 'ANALYST',   400, 30, 10),
(7, 'C', 'MANAGER',   500, 20, 3000),
(8, 'F', 'CLERK',     200, 30, 90),
(9, 'G', 'president', 900, 30, 900);

select ENAME from EMP where job not in ('ANALYST') group by DEPTNO;
select job,max(sal) from EMP group by job;
select count(*) from EMP where ENAME like '%A%' group by job;
select count(*) from EMP where COOMM is not null group by DEPTNO;
select count(*) from EMP where job is not 'president' group by DEPTNO;
select sum(sal), job from EMP group by job;
select count(*) from EMP where job is 'MANAGER' group by DEPTNO;
select avg(sal) from EMP where DEPTNO <> 20  group by DEPTNO;
select avg(sal), count(*) from EMP where sal > 2000 group by DEPTNO;
select job, max(sal) from EMP group by job;

