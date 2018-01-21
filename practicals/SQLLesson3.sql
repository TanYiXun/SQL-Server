Select * from Staff_Relation
Select Staff_No from Staff_Relation --select specific attributes/not whole table from table
SELECT DISTINCT Grade FROM Staff_Relation --use DISTINCT to only display unique values/remove duplicates
SELECT DISTINCT Staff_No AS'Staff Number',Staff_Name'Staff Name',Supervisor'Supervisor Number' from Staff_Relation --Use AS{optional} as a temporary header to be displayed instead of the actual attribute name
SELECT * FROM Staff_Relation ORDER BY Staff_No,Allowance ASC --ORDER BY sorts the table by the specified attributes by precednce.ASC{optional/automatic} sorts it in ascending order
SELECT * FROM Staff_Relation ORDER BY Staff_No DESC --DESC sorts the table in descending order
SELECT Staff_No,Staff_Name FROM Staff_Relation ORDER BY Staff_Name ASC --ORDER BY clause has to be the last.
SELECT * FROM Staff_Relation ORDER BY Staff_Name ASC,Staff_No DESC --multiple order sort.  
SELECT * FROM Staff_Relation ORDER BY 1 ASC,2 DESC --^same as above,except ORDER BY respective attributes from table
SELECT Staff_Name,Staff_No FROM Staff_Relation ORDER BY 1 ASC,2 DESC --^same as above,except SELECT specific attributes