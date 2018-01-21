SELECT * FROM Course_Relation
SELECT * FROM Staff_Relation 
SELECT * FROM Department_Relation

--Q1
SELECT Crse_Cd,Crse_Name AS 'Diploma Name',Crse_Fee,Lab_Fee,ISNULL(Lab_Fee,0) FROM Course_Relation ORDER BY Crse_Fee ASC
--Q2
SELECT Staff_Name,Pay,ISNULL(Pay,0)+ISNULL(Allowance,0) AS 'Salary',(ISNULL(Pay,0)+ISNULL(Allowance,0))*2.25 AS 'Bonus' FROM Staff_Relation ORDER BY Bonus ASC--wrong, because qn is finding poeple who have pay rather than everyone 
SELECT Staff_Name,Pay,Pay+ISNULL(Allowance,0) AS 'Salary',(Pay+ISNULL(Allowance,0))*2.25 AS 'Bonus' FROM Staff_Relation WHERE Pay IS NOT NULL ORDER BY Bonus ASC--better
--Q3
SELECT Dept_Name,Max_Staff_Strength,No_Of_Staff,(max_staff_strength - No_of_staff) AS 'number understaffed' FROM Department_Relation WHERE (max_staff_strength - No_of_staff)>0 ORDER BY 'number understaffed' DESC
--Q4
SELECT Staff_Name+' ('+Dept_Cd+')' AS 'academic staff' FROM Staff_Relation WHERE Staff_No LIKE 'S%' ORDER BY 'academic staff' ASC
--Q5
SELECT GETDATE() AS 'Current Date and Time'
--Q6
SELECT Staff_Name,YEAR(GETDATE())-Join_Yr AS 'Number of years in service' FROM Staff_Relation ORDER BY 'Number of years in service' DESC
--Q7
SELECT Crse_Cd,Crse_Name,LEN(Crse_Name) AS 'Length of Diploma Name' FROM Course_Relation WHERE LEN(Crse_Name)>31 ORDER BY 'Length of Diploma Name' ASC
--Q8
SELECT Crse_Cd,UPPER(Crse_Name) AS 'COURSE NAME',LOWER(Crse_Name) AS 'course name' FROM Course_Relation ORDER BY Crse_Cd DESC
--o1
SELECT Staff_No,Staff_Name,COALESCE(Supervisor, 'No Supervisor') AS 'Supervisor' FROM Staff_Relation WHERE Supervisor IS NULL
--OR
SELECT Staff_No,Staff_Name, ISNULL(CONVERT(CHAR(13),Supervisor), 'No Supervisor') AS 'Supervisor' FROM Staff_Relation WHERE Supervisor IS NULL
--o2
SELECT CONVERT(VARCHAR(10),GETDATE(),105) AS 'Current Date'


