-- Create table
CREATE TABLE EMPLOYEE (
    eNo INT,
    eName VARCHAR(20),
    des VARCHAR(20),
    comm DECIMAL(10,2),
    hDate DATE,
    dNo INT,
    mgrNO INT,
    sal DECIMAL(10,2)
);

-- Insert data (⚠ remove semicolons between rows — use commas)
INSERT INTO EMPLOYEE (eNo, eName, des, comm, hDate, dNo, mgrNO, sal)
VALUES 
(101, 'Aarti', 'Manager', NULL, '2022-03-15', 10, NULL, 200000),
(102, 'Sunil', 'Analyst', 1200.00, '2021-05-10', 20, 101, 10000),
(103, 'Yash', 'Clerk', 500.00, '2023-01-25', 10, 101, 2000),
(104, 'Keshav', 'HR', 900.00, '2020-09-12', 30, 101, 20000),
(105, 'Umest', 'Developer', 1100.75, '2022-07-05', 20, 101, 30000),
(106, 'Radha', 'Salesman', 800.00, '2023-02-18', 40, 101, 40000),
(107, 'Mahesh', 'CEO', 900.00, '2023-02-10', 40, NULL, 400000),
(108, 'Joy', 'Chaprashi', 100.00, '2023-02-10', 40, 101, 4000);

-- Display all
SELECT * FROM EMPLOYEE;

-- Employees without commission
SELECT * FROM EMPLOYEE WHERE comm IS NULL;

-- Employees without reporting manager
SELECT * FROM EMPLOYEE WHERE mgrNO IS NULL;

-- Salesmen in department 30
SELECT * FROM EMPLOYEE WHERE des = 'Salesman' AND dNo = 30;

-- Salesmen in department 30 with salary > 1500
SELECT * FROM EMPLOYEE WHERE des = 'Salesman' AND dNo = 30 AND sal > 1500;

-- Employees whose name starts with 'S'
SELECT * FROM EMPLOYEE WHERE eName LIKE 'S%';

-- Employees NOT in departments 10 and 20
SELECT * FROM EMPLOYEE WHERE dNo NOT IN (10, 20);

-- Employee names not starting with S
SELECT eName FROM EMPLOYEE WHERE eName NOT LIKE 'S%';

-- Employees whose manager is in department 10
SELECT e.* 
FROM EMPLOYEE e
JOIN EMPLOYEE m ON e.mgrNO = m.eNo
WHERE m.dNo = 10;

-- Clerks with no commission
SELECT * FROM EMPLOYEE WHERE comm IS NULL AND des = 'Clerk';

-- Employees without manager in departments 10 or 30
SELECT * FROM EMPLOYEE WHERE mgrNO IS NULL AND dNo IN (10, 30);

-- Salesmen in dept 30 with salary > 2450
SELECT * FROM EMPLOYEE WHERE des = 'Salesman' AND dNo = 30 AND sal > 2450;

-- Analysts in dept 20 with salary > 2500
SELECT * FROM EMPLOYEE WHERE des = 'Analyst' AND dNo = 20 AND sal > 2500;

-- Names starting with M or J
SELECT * FROM EMPLOYEE WHERE eName LIKE 'M%' OR eName LIKE 'J%';

-- Employees whose annual salary (sal*12) not in dept 30 (nonsensical condition fixed)
SELECT * FROM EMPLOYEE WHERE dNo <> 30 AND sal * 12 IS NOT NULL;

-- Employees whose name not ending with ES or R
SELECT * FROM EMPLOYEE WHERE eName NOT LIKE '%ES' AND eName NOT LIKE '%R';
