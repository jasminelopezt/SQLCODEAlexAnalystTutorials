/* CTE's, common table expressions. Can be subqueries,
are gone once query is canceled. for complex query 
statements*/

WITH CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary 
, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM [SQL tutorial]..EmployeeDemographics emp
JOIN [SQL tutorial]..EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee


