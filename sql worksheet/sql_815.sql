select * from employees; --* all column and row
select * from jobs;
select first_name,last_name,salary from employees;

select * from departments;
select department_id,manager_id from departments;


select *from locations;
select street_address,city,country_id from locations;
-- concatination operator for combining data
select street_address ||' '|| city from locations;     --(' ' space symbol)--

select first_name||' '||last_name from employees;

describe regions; --(table definition/ structure)--
describe employees;
describe locations;
describe job_history;
--Arithmatic operator
select first_name,salary,salary +1000 from employees;  --(+ increment)--
select first_name,hire_date,hire_date + 15 from employees;

select first_name,hire_date,hire_date - 10 from employees; --(- decrease)--

select *from employees;
select email,department_id,salary,salary - 1500 from employees;
select email,department_id,department_id * 2 from employees; --(* multiplication )--

select first_name,hire_date,salary *1.5 from employees;
select employee_id,salary,salary* 2 from employees;
select first_name||' '||last_name,salary * 1.4 from employees;

select * from jobs;
select job_id,min_salary,max_salary *1.2 from jobs;

select job_id,min_salary,min_salary / 1.2 from jobs; --(/ division )--

select first_name||' '||last_name,salary / 1.4 from employees;
select first_name||' '|| last_name||' '|| email,salary / 1.1 from employees;

--( column Alias )-
select first_name as name,salary +1000 from employees;  --using as

select first_name as name,salary +1000 final_sal from employees; 

select first_name||'-'||last_name||':'||salary as emp_id from employees; --concatination--

--Literals: dequence of characcters;--
--I am a () and my dep_id is :100--

select 'I am a '|| first_name||'and my dep_id is: '||department_id from employees; 

--'My name is (steven king) and I am working in (IT_PROG)dept.'

select 'My name is '|| first_name||' '||last_name||' and I am working in dept:'|| job_id from employees;

--distinct-displays unique data;
 -- for eliminating duplicate value--
select distinct job_id from employees;
 
select distinct department_id from employees;

 


 



    

