REM   Script: Activity04
REM   Activity session 2

CREATE TABLE salesman (   
    salesman_id int ,   
    salesman_name varchar2(32),   
    salesman_city varchar2(32),   
    commission int   
);



Insert into salesman values('5001','James Hoog','New York','15');
Insert into salesman values('5002','Nail knite','Paris','13');
Insert into salesman values('5003','Pit Alex','London','11'); 
Insert into salesman values('5004','McLyon','Paris','14'); 
Insert into salesman values('5005','Paul Adam','Rome','13'); 
Insert into salesman values('5006','Lauson Hen','San Jose','12');

ALTER table salesman  
add grade int;

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





