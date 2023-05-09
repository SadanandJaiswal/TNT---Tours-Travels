-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 22, 2023 at 05:47 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `user_id` varchar(10) NOT NULL,
  `booking_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `boarding_date` date NOT NULL,
  `arrival_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `user_id` varchar(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(10) DEFAULT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `user_id` varchar(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `pass_word` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` tinytext NOT NULL,
  `phone` int(10) NOT NULL,
  `aadhaar_no` int(12) NOT NULL,
  `createdate` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `fname`, `lname`, `pass_word`, `email`, `address`, `phone`, `aadhaar_no`, `createdate`) VALUES
('1', 'saurabh', 'nagpure', '1234', 'saurabh@gmail.com', 'sai colony kudwa ', 2147483647, 2147483647, '2023-01-23'),
('2', 'sadanand ', 'jaiswal', '12364', 'sandy@gmail.com', 'Ganesh colony mumbai ', 997564125, 2147483647, '2023-01-23'),
('3', 'kiran', 'kumar', '1245', 'kiran@gmail.com', 'krishna colony kartnatt ', 997745689, 2147483647, '2023-01-23'),
('4', 'jyotsna ', 'telghote', '1236', 'jots@gmail.com', 'ram colony  amravati', 2147483647, 2147483647, '2023-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `user_id` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `aadhar_no` bigint(12) DEFAULT NULL,
  `passengers` int(2) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `departure_from` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `airline` varchar(100) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  `booking_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`user_id`, `name`, `dob`, `email`, `phone_no`, `address`, `aadhar_no`, `passengers`, `departure_date`, `return_date`, `departure_from`, `destination`, `airline`, `fare`, `booking_time`) VALUES
('1321', 'SADANAND MANSHOK JAISWAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `hotel_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `dis_from_city` varchar(100) DEFAULT NULL,
  `star` int(5) NOT NULL,
  `no_review` int(20) NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `img5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `name`, `location`, `state`, `price`, `dis_from_city`, `star`, `no_review`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Novotel Goa\r\nResorts And\r\nSpa', 'H.No.784/A Pinto Vaddo, Candolim, Bardez, North Goa- 403515 121', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'Bardez Candolim HOTEL HOTN000455 Novotel Goa', 'Shrem Hotel Anna Vaddo, Candolim, Bardez, North Goa- 403515 1', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'Bardez Arpora', 'Sinquerim, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(5, 'The Baga\r\nMarina Beach\r\nResort And\r\nHotel', 'Saunta Khobra Vaddo, Calangute, Bardez, North Goa- ', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(6, '5 Hyatt Centric ', 'B Ximer Annawado Candolim, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(7, 'Whispering\r\nPalms Beach', 'Sinquerim Beach Waddi, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(8, '5 Dealturas\r\nResort', 'H. No 365 Bamonwado, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(9, 'The O Hotel', 'S.No.114/1 Dando, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'Fortune Acron\r\nRegina', 'H.No.376, Off Fort Aguada Road Bamon Waddo, Candolim, Bardez, North\r\nGoa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(12, 'Hilton Goa\r\nResorts (Unit\r\nOf Soham\r\nLeisure\r\nVetures Pvt\r\nLtd)', 'H.No.1767/A1,1767/B1, 1767/C1, 1767/D1, Candolim, Bardez, North\r\nGoa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(13, 'Phoenix Park\r\nInn Resort', 'Sequeira Vaddo, Candolim, Bardez, North Goa- 403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
(14, 'Holiday Inn\r\nGoa Candolim ', 'House 126 C, Survey 52/5 And 52/8, Candolim, Bardez, North Goa-403515', 'goa', 5000, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_login`
--

DROP TABLE IF EXISTS `master_login`;
CREATE TABLE IF NOT EXISTS `master_login` (
  `user_id` varchar(10) NOT NULL,
  `pass_word` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_login`
--

INSERT INTO `master_login` (`user_id`, `pass_word`) VALUES
('jyotsna', '1234'),
('kiran', '6978'),
('sadanad', '4578'),
('saurabh', '5896');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
CREATE TABLE IF NOT EXISTS `places` (
  `place_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `till_date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `route` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `dis_from_city` varchar(100) NOT NULL,
  `star` int(5) NOT NULL,
  `no_review` int(20) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `img5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE IF NOT EXISTS `train` (
  `user_id` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_no` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `aadhar_no` bigint(12) DEFAULT NULL,
  `passengers` int(2) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `departure_from` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `airline` varchar(100) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  `booking_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transac_id` varchar(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `booking_id` varchar(20) NOT NULL,
  `pay_method` varchar(50) NOT NULL,
  `pay_time` datetime NOT NULL,
  `amount` int(20) NOT NULL,
  PRIMARY KEY (`transac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transac_id`, `user_id`, `booking_id`, `pay_method`, `pay_time`, `amount`) VALUES
('1234', '12312131', 'sf2dsdf2', 'online', '2023-01-21 20:51:24', 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
