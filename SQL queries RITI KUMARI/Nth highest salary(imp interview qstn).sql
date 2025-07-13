USE demo;

SELECT * FROM employees;




-- Nth highest salary (**** very imp ****) ex: N= 3
-- hint: use LIMIT m, n where m=n-1 and n=1
SELECT salary
FROM employees
ORDER BY salary DESC
LIMIT 2, 1;

