--Shipra Goswami(2225506)


-- create database
create database sqlhandson3;

-- use database
use sqlhandson3;

-- a)	Write a query to find the Average salary of all the employees working in Cognizant:
 
SELECT AVG(Salary) AS "AVG Salary" FROM Employee
WHERE Office = "Cognizant";

-- Create Persons table :

create table Persons (
ID int not null primary key,
LastName varchar(50) null,
FirstName varchar(50) not null,
Age int null,
Mobile bigint(20) not null
);

-- Insert valued into Persons table

insert into Persons (ID, FirstName, LastName, Age, Mobile)
values(1, "Kumar", "Rohith", 23, 9383833437),
(2, "Sharma", "Ajay", 25, 8373848230),
(3, "Devi", "Priya", 21, 872635345),
(4, "Kumar", "Sathish", 32, 98377342);

-- b) Write a query to find out the records in which mobile number was entered wrongly i.e. not having ten digits:
 
SELECT * FROM Persons
WHERE LENGTH(Mobile) != 10;