USE demo;

-- stored procedure is like function in java
-- 1. without params
USE DELIMITER  /
CREATE PROCEDURE getAllRecords()
BEGIN
SELECT * FROM employees;
END /

DELIMITER ;

CALL getAllRecords();


SELECT * FROM employees;


-- 2. with params
DELIMITER /
CREATE PROCEDURE getEmployeById(IN emp_id INT)
BEGIN
   SELECT *
   FROM employees
   WHERE id= emp_id;
END /
DELIMITER ;

CALL getEmployeById(2);




-- other one
DELIMITER /

CREATE PROCEDURE getEmployeeById()
BEGIN
   SELECT * 
   FROM employees
   WHERE salary > 10060;
END /

DELIMITER ;

CALL getEmployeeById();  






-- some more example
SELECT * FROM employees;

DELIMITER /
CREATE PROCEDURE getDepartment()
BEGIN
SELECT id, emp_name, department
FROM employees;
END /

DELIMITER ;

CALL getDepartment();