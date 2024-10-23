drop procedure if exists code01;
delimiter $
create procedure code01()
begin
	select "HEllo World" name;
end $

delimiter ;

