SELECT * FROM Staff_Relation
SELECT * FROM Staff_Relation 
--1
SELECT Staff_No,Staff_Name,Supervisor,Date_Of_Birth,Grade,Marital_Status,Pay,Allowance,Hourly_Rate,Gender,Citizenship,Join_Yr,Dept_Cd,Type_of_Employment,Highest_Qln,Designation FROM Staff_Relation --1.1

--2
SELECT Citizenship FROM Staff_Relation ORDER BY 1 DESC 

--3
SELECT DISTINCT Citizenship AS 'citizenship' FROM Staff_Relation ORDER BY 1 ASC 

--4
SELECT Staff_Name AS 'Name of Staff',Date_Of_Birth 'Date-of-birth' FROM Staff_Relation ORDER BY Date_Of_Birth ASC 

--5
SELECT * FROM Department_Relation ORDER BY 1 DESC

--6
SELECT Dept_Cd,Staff_Name FROM Staff_Relation ORDER BY 1 DESC,2 DESC 

--7
SELECT Dept_Name AS Department_Name,HOD,HOD_Appt_Date AS HOD_Appointment_Date FROM Department_Relation 

--8
SELECT * FROM Department_Relation ORDER BY 4 DESC 