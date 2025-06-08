--DDL commands -Data definition lang.

--1)CREATE Table 
create table emp(emp_id number,emp_name VARCHAR(20),
salary number );
desc emp;
select *from emp;

--2)Alter -for changing structure 
--add - adding column
alter table emp add dept_id number;
alter table emp add phone_num varchar(10);

--3)Modify datatype 
alter table emp modify phone_num number ;
desc emp;

--4) Rename -column /table 
--column 
alter table emp rename column emp_name to name ;
desc emp;
--table name 
alter table emp rename to employee_details;
desc employee_details;

--5)drop - delete table & column 
--column 
alter table employee_details drop column  phone_num;
desc employee_details;

--table 
drop table employee_details;
desc employee_details;

create table emp(emp_id number,emp_name VARCHAR(20),
salary number);
desc emp;
select *from emp;
alter table emp add dept_id number;
alter table emp add phone_num number;
desc emp;

--6)truncate - delete your table whole data & generates empty table 

--as select * from table_nm;
create table dept_1 as select* from departments;
select * from dept_1;

truncate table dept_1;
select * from dept_1;

--DML commands 
--select 
select * from emp;
--instert
insert into emp values (1,'John',28000,101,8459748540);
insert into emp(emp_name,salary,emp_id,dept_id,phone_num) values('siddhesh',89000,2,102,8734643563);
insert into emp values (3,'Johnyy',27000,103,8459489540);
insert into emp values (4,'Aditya',29000,104,8459998540);
insert into emp values (5,'Durvang',28000,105,8459748540);
select* from emp;


select * from emp;
desc emp;

truncate table emp;
select* from emp;
insert into emp values (1,'John',28000,101,8459748540);
insert into emp(emp_name,salary,emp_id,dept_id,phone_num) values('siddhesh',89000,2,102,8734643563);
insert into emp values (3,'Johnyy',27000,103,8459489540);
insert into emp values (4,'Aditya',29000,104,8459998540);
insert into emp values (5,'Durvang',28000,105,8459748540);
select* from emp;

--update - changes in inserted records 
update emp set salary = 28500, emp_name='Durvang' where emp_id =5;
select * from emp;

--rownum,rowid
select rownum,rowid,emp_id,emp_name from emp;

--delete 
delete from emp where rowid='AAAFEMAAEAAAAFVAAC';
select rownum,rowid,emp_id,emp_name from emp;



