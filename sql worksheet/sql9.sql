
--constraints --
create table student(
s_id number primary key,
s_name varchar(20) not null,
email varchar(30),
ph_no  number );
 
alter table student add constraint uq_email unique(email);

create table course(
c_id number primary key,
c_name varchar(20) not null);
 
---add column(course_id) in student 
alter table student add course_id number;
 
---
alter table student add constraint fk_cours_id foreign key(course_id)
references course(c_id);


--How to drop constraint--

alter table student drop constraint SYS_C007132 CASCADE; --PRIMARY KEY AS FOREIGN KEY (SYSTEM DEFINED NAME WITH CASCADE )

alter table student drop constraint uq_email ; -- for unique constraint -direct 

alter table student drop constraint SYS_C007133; --priamry key (sydtem defined name)


--subequery 
select max(salary) from employees;
select first_name from employees where salary = 24000;

select first_name from employees where salary =(select min(salary) from employees);

--display latest employee name 

select *from employees;
select first_name from employees where hire_date = (select max (hire_date) from employees);

--display second highest max salary--
select max(salary) from employees where salary < (select max(salary) from employees);

select distinct salary from employees where rownum <=2 order by salary desc;


--joins--
--Natural Join 
select *from employees natural join departments;
--Inner join (based on column name)
select *from employees inner join departments using (department_id);
-- Outer --1)right join 2)left join 3) full join

-- self join
--cross join 
-- equi join
select *from employees join departments on employees.department_id = departments.department_id;--content same but name diff of colomn

select e.first_name,e.salary,d.department_name from employees e join departments d on  e.department_id = d.department_id;
--giving alias to table --

select e.first_name,e.salary,d.department_name from employees e join departments d on  e.department_id = d.department_id
where e.salary > 10000 order by e.employee_id;

--sum()
select sum(distinct salary) from employees;
--group by
select round(avg(salary)) ,department_id from employees group by department_id order by department_id;

--having
select round(avg(salary)) ,department_id from employees group by department_id having avg(salary) > 10000 order by department_id;




