--SQL Practical 9

SELECT * FROM country_relation
SELECT * FROM Course_Relation
SELECT * FROM Department_Relation
SELECT * FROM Module_Relation
SELECT * FROM Pre_Requisite_Relation
SELECT * FROM Staff_Dependent_Relation
SELECT * FROM Staff_Relation
SELECT * FROM stud_mod_performance_relation
SELECT * FROM student_relation

--Q1
SELECT Dept_Name,Staff_Name AS 'Director/Deputy Director' FROM Department_Relation D,Staff_Relation S WHERE D.Dept_Cd=S.Dept_Cd AND S.Designation LIKE ('%Director') ORDER BY Dept_Name ASC
--Q2
SELECT Dept_Name, Crse_Name, Crse_Fee+ISNULL(Lab_Fee,0) AS 'Total Course Fee' FROM Department_Relation D,Course_Relation C WHERE D.Dept_Cd=C.Offered_By ORDER BY 1 ASC, 3 DESC
--Q3
SELECT M.Mod_Name AS 'Module Name',MM.Mod_Name AS 'Pre-requisite Module' FROM Module_Relation M,Module_Relation MM,Pre_Requisite_Relation P WHERE M.Mod_Cd = P.Mod_Cd AND MM.Mod_Cd = P.Pre_Requisite ORDER BY 1,2 ASC
--Q4
SELECT D.Dept_Name AS 'Department Name', C.Crse_Name AS 'Course Name', S.Stud_name AS 'Student Name', YEAR(GETDATE())-YEAR(S.DOB) AS 'Age' FROM Department_Relation D, Course_Relation C, student_relation S WHERE D.Dept_Cd=C.Offered_By AND C.Crse_Cd=S.crse_cd ORDER BY 1 ASC,2 ASC,4 DESC
--Q5
SELECT S.Staff_Name 'Name of Staff',SS.Staff_Name 'Name of Supervisor' FROM Staff_Relation S, Staff_Relation SS WHERE S.Supervisor=SS.Staff_No
--Q6
SELECT D.Dept_Name, COUNT(*) 'Number of Staff' FROM Department_Relation D, Staff_Relation S WHERE D.Dept_Cd=S.Dept_Cd GROUP BY D.Dept_Name ORDER BY 2 DESC
