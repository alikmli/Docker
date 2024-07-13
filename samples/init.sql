CREATE DATABASE IF NOT EXISTS security;
 
 
USE security;

CREATE TABLE `users` (
`username` VARCHAR(50) NOT NULL,
`password` VARCHAR(500) NOT NULL,
`enabled` INT NOT NULL,
PRIMARY KEY (`username`));

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  PRIMARY KEY (`username`,`authority`)

);

 ALTER TABLE authorities
ADD FOREIGN KEY (username) REFERENCES users(username);

INSERT IGNORE INTO `users` VALUES ( 'admin', '12345', '1');
INSERT IGNORE INTO `authorities` VALUES ('user', 'write');
