-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 04:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `tittle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `model` smallint(6) NOT NULL,
  `auto` tinyint(1) NOT NULL,
  `consumption` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `properties` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newcars`
--

CREATE TABLE `newcars` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 manual 1 auto ',
  `properities` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newcars`
--

INSERT INTO `newcars` (`id`, `title`, `content`, `price`, `model`, `type`, `properities`, `image`) VALUES
(9, 'Mercedes', 'hgsqzx', 5000000, '2020', 0, 'speed ', 'image/5.webp'),
(10, 'Mercedes', 'hgsqzx', 5000000, '2020', 0, 'speed ', NULL),
(11, 'Mercedes', 'hgsqzx', 5000000, '2020', 0, 'speed ', NULL),
(12, 'BMW', 'hydswd', 90000, '2016', 0, 'speed ', NULL),
(13, 'BMW', 'hydswd', 90000, '2016', 0, 'speed ', 'car.jpg'),
(14, 'BMW', 'uihfEGY', 80000, '2019', 0, 'speed ', 'car.jpg'),
(16, 'Mercedes', 'hqjdb', 6000000, '2019', 0, 'A/C', '6331f87c60e8b9a0947f7ac85f6c9c3d.png'),
(17, 'Mercedes', 'jAJH', 100000, '2020', 0, 'A/C', '4583f9968c3469bbab15f8c1e5ec9cee.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT '0 female, 1 male',
  `active` tinyint(1) NOT NULL COMMENT '0 inactive, 1 active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `regdate`, `email`, `name`, `password`, `gender`, `active`) VALUES
(7, '2023-09-30 17:45:08', 'vn@gmail.com', 'vn ', '$2y$10$4cbUsqK.ruNIFWZW/aV7keldeA1pkLposTT4o1POrwlLZmw2a.k5W', 1, 0),
(8, '2023-09-30 17:45:24', 'vero@gmail.com', 'vero ayman', '$2y$10$qXLxOpj4e7rFFH909uA.xOlqIEKxJHzTnLyNKkym8ySXCyXVkrsCS', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tittle` (`id`),
  ADD UNIQUE KEY `tittle_2` (`tittle`);

--
-- Indexes for table `newcars`
--
ALTER TABLE `newcars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newcars`
--
ALTER TABLE `newcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
