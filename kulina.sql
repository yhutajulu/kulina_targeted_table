-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2019 at 11:01 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kulina`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashback`
--

CREATE TABLE `cashback` (
  `delivery_id` int(11) NOT NULL,
  `cashback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashback`
--

INSERT INTO `cashback` (`delivery_id`, `cashback`) VALUES
(110000, 50000),
(110000, 38400),
(110011, 10500),
(110200, 10500),
(169281, 3000),
(187181, 3000),
(101910, 50000),
(101891, 38400);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `box` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `order_id`, `delivery_date`, `box`) VALUES
(101891, 82191, '2018-08-01', 8),
(101910, 91881, '2018-08-01', 10),
(110000, 91881, '2018-08-02', 10),
(110011, 82191, '2018-08-02', 8),
(110200, 73817, '2018-08-02', 3),
(142932, 91289, '2018-08-10', 1),
(169281, 81828, '2018-08-20', 2),
(187181, 81828, '2018-08-25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lunch_type` varchar(255) NOT NULL,
  `days_of_subscription` int(11) NOT NULL,
  `box` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `lunch_type`, `days_of_subscription`, `box`) VALUES
(73817, 1011, 'Healthy Lunch', 3, 3),
(81828, 1012, 'Deluxe Lunch', 2, 2),
(82191, 1012, 'Deluxe Lunch', 5, 8),
(82917, 1012, 'Healthy Lunch', 2, 1),
(91289, 1013, 'Healthy Lunch', 10, 1),
(91881, 1011, 'Basic Lunch', 2, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
