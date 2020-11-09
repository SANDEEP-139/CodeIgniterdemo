-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2020 at 10:33 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `created`, `modified`, `status`) VALUES
(1, 'sandeep2', '2020-11-07 08:37:28', '2020-11-07 08:47:07', 1),
(2, 'sandeep2', '2020-11-07 08:57:21', '2020-11-07 08:57:21', 1),
(3, 'sandeep1', '2020-11-07 09:01:16', '2020-11-07 09:01:16', 1),
(4, 'sandeep2', '2020-11-07 09:03:09', '2020-11-07 09:03:42', 1),
(5, 'png images', '2020-11-07 09:28:58', '2020-11-07 09:30:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `gallery_id`, `file_name`, `uploaded_on`) VALUES
(1, 1, 'cars2.jpg', '2020-11-07 08:37:28'),
(2, 1, 'cars1.jpg', '2020-11-07 08:38:12'),
(3, 2, 'cars11.jpg', '2020-11-07 08:57:21'),
(4, 3, 'cars12.jpg', '2020-11-07 09:01:16'),
(5, 3, 'cars21.jpg', '2020-11-07 09:01:16'),
(6, 3, 'cars3.jpg', '2020-11-07 09:01:16'),
(7, 3, 'lights.jpg', '2020-11-07 09:01:16'),
(8, 4, 'cars13.jpg', '2020-11-07 09:03:09'),
(9, 4, 'cars22.jpg', '2020-11-07 09:03:10'),
(10, 4, 'cars31.jpg', '2020-11-07 09:03:10'),
(11, 4, 'lights1.jpg', '2020-11-07 09:03:10'),
(12, 4, 'logo.png', '2020-11-07 09:03:10'),
(13, 4, 'cars14.jpg', '2020-11-07 09:03:42'),
(14, 5, 'download.png', '2020-11-07 09:28:58'),
(15, 5, 'lights2.jpg', '2020-11-07 09:30:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
