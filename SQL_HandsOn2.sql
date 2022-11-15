--Shipra Goswami(2225506)


-- create database
create database sqlhandson2;

-- use database
use sqlhandson2;

-- Create Department table

CREATE TABLE Department
(
	DeptId int NOT NULL PRIMARY KEY,
	DepartmentName varchar(50) NULL,
	DeptHead varchar(50) NULL
);

-- Insert values into table

INSERT INTO Department (DeptId, DepartmentName, DeptHead)
VALUES (1, "Information Technology", "Logeshwaran"),
(2, "HR", "Natrarajan"),
(3, "Accounts", "Karthik"),
(4, "Transport", "Baskar"),
(5, "Canteen", "Mounika"),
(6, "Civil", "Manasri");

ALTER TABLE Employee
ADD CONSTRAINT FK_DeptId
FOREIGN KEY (DepartmentId) REFERENCES Department (DeptId);

-- a) Write a query with inner join to show Name, Designation and Department like below
 
SELECT e.Name, e.Designation, d.DepartmentName AS Department FROM Employee e
INNER JOIN Department d ON e.DepartmentId = d.DeptId;

-- b) Write a query to fetch the employee names from Employee table who are working in HR department with the designation Programmer

SELECT e.Name FROM Employee e
JOIN Department d ON e.DepartmentId = d.DeptId
WHERE e.Designation = "Programmer" AND d.DepartmentName = "HR";
