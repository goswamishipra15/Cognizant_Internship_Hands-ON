--Shipra Goswami(2225506)


-- create database
create database sqlhandson1;

-- use database
use sqlhandson1;


-- Create Employee table

CREATE TABLE Employee
(
	EmpId int NOT NULL PRIMARY KEY,
	Name varchar(50) NULL,
	Gender char(10) NULL,
	Age int NULL,
	Designation varchar(50) NULL,
	Office varchar(50) NULL,
	HireDate datetime NULL,
	Salary int NULL,
	DepartmentId int NULL
);

-- Insert value into table

INSERT INTO Employee (EmpId, Name, Gender, Age, Designation, Office, HireDate, Salary, DepartmentId)
VALUES (1, "Logeshwaran M", "Male" , 42, "Senior Trainer", "Cognizant", '2006-01-01', 150000, 1),
(2, "Anjali Chavan", "Female", 26, "Programmer", "Wipro", '2007-07-07', 34534, 2),
(3, "Durnala Nithish", "Male", 34, "Recruiter", "Softonic", '2008-10-05', 53453, 2),
(4, "Devaraj", "Male", 25, "Team Lead", "Cognizant", '2006-01-01', 42423, 1),
(5, "Richie John", "Male", 23, "Programmer", "Cognizant", '2008-10-05', 25425, 3),
(6, "Archana S Nair", "Female", 22, "Programmer", "Cognizant", '2008-10-05', 32425, 2),
(7, "Hari", "Male", 19, "Trainee", "TCS", NULL, 22000, 4),
(9, "Sunitha", "Female", 21, "Programmer", "TCS", '2008-10-05', 26000, 2),
(10, "Akshata", "Kapoor", 21, "Programmer", "Wipro", '2006-08-08', 32000, null);

-- a) Write a query to fetch all female employees whose designation is Programmer:

SELECT * FROM Employee where Gender = "Female" AND Designation = "Programmer";

-- b) Write a query to fetch all the employees who are working in Cognizant with salary higher than 30000:

SELECT * FROM Employee where Office = "Cognizant" AND Salary > 30000;

-- c) Write a query to fetch all the Employees whose age is between 22 and 30:

SELECT * FROM Employee where Age between 22 AND 30;

