USE demo;

-- CLAUSES

-- 1. LIMIT clause (limits no. of rows to be shown)
SELECT * FROM employees
LIMIT 2;



-- 2. ORDER BY clause (used to sort results in 
-- either ascending or descending oder (ASC/DESC). by default: ascending order)  
SELECT * FROM employees
ORDER BY salary;




-- practice question
-- 1. fetch details of employee of id 1
SELECT * FROM employees
WHERE id=1;

-- 2. 
SELECT * FROM employees
WHERE id IN (1) AND city IN ("blr");
-- WHERE id=1 AND city="blr";

-- 3. 
SELECT * FROM employees
WHERE salary > 10060 AND city = "PUNE";


-- 4.
-- SELECT * FROM employees
-- WHERE city NOT IN ("PUNE");

SELECT * FROM employees
WHERE city != "PUNE";


-- 5.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;






USE demo;

SELECT * FROM employees;




-- GROUP BY clause
SELECT department, AVG(salary) as avgSalary
FROM employees
GROUP BY department;

SELECT id, department, AVG(salary) as avgSalary
FROM employees
GROUP BY id, department;



-- HAVING clause
SELECT department, AVG(salary) AS avgSalary
FROM employees
GROUP BY department
HAVING avgSalary > 10000;



-- practice qstns

-- 1. wrtite a query 
SELECT * FROM employees;