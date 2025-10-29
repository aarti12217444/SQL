-- your code goes here
CREATE TABLE Employee (
    eNo INT PRIMARY KEY,           -- Employee number (unique ID)
    name VARCHAR(50) NOT NULL,     -- Employee name
    des VARCHAR(50),               -- Designation
    sal DECIMAL(10,2),             -- Salary
    comm DECIMAL(10,2),            -- Commission (if applicable)
    dNo INT,                       -- Department number
    hDate DATE                     -- Hiring date
);
INSERT INTO Employee (eNo, name, des, sal, comm, dNo, hDate)
VALUES 
(101, 'Aarti Sharma', 'Data Analyst', 55000.00, 3000.00, 10, '2022-05-15'),
(102, 'Rohit Verma', 'Software Engineer', 65000.00, 0.00, 20, '2021-08-10'),
(103, 'Sneha Singh', 'HR Manager', 72000.00, 5000.00, 30, '2019-11-25'),
(104, 'Vikas Patel', 'Project Lead', 90000.00, 8000.00, 20, '2018-06-12'),
(105, 'Nidhi Kumar', 'Clerk', 30000.00, 1000.00, 10, '2023-03-01'),
(106, 'Karan Mehta', 'Sales Executive', 45000.00, 6000.00, 40, '2020-09-20'),
(107, 'Priya Das', 'Accountant', 50000.00, 2000.00, 30, '2021-01-10');

select max(sal) from Employee where des='Data Analyst';
select sum(sal) from Employee where dNo=10;

select count(name) from Employee where sal>1500 and dNo is 20;
select count(*) from Employee where hDate > '2018-01-1' and hDate <'2021-01-01' and dNo in (10,20);
select count(*) from Employee where comm is not null;
select Max(sal) from Employee where name like '%s%' and des is 'Accountant' and dNo=10 and sal > 1800;
select count(*) from Employee where sal < 2000 and dNo is 10;
select sum(sal) from Employee where des is 'Clerk';
select count(*) from Employee where name  like 'A%';
select count(*) from Employee where des('Clerk','Accountant');

