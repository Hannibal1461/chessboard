CREATE DATABASE monezy;

USE monezy;

CREATE TABLE `user` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL ,
  `Password` varchar(255) NOT NULL,
  `Created_at` date NOT NULL,
  `Updated_at` date NOT NULL,
  ADD PRIMARY KEY (`id`),
)

CREATE TABLE `Moneyz` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `User_id` int NOT NULL ,
  `Moneyz` int NOT NULL,
  ADD PRIMARY KEY (`id`),
  ADD CONSTRAINT `Moneyz` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`),
)
