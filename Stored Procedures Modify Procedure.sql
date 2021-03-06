USE [SQL tutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 6/26/2022 6:34:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle nvarchar(100)
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
WHERE JobTitle = @JobTitle
group by JobTitle

Select * 
From #temp_employee