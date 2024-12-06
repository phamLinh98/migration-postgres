CREATE TABLE conversation_members (
  conversation_id INT REFERENCES conversations(id) ON DELETE CASCADE, -- Khóa ngoại tới cuộc trò chuyện
  user_id INT REFERENCES users(id) ON DELETE CASCADE, -- Khóa ngoại tới người dùng
  PRIMARY KEY (conversation_id, user_id) -- Mối quan hệ giữa người dùng và cuộc trò chuyện
);
