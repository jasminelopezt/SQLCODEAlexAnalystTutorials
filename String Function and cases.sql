
/*string functions- trim, LTRIM, RTRIM, Replace, 
Substring, Upper, Lower */

--Drop table EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

--Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM (EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM (EmployeeID) as IDlTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM (EmployeeID) as IDRTRIM
FROM EmployeeErrors


--Using replace

SELECT LastName, REPLACE (LastName, '- Fired','') 
AS LastNameFixed
FROM EmployeeErrors

--Using substring. Gets digit from first number and then
--the next ones after that
SELECT SUBSTRING (FirstName, 1,3)
FROM EmployeeErrors

SELECT SUBSTRING (FirstName, 3,3)
FROM EmployeeErrors

SELECT  SUBSTRING(err.FirstName,1,3),  SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING (dem.FirstName,1,3)

--Using Upper and Lower
SELECT FirstName, LOWER (FirstName) as LowCase
FROM EmployeeErrors

SELECT FirstName, UPPER (FirstName) as UpCase
FROM EmployeeErrors

