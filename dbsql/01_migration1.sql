CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL, -- Tên người dùng
  email VARCHAR(255) UNIQUE NOT NULL, -- Email người dùng
  password_hash VARCHAR(255) NOT NULL, -- Mật khẩu đã mã hóa
  avatar_url TEXT, -- URL đến ảnh đại diện
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian tạo tài khoản
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Thời gian cập nhật tài khoản
);