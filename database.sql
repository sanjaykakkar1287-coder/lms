CREATE DATABASE IF NOT EXISTS lms_db;
USE lms_db;

-- Users table to store students, instructors, and admins
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash CHAR(128) NOT NULL, -- SHA-512 produces a 128-character hex string
    salt VARCHAR(64) NOT NULL,        -- To store the random salt (e.g., 64 hex chars)
    role ENUM('student', 'instructor', 'admin') DEFAULT 'student',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);