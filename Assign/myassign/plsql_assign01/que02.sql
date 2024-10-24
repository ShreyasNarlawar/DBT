drop procedure if exists que02;
delimiter $
create procedure que02(num1 int,in num2 int)
begin
declare result int;

    set result := num1 % num2; 
    select result;

end $
delimiter ;
