CREATE TABLE users (
    user_id INT AUTOINCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO users (username, email)
VALUES 
    ('sarah_miller', 'sarah.miller@example.com'),
    ('david_chen', 'david.chen@example.com');
