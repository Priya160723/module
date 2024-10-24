-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 05:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkeasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `parkingname` varchar(300) NOT NULL,
  `partneremail` varchar(300) NOT NULL,
  `useremail` varchar(300) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `slot_no` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `id` int(8) NOT NULL,
  `status` varchar(15) NOT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `transactionid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`parkingname`, `partneremail`, `useremail`, `total_cost`, `floor_no`, `slot_no`, `start`, `end`, `id`, `status`, `payment_status`, `transactionid`) VALUES
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 3, '2024-07-28 00:40:00', '2024-07-28 01:40:00', 34, 'pending', 'success', 'pay_Odm00ga8MLGeXQ'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 3, '2024-07-28 00:40:00', '2024-07-28 01:40:00', 35, 'pending', 'success', 'pay_Odm1P5nL2Fueui'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 3, '2024-07-28 00:40:00', '2024-07-28 01:40:00', 36, 'pending', 'success', 'pay_Odm2CveJ2B9sC5'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 3, '2024-07-28 00:40:00', '2024-07-28 01:40:00', 37, 'pending', 'success', 'pay_Odm2amYJqFNmi3'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 3, '2024-07-28 00:40:00', '2024-07-28 01:40:00', 38, 'pending', 'success', 'pay_Odm4NvLqryp0IL'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 2, 10, '2024-07-28 01:08:00', '2024-07-28 02:08:00', 39, 'pending', 'failed', 'N/A'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 300, 1, 8, '2024-07-28 11:37:00', '2024-07-28 23:37:00', 40, 'pending', 'success', 'pay_OdwobjhQSI87SS'),
('Palazzo', 'sk@gmail.com', 'gvg', 1030, 1, 20, '2024-07-28 11:39:00', '2024-07-28 13:39:00', 41, 'approved', 'success', 'pay_OdwqthwwCfQPCI'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 1, '2024-09-04 08:27:00', '2024-09-04 09:27:00', 42, 'pending', 'success', 'pay_OsvryP9JO6C2S7'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 1, '2024-09-04 09:55:00', '2024-09-04 10:55:00', 43, 'pending', 'success', 'pay_OsxNHeyPtoBiHd'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 300, 1, 4, '2024-09-04 10:00:00', '2024-09-04 22:00:00', 44, 'pending', 'success', 'pay_OsxSbASxjfa1WG'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 75, 1, 1, '2024-09-09 11:18:00', '2024-09-11 14:18:00', 45, 'pending', 'success', 'pay_Ov9jDi8u1TNnJk');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `floors` int(11) NOT NULL,
  `plots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plots`)),
  `email` varchar(25) NOT NULL,
  `status` text DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `name`, `cost`, `floors`, `plots`, `email`, `status`, `reason`, `location`) VALUES
(4, 'vijayshanthi', 25.00, 2, '[10,12]', 'sk@gmail.com', 'approved', NULL, 'Padi'),
(5, 'Palazzo', 515.00, 2, '[25,12]', 'sk@gmail.com', 'approved', NULL, 'Padi'),
(6, 'vr mall', 20.00, 2, '[12,15]', 'sk@gmail.com', 'approved', NULL, 'Marina'),
(7, 'SCON', 25.00, 3, '[10,15,20]', 'sk@gmail.com', 'approved', NULL, 'Marina'),
(8, 'phoneix', 12.00, 2, '[15,10]', 'sk@gmail.com', 'rejected', 'bad advertisement ', 'Porur'),
(9, 'skywalk', 60.00, 2, '[6,12]', 'sk@gmail.com', 'approved', NULL, 'Porur');

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mobile` int(10) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `name` varchar(25) NOT NULL,
  `upiid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`email`, `password`, `mobile`, `gender`, `name`, `upiid`) VALUES
('gvg', 'vvv', 55, 'Male', 'vbg', 'vijya@oksbi'),
('sk@gmail.com', '123', 71, 'mle', 'superman', 'ok@sbi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mobile` int(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `Name` text NOT NULL,
  `upiid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `mobile`, `gender`, `Name`, `upiid`) VALUES
('gvg', 'ggg', 66566680, 'Male', 'fro', 'hello@oksbi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
