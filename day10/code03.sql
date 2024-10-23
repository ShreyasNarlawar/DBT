drop procedure if exists code03;
delimiter $
create procedure code03(in x int ,in y int ,out z int)
begin 
    set z := x+y;
end $
delimiter ;