USE demo;

SELECT * FROM employees;

-- get avgSalary of each department
SELECT department, AVG(salary) as avgSalary
FROM employees
GROUP BY department;

-- 1. query to find total number of employees in each city
SELECT city, COUNT(city) AS noOfEmployees
FROM employees
GROUP BY city;

-- 2. query to find max salary of employees in each city in descending order
SELECT city, MAX(salary) as maxSalary
FROM employees
GROUP BY city
ORDER BY maxSalary ASC;

-- 3. 3:17:28
SELECT department, COUNT(id) AS emp_count
FROM employees
GROUP BY department
ORDER BY emp_count DESC;

-- 4. 3:20:13
SELECT department, AVG(salary) as avgSalary
FROM employees
GROUP BY department
HAVING avgSalary > 10250;

