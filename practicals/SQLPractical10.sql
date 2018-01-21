--SQl Practical 10

SELECT * FROM student_relation
SELECT * FROM country_relation
SELECT * FROM stud_mod_performance_relation
SELECT * FROM Staff_Relation
SELECT * FROM Department_Relation
SELECT * FROM Pre_Requisite_Relation
SELECT * FROM Module_Relation


--Q1
SELECT M.Adm_no, R.Stud_name, M.mark, M.grade 
FROM student_relation R,stud_mod_performance_relation M 
WHERE M.adm_no=R.Adm_no AND M.mark>(
SELECT AVG(mark) 
FROM stud_mod_performance_relation 
WHERE mod_registered='DBMS'
) AND mod_registered='DBMS' 
ORDER BY M.mark DESC

--Q2
SELECT S.Citizenship, S.Staff_Name 
FROM Staff_Relation S, country_relation C 
WHERE S.Citizenship=C.country_name AND S.Citizenship IN (
SELECT country_name 
FROM country_relation 
WHERE language='English'
) ORDER BY S.Citizenship ASC,S.Staff_Name ASC

--Q3
SELECT D.* 
FROM Department_Relation D, Staff_Relation S 
WHERE D.HOD=S.Staff_No AND S.Gender='F'--join

SELECT * 
FROM Department_Relation 
WHERE HOD IN (
SELECT Staff_No 
FROM Staff_Relation 
WHERE Gender='F')--subquery

--Q4
SELECT DISTINCT M.*  
FROM Module_Relation M,Pre_Requisite_Relation P 
WHERE P.Mod_Cd=M.Mod_Cd AND P.Pre_Requisite IS NOT NULL--join

SELECT * 
FROM Module_Relation 
WHERE Mod_Cd IN (
SELECT Mod_Cd 
FROM Pre_Requisite_Relation 
WHERE Pre_Requisite IS NOT NULL)--subquery

--QO1
SELECT * 
FROM Staff_Relation S 
WHERE S.Dept_Cd IN (
SELECT Dept_Cd 
FROM Department_Relation 
WHERE HOD IN (
SELECT Staff_No 
FROM Staff_Relation 
WHERE Gender='F'))--subquery

SELECT S.* 
FROM Staff_Relation S, Department_Relation D,Staff_Relation SS 
WHERE S.Dept_Cd=D.Dept_Cd AND D.HOD=SS.Staff_No AND SS.Gender='F'--join

--QO2
SELECT D.Dept_Name,COUNT(S.Staff_No) AS 'No of Staff with pay > 5000' 
FROM Department_Relation D,Staff_Relation S 
WHERE D.Dept_Cd=S.Dept_Cd AND Pay>5000 AND S.Dept_Cd IN (
SELECT Dept_Cd 
FROM Staff_Relation 
WHERE Type_of_Employment='FT' 
GROUP BY Dept_Cd 
HAVING COUNT(*)>5) 
GROUP BY D.Dept_Name