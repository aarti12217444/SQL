create TABLE emp
(
    id int,
    name VARCHAR2(20),
    salary number(20)
);
ALTER TABLE emp add address VARCHAR(10);
desc emp;
ALTER TABLE emp drop COLUMN address;
alter table emp modify id VARCHAR2(30);
ALTER TABLE emp rename column id to ROLL_NO;
alter table emp add PRIMARY KEY (Roll_NO)