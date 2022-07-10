/* Subqueries a.k.a nested querie, specifies 
data that we want retrieved. Can use anywhere in 
select, from, where, update, delete statements*/

SELECT *
FROM EmployeeSalary

--Subquery in select

SELECT EmployeeID, Salary, (Select AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

--How to do w/ partition by

SELECT EmployeeID, Salary, AVG(Salary) over() AS AllAvgSalary
FROM EmployeeSalary

--Why Group by doesn't work
SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
Order By 1,2

--Subquery in From


SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over() AS AllAvgSalary
FROM EmployeeSalary) a

--Subquery in where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
Select EmployeeID 
FROM EmployeeDemographics
WHERE Age > 30)




