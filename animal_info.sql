-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2021 at 06:15 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_info`
--

CREATE TABLE `animal_info` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `expectancy` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal_info`
--

INSERT INTO `animal_info` (`id`, `name`, `category`, `photo`, `description`, `expectancy`, `created_at`) VALUES
(57, 'Dog', 'Omnivores', 'dog.jpg', '	Dog is Omnivores Animal   ', '5-10 year', '2021-09-07 05:16:45'),
(58, 'Cow', 'Herbivores', 'cow1.jpg', '	 Cow is	Herbivores   ', '10+ year', '2021-09-07 05:18:18'),
(60, 'Cat', 'Omnivores', 'cat1.jpg', '	This Is Lion.... 	    ', '[5-10 year]', '2021-09-07 05:20:28'),
(61, 'Mouse', 'Herbivores', 'Mouse-Rat.png', '	 	  Mouse is Herbivores Animal ', '0-1 year', '2021-09-07 05:38:13'),
(62, 'Sheep', 'Omnivores', 'sheep1.jpg', '	This Is Sheep.... 	    ', '1-5 year', '2021-09-07 05:52:45'),
(63, 'Tiger', 'Carnvores', 'tiger.jpg', '	 	    Tiger is most Dangerous Animal', '10+ year', '2021-09-07 14:36:09'),
(65, 'Zebra', 'Herbivores', 'zebra.jpg', '	 	Zebra is Herbivores animal.    ', '10+ year', '2021-09-07 14:45:10'),
(66, 'Lion', 'Carnvores', 'lion.jpg', '	 	    Lion Is Carnvores Animal', '10+ year', '2021-09-07 14:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `vc`
--

CREATE TABLE `vc` (
  `id` int(11) NOT NULL,
  `visitor_conter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vc`
--

INSERT INTO `vc` (`id`, `visitor_conter`) VALUES
(2, 121);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal_info`
--
ALTER TABLE `animal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vc`
--
ALTER TABLE `vc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal_info`
--
ALTER TABLE `animal_info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `vc`
--
ALTER TABLE `vc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
