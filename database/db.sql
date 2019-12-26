CREATE DATABASE database_links;
USE database_links; 

CREATE TABLE users(
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(50) NOT NULL
);

CREATE TABLE links(
    id INT(11) PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user 
    FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE links
	MODIFY id INT(11) AUTO_INCREMENT;