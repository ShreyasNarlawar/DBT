drop procedure if exists que04;
delimiter $
create procedure que04()
begin
declare max_dept int;
select max(deptno) into max_dept from dept;
select max_dept;
end $
delimiter ;