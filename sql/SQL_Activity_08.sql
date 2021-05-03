REM   Script: Session 08
REM   Activity_08

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no from orders where order_date asc;

select order_no from orders where purchase_amount desc;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

select distinct salesman_id from orders;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

select Sum(purchase_amount) as "Total Purchase" from orders;

select avg(purchase_amount) as "Average Purchase" from orders;

select max(purchase_amount) as "Maximum Purchase amount" from oredrs;

select min(purchase_amount) as "Minimum Purchase amount" from oredrs;

select count(distinct salesman_id) as "Total salesman" from orders;

select Sum(purchase_amount) as "Total Purchase" from orders;

select avg(purchase_amount) as "Average Purchase" from orders;

select max(purchase_amount) as "Maximum Purchase amount" from orders;

select min(purchase_amount) as "Minimum Purchase amount" from orders;

select count(distinct salesman_id) as "Total salesman" from orders;

select customer_id , max(purchase_amount) as "Highest purchase amount" from orders order by customer_id;

select Sum(purchase_amount) as "Total Purchase" from orders;

select avg(purchase_amount) as "Average Purchase" from orders;

select max(purchase_amount) as "Maximum Purchase amount" from orders;

select min(purchase_amount) as "Minimum Purchase amount" from orders;

select count(distinct salesman_id) as "Total salesman" from orders;

select customer_id , max(purchase_amount) as "Highest purchase amount" from orders group by customer_id;

select * from orders;

select salesman_id , max (purchase_amount) from orders where order_date = '2012-08-17' group by salesman_id;

select customer_id , max(purchase_amount) as "Highest purchase amount" from orders group by customer_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders  
WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

