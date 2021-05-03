REM   Script: Activity01
REM   Activity

create table Employee( 
emp_name varchar(20), 
emp_id   int, 
emp_role varchar(25), 
emp_status varchar(4) 
);

select 43*5 from dual;

insert into Employee (emp_name, emp_id,emp_role,emp_status)values ('Mrunalini','1234','TESTER','true');

select * from Employee;

insert into Employee (emp_name, emp_id,emp_role,emp_status)values ('Mrunalini','1234','TESTER','true');

select * from Employee;

select * from Employee where emp_role = 'TESTER';

Desc Employee


create table Employee( 
emp_name varchar(20), 
emp_id   int, 
emp_role varchar(25), 
emp_status varchar(4) 
);

insert into Employee (emp_name, emp_id,emp_role,emp_status)values ('Mrunalini','1234','TESTER','true');

select * from Employee;

//Inserted twice  


Insert all 
into Employee (emp_name, emp_id,emp_role,emp_status)values ('Keerthi','1235','TESTER','true') 
into Employee (emp_name, emp_id,emp_role,emp_status)values ('Vamshi','1236','DEVELOPER','true') 
into Employee (emp_name, emp_id,emp_role,emp_status)values ('Prathap','1237','TESTER','true') 
into Employee (emp_name, emp_id,emp_role,emp_status)values ('Rupa','1238','DEVELOPER','true') 
select 1 from dual;

select * from Employee;

select emp_name from Employee;

select a.emp_name as "Name" from Employee a;

select Distinct emp_name from Employee;

select * from Employee where emp_role = 'TESTER';

select * from Employee where emp_name like '%i';

select * from Employee where emp_name like '%i' and emp_role = 'DEVELOPER';

Desc Employee


select 43*5 from dual;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

Desc salesman


