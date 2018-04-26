-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2018 at 09:23 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superdating`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `superhero_from` int(11) NOT NULL,
  `superhero_to` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `superhero_from` (`superhero_from`),
  KEY `superhero_to` (`superhero_to`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `superhero_from`, `superhero_to`) VALUES
(20, 'Nice armor man!', 1, 2),
(21, 'You look a bit green', 1, 3),
(22, 'Wanna meet????', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superhero_to` int(11) NOT NULL,
  `superhero_from` int(11) NOT NULL,
  `number_of_likes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `superheroes`
--

DROP TABLE IF EXISTS `superheroes`;
CREATE TABLE IF NOT EXISTS `superheroes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `age` int(6) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `superpower` varchar(100) NOT NULL,
  `location` varchar(60) NOT NULL,
  `description` varchar(150) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superheroes`
--

INSERT INTO `superheroes` (`id`, `name`, `age`, `gender`, `superpower`, `location`, `description`, `image`) VALUES
(1, 'Thor', 3000, 'Male', 'Super strenght, almost immortal, awesome hammer, shooting lightnings and can go berserk', 'Asgard', 'I like humans they are quite funny, but I\'m tired of trying making relationships with them so now I\'m looking here', 'https://pluggedin.focusonthefamily.com/wp-content/uploads/2017/11/1106BlogTop.png'),
(2, 'Batman', 41, 'Male', 'I have a lot of money.', 'Gotham', 'I\'m Batman!', 'https://cdn.movieweb.com/img.news.tops/NEzjBefaZYf6CF_1_b/New-Batman-Movies-2019-Dc-Films-Upcoming-Slate.jpg'),
(3, 'Hulk', 38, 'Male', 'I turn into a green monster who is immortal and super strong and angry', 'USA', 'I need someone who can easily calm me down so I won\'t destroy everything around me. ', 'https://cdn.images.express.co.uk/img/dynamic/36/590x/The-Hulk-585091.jpg'),
(6, 'Wonder Woman', 5000, 'Female', 'Super strenght, super fast, no aging proccess, great magic items', 'USA', 'I am a goddess so I need someone strong who can take care of me. I was heartbroken form too long so now I want to get back in the game', 'https://metrouk2.files.wordpress.com/2017/06/wonder-woman.jpg?w=748&h=467&crop=1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`superhero_from`) REFERENCES `superheroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`superhero_to`) REFERENCES `superheroes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
