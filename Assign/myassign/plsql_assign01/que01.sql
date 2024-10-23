drop procedure if exists que01;
delimiter $
create procedure que01()
begin 
	declare Message varchar(50) ;
	declare tdate DATE;
	set Message := "My First PL/SQL program";
    set tdate := now();
	create table TEMP (Message varchar(50),tdate DATE);
	insert into TEMP values(Message,tdate);
	
	select * from TEMP;
end $

delimiter ;
