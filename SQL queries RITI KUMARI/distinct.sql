CREATE TABLE students(
name VARCHAR(50),
rollNUM INT PRIMARY KEY,
school VARCHAR(50)
);

INSERT INTO students(name, rollNum, school) 
VALUES
("BASU KALLAPUR", 25, "GOVT"),
("GEETA KALLAPUR", 28, "GOVT"),
("PRAVEEN KALLAPUR", 26, "OXFORD"),
("NAVEEN KALLAPUR", 24, "CHETHANA");

SELECT * FROM students;

-- DISTNCT command
SELECT DISTINCT name, school FROM students;