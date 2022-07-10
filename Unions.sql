/****** Script for SelectTopNRows command from SSMS  ******/
--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)
 /*CREATED NEW TABLE W THIS TOP ONE AND MADE THE DATA WITH THE QUERY BELOW*/

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')


SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
UNION
SELECT * 
FROM [SQL tutorial].dbo.WareHouseEmployeeDemographics

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
UNION ALL
SELECT * 
FROM [SQL tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
SELECT * 
FROM [SQL tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID


SELECT EmployeeID, FirstName, Age
FROM [SQL tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID

/* Make sure when using union, selecting data that is the same, then it's all messed up like this one */