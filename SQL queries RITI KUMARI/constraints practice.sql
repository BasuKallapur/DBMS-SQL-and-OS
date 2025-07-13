CREATE DATABASE college;

USE college;

-- unique constraint

CREATE TABLE stud(
phonenum INT UNIQUE	 
); 

INSERT INTO stud(phonenum)
VALUES
(123),
(456);

-- not null constraints

CREATE TABLE stud1(
rollnum INT ,
mobile INT NOT NULL
);

INSERT INTO stud1(rollnum, mobile)
VALUES
(123, 456);

-- check constraint

CREATE TABLE stud3(
age INT CHECK(age > 18)
);

INSERT INTO stud3(age)
VALUES
(21), 
(22);

CREATE TABLE stud4(
name VARCHAR(50) DEFAULT 'LEMS',
rollnum INT
);

INSERT INTO stud4(rollnum)
VALUES
(55);

SELECT * FROM stud4;

CREATE TABLE stud5(
studname VARCHAR(50) DEFAULT 'LEMS',
rollnum INT
);

INSERT INTO stud5(studname, rollnum)
VALUES
("basu", 55),
("basuj", 56);

SELECT * FROM stud5;

-- primary key constraint = unique + not-null

-- 1. unique
CREATE TABLE stud6(
rollnum INT PRIMARY KEY,
age INT
);

INSERT INTO stud6(rollnum, age)
VALUES
(11, 11),
(12, 12), 
(13, 13);

SELECT * FROM stud6;

-- 2. not-null
CREATE TABLE stud7(
rollnum INT PRIMARY KEY,
age INT
);

INSERT INTO stud7(rollnum, age)
VALUES
(11, 11),
(12, 12), 
(13, 15);

SELECT * FROM stud7;

-- Foriegn key constraint
CREATE TABLE course(
courseName VARCHAR(50),
rollnum INT , 
FOREIGN KEY (rollnum) REFERENCES stud7(rollnum)
);

SELECT * FROM course;