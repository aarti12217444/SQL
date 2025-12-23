-- your code goes here
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    salary INT,
    dept_id INT
);

INSERT INTO employee VALUES
(1, 'ALLEN',  1000, 10),
(2, 'BLAKE',  2000, 20),
(3, 'CLARK',  3000, 30),
(4, 'MILLER', 1500, 20),
(5, 'SMITH',  2500, 10),
(6, 'SCOTT',  2800, 40);   -- no matching department

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20),
    location VARCHAR(20)
);

INSERT INTO department VALUES
(10, 'SALES', 'MUMBAI'),
(20, 'HR',    'DELHI'),
(30, 'IT',    'BANGALORE');

select 'Query 1', e.emp_id, e.salary from employee e join  department d on e.dept_id=d.dept_id;


select 'Query 2' ,e.emp_id, e.salary from employee e inner join  department d on e.dept_id=d.dept_id;


select 'Query 3.1', e.emp_id, e.salary from employee e left outer join  department d on e.dept_id=d.dept_id;


select 'Query 3.2', e.emp_id, e.salary from employee e right outer join  department d on e.dept_id=d.dept_id;


select 'Query 4',e.emp_id, e.salary from employee e left join  department d on e.dept_id=d.dept_id;


select 'Query 5',e.emp_id, e.salary from employee e right join  department d on e.dept_id=d.dept_id;


select 'Query 6',e.emp_id, e.salary from employee e cross join  department d;


