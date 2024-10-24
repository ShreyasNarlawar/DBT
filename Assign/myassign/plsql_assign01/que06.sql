drop procedure if exists que06;
delimiter $
create procedure que06(in id int)
begin
 IF  exists  THEN
        DELETE FROM dept WHERE id = dept_id;
        SET row_count = ROW_COUNT();
        SELECT CONCAT('Number of rows affected: ', row_count) AS message;
    ELSE
        SELECT 'Department not found' AS message;
    END IF;
end $
delimiter ;