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
drop table emp; 