-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 08:15 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moira`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `voicemail` varchar(255) NOT NULL,
  `total_day_minutes` int(11) NOT NULL,
  `number_of_weeks_as_customer` int(11) NOT NULL,
  `internet_plan` enum('yes','no') NOT NULL,
  `voice_calls` enum('yes','no') NOT NULL,
  `number_of_day_calls` int(11) NOT NULL,
  `total_day_charges` float NOT NULL,
  `total_evening_calls` int(11) NOT NULL,
  `total_evening_charges` float NOT NULL,
  `total_evening_minutes` int(11) NOT NULL,
  `total_international_minutes` int(11) NOT NULL,
  `total_international_calls` int(11) NOT NULL,
  `total_international_charges` float NOT NULL,
  `number_customer_service_calls` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `phone`, `voicemail`, `total_day_minutes`, `number_of_weeks_as_customer`, `internet_plan`, `voice_calls`, `number_of_day_calls`, `total_day_charges`, `total_evening_calls`, `total_evening_charges`, `total_evening_minutes`, `total_international_minutes`, `total_international_calls`, `total_international_charges`, `number_customer_service_calls`, `created`) VALUES
(1, 'Delon', '0773553310', '0773553310', '12', 1212, 12, 'yes', 'yes', 12, 12, 12, 12, 12, 12, 122, 122, 122, '2018-04-21 11:08:53'),
(2, 'Delon', '0773553310', '0773553310', '12', 1212, 12, 'yes', 'yes', 12, 12, 12, 12, 12, 12, 122, 122, 122, '2018-04-21 11:18:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
