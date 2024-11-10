bảng và cấu trúc dữ liệu:

Users: Lưu thông tin người dùng (sinh viên, admin, giảng viên).

user_id (PK, INT, AUTO_INCREMENT),
username (VARCHAR, UNIQUE),
password (VARCHAR, hash bảo mật),
role (ENUM: 'student', 'admin', 'supervisor'),
email (VARCHAR, UNIQUE),
is_active (BOOLEAN, chỉ kích hoạt với admin và giảng viên),
created_at (TIMESTAMP),
updated_at (TIMESTAMP),
Internship_Procedures: Thông tin về các thủ tục thực tập.

procedure_id (PK, INT, AUTO_INCREMENT),
title (VARCHAR),
description (TEXT),
is_active (BOOLEAN),
created_by (FK, user_id từ Users),
created_at (TIMESTAMP),
updated_at (TIMESTAMP),
Student_Registrations: Chi tiết về các đăng ký thực tập của sinh viên.

registration_id (PK, INT, AUTO_INCREMENT),
student_id (FK, user_id từ Users, role = 'student'),
procedure_id (FK, procedure_id từ Internship_Procedures),
status (ENUM: 'pending', 'approved', 'rejected'),
submitted_at (TIMESTAMP),
updated_at (TIMESTAMP),
Files: Quản lý các tệp liên quan đến đăng ký thực tập.

file_id (PK, INT, AUTO_INCREMENT),
registration_id (FK, registration_id từ Student_Registrations),
file_name (VARCHAR),
file_path (VARCHAR, lưu đường dẫn tệp),
is_validated (BOOLEAN),
uploaded_at (TIMESTAMP),
Statistics (tuỳ chọn): Hỗ trợ báo cáo thống kê.

stat_id (PK, INT, AUTO_INCREMENT),
procedure_id (FK, procedure_id từ Internship_Procedures),
total_registrations (INT),
total_approved (INT),
total_rejected (INT),
created_at (TIMESTAMP)

2.2. Định Nghĩa Quan Hệ

- giữa bảng Users và Internship_Procedures: Mỗi admin có thể tạo nhiều thủ tục.
 
- giữa bảng Users (sinh viên) và Student_Registrations: Mỗi sinh viên có thể có nhiều đăng ký.

- giữa bảng Student_Registrations và Files: Mỗi đăng ký có thể đính kèm nhiều tệp.
