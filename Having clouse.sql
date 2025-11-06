-- Creating the table
CREATE TABLE employee (
    name VARCHAR(10),
    eNo INT,
    sal INT,
    comm INT,
    dep INT,
    job VARCHAR(10)
);

-- Inserting 7 records
INSERT INTO employee (name, eNo, sal, comm, dep, job) VALUES
('Aarti', 101, 50000, 2000, 10, 'Manager'),
('Rohan', 102, 30000, 1500, 20, 'Clerk'),
('Sneha', 103, 45000, 2500, 10, 'Analyst'),
('Vikas', 104, 28000, 1000, 30, 'Salesman'),
('Neha', 105, 35000, 1200, 20, 'HR'),
('Karan', 106, 40000, 1800, 30, 'Engineer'),
('Vikas', 107, 55000, 1000, 40, 'Lead');

select count(*),job from employee group by job having count(*)>=2;
select name, count(*) from employee group by name having count(*)>1;
select name, count(*) from employee group by name having count(*)=2;
select sal, count(*) from employee group by sal having count(*)>1;
select dep,count(*), from employee where name like('%A%','%S%') group by dep having count(*) >=2;
select job,sum(sal) from employee group by job having sum(sal)>3450;





