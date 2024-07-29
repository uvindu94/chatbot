CREATE DATABASE chatbot;

USE chatbot;

CREATE TABLE responses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255) NOT NULL,
    answer TEXT NOT NULL
);