CREATE DATABASE ecommerce;

USE ecommerce;

-- TABLE1 => customer
CREATE TABLE customer (
id INT, 
cust_name VARCHAR(50)
);

INSERT INTO customer(id, cust_name)
VALUES
(1, "Basu"),
(2, "Geeta"),
(3, "Pallavi"),
(4, "Naveen"),
(5, "Praveen");

SELECT * FROM customer;

-- TABLE 2 => orders
CREATE TABLE orders(
id INT PRIMARY KEY,
order_name VARCHAR(50)
);

INSERT INTO orders(id, order_name)
VALUES
(2, "IEM"),
(3, "Bag"),
(4, "Laptop");


-- reaname order_name to order_item
ALTER TABLE orders
RENAME COLUMN order_name TO order_item;


SELECT * FROM orders;






-- INNER JOIN
SELECT *
FROM customer
INNER JOIN orders
ON customer.id = orders.id;

SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
INNER JOIN orders
ON customer.id = orders.id;






-- LEFT JOIN / LEFT OUTER JOIN
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id = orders.id;

SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
LEFT JOIN orders
ON customer.id = orders.id;

-- Left table : the table specified before the RIGHT JOIN keyword
-- Right table : the table specified after the RIGHT JOIN keyword







-- RIGHT JOIN / RIGHT OUTER JOIN
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;

SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;

-- Left table : the table specified before the RIGHT JOIN keyword
-- Right table : the table specified after the RIGHT JOIN keyword




-- FULL JON = LEFT JOIN + RIGHT JOIN 
-- In MySQL, the syntax for a full join is different compared to 

-- other SQL databases like PostgreSQL or SQL Server. 
-- MySQL does not support the FULL JOIN keyword directly. 
-- So we use a combination of LEFT JOIN, RIGHT JOIN, 
-- and UNION to achieve the result

SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;



USE ecommerce;



-- CROSS JOIN 
SELECT *
FROM customer
CROSS JOIN orders;






-- ----------------------------------------------------------------------

-- creating a new database => newSchool (for SELF JOIN)
CREATE DATABASE newSchool;

USE newSchool;

CREATE TABLE student(
s_id INT,
s_name VARCHAR(50),
mentor_id INT
);

INSERT INTO student(s_id, s_name, mentor_id)
VALUES
(1, "BASU", NULL),
(2, "GEETA", 3),
(3, "NIHAL", 1),
(4, "PALLAVI", 1);



-- UPDATE
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET mentor_id = 1
WHERE s_name = "GEETA";

UPDATE student 
SET mentor_id = 2
WHERE s_name = "NIHAL";

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM student;	






-- SELF JOIN
SELECT s1.s_name as mentorName, s2.s_name as studName
FROM student as s1
JOIN student as s2
WHERE s1.s_id = s2.mentor_id;


-- -------------------------------------------------------------------------
-- JUST COPY PASTED FROM ABOVE, DONT RUN AGAIN , JUST USE ecommerce;
CREATE DATABASE ecommerce;

USE ecommerce;

-- TABLE1 => customer
CREATE TABLE customer (
id INT, 
cust_name VARCHAR(50)
);

INSERT INTO customer(id, cust_name)
VALUES
(1, "Basu"),
(2, "Geeta"),
(3, "Pallavi"),
(4, "Naveen"),
(5, "Praveen");

SELECT * FROM customer;

-- TABLE 2 => orders
CREATE TABLE orders(
id INT PRIMARY KEY,
order_name VARCHAR(50)
);

INSERT INTO orders(id, order_name)
VALUES
(2, "IEM"),
(3, "Bag"),
(4, "Laptop");

SELECT * FROM customer;

SELECT * FROM orders;

-- reaname order_name to order_item
ALTER TABLE orders
RENAME COLUMN order_name TO order_item;


-- EXCLUSIVE JOINS

-- LEFT EXCLUSIVE JOIN
SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL; -- dont use orders.id = NULL;




-- RIGHT EXCLUSIVE JOIN 
SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL;




-- FULL EXCLUSIVE JOIN
SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL       -- dont use orders.id = NULL;
UNION
SELECT customer.id, customer.cust_name, orders.order_item
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL;









-- UNION OPERATOR (removes duplicates)
SELECT id FROM customer 
UNION
SELECT id FROM orders;




-- UNION ALL OPERATOR (doesn't remove duplicates)
SELECT id FROM customer
UNION ALL
SELECT id FROM orders;

