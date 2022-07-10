/* CASE STATEMENT*/

SELECT FirstName, LastName, Age
FROM [SQL tutorial].dbo.EmployeeDemographics


SELECT FirstName, LastName, Age,
CASE 
    WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL tutorial].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

SELECT *
FROM [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT FirstName, LastName, JobTitle, Salary,
CASE
  WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
  WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
  WHEN JobTitle = 'HR' THEN Salary  + (Salary * .000001)
  ELSE Salary + (Salary * .03)
 END AS SalaryAfterRaise
FROM [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID




