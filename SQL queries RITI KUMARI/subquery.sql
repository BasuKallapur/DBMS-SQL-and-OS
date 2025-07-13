USE demo;

SELECT * FROM employees;



-- SUB QUERY

-- emp salary > min salary 
SELECT MIN(salary) as minSalary
FROM employees;

SELECT *   -- emp_name, salary
FROM employees
WHERE salary > (SELECT MIN(salary) as minSalary
FROM employees);


-- employee with minimum age
SELECT MIN(age)
FROM employees;

SELECT emp_name, age 
FROM employees
WHERE age = (SELECT MIN(age)
FROM employees);
-- LIMIT 1;

SELECT * FROM employees;




-- min age
SELECT MIN(age) AS min_age
FROM employees;

-- -- all employes greater than min age
SELECT emp_name, age
FROM employees
WHERE age > (SELECT MIN(age) AS min_age
FROM employees);

SELECT emp.emp_name, emp.age
FROM employees emp, (SELECT MIN(age) AS min_age
FROM employees) as subq
WHERE emp.age > subq.min_age;





SELECT emp.emp_name, emp.age, stats.min_age, stats.max_age, stats.avg_age
FROM employees emp,
     (SELECT MIN(age) AS min_age,
             MAX(age) AS max_age,
             AVG(age) AS avg_age
      FROM employees) AS stats
WHERE emp.age > stats.avg_age;




-- 4:44:02
SELECT AVG(age) as avgAge
FROM employees;

SELECT age, (SELECT AVG(age) 
FROM employees) as avgAge 
FROM employees;





SELECT * FROM employees;