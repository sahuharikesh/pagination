-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2019 at 01:48 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `useradd`
--

DROP TABLE IF EXISTS `useradd`;
CREATE TABLE IF NOT EXISTS `useradd` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  KEY `id` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useradd`
--

INSERT INTO `useradd` (`aid`, `address`) VALUES
(1, 'Airoli'),
(2, 'Mulund'),
(3, 'Airoli'),
(4, 'Mulund'),
(5, 'Thane'),
(6, 'Bivandi'),
(7, 'Thane'),
(8, 'Bivandi'),
(9, 'virar'),
(10, 'Airoli'),
(11, 'Vashi'),
(12, 'Vashi'),
(13, 'Thane');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`) VALUES
(1, 'Harikesh'),
(2, 'Priank'),
(3, 'Sumeet'),
(4, 'Irafan'),
(5, 'Ram'),
(6, 'Omkar'),
(7, 'Meet'),
(8, 'Ankita'),
(9, 'Kiran'),
(10, 'Omkar'),
(11, 'Meet'),
(12, 'Ankita'),
(13, 'Kiran');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `useradd`
--
ALTER TABLE `useradd`
  ADD CONSTRAINT `useradd_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
