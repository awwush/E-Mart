-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2020 at 01:41 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13906031_emart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `name` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`name`, `quantity`, `price`) VALUES
('Redmi Note 8', 1, 14999),
('Apple iPhone XR (64GB) - Blue', 1, 100000),
('Noise Colourfit smartwatch', 1, 999);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Phone_no` int(20) DEFAULT NULL,
  UNIQUE KEY `Phone_no` (`Phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Email`, `Password`, `Address`, `Phone_no`) VALUES
('Suraj Tiwari', 'suraj.tiwari@gmail.com', '1234', 'Mumbai', 702101692),
('Ayush Tiwari', 'ayush.tiwari12@rediffmail.com', '12345', 'Indore', 900412263),
('Ashi Tiwari', 'ashi.tiwari2394@gmail.com', '123', 'Indore', 626847630),
('Amita Tiwari', 'amita.tiwari789@gmail.com', '123456', 'Delhi', 845195792),
('Ravi Kumar', 'ravi.kumar123@yahoo.com', '0987', 'Indore', 877089565),
('Manoj Kothari', 'umimrot@gmail.com', '5678', '32/1, 1 Apple Street', 989324202);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
