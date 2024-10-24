drop procedure if exists que05;
delimiter $
create procedure que05(in id int ,in new_loc varchar(50))
begin
select * from dept where deptno =id;
update dept set loc = new_loc where deptno=id;
select * from dept where deptno =id;
end $
delimiter ;