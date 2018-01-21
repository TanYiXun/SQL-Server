--Practical 8
SELECT * FROM Staff_Relation
SELECT * FROM Department_Relation
SELECT * FROM Course_Relation
ALTER TABLE Department_Relation ADD FOREIGN KEY(HOD) REFERENCES Staff_Relation(Staff_No)
ALTER TABLE Course_Relation ADD FOREIGN KEY(Offered_By) REFERENCES Department_Relation(Dept_Cd)
ALTER TABLE Staff_Relation ADD FOREIGN KEY(Dept_Cd) REFERENCES Department_Relation(Dept_Cd)

-- DBMS SQL Practical 8 Staff_Dependent_Relation
-- Number of rows in table = 19

Create Table Staff_Dependent_Relation
( Staff_No Char(4) not null,
  Dependent_Name Varchar(30),
  Relationship Varchar(20) not null,
  primary key ( Staff_No,Dependent_Name),
  foreign Key ( Staff_No) References Staff_Relation (Staff_No) )

Insert Into Staff_Dependent_Relation
values
('S003','Chin Chin','Daughter')

Insert Into Staff_Dependent_Relation
values
('S003','Mei Mei','Wife')

Insert Into Staff_Dependent_Relation
values
('S003','Yang Yang','Son')

Insert Into Staff_Dependent_Relation
values
('S004','Chin chin','Wife')

Insert Into Staff_Dependent_Relation
values
('S005','Candice','Wife')

Insert Into Staff_Dependent_Relation
values
('S005','Mei Mei','Daughter')

Insert Into Staff_Dependent_Relation
values
('S005','Pamela','Daughter')

Insert Into Staff_Dependent_Relation
values
('S007','Judith','Wife')

Insert Into Staff_Dependent_Relation
values
('S008','Nelson','Son')

Insert Into Staff_Dependent_Relation
values
('S010','Felicia','Wife')

Insert Into Staff_Dependent_Relation
values
('S010','Jamie','Daughter')

Insert Into Staff_Dependent_Relation
values
('S010','Janet','Daughter')

Insert Into Staff_Dependent_Relation
values
('S010','Janny','Daughter')

Insert Into Staff_Dependent_Relation
values
('S010','Jerome','Son')

Insert Into Staff_Dependent_Relation
values
('S010','Judith','Daughter')

Insert Into Staff_Dependent_Relation
values
('S011','Jamie','Wife')

Insert Into Staff_Dependent_Relation
values
('S012','Mark','Son')

Insert Into Staff_Dependent_Relation
values
('S012','Shyna','Wife')

/*
Insert Into Staff_Dependent_Relation
values
('S013','Pamela','Wife')--x
*/

Insert Into Staff_Dependent_Relation
values
('T002','Mike','Husband')

/*
Insert Into Staff_Dependent_Relation
values
('T006','Catherine','Wife')--x
*/


--DBMS SQL Practical 8 Module_Relation
-- Explain the errors you may encounter in populating the table.
-- Number of rows in table = 13

Create Table Module_Relation
( Mod_Cd varchar(10) not null primary key,
  Mod_Name varchar(100) not null,
  Credit_Unit integer not null,
  Mod_Coord  char(4) null,
  foreign key ( Mod_Coord ) References Staff_Relation ( Staff_No ) )
    
Insert Into Module_Relation
Values
('AIP','Accounting Informatics Project',4,'S018')

Insert Into Module_Relation
Values
('AIS','Accounting Information System',4,'S019')

Insert Into Module_Relation
Values
('BUAE','Business Analysis Using Excel',3,'S019')

/*
Insert Into Module_Relation
Values
('BPM','Business Process Management',4,'S090')--x
*/

Insert Into Module_Relation
Values
('CRM','Customer Relationship Management',3,'S019')

Insert Into Module_Relation
Values
('DBMS','Database Management System',5,'S020')

Insert Into Module_Relation
Values
('DM','Data Mining',4,'S018')

Insert Into Module_Relation
Values
('ITOS','IT and Office Software',4,'S018')

Insert Into Module_Relation
Values
('JPRG','Java Programming',8,'S017')

Insert Into Module_Relation
Values
('NETF','Network Fundamentals',3,'S017')

Insert Into Module_Relation
Values
('PM','Project Management',3,'S018')

Insert Into Module_Relation
Values
('SAD','Software Application Development',8,'S020')

Insert Into Module_Relation
Values
('SDT','Software Development Technique',5,'S019')

Insert Into Module_Relation
Values
('WCD','Web Client Development',4,'S018')


--DBMS SQL Practical 8 Pre_requisite_relation

-- Explain the errors, if any.
-- Total number of rows = 11 

Create Table Pre_Requisite_Relation
( Mod_Cd varchar(10) not null,
  Pre_Requisite varchar(10) not null,
  primary key ( Mod_Cd, Pre_Requisite ) ,
  foreign key ( Mod_Cd ) References Module_Relation ( Mod_Cd  ),
  foreign key ( Pre_Requisite ) References Module_Relation ( Mod_Cd ))

Insert into Pre_Requisite_Relation
values 
('AIP','AIS')

/*
Insert into Pre_Requisite_Relation
values 
('AIP','BPM')--x
*/

Insert into Pre_Requisite_Relation
values 
('AIS','DBMS')

Insert into Pre_Requisite_Relation
values 
('AIS','JPRG')

Insert into Pre_Requisite_Relation
values 
('AIS','SDT')

/*
Insert into Pre_Requisite_Relation
values 
('BPM','JPRG')--x
*/

Insert into Pre_Requisite_Relation
values 
('CRM','DBMS')

Insert into Pre_Requisite_Relation
values 
('DM','DBMS')

Insert into Pre_Requisite_Relation
values 
('SAD','JPRG')

Insert into Pre_Requisite_Relation
values 
('SAD','NETF')

Insert into Pre_Requisite_Relation
values 
('SAD','SDT')

Insert into Pre_Requisite_Relation
values 
('SAD','WCD')

Insert into Pre_Requisite_Relation
values 
('SDT','DBMS')


--DBMS SQL Practical 8 Country_relation
-- Number of rows in table = 8

Create table country_relation
(  country_name  varchar(30) not null primary key,
   language      varchar(30) not null,
   region        varchar(30) not null)

Insert into country_relation
values 
('China','Chinese','Asia')

Insert into country_relation
values 
('Hong Kong','Cantonese','Asia')

Insert into country_relation
values 
('India','Tamil','Asia')

Insert into country_relation
values 
('Korea','Korean','Asia')

Insert into country_relation
values 
('Malaysia','Malay','Asia')

Insert into country_relation
values 
('Singapore','English','Asia')

Insert into country_relation
values 
('Taiwan','Chinese','Asia')

Insert into country_relation
values 
('Thailand','Thai','Asia')

Insert Into country_relation values ('Myanmar', 'Burmese', 'Asia') --Added to resolve error


--DBMS SQL Practical 8 Student_Relation
-- There is an error in the Create Table statement
-- Rectify the error before populating the table

-- Number of rows in table = 12

create table student_relation
( Adm_no			char(4) primary key,
  Stud_name	varchar(30) not null,
  gender			char(1)  not null, 
  address			varchar(100) not null,
  mobile_phone char(8) null,
  home_phone  char(8) null,
  DOB				date      not null,
  nationality		varchar(30) not null,
  crse_cd			varchar(5) not null,
  foreign key ( nationality ) References country_relation( country_name),
  foreign key ( crse_cd ) References course_relation ( crse_cd ))
  


Insert into student_relation
values
('A001','Janice','F','127 Clementi Ave 4',null,'61112211','12/11/1990','Singapore','DIT')

Insert into student_relation
values
('A002','Anita','F','326-C Peck Sia Street','91123321','64785623','7/16/1989','Malaysia','DBIT')

Insert into student_relation
values
('A003','Ronnie','M','4 Jurong East',null,'65888451','3/4/1989','Myanmar','DBIT')

Insert into student_relation
values
('A004','Mike','M','79 Clementi South','95566003','63355990','7/10/1989','China','DIT')

Insert into student_relation
values
('A005','Heidi','F','88-A Yi Soon Road',null,'65577111','2/26/1990','Malaysia','DDM')

Insert into student_relation
values
('A006','Keith','M','239 South Bridge Road',null,'64689002','8/19/1990','India','DDM')

Insert into student_relation
values
('A007','Adeline','F','114 Toa Payoh North','95556600','62221155','9/24/1989','Singapore','DDM')

Insert into student_relation
values
('A008','Peter','M','66 Tanglin Ave 3','96343477','65432122','10/30/1989','Singapore','DISM')

Insert into student_relation
values
('A009','Peter','M','53 Dover West',null,'66312254','9/20/1989','Malaysia','DISM')

Insert into student_relation
values
('A010','Derrick','M','4 Boon Lay Way','89098889','64457890','9/8/1990','Korea','DFI')

Insert into student_relation
values
('A011','Joshua','M','67 Yew Tee Road',null,'62089578','7/6/1990','Hong Kong','DFI')

Insert into student_relation
values
('A012','Denise','F','3 Sixth Avenue','81897685','67893467','12/11/1990','Thailand','DFI')

-- One of the rows cannot be inserted into the Student_relation. Why?
--Because the fk value doesnt exist in the pk value table
-- What must you do to add that row into the Student_relation?
-- Hint:
-- Insert Into country_relation values ('Myanmar', 'Burmese', 'Asia') 



-- DBMS SQL Practical 8 Stud_Mod_Performance_Relation
-- Number of rows in table = 41

Create table stud_mod_performance_relation
( adm_no				char(4),
  mod_registered	varchar(10) ,
  mark					integer null,
  grade					char(2) null,
  primary key ( adm_no, mod_registered) ,
  foreign key ( adm_no ) references Student_relation ( adm_no ), 
  foreign key ( mod_registered )  references module_relation ( mod_cd) ) 

--dfi
insert into stud_mod_performance_relation values
('A012','AIP',70,'B-')

insert into stud_mod_performance_relation values
('A012','AIS',81,'A')

insert into stud_mod_performance_relation values
('A012','BUAE',66,'C+')

/*
insert into stud_mod_performance_relation values
('A012','BPM',91,'AD')--x
*/

--
insert into stud_mod_performance_relation values
('A011','AIP',60,'C-')

insert into stud_mod_performance_relation values
('A011','AIS',41,'F')

insert into stud_mod_performance_relation values
('A011','BUAE',36,'F')

--
insert into stud_mod_performance_relation values
('A010','AIP',86,'A')

insert into stud_mod_performance_relation values
('A010','AIS',81,'A')

insert into stud_mod_performance_relation values
('A010','BUAE',96,'AD')

-- DISM
insert into stud_mod_performance_relation values
('A009','SDT',81,'A')

insert into stud_mod_performance_relation values
('A009','NETF',68,'C+')

insert into stud_mod_performance_relation values
('A009','SAD',74,'B-')

--
insert into stud_mod_performance_relation values
('A008','SDT',11,'F')

insert into stud_mod_performance_relation values
('A008','NETF',58,'D+')

insert into stud_mod_performance_relation values
('A008','SAD',64,'C-')

-- DDM
insert into stud_mod_performance_relation values
('A007','PM',77,'B+')

insert into stud_mod_performance_relation values
('A007','WCD',78,'F+')

insert into stud_mod_performance_relation values
('A007','DBMS',88,'A')

insert into stud_mod_performance_relation values
('A007','JPRG',84,'A')


insert into stud_mod_performance_relation values
('A006','PM',57,'D+')

insert into stud_mod_performance_relation values
('A006','WCD',61,'C-')

insert into stud_mod_performance_relation values
('A006','DBMS',60,'C-')

insert into stud_mod_performance_relation values
('A006','JPRG',70,'B-')


insert into stud_mod_performance_relation values
('A005','PM',58,'D+')

insert into stud_mod_performance_relation values
('A005','WCD',64,'C-')

insert into stud_mod_performance_relation values
('A005','DBMS',64,'C-')

insert into stud_mod_performance_relation values
('A005','JPRG',73,'B-')


insert into stud_mod_performance_relation values
('A004','DBMS',80,'A')

insert into stud_mod_performance_relation values
('A004','JPRG',88,'A')

insert into stud_mod_performance_relation values
('A004','NETF',73,'B-')

insert into stud_mod_performance_relation values
('A001','DBMS',72,'B-')

insert into stud_mod_performance_relation values
('A001','JPRG',78,'B+')

insert into stud_mod_performance_relation values
('A001','NETF',87,'A')

-- DBIT

insert into stud_mod_performance_relation values
('A002','DBMS',72,'B-')

insert into stud_mod_performance_relation values
('A002','JPRG',78,'B+')

insert into stud_mod_performance_relation values
('A002','WCD',83,'A')

insert into stud_mod_performance_relation values
('A002','SAD',87,'A')

--
insert into stud_mod_performance_relation values
('A003','DBMS',72,'B-')

insert into stud_mod_performance_relation values
('A003','JPRG',78,'B+')

insert into stud_mod_performance_relation values
('A003','WCD',83,'A')

insert into stud_mod_performance_relation values
('A003','SAD',87,'A')

/*
insert into stud_mod_performance_relation values
('A003','SAD',90,'A')--x
*/

select * from stud_mod_performance_relation