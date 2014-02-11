DROP DATABASE IF EXISTS `research_a`;
CREATE DATABASE `research_a`;
USE `research_a`;
CREATE TABLE `user` (
   `id` bigint(20) NOT NULL AUTO_INCREMENT,
   `name` varchar(255) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8;

DROP DATABASE IF EXISTS `research_b`;
CREATE DATABASE `research_b`;
USE `research_b`;
CREATE TABLE `profile`(
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8;

