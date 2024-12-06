CREATE TABLE conversations (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255), -- Tên cuộc trò chuyện, có thể để trống nếu là chat 1:1
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian tạo cuộc trò chuyện
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Thời gian cập nhật cuộc trò chuyện
);