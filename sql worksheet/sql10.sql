--Joins--
select e.first_name, e.salary,d.department_name,
l.city,c.country_name from employees e
join departments d
on e.department_id = d.department_id join locations l 
on d.location_id 
=l.location_id join countries c on l.country_id=c.country_id;

--outer join
select * from employees left join departments using(department_id);

emp --> department_id --10 to 110 + null(178 emp_id)
dept --> depa_id 10 -110 120 --270

select * from employees right join departments using(department_id)
order by department_id;

select * from employees full join departments using(department_id)
order by department_id;

--self join--
select  e.employee_id,e.first_name as workers ,m.first_name as managers from employees e
join employees m on e.manager_id = m.employee_id order by e.employee_id;



----set operators--
--union  --combine records and display unique
--union all  --combine records
--intersect -- common records

 

select  department_id from employees union 
select department_id from departments;

 

select  department_id from employees union all 
select department_id from departments;

 

select  department_id from employees intersect
select department_id from departments; --10 to 110