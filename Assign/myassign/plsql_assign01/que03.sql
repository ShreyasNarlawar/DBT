drop procedure if exists que03;
delimiter $
create procedure que03(in annsalary decimal(10,2), in percent decimal(5,2))

begin
declare totalComp decimal(10,2);

    set totalComp =annsalary + (annsalary * percent / 100);
    select totalComp;
    
end $
delimiter ;