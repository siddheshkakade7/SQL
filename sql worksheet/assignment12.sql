--Q.1
select * from countries;
select * from departments;
select *from employees;
select * from locations;
select * from jobs ;
--Q.2
DESCRIBE employees;
describe jobs;

--Q.3
select street_address||', '||postal_code||', '||city from locations;

--Q.4
select first_name ||' '|| last_name ||' has a department id is '|| department_id from employees;

--Q.5
select 'My name is'|| first_name ||' and I am from '|| job_id || ' deparment'  from employees;

--Q.6
describe departments;
select * from departments ;

--Q7
select  job_title||' '|| 'salary is' || max_salary from jobs;

--Q8
select location_id ||' '||street_address||' '||postal_code||' '||city as full_address from LOCATIONS;

--Q.9
select distinct job_id from employees;

--Q.10
select first_name, department_id from employees where department_id in (60,110,80,90);

--
Q.11
select employee_id,salary ,salary +5000 from employees where employee_id in (170,175,180);

--Q.12
select first_name||'is working in '|| job_id || ' with'|| employee_id from employees;

--Q.13
select *from employees where salary between 3000 and 15000 or job_id = ('IT_PROG','ST_CLERK');