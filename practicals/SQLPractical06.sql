SELECT * FROM Staff_Relation
SELECT * FROM Course_Relation
SELECT * FROM Department_Relation

--Q1
SELECT AVG(Crse_Fee) AS 'Mean Course Fee' FROM Course_Relation ORDER BY 'Mean Course Fee' DESC
--Q2
SELECT AVG(Lab_Fee) AS 'Mean Lab Fee',AVG(ISNULL(Lab_Fee,0)) AS 'Mean Lab Fee – Null treated as zero' FROM Course_Relation 
--Q3
SELECT SUM(Crse_Fee+Lab_Fee) AS 'Total fee (null as it is)',SUM(ISNULL(Crse_Fee,0)+ISNULL(Lab_Fee,0)) AS 'Total fee (null as zero)' FROM Course_Relation
SELECT AVG(Crse_Fee+Lab_Fee) AS 'Mean Total fee (null as it is)',AVG(ISNULL(Crse_Fee,0)+ISNULL(Lab_Fee,0)) AS 'MeanTotal fee (null as zero)' FROM Course_Relation
--Q4
SELECT SUM(Pay) AS 'Total Pay (null as it is)',SUM(ISNULL(Pay,0)) AS 'Total Pay (null as zero)' FROM Staff_Relation
--Q5
SELECT Pay,Allowance,SUM(Pay)+SUM(Allowance),SUM(Pay+Allowance),SUM(ISNULL(Pay,0)+ISNULL(Allowance,0)) FROM Staff_Relation--issue
--Q6
SELECT COUNT(*) AS 'Number of staff' FROM Staff_Relation
--Q7
SELECT COUNT(Lab_Fee) AS 'No of courses that charges lab fee' FROM Course_Relation
--Q8
SELECT MAX(Pay) AS 'Highest Pay',MIN(Pay) AS 'Lowest Pay' FROM Staff_Relation
--Q9
SELECT COUNT(Hourly_Rate) AS 'Number of staff on hourly pay', COUNT(DISTINCT Hourly_Rate) AS 'Number of different hourly pay' FROM Staff_Relation


