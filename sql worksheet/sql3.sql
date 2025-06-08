--functions 

--1.single row functions 
 --Types
--CHARACTER FUNC.
--upper() : CONVERT DATA INTO UPPERCASE
--E.G DISPLAY EMPLOYEES FIRST NAME IN  UPPER CASE
 select first_name ,upper(first_name) from employees;
 select last_name, lower (last_name) from employees; --lower() :CONVERT YOUR DATA INTO LOWER CASE
 
--Dual Table : DUMMY TABLE / TEMPORARY TABLE 
select 2+3   FROM employees;
--E.G "We Learn SQL"

select lower ('We Learn SQL') from dual;

describe dual;
select upper ('My Name is siddhesh kakade') from dual;

--INITCAP :TITLE>- first char convert into cap 
select initcap ( 'my name is abc ') from dual;

--length() len(): returns number of character 
select length(' we learn sql ') from dual;

select first_name ,length(first_name) from employees;

--substring fun : SUBSTR(column_name,start_position,o/p length)
--column name :input,start position : index_no, o/p length : 5
select substr('We Learn SQL',4,5) from dual; 

select substr ('we learn sql',4) from dual;
--concate fun(): only two columns can combine 
--e.g. DISPLAY EMP FULLNAME USING CONCATE FUN.
SELECT CONCAT(first_name,last_name) from employees;

--NESTED FUNCTION
select concat(concat(first_name,' - '),last_name) from employees;

--instr fun(): instr(string,substring,[position,occurence])
-- []-> optional
--sql tutorial t--> position (index)--> 5

select instr ('sql tutorial','t') from dual;

--display index num of 3rd t (today--t) --
select instr('sql tutorial from today in 3RI institute','t',3,2) from dual;
select instr('sql tutorial from today in 3RI institute','t',1,4) from dual;

--assign Q.-using concat function combine firstname and last name then after in your output display only last name 
--hint :concat(),substr(),instr()

select concat(first name,last name) and substr(last name,1) instr (0
);


--TRIM FUN: to trim spaces or characters 
--syntax - Trim(Leading ,Trailing ,Both)trim_character from string;

-- '#### sql #### '

select trim (' 'from '    sql     ' ) as trim from dual ;
select trim (leading ' 'from '    sql     ' ) as trim from dual ;
select trim (trailing' 'from '    sql     ' ) as trim from dual ;

--leading - starting & trailing - ending 

--LTRIM : removes left side multiple character 
select ltrim('#$%&NAME#$%','#$%') as ltrim from dual;
select rtrim('#$%&NAME#$%','#$%') as ltrim from dual;
select ltrim(rtrim('#$%&NAME#$%','#$%'),'#$%') as ltrim from dual; --nested fun

--Lpad : append some character at left side 
--syntax :lpad ('i/p string',o/p length,character to pad ;--
--'sql'--
select lpad('sql',6,'*') from dual;
 select rpad('sql',6,'*') from dual;
 

select lpad(rpad('sql',6,'*'),9,'*') from dual; -- nested fun

select rpad(lpad('NAME'6,'@'),8,'@') from dual;

-- replace(string,string_to_replace,replacement_string)

select replace(first_name,'a','@') from employees;

select replace ('We learn sql','sql','python') from dual;

--reverse string 
select reverse ('HELLO') from dual ;

SELECT first_name ,salary from employees where length(salary)=5 AND salary like '2%';


SELECT * from employees WHERE first_name like' A__ex% ';
