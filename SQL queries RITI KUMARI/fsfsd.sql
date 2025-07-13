CREATE DATABASE demo;

USE demo;

CREATE TABLE employees(
id INT PRIMARY KEY, 
age INT, 
emp_name VARCHAR(50),
department VARCHAR(50), 
city VARCHAR(50), 
salary INT
);

INSERT INTO employees(id, age, emp_name, department, city, salary)
VALUES
(1, 20, "basu", "it", "blr", 10000),
(2, 21, "akshan", "hr", "mlr", 10060),
(3, 22, "nesar", "it", "del", 10000),
(4, 20, "sachhi", "hr", "blr", 10460),
(5, 25, "sanki", "finance", "pune", 10580);

SELECT * FROM employees;