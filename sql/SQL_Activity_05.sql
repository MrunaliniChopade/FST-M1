REM   Script: Activity05
REM   Activity session 2

CREATE TABLE salesman (   
    salesman_id int ,   
    salesman_name varchar2(32),   
    salesman_city varchar2(32),   
    commission int   
);

ALTER table salesman  
add grade int;

update salesman set grade = 100;

select * from salesman;

alter table salesman delete grade int;

Insert into salesman values('5001','James Hoog','New York','15')  
Insert into salesman values('5002','Nail knite','Paris','13')  
Insert into salesman values('5003','Pit Alex','London','11')  
Insert into salesman values('5004','McLyon','Paris','14')  
Insert into salesman values('5005','Paul Adam','Rome','13')  
Insert into salesman values('5006','Lauson Hen','San Jose','12') 
 
 
ALTER table salesman  
add grade int;

update salesman set grade = 100;

select * from salesman;

ALTER table salesman remove grade int;

ALTER table salesman delete grade int;

ALTER table salesman delete grade;

ALTER table salesman drop column grade;

Insert into salesman values('5001','James Hoog','New York','15')  
Insert into salesman values('5002','Nail knite','Paris','13')  
Insert into salesman values('5003','Pit Alex','London','11')  
Insert into salesman values('5004','McLyon','Paris','14')  
Insert into salesman values('5005','Paul Adam','Rome','13')  
Insert into salesman values('5006','Lauson Hen','San Jose','12') 
 
 
ALTER table salesman  
add column grade int;

update salesman set grade = 100;

select * from salesman;

Insert into salesman values('5001','James Hoog','New York','15') ;

Insert into salesman values('5002','Nail knite','Paris','13') ;

Insert into salesman values('5003','Pit Alex','London','11') ;

Insert into salesman values('5004','McLyon','Paris','14') ;

Insert into salesman values('5005','Paul Adam','Rome','13') ;

Insert into salesman values('5006','Lauson Hen','San Jose','12');

ALTER table salesman  
add column grade int;

update salesman set grade = 100;

select * from salesman;

ALTER table salesman  
add grade int;

Alter table salesman drop column grade;

ALTER table salesman  
add grade int;

update salesman set grade = 100;





select * from salesman;

update salesman set grade = 100;

update salesman set grade = 200 where salesman_city = 'Rome';

update salesman set grade = 300 where salesman_name = 'James Hoog';

update salesman set salesman_name = 'Pierre' where salesman_name = 'McLyon';

