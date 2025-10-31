-- Drop old table if already exists
DROP TABLE employee;

-- Create table
CREATE TABLE employee (
    E_id INT PRIMARY KEY,
    E_name VARCHAR(20),
    Dept VARCHAR(20),
    Salary INT
);

-- Insert 5 rows only
INSERT INTO employee (E_id, E_name, Dept, Salary) VALUES (1, 'Ram',   'HR',   10000);
INSERT INTO employee (E_id, E_name, Dept, Salary) VALUES (2, 'Amrit', 'MRKT', 20000);
INSERT INTO employee (E_id, E_name, Dept, Salary) VALUES (3, 'Ravi',  'HR',   30000);
INSERT INTO employee (E_id, E_name, Dept, Salary) VALUES (4, 'Nitin', 'MRKT', 40000);
INSERT INTO employee (E_id, E_name, Dept, Salary) VALUES (5, 'Varun', 'IT',   50000);

-- Save changes
COMMIT;

-- Check all data
SELECT * FROM employee;

-- Distinct departments
SELECT DISTINCT Dept FROM employee;

-- Just department list
SELECT Dept FROM employee;

-- 1st Highest Salary with Employee(s)
SELECT E_name, Salary
FROM employee
WHERE Salary = (SELECT MAX(Salary) FROM employee);

-- Second highest salary
SELECT MAX(Salary) 
FROM employee 
WHERE Salary <> (SELECT MAX(Salary) FROM employee);

-- Employee(s)name with second highest salary
SELECT DISTINCT E_name 
FROM employee 
WHERE Salary = (
    SELECT MAX(Salary) 
    FROM employee 
    WHERE Salary <> (SELECT MAX(Salary) FROM employee)
);

-- Count employees by department
SELECT Dept, COUNT(*) 
FROM employee 
GROUP BY Dept;

-- Employees in departments having less than 2 employees
SELECT E_name 
FROM employee
WHERE Dept IN (
    SELECT Dept 
    FROM employee 
    GROUP BY Dept 
    HAVING COUNT(*) < 2
);

--Employee with highest salary in each department with their name
SELECT E_name
FROM employee
WHERE SALARY In(
    SELECT 
    MAX(salary) 
    from EMPLOYEE 
    group by dept
);