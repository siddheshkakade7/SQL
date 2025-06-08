--TCL commands--
--commit- save,
--rollback() - (undo)
--savepoint - check point
create table students(
s_id number,
s_name varchar(20));
select * from students;
commit;
insert into students values(1,'siddhesh');
insert into students values (5,'Sidd');

select * from students;
commit;
update students set s_name = 'John'where s_id = 3;
savepoint a;
insert into students values(2,'kakade');
insert into students values(3,'adi');
insert into students values(4,'Duru');
insert into students values(5,'onkar');
insert into students values(6,'om');
savepoint b;
delete from students where s_id=3;
select * from students;