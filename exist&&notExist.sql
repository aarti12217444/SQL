-- Create table employee
CREATE TABLE employee (
    E_id INT PRIMARY KEY,
    E_name VARCHAR(20),
    address1 VARCHAR(20)
);

-- Verify structure
DESC employee;

-- Insert 5 rows
INSERT INTO employee (E_id, E_name, address1) VALUES (1, 'Ram',   'chd');
INSERT INTO employee (E_id, E_name, address1) VALUES (2, 'Amrit', 'delhi');
INSERT INTO employee (E_id, E_name, address1) VALUES (3, 'Ravi',  'pune');
INSERT INTO employee (E_id, E_name, address1) VALUES (4, 'Nitin', 'bang');
INSERT INTO employee (E_id, E_name, address1) VALUES (5, 'Varun', 'pune');


-- Save changes
COMMIT;

-- Check all data
SELECT * FROM employee;

-- Create project table
CREATE TABLE project (
    E_id INT,
    P_id CHAR(10),
    P_name CHAR(20),
    Loc CHAR(20),
    FOREIGN KEY (E_id) REFERENCES employee(E_id)
);

-- Verify structure
DESC project;

-- Insert rows into project (string values quoted)
INSERT INTO project (E_id, P_id, P_name, Loc) VALUES (1, 'P1', 'IT', 'HYD');
INSERT INTO project (E_id, P_id, P_name, Loc) VALUES (2, 'P2', 'ITI', 'PUNE');
INSERT INTO project (E_id, P_id, P_name, Loc) VALUES (3, 'P3', 'IOT', 'DELHI');
INSERT INTO project (E_id, P_id, P_name, Loc) VALUES (4, 'P4', 'ROBOTICS', 'CHD');

-- Save changes
COMMIT;

-- Check project data
SELECT * FROM project;

-- ✅ Corrected query to filter employees by address
SELECT *
FROM employee
WHERE address1 IN ('delhi','chd','pune');

select E_name from EMPLOYEE where E_ID In(select E_ID from PROJECT);


select * from employee where e_id exists(select e_id from project 
-- where employee.e_id=project.e_id);

SELECT * FROM employee
WHERE NOT EXISTS (
    SELECT 1 FROM project WHERE employee.e_id = project.e_id
);