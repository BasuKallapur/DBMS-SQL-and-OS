-- Create company database
CREATE DATABASE XYZ;



-- use
USE XYZ;
-- make table
CREATE TABLE employee(
id INT PRIMARY KEY, 
name VARCHAR(50),
age INT, 
department VARCHAR(50),
city VARCHAR(50), 
salary INT
);




-- fill employee details
INSERT INTO employee(id, name, age, department, city, salary)
VALUES
(1, "BASU KALLAPUR", 22, "MLOPS", "BLR", "19"), 
(2, "GEETA KALLAPUR", 22, "DSOPS", "GDG", "20"), 
(3, "NAVEEN KALLAPUR", 22, "MED", "PHP", "21"),
(4, "PRAVEEN KALLAPUR", 22, "BUSI", "BNT", "22");
-- see all the data
SELECT * FROM employee;




-- update
SET SQL_SAFE_UPDATES= 0;

UPDATE employee
SET salary=80000
WHERE department= "MLOPS";
SELECT * FROM employee;




-- for updating multiple departments
UPDATE employee
SET salary= 100000
WHERE department IN ("DSOPS", "MED");

SELECT * FROM employee;

UPDATE employee
SET name= "BASAVARAJ C KALLAPUR"
WHERE name= "BASU KALLAPUR";

SELECT * FROM employee;





-- delete
DELETE FROM employee
WHERE department= "MLOPS";

SELECT * FROM employee;




-- select to retrieve data

-- 1. specific columns.
SELECT name, department FROM employee;

-- 2. all columns of table
SELECT * FROM employee;



-- where clause
SELECT * FROM employee 
WHERE salary > 50;

USE xyz;

SELECT * FROM employee;

-- alter commands
-- 1. ADD a column
ALTER TABLE employee
ADD dob VARCHAR(20) DEFAULT "NOT PRESENT";

-- 2. DROP a column
ALTER TABLE employee
DROP COLUMN dob;

-- 3. MODIFY a datatype of column
ALTER TABLE employee
MODIFY age VARCHAR(5);

-- 4.  1. change the name of existing column
ALTER TABLE employee
CHANGE department departments VARCHAR(25);

-- 4.  1. change the name of existing column (other method)
ALTER TABLE employee
RENAME COLUMN departments TO department;




SELECT * FROM employees;


-- RENAME command

-- 1. RENAME TABLE employee TO employees
RENAME TABLE employee TO employees;

-- 2. RENAME COLUMN name TO names
ALTER TABLE employees
RENAME COLUMN name TO names;

-- 3. RENAME database xyz TO ABC
-- -- ALTER DATABASE olddatabasename to new databasename;
-- -- here in renaming database there are secutity risks and protocols to be followed while renaming



-- TRUNCATE command
CREATE TABLE salaryDetials(
salary INT,
incremetn INT
);

INSERT INTO salaryDetials(salary, incremetn) 
VALUES
(10000, 5000),
(15000, 2000),
(15000, 14200),
(15000, 200);

RENAME TABLE salaryDetials TO salaryDetails;

ALTER TABLE salaryDetails
RENAME COLUMN incremetn TO increments;

TRUNCATE TABLE salaryDetails