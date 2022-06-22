-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2015 at 04:47 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `parking01`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `street` text NOT NULL,
  `plot` text NOT NULL,
  `status` text NOT NULL,
  `model` text NOT NULL,
  `vehicle` text NOT NULL,
  `platenumber` text NOT NULL,
  `email` text NOT NULL,
  `account` text NOT NULL,
  `d1` text NOT NULL,
  `d2` text NOT NULL,
  `charge` text NOT NULL,
`id` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`street`, `plot`, `status`, `model`, `vehicle`, `platenumber`, `email`, `account`, `d1`, `d2`, `charge`, `id`) VALUES
('Oginga Odinga Street', 'PL 002', 'RESERVED', 'MAZDA', 'volvo', 'KDG100C', 'oluoch2.0.1.8@gmail.com', '123456789', '21.06.2012 06:05AM', '21.06.2022 6:05PM', '150', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `level` int(11) NOT NULL,
  `status` text NOT NULL,
  `joindate` text NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `phone`, `level`, `status`, `joindate`, `id`) VALUES
('ibrahim', 'ibrahimond75@gmail.com', 'ondabu', '', 0, '', '', 2),
('Denis Oluoch', 'oluoch2.0.1.8denis@gmail.com', 'Aden12345', '0743574239', 1, 'Active', 'Array', 15);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `street` text NOT NULL,
  `plot` text NOT NULL,
  `status` text NOT NULL,
  `model` text NOT NULL,
  `vehicle` text NOT NULL,
  `platenumber` text NOT NULL,
  `email` text NOT NULL,
  `account` text NOT NULL,
  `d1` text NOT NULL,
  `d2` text NOT NULL,
  `charge` text NOT NULL,
`id` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`street`, `plot`, `status`, `model`, `vehicle`, `platenumber`, `email`, `account`, `d1`, `d2`, `charge`, `id`) VALUES
('Oginga Odinga Street', 'PL 001', 'RESERVED', 'TOYOTA', 'volvo', 'KDW100Z', 'oluoch2.0.1.8@gmail.com', '7777777', '21.06.2022 11:05AM', '21.06.2022 12:05pM', '1500', 3),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
 ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
