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



select 'Query 1 Result' AS info,emp_name , dept_name from employee, department where employee.dept_id=department.dept_id;

select 'Query 2 Result' AS info,emp_name,location from employee, department where employee.dept_id=department.dept_id;


SELECT 
    'Query 3 Result' AS info,
    emp_name,
    salary,
    dept_name
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id
WHERE dept_name = 'IT'
AND salary > 1800;


SELECT 'Query 4 Result' AS info,
       e.emp_name,
       e.dept_id,
       d.dept_name,
       d.location
FROM employee e
JOIN department d
ON e.dept_id = d.dept_id
WHERE e.salary > 2000
  AND d.location = 'DELHI';








