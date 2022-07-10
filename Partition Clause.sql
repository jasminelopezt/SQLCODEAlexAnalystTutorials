/* ALIASING, used for eligibility of script so other can 
understand the work */

SELECT FirstName AS Fname
FROM [SQL tutorial].dbo.EmployeeDemographics

/* Can use with or without the AS in the script */

SELECT FirstName  Fname
FROM [SQL tutorial].dbo.EmployeeDemographics


SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL tutorial].dbo.EmployeeDemographics


SELECT AvG (Age) As AvgAge
FROM [SQL tutorial].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL tutorial].dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM [SQL tutorial].dbo.EmployeeDemographics AS Demo
LEFT JOIN [SQL tutorial].dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL tutorial].dbo.WareHouseEmployeeDemographics
ON Demo.EmployeeID = Ware.EmployeeID

/*PARTITION BY STATEMENT, GETS CONFUSED W GROUP BY. IS NOT GROUP BY
GROUP BY SUMS AND AVERAGES AND ROLLS UP GROUPS ROWS. 
This divides results set and changes how window function is calculated */

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics AS Dem
JOIN [SQL tutorial].dbo.EmployeeSalary AS Sal
ON Dem.EmployeeID = Sal.EmployeeID


SELECT FirstName, LastName, Gender, Salary, 
COUNT (Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL tutorial].dbo.EmployeeDemographics AS dem
JOIN [SQL tutorial].dbo.EmployeeSalary AS sal
ON dem.EmployeeID = sal.EmployeeID

