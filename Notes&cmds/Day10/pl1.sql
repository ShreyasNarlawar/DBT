/*drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	select 'Hello World' R1;
end $

delimiter ;



drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	declare x int default 100;
	set @z := now();
	select x, @a;
end $

delimiter ;



drop procedure if exists pro1;
delimiter $
create procedure pro1(x int, in y int)
begin 
	select x+y;
end $

delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int, out z int)
begin 
	set z := x + y;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int, out z int, out z1 int)
begin 
	set z := x+y;
	set z1 := x*y;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
begin 
	if x = 100 THEN
		select  'Good';
	ELSE
		select 'Not Good';
	end  if;
end $
delimiter ;



drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	declare x int default 1;
		l:LOOP
			select x;
			set x:= x+1;
			
			if x=11 THEN
				leave l;
			end if;
		end loop l;
end $
delimiter ;



drop procedure if exists pro1;
delimiter $
create procedure pro1(in a int)
begin 
	declare x int default 1;
		l:LOOP
			select x;
			set x:= x+1;
			
			if x>a THEN
				leave l;
			end if;
		end loop l;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
begin 
	declare flag bool default false;
	select distinct true into flag from emp where deptno = x;
	
	
	if flag = true THEN
		select ename, job, deptno from emp where deptno=x;
	ELSE
		select 'Not found';
	end if;
end $
delimiter ;





drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	declare z int default 0;
	
	select count(*)- 5 into z from emp;
	
	select ename, job, sal from emp limit z, 5;
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int)
begin 

	select ename, job, sal from emp limit x, y;
end $
delimiter ;




drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	declare exit handler for 1136 select 'Invalid number of values....';
insert into dept(deptno, dname) values(52, 32);
	
end $
delimiter ;



drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y varchar(20))
begin 
	declare exit handler for 1062 select 'Check deptno number';
	if x < 80 then
		insert into dept(deptno, dname) values(x, y);
	ELSE
		select 'Invalid deptno';
	end if;
	
end $
delimiter ;




drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
begin 
	DEClare flag bool default true;
	if flag = (select distinct true from emp where deptno=x)  THEN
		select ename, job, deptno from emp where deptno=x;
	ELSE
		select 'Not found';
	end if;
end $
delimiter ;






drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	create table  qq(c1 int);
end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	drop table  qq;
end $
delimiter ;




drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	
	prepare x from 'select ename, job from emp';
	execute x;

end $
delimiter ;


drop procedure if exists pro1;
delimiter $
create procedure pro1( in y varchar(64))
begin 
	
	set @x := concat('select * from ', y);
	prepare stat  from @x;
	execute stat;

end $
delimiter ;
*/

drop procedure if exists pro1;
delimiter $
create procedure pro1(in c varchar(1000), in t varchar(1000))
begin 
	
	set @x := concat("select ", c , " from ", t);
	prepare stat  from @x;
	execute stat;

end $
delimiter ;