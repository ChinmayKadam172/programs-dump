drop table customer;
create table customer(ID int ,name varchar(20),age int,salary float);
insert into customer values(1,'ramesh',35,20000);

insert into customer values(2,'RAM',25,15000);
insert into customer values(3,'KAUSHIKL',23,25000);
insert into customer values(4,'CHAITALI',25,65000);
insert into customer values(5,'HARDIK',27,85000);
insert into customer values(6,'KOMAL',22,45000);
insert into customer values(7,'JOHN',24,100000);
Select  * 
    from customer
    Where  id In (select  id from customer
                                 where salary > 45000);
Select *
	from customer 
	where age>some(select age from customer
				  	where salary>70000);