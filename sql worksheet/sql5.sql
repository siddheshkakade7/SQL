--trim ()
--'  sql    '
select trim (trailing from '    sql    ') from dual ;
select trim (TRAILING '  ' from '   sql   ')as trim from dual ;
--remove starting spaces 




select lpad(first_name,length(first_name)+3,'*') from employees;
select rpad(lpad(first_name,length(first_name)+3,'*'),length(first_name)+6,'*')from employees;

--ceil function ();
select ceil(6.4) from dual;  --nearest highest integer number 
--floor function 
select floor (3.9) from dual; --nearest lowest integer number 

--months_between--
select MONTHS_BETWEEN(SYSDATE,'09-08-23')from dual;
 --Extract(date_component from date)
select EXTRACT(day from sysdate) from dual;

--next day func()
select next_day(sysdate,'wednsday') from dual;

--last day 
select last_day(sysdate)from dual;
select last_day('09-12-23')from dual;


