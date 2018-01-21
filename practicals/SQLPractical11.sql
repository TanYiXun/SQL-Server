--SQL Practical 11

--Q1a
CREATE VIEW DMIT_Staff AS SELECT Staff_Name, Pay, Allowance FROM Staff_Relation WHERE Dept_Cd='DMIT'
SELECT * FROM DMIT_Staff
--Q1b
DROP VIEW DMIT_Staff
--Q1c(error)
ALTER VIEW DMIT_Staff AS Select * ADD Type_of_Employment, Designation FROM Staff_Relation WHERE Dept_Cd='DMIT'
--ALTER VIEW DMIT_Staff AS SELECT *, ROW_NUMBER() OVER (ORDER BY MyUniqueColumn) AS DMIT_Staff FROM Staff_Relation
--Q2a
CREATE VIEW Wife AS SELECT Staff_Name, Dependent_Name FROM Staff_Relation S, Staff_Dependent_Relation SD WHERE S.Staff_No=SD.Staff_No
SELECT * FROM Wife
--Q2b
DROP VIEW Wife
