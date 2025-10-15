-- Create worker table
CREATE TABLE worker (
    W_id INT PRIMARY KEY,
    W_name VARCHAR(20),
    Dept VARCHAR(20),
    Salary INT
);
desc worker;
-- Insert 5 rows only
INSERT INTO worker (W_id, W_name, Dept, Salary) VALUES (1, 'Ram',   'HR',   10000);
INSERT INTO worker (W_id, W_name, Dept, Salary) VALUES (2, 'Amrit', 'MRKT', 20000);
INSERT INTO worker (W_id, W_name, Dept, Salary) VALUES (3, 'Ravi',  'HR',   30000);
INSERT INTO worker (W_id, W_name, Dept, Salary) VALUES (4, 'Nitin', 'MRKT', 40000);
INSERT INTO worker (W_id, W_name, Dept, Salary) VALUES (5, 'Varun', 'IT',   50000);

-- Save changes
COMMIT;

-- Check all data
SELECT * FROM worker;

-- Highest salary
SELECT MAX(Salary) FROM worker;
select min(salary) FROM worker;
SELECT count(*) FROM worker;
SELECT distinct(count(*))FROM worker;
SELECT sum(salary) FROM worker;
SELECT avg(salary) FROM worker;