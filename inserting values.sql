create table employee
(
    E_id int,
    E_name char(20),
    Dept char(20), 
    Salary INT
);
desc employee

-- Insert 1st row
INSERT INTO employee (E_id, E_name, Dept, Salary)
VALUES (1, 'Ram', 'HR', 10000);

-- Insert 2nd row
INSERT INTO employee (E_id, E_name, Dept, Salary)
VALUES (2, 'Amrit', 'MRKT', 20000);

-- Insert 3rd row
INSERT INTO employee (E_id, E_name, Dept, Salary)
VALUES (3, 'Ravi', 'HR', 30000);

-- Insert 4th row
INSERT INTO employee (E_id, E_name, Dept, Salary)
VALUES (4, 'Nitin', 'MRKT', 40000);

-- Insert 5th row
INSERT INTO employee (E_id, E_name, Dept, Salary)
VALUES (5, 'Varun', 'IT', 50000);

-- Save changes
COMMIT;
SELECT * FROM EMPLOYEE
select  max(Salary) As Maximum_Salary from employee
select DISTINCT E_name from employee where salary=(SELECT max(salary) from employee)