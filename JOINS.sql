/* inner joins, full/left/right outer joins*/

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL tutorial].dbo.EmployeeSalary


SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
/* shows everything that is the same in both tables*/

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
/* shows everything from both tables regardless if it has a match*/
SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Takes everything from left table and overlapping, but if it is only in right table, will not show.

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* all info from right table, if doesn't match on left table, will have nulls*/

Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL,'Holly','Flax',NULL, 'Male'),
(1013, 'Darryl','Philbin',NULL,'Male')

Insert into EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
Inner Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
/* shows info from both tables */

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*all info from employee salary table but doesn't have to be on left table which is employee demographics table*/


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
Right Outer Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
LEFT Outer Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Showing everything from left table regardless if is in right table */

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
LEFT Outer Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Identifying who makes the most money, can do full outer join and look at everything */

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
Full Outer Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL tutorial].dbo.EmployeeDemographics
Inner Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

--calculating avg salary

SELECT JobTitle, AVG(Salary)
FROM [SQL tutorial].dbo.EmployeeDemographics
Inner Join [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle




