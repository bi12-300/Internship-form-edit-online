-- một stored procedure để lấy thông tin sinh viên theo ID
DELIMITER $$

CREATE PROCEDURE GetStudentById(IN studentId INT)
BEGIN
    SELECT * FROM Users WHERE id = studentId;
END $$

DELIMITER ;