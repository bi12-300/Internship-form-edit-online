-- trigger để ghi lại thời gian thay đổi trong bảng Users
CREATE TRIGGER before_student_update
BEFORE UPDATE ON Users
FOR EACH ROW
SET NEW.updated_at = NOW();
