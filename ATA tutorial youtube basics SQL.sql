--SELECT *
--FROM EmployeeDemographics
--WHERE FirstNames = 'Jim'

--SELECT * 
--FROM EmployeeDemographics
--WHERE FirstNames <> 'Jim'

--SELECT * 
--FROM EmployeeDemographics
--WHERE AGE <= 32 AND Gender = 'Male'

--SELECT * 
--FROM EmployeeDemographics
--WHERE AGE <= 32 OR Gender = 'Male'

--
----SELECT *
----FROM EmployeeDemographics
----WHERE LastName LIKE 'S%'

--SELECT * 
--FROM EmployeeDemographics
--WHERE LastName LIKE '%S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstNames IN ('Jim', 'Michael')

--SELECT GENDER
--FROM EmployeeDemographics
--GROUP BY GENDER

--SELECT Gender, COUNT (Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, Age, COUNT (Gender)
--FROM EmployeeDemographics
--GROUP BY Gender , Age

--SELECT Gender, COUNT (Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE AGE > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT Gender, COUNT (Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE AGE > 31
--GROUP BY Gender
--ORDER BY Gender ASC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC














