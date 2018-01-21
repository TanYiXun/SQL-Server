SELECT * FROM Staff_Relation

--Q1
SELECT Citizenship,Staff_Name FROM Staff_Relation WHERE Citizenship!='Singapore' AND Dept_Cd='DMIT' ORDER BY 1 DESC,2 ASC
--Q2
SELECT Staff_Name AS 'Singaporean Men' FROM Staff_Relation WHERE Gender='M' AND Citizenship='Singapore' AND YEAR(Date_Of_Birth) BETWEEN 1960 AND 1969 ORDER BY 1 ASC
--Q3
SELECT Marital_Status,Staff_Name FROM Staff_Relation WHERE Marital_Status='D' OR Marital_Status='W' 
SELECT Marital_Status,Staff_Name FROM Staff_Relation WHERE Marital_Status IN('D','W') 
--Q4
SELECT Highest_Qln,Staff_Name FROM Staff_Relation WHERE Highest_Qln LIKE 'B%' OR Staff_Name LIKE '%n%' ORDER BY 1 ASC, 2 ASC
--Q5
SELECT Marital_Status,Staff_Name FROM Staff_Relation WHERE Gender='F' AND (Marital_Status='D' OR Marital_Status='W')
SELECT Marital_Status,Staff_Name FROM Staff_Relation WHERE Gender='F' AND Marital_Status IN('D','W')
--Q6
SELECT Gender,Pay,Staff_Name FROM Staff_Relation WHERE Pay IS NOT NULL AND ((Gender='F' AND Pay BETWEEN 4000 AND 7000) OR (Gender='M' AND Pay BETWEEN 2000 AND 6000)) ORDER BY Gender ASC,Pay ASC
SELECT Staff_No,Staff_Name,Gender,Date_Of_Birth,Pay,Join_Yr FROM Staff_Relation WHERE Gender='F' AND Grade NOT IN('SSD','SSE') AND (YEAR(Date_Of_Birth)<1963 OR Pay>6000 OR Join_Yr BETWEEN 1997 AND 2000)





