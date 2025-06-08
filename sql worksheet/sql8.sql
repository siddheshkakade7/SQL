--Constraints--
--1) Column Level cons.
--2) Table level cons.
 --not null
create table student(
student_id number constraint nn_st_id not null,
name varchar(20));
drop table student;
 --unique : unique records / no duplication
create table student(
student_id number CONSTRAINT nn_ss_id not null,
name varchar(20),
email varchar(30)constraint uq_email unique );
  

 --primary key: for only single columns/it is combination of not null & unique 
select * from employees;
information employees;

create table course (
c_id int constraint pk_c_id primary key ,
c_name varchar(20) unique,
c_duration varchar(20) not null, 
fees number check(fees>0));
drop table course;

 --check
--ends with gmail.com
check (email like('%gmail.com'))
 
 -- foreign key 
--1) student c_id foreign key
--2) course c_id (primary key)

create table student (
student_id number constraint nn_st_id not null,
name varchar(20),
email varchar(30) constraint uq_email unique,
course_id int ,
phone_num number not null,
constraint fkc_id foreign key(course_id)references course(c_id)
); 