-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cookbook
CREATE DATABASE IF NOT EXISTS `cookbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cookbook`;

-- Dumping structure for table cookbook.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `difficulty` varchar(50) DEFAULT NULL,
  `ingredients` text,
  `instructions` text,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cookbook.recipes: ~0 rows (approximately)
INSERT INTO `recipes` (`id`, `name`, `photo`, `type`, `rating`, `difficulty`, `ingredients`, `instructions`, `image_path`) VALUES
	(1, 'Spaghetti Bolognese', 'spaghetti.jpg', 'Italian', 4.5, 'Intermediate', 'Spaghetti, ground beef, onion, garlic, tomato sauce, olive oil, salt, pepper', 'Boil water and cook spaghetti according to package instructions. \r\nIn a separate pan, heat olive oil and sauté onion and garlic until golden. \r\nAdd ground beef and cook until browned. \r\nStir in tomato sauce and simmer for 15 minutes. \r\nServe the meat sauce over cooked spaghetti.', 'D:/laragon/www/buku-masakan/image/spaghetti_bolognese.jpg'),
	(2, 'Chicken Curry', 'chicken_curry.jpg', 'Indian', 4.8, 'Intermediate', 'Chicken, onion, garlic, ginger, curry powder, coconut milk, tomato, potato, salt, pepper', 'Heat oil in a pan and sauté onion, garlic, and ginger until fragrant.\r\nAdd chicken pieces and cook until browned. \r\nStir in curry powder and cook for 2 minutes. \r\nAdd coconut milk, tomato, and potato, and simmer until chicken is cooked through. \r\nServe hot with rice.', 'D:/laragon/www/buku-masakan/image/chicken_curry.jpg'),
	(3, 'Caesar Salad', 'caesar_salad.jpg', 'Salad', 4.3, 'Easy', 'Romaine lettuce, croutons, Parmesan cheese, Caesar dressing, lemon juice, olive oil, garlic, salt, pepper', 'Wash and chop romaine lettuce into bite-sized pieces. \r\nIn a large bowl, toss lettuce with croutons and grated Parmesan cheese. \r\nIn a small bowl, whisk together Caesar dressing, lemon juice, minced garlic, olive oil, salt, and pepper. \r\nPour dressing over salad and toss to coat evenly. \r\nServe immediately.', 'D:/laragon/www/buku-masakan/image/caesar_salad.jpg'),
	(4, 'Chocolate Cake', 'chocolate_cake.jpg', 'Dessert', 4.9, 'Advanced', 'Flour, sugar, cocoa powder, baking powder, baking soda, salt, eggs, milk, vegetable oil, vanilla extract, hot water', 'Preheat oven to 350°F (175°C) and grease a cake pan. \r\nIn a large bowl, mix together dry ingredients.  \r\nAdd eggs, milk, oil, and vanilla extract, and beat until smooth. \r\nStir in hot water until batter is thin. \r\nPour batter into prepared pan and bake for 30-35 minutes. \r\nLet cool before serving.', 'D:/laragon/www/buku-masakan/image/chocolate_cake.jpg'),
	(5, 'Sushi Rolls', 'sushi_rolls.jpg', 'Japanese', 4.7, 'Intermediate', 'Sushi rice, nori seaweed, cucumber, avocado, imitation crab meat, soy sauce, wasabi, pickled ginger', 'Cook sushi rice according to package instructions and let cool. \r\nPlace nori sheet on bamboo mat and spread rice evenly over it. \r\nArrange cucumber, avocado, and crab meat along one edge of the nori. \r\nRoll tightly using bamboo mat and slice into pieces. \r\nServe with soy sauce, wasabi, and pickled ginger.', 'D:/laragon/www/buku-masakan/image/sushi_rolls.jpg');

-- Dumping structure for table cookbook.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table cookbook.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
	(5, 'testuser', '$2y$10$zeLw3nucHkETjfQwpovpDeS/7dDnpH0A6w/FpEQrz.2jSgkk.1NmW', 'Test User');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
