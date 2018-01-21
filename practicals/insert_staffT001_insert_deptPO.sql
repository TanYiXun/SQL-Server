-- insert staff 'T001' into staff_relation
Insert into staff_relation
values 
('T001','Bruce',null,'05/15/1960','SSD','S',9000,2000,Null,'M','Singapore','2008','PO','FT','BComp','Principal')

-- insert PO into department_relation
insert into Department_Relation 
values 
('PO',  'Principal’s office', 'T001',  4, 4, 7500.00, NULL, '2008-01-01')