USE DEMO;

SELECT * FROM employees;

-- Aggregated fucntions

-- 1. COUNT()
SELECT COUNT(emp_name) FROM employees;

-- 2. SUM
SELECT SUM(salary) FROM employees;

-- 3. AVG()
SELECT AVG(salary) FROM employees;

-- 4. MIN()
SELECT MIN(salary) FROM employees;

-- 5. MAX()
SELECT MAX(salary) FROM employees;

