/* Stored procedures, accept input parameters
can be used over network with different
users and access different network data, if updated
other can see updates*/



CREATE PROCEDURE Temp_Employee
AS
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM [SQL tutorial]..EmployeeDemographics emp
JOIN [SQL tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #temp_employee

EXEC Temp_Employee 

EXEC Temp_Employee @JobTitle = 'Salesman'





