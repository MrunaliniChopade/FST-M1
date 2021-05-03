REM   Script: Activity02
REM   Activity02


CREATE TABLE salesman ( 
    salesman_id int , 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

alter salesman 
modify salesman_id int not null primary key;

Desc salesman


Insert into salesman values('5001','James Hoog','New York','15');

Insert into salesman values('5002','Nail knite','Paris','13');

Insert into salesman values('5003','Pit Alex','London','11');

Insert into salesman values('5004','McLyon','Paris','14');

Insert into salesman values('5005','Paul Adam','Rome','13');

Insert into salesman values('5006','Lauson Hen','San Jose','12');

Select * from salesman;

