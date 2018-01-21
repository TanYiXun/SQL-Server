--SQL Lesson 7
SELECT * FROM Staff_Relation

SELECT Gender, COUNT(Staff_No) AS 'Number' FROM Staff_Relation GROUP BY Gender;

--SQL Practical 7
SELECT * FROM Staff_Relation
SELECT * FROM Department_Relation
SELECT * FROM Course_Relation

--Q1a
SELECT Dept_Cd ,AVG(Pay) AS 'Mean Pay',SUM(Pay) AS 'Total Pay',COUNT(Staff_No) AS 'Total Staff' FROM Staff_Relation WHERE Type_of_Employment='FT' GROUP BY Dept_Cd ORDER BY COUNT(Staff_No) ASC--Staff_No cos its a primary key/not null values
--Q1b
SELECT Dept_Cd ,AVG(Pay) AS 'Mean Pay',SUM(Pay) AS 'Total Pay',COUNT(Staff_No) AS 'Total Staff' FROM Staff_Relation WHERE Type_of_Employment='FT' GROUP BY Dept_Cd HAVING COUNT(Staff_No)>2 ORDER BY COUNT(Staff_No) ASC
--Q2a
SELECT Grade ,AVG(Pay) AS 'Mean Pay',SUM(Pay) AS 'Total Pay',COUNT(Staff_No) AS 'Total Staff' FROM Staff_Relation WHERE Type_of_Employment='FT' GROUP BY Grade ORDER BY COUNT(Staff_No) ASC
--Q2b
SELECT Grade ,AVG(Pay) AS 'Mean Pay',SUM(Pay) AS 'Total Pay',COUNT(Staff_No) AS 'Total Staff' FROM Staff_Relation WHERE Type_of_Employment='FT' GROUP BY Grade HAVING Count(Staff_No)>2 ORDER BY COUNT(Staff_No) ASC
--Q3
SELECT Dept_Cd ,MAX(Pay) AS 'Highest Pay',MIN(Pay) AS 'Lowest Pay',MAX(Allowance) AS 'Highest Allowance',MIN(Allowance) AS 'Lowest Allowance' FROM Staff_Relation GROUP BY Dept_Cd ORDER BY Dept_Cd ASC
--Q4*
SELECT Staff_Name FROM Staff_Relation GROUP BY Staff_Name HAVING COUNT(*)>1--SELECT Staff_Name FROM Staff_Relation WHERE Staff_Name IN (SELECT Staff_Name FROM Staff_Relation GROUP BY Staff_Name HAVING COUNT(*)>1)
--Q5a
SELECT Dept_Cd , COUNT(Staff_No) AS 'Number of Staff' , sum( isnull(pay,0) + isnull(allowance,0)) AS 'Total Manpower Cost' FROM Staff_Relation WHERE Dept_Cd NOT IN ('PO' , 'DPO') GROUP BY Dept_Cd ORDER BY Dept_Cd DESC 
--Q5b
SELECT Dept_Cd , COUNT(Staff_No) AS 'Number of Staff' , sum( isnull(pay,0) + isnull(allowance,0)) AS 'Total Manpower Cost' FROM Staff_Relation WHERE Dept_Cd NOT IN ('PO' , 'DPO') GROUP BY Dept_Cd HAVING COUNT(Staff_No) NOT IN (1,2) ORDER BY Dept_Cd DESC
--Q5c
SELECT Dept_Cd , COUNT(Staff_No) AS 'Number of Staff' , sum( isnull(pay,0) + isnull(allowance,0)) AS 'Total Manpower Cost' FROM Staff_Relation WHERE Dept_Cd NOT IN ('PO' , 'DPO') GROUP BY Dept_Cd HAVING (COUNT(Staff_No) NOT IN (1,2)) AND sum( isnull(pay,0) + isnull(allowance,0))<20000 ORDER BY Dept_Cd DESC
--Q6
SELECT SUBSTRING(Staff_No,1,1) AS 'First Alphabet of Staff Number',COUNT(*) AS 'Number of staff', AVG(YEAR(GETDATE())-YEAR(Date_Of_Birth)) AS 'Mean Age of staff' FROM Staff_Relation GROUP BY SUBSTRING(Staff_No,1,1) ORDER BY COUNT(*) DESC 

