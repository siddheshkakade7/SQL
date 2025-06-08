---Rows Restrictions 
 select * from employees;
 
--where clause 
 --where condition 

--salary >
select * from employees where salary > 13000;

select first_name ,last_name ,salary from employees where salary >15000;

--job_id -->'IT _PROG'
--' = '

select * from employees where job_id = 'IT_PROG' ; --(' = 'to get equal\same value )

--salary < 13000
select * from employees where salary < 13000;
select * from employees where salary <= 10000;

--not equal to ,<>,!=

select *from employees where job_id <> 'ST_CLERK';
select *from employees where job_id != 'IT_PROG';

-- in between range eg. 10000 to 15000

--between __and ___range
select * from employees where salary BETWEEN 10000 and 15000 ;

select * from employees where department_id BETWEEN 10 and 50;

--in (match multiple exact value ) = exact match 
--display employee first name and job id who are working in 'IT_PROG','SA_MAN';

select first_name ,job_id from employees where job_id in ('IT_PROG','SA_MAN');

--Display emp all details whose dep_id is 90,100,50

select * from employees where department_id in (90,100,50);

--(like operator (to match pattern): % - 0 or more character ,_ - only single character;

--firstname starts with A.
 SELECT * FROM employees where first_name like ('A%');
 
--ends with s;
 SELECT * FROM employees where first_name like ('%s');
--3rd ch 'e' & 5th 'a'.

 SELECT * FROM employees where first_name like ('__e_a%');
 SELECT * FROM employees where job_id like ('%CLERK');
 
--is null : to check null value is present or not;

select * from employees where commission_pct is null;

-- logical operators
--and operator 
--eg. display sal < 10000 and job_id ='IT_PROG';

SELECT * FROM employees where salary <10000 and job_id ='IT_PROG'; 

SELECT * FROM employees where salary <10000 and department_id = '30';
 
-- or : any one condition is satisfied 
--eg. sal 10000 to 15000
-- like first name start with E

select * FROM employees where salary BETWEEN 12000 and 15000 or  first_name like('E%');

--not operator
--e.g. not including dep id (90,80,50,100)--
select * from employees where department_id not in (90,80,100,50);
select * from employees where not department_id in (90,80,100,50);

--order by : clause for sorting your column data ascending or descending --

select * from employees order by first_name; --default ascending 
--asc

--descending -desc 
select * from employees order  by first_name desc;

select * from employees order by DEPARTMENT_ID desc;

--FIRST_NAME ASC LAST_NAME DESC

select * from employees order by first_name asc, last_name desc;


    



     
                                

