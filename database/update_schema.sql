-- nếu cần thêm cột "Ngày bắt đầu" vào bảng Student_Registrations
ALTER TABLE Student_Registrations
ADD COLUMN start_date DATE,
ADD COLUMN end_date DATE;
