-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 01:20 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(50) NOT NULL,
  `images` varchar(255) NOT NULL,
  `proid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `images`, `proid`) VALUES
(1, 'img_name', 2),
(2, 'img_name', 3),
(3, 'img_name', 3),
(4, 'img_name', 3),
(5, 'img_name', 3),
(6, 'img_name', 3),
(7, 'img_name', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prop`
--

CREATE TABLE `prop` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `charge` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `access` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `utility` varchar(255) NOT NULL,
  `descrip` text NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prop`
--

INSERT INTO `prop` (`id`, `name`, `charge`, `address`, `access`, `floor`, `utility`, `descrip`, `images`) VALUES
(1, 'ochacho homes', '560', 'Kubwa', 'pub', '2', '8', 'three story building', '3bedext.jpg'),
(2, 'tyy', '678', '', '', '', '', '', '2bedext.jpg'),
(3, 'SYNERGY Homes', '2000', 'Gwarimpa Avenue', 'protected', '4', '10', 'A Three storey building', '3bed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `password`) VALUES
(1, 'onuh', 'onuh'),
(2, 'george', 'onyaoche'),
(3, 'godwin', 'onuh'),
(4, 'ochayi', 'onyaoche'),
(5, 'come', 'onyaoc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop`
--
ALTER TABLE `prop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prop`
--
ALTER TABLE `prop`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
