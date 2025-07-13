USE demo;

-- VIEW in SQL
-- A view is a virtual table in SQL. It helps in providing a filtered view
 -- of data for security purposes

SELECT * FROM employees;
 
CREATE VIEW employeesView AS
SELECT age, emp_name, department, city
FROM employees;

SELECT * FROM employeesView;