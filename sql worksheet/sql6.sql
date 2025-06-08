--conversion methods()

--number to varchar(20)
select *from employees where department_id = '90'; -->90 implicit conversion 


--to_char(); number --> char,date -->char



--to_char(); number --> char
select to_char(sysdate,'fmday')from dual;
select to_char(sysdate,'fmmmspth')from dual; --ninth
select to_char(sysdate,'fmmmth')from dual;
select to_char(sysdate,'fmddth')from dual;

09-sep-2023
select to_char(sysdate,'fmdd-mon-yyyy') from dual;
select to_char('13-09-23','fmday') from dual;

select first_name from employees
where to_char(hire_date,'fmday')='wednsday';

--to_char() number --> char

--salary --25000 '$25000'
select to_char(salary,'fm$99999') from employees;
alter session set nls_currency ='rs.';
select to_char(salary,'fmL99999')from employees;

--to_number (); char--> number

select '$23'+'$4' from dual;

select to_number('$23','fm$99') +to_number('$4','fm$99') from dual;
select to_char( to_number('$23','fm$99') +to_number('$4','fm$99'),'fm$99') from dual;

--to_date(i/p,formatmodel): char --> number
select first_name from employees 
where hire_date = '17-06-03';

select first_name from employees 
where hire_date = to_date ('06-17-03','fmmm-dd-yy'); --format model mm-dd-yy

select first_name , to_char(department_id,'$99') from employees
where to_char(department_id,'fm$99')='$90';

