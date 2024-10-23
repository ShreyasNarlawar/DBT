drop procedure if exists code02;
delimiter $
create procedure code02()
begin
    declare x int default 100;
    set @z := now();
    select x, @z;
end$

delimiter ;