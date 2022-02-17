/*-----------------------prac3A-----------------------*/

drop table Emp;
create table Emp(empno numeric(4),ename varchar(10),designation varchar(10),salary numeric(8,2));
Alter table Emp alter column empno set data type numeric(6);
ALTER TABLE Emp Add qualification varchar(6);
ALTER TABLE Emp Add dob varchar(10);
ALTER TABLE Emp Add doj varchar(10);
ALTER TABLE Emp Drop column doj;
ALTER TABLE Emp Drop column dob,drop column qualification;
insert into emp values(22,'Sam','HR',200000);
insert into emp values(46,'Max','WebDev',40000);
insert into emp values(99,'Leon','Assistant',60000);
select * from emp;
Truncate table emp;


/*-----------------------prac3B-----------------------*/

drop table client;
create table client(client_no varchar(6),client_name varchar(20),address varchar(30),city varchar(15),pincode numeric(8),state varchar(15),bal_due numeric(10,2));
insert into client values('C001','sonali','vasai','mumbai',400077,'maharashtra',10000.23);
insert into client values('C002','saurabh','kurla','mumbai',400087,'maharashtra',50000.55);
insert into client values('C003','abcheh','virar','gandhinagar',4000755,'maharashtra',25000.93);
insert into client values('C004','pratik','malad','mumbai',400090,'maharashtra',77000.00);
insert into client values('C005','kirti','bandra','mumbai',400045,'maharashtra',88000.23);
select * from client;

drop table product;
create table product(product_no varchar(6),description varchar(15),profit_percent numeric(4,2),unit_measure varchar(10),qty_on_hand numeric(8),recorder_level numeric(8),sell_price numeric(8,2),cost_price numeric(8,2));
insert into product values('p1','laptop',10.12,'low',1200,13000,500000.23,120000.23);
insert into product values('p2','refridgerator',40.92,'medium',4354,42255,432423.24,130000.55);
insert into product values('p3','fan',70.00,'high',5678,8723,800000.00,560000.00);
insert into product values('p4','mixer',45.12,'low',2535,44000,20000.23,420000.34);
insert into product values('p5','washing machine',90.12,'high',90000,13000,900000.99,990000.90);
select * from product;
select client_name,City from client;
select description from product;
select * from product;
select client_name from client where City='Mumbai';
select * from product;
update client set City = 'Mumbai' where client_no='c001';
select * from product;
update client set Bal_due = 1000 where client_no='c005';
select * from product;
update product set cost_price = 3000 where description='fan';
select * from product;
delete from product where qty_on_hand<100;
select * from product;
delete from client where State='Tamil Nadu';
select * from client;





drop table client;

create table client(client_no varchar(6),client_name varchar(20),address varchar(30),city varchar(15),pincode numeric(8),state varchar(15),bal_due numeric(10,2));
insert into client values('C001','sonali','vasai','mumbai',400077,'maharashtra',10000.23);
insert into client values('C002','saurabh','kurla','mumbai',400087,'maharashtra',50000.55);
insert into client values('C003','abcheh','virar','gandhinagar',4000755,'maharashtra',25000.93);
insert into client values('C004','pratik','malad','mumbai',400090,'maharashtra',77000.00);
insert into client values('C005','kirti','bandra','mumbai',400045,'maharashtra',88000.23);
select * from client;

drop table product;

create table product(product_no varchar(6),description varchar(15),profit_percent numeric(4,2),unit_measure varchar(10),qty_on_hand numeric(8),recorder_level numeric(8),sell_price numeric(8,2),cost_price numeric(8,2));
insert into product values('p1','laptop',10.12,'low',1200,13000,500000.23,120000.23);
insert into product values('p2','refridgerator',40.92,'medium',4354,42255,432423.24,130000.55);
insert into product values('p3','fan',70.00,'high',5678,8723,800000.00,560000.00);
insert into product values('p4','mixer',45.12,'low',2535,44000,20000.23,420000.34);
insert into product values('p5','washing machine',90.12,'high',90000,13000,900000.99,990000.90);
select * from product;

drop table sales_order;
create table sales_order(order_no varchar(6),order_date date not null,client_no varchar(6),dely_addre varchar(25),salesman_no varchar(6),dely_type char(1),billed_yn char(1),dely_date date,order_status varchar(10));
insert into sales_order values(1,"02-02-2022",33,"mumbai",97,"a","o","04-02-2022","bag");
insert into sales_order values(2,"04-02-2022",34,"nashik",57,"k","l","04-02-2022","boots");
insert into sales_order values(3,"06-01-2022",36,"nagpur",77,"h","d","04-02-2022","shoes");
insert into sales_order values(4,"02-01-2022",94,"mumbai",37,"d","o","04-02-2022","books");
insert into sales_order values(5,"02-02-2022",53,"pune",07,"b","o","04-02-2022","shelf");
select * from sales_order;


select client_name from client where client_name like "_a%";
select * from client where city like "_a%";
select * from client where city = 'mumbai' order by client_name;
select * from client where bal_due > 10000;
select * from sales_order where order_date between '01-01-2022' and '02-01-2022';
select * from client where client_no='C001' or client_no='C002';
select * from product where sell_price/10 between 2000 and 5000;
select count(*) from sales_order;
select avg(sell_price) from product;
select * from product where (select * from product where sell_price =(select  max(sell_price) from product)  );
