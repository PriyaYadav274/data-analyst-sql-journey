CREATE DATABASE company;
USE company;

CREATE TABLE Employees(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT,
city VARCHAR(50)
);

INSERT INTO Employees VALUES(
(1,	'Aisha', 24, 'HR', 30000, 'Delhi'),
(2,	'Rohan', 28, 'IT', 50000, 'Mumbai'),
(3,	'Neha',	22,	'HR', 28000, 'Delhi'),
(4,	'Aman',	30,	'Finance', 60000, 'Bangalore'),
(5,	'Priya', 27, 'IT',	45000, 'Mumbai'),
(6,	'Karan', 25, 'Marketing', 35000, 'Pune'),
(7,	'Simran', 29, 'Finance', 62000,	'Delhi')
);
