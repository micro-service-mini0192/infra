DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$
 
CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 300 DO
        INSERT INTO room(id, room_name) VALUES(i, "test");
        INSERT INTO room_member(id, role, member_id, room_id) VALUES(i, "ADMIN", 1, i);
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$
 
CALL loopInsert();