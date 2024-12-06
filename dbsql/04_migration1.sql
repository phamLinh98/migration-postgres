CREATE TABLE messages (
  id SERIAL PRIMARY KEY,
  conversation_id INT REFERENCES conversations(id) ON DELETE CASCADE, -- Khóa ngoại tới cuộc trò chuyện
  sender_id INT REFERENCES users(id) ON DELETE CASCADE, -- Khóa ngoại tới người gửi
  content TEXT NOT NULL, -- Nội dung tin nhắn
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian gửi tin nhắn
  is_read BOOLEAN DEFAULT FALSE -- Trạng thái đọc tin nhắn
);