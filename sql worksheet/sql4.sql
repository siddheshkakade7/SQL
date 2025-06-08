--NUMERIC FUNCTIONS ;

--Round(): round fig
select round(3244448.99999) from dual;
select round (23943284.676898,3) from dual;

--trunc : as it is

select trunc(3245.643509) from dual;
select trunc (3245.643509,4) from dual;

--power(num)

select power(5,2) from dual; -- sq.
select power (5,5) from dual;

--sqrt :
select sqrt(9) from dual;
select sqrt (500) from dual;

--mod fun : gives reminder 
select mod(6,8) from dual; 
select mod(7,3) from dual; 

--ceil : nearest highest int num ;
select ceil(7,8)from dual;

--floor : nearest lowest num;

select floor (7,9)from dual ;

-- DATA FUNCTION ;
--sysdate
select sysdate from dual ; --dd:mm:yyyy

select current_date from dual;

select SESSIONTIMEZONE FROM DUAL;

select systimestamp from dual;

select current_timestamp from dual;

--next day fun: date of upcoming day

select NEXT_DAY(TRUNC(SYSDATE), 'MONDAY') from dual;
select next_day (current_date,'tuesday') from dual;

--last day :
select LAST_DAY(SYSDATE) from dual;

--add months : 
select hire_date,add_months(hire_date,3) from employees;

--Extract fun(date_component from date)

select extract(year from sysdate) from dual;
select extract(day from sysdate)from dual;
select extract(month from sysdate ) from dual ;


select first_name,extract (month from hire_date) from employees;
select first_name from employees where hire_date like ('__-03%');
