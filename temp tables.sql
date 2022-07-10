/* TEMP TABLES: temporary tables, can use multiple times unlike CTE's
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT * 
FROM [SQL tutorial]..EmployeeSalary


DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)



INSERT INTO #temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM [SQL tutorial]..EmployeeDemographics emp
JOIN [SQL tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *
FROM #temp_Employee2



/*If want to run first table, cannot because employee2
table was created. need to drop employee two table*/


