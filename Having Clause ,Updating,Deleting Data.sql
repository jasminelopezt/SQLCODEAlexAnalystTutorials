/* HAVING CLAUSE*/
SELECT JobTitle, COUNT (JobTitle)
FROM [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  GROUP BY JobTitle


SELECT JobTitle, COUNT (JobTitle)
FROM [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  GROUP BY JobTitle
  HAVING COUNT (JobTitle) > 1

 SELECT JobTitle, AVG (Salary)
FROM [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
Order By AVG(Salary)

/* Updating, Deleting Data*/

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics

UPDATE [SQL tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012 
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
UPDATE [SQL tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

DELETE FROM [SQL tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005

SELECT * 
FROM [SQL tutorial].dbo.EmployeeDemographics

/* before running a delete statement, use a select * statement to see
what you are going to delete*/


