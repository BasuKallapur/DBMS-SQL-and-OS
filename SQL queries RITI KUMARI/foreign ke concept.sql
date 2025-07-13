CREATE DATABASE school;

USE school;

CREATE TABLE student(
id INT PRIMARY KEY, 
name VARCHAR(50)
);

CREATE TABLE course(
courseId INT PRIMARY KEY,
id INT,
FOREIGN KEY (id) REFERENCES student(id)
);

