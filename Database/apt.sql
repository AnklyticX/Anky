-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2023 at 09:20 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apt`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`id`, `name`, `email`, `usn`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@example.com', '2GI22MC011', '2023-06-17 08:35:42', '0000-00-00 00:00:00'),
(2, 'Alzaahid', 'alzaahid@gmail.com', '22GIMC001', '2023-06-17 08:37:54', '0000-00-00 00:00:00'),
(3, 'Afra Pathan', 'afra@gmail.com', '2GI22MC004', '2023-06-17 08:39:44', '0000-00-00 00:00:00'),
(4, 'Alzaahid', 'alzaahid@gmail.com', '78748h', '2023-06-17 08:42:14', '0000-00-00 00:00:00'),
(6, 'Alzaahid', 'alzaahid@gmail.com', 'e3', '2023-06-17 18:37:38', '0000-00-00 00:00:00'),
(7, 'Alzaahid', 'alzaahid@gmail.com', 'e3', '2023-06-25 21:33:08', '0000-00-00 00:00:00'),
(8, 'Alzaahid1', 'alzaahid@gmail.com', '22GIMC0018', '2023-06-25 21:34:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `certificationcourse`
--

CREATE TABLE `certificationcourse` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `score` int(100) NOT NULL,
  `certificate1` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_id` int(100) NOT NULL,
  `marks` varchar(100) NOT NULL,
  `mentor_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificationcourse`
--

INSERT INTO `certificationcourse` (`id`, `name`, `certificate`, `score`, `certificate1`, `created_at`, `updated_at`, `user_id`, `marks`, `mentor_id`) VALUES
(1, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC015.jpeg', 37, 'Score2GI21MC015.jpeg', '2023-08-04 10:24:57', '0000-00-00 00:00:00', 136, '37', 3),
(2, 'AWS Fundamentals', 'Course2GI21MC092.png', 96, 'Score2GI21MC092.png', '2023-08-04 10:25:09', '0000-00-00 00:00:00', 206, '387', 14),
(4, 'Microsoft Azure AI Engineering Associate ', 'Course2GI21MC067.png', 71, 'Score2GI21MC067.png', '2023-08-04 10:38:05', '0000-00-00 00:00:00', 154, '71', 9),
(5, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC079.png', 74, 'Score2GI21MC079.png', '2023-08-04 10:49:15', '0000-00-00 00:00:00', 146, '74', 8),
(6, 'AWS Fundamentals', 'Course2GI21MC103.pdf', 88, 'Score2GI21MC103.pdf', '2023-08-04 11:07:49', '0000-00-00 00:00:00', 175, '267', 9),
(8, 'AWS Fundamentals', 'Course2GI21MC016.pdf', 95, 'Score2GI21MC016.pdf', '2023-08-04 11:14:21', '0000-00-00 00:00:00', 143, '', 1),
(9, 'AWS FUNDAMENTALS ', 'Course2GI21MC023.pdf', 95, 'Score2GI21MC023.pdf', '2023-08-04 11:18:18', '0000-00-00 00:00:00', 145, '', 15),
(10, 'Microsoft Azure AI EngEngineering  Associate ', 'Course2GI21MC028.jpg', 46, 'Score2GI21MC028.jpg', '2023-08-04 11:29:27', '0000-00-00 00:00:00', 221, '', 9),
(11, 'AWS Fundamentals', 'Course2GI21MC072.pdf', 99, 'Score2GI21MC072.jpg', '2023-08-04 11:33:56', '0000-00-00 00:00:00', 164, '', 8),
(12, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC014.pdf', 0, 'Score2GI21MC014.pdf', '2023-08-04 11:39:18', '0000-00-00 00:00:00', 149, '', 13),
(13, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC002.pdf', 0, 'Score2GI21MC002.pdf', '2023-08-04 11:54:22', '0000-00-00 00:00:00', 173, '', 11),
(14, 'Meta React Native', 'Course2GI21MC026.jpg', 88, 'Score2GI21MC026.jpg', '2023-08-04 12:05:10', '0000-00-00 00:00:00', 212, '', 9),
(15, 'AWS fundamentals', 'Course2GI21MC096.pdf', 93, 'Score2GI21MC096.docx', '2023-08-04 12:05:34', '0000-00-00 00:00:00', 176, '', 9),
(16, 'AWS Fundamentals', 'Course2GI21MC101.pdf', 89, 'Score2GI21MC101.pdf', '2023-08-04 12:07:22', '0000-00-00 00:00:00', 159, '', 1),
(17, 'Data Analysis with R Programming', 'Course2GI21MC053.pdf', 89, 'Score2GI21MC053.pdf', '2023-08-04 12:10:18', '0000-00-00 00:00:00', 191, '', 13),
(18, 'Create High-Fidelity Designs and Prototypes in Figma', 'Course2GI21MC035.pdf', 95, 'Score2GI21MC035.jpg', '2023-08-04 12:11:41', '0000-00-00 00:00:00', 236, '', 3),
(19, 'Data Analysis with R Programming', 'Course2GI21MC043.pdf', 88, 'Score2GI21MC043.png', '2023-08-04 12:13:39', '0000-00-00 00:00:00', 133, '', 6),
(20, 'React-Native', 'Course2GI21MC024.pdf', 95, 'Score2GI21MC024.docx', '2023-08-04 12:14:06', '0000-00-00 00:00:00', 200, '', 1),
(21, 'AWS Fundamentals', 'Course2GI21MC029.pdf', 99, 'Score2GI21MC029.png', '2023-08-04 12:14:32', '0000-00-00 00:00:00', 207, '', 13),
(22, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC052.jpeg', 0, 'Score2GI21MC052.jpeg', '2023-08-04 12:16:50', '0000-00-00 00:00:00', 142, '', 15),
(23, 'AWS fundamental ', 'Course2GI21MC013.pdf', 94, 'Score2GI21MC013.jpg', '2023-08-04 12:17:54', '0000-00-00 00:00:00', 126, '', 1),
(24, 'Microsoft Azure AI Engineering Ass', 'Course2GI21MC009.jpg', 0, 'Score2GI21MC009.jpg', '2023-08-04 12:21:08', '0000-00-00 00:00:00', 138, '', 7),
(25, 'AWS Fundamentals', 'Course2GI21MC110.pdf', 93, 'Score2GI21MC110.pdf', '2023-08-04 12:28:58', '0000-00-00 00:00:00', 158, '', 1),
(26, 'IT Security: Defense against the digital dark arts', 'Course2GI21MC020.pdf', 100, 'Score2GI21MC020.png', '2023-08-04 12:30:38', '0000-00-00 00:00:00', 147, '', 15),
(27, 'AWS Fundamentals', 'Course2GI21MC004.pdf', 96, 'Score2GI21MC004.docx', '2023-08-04 12:47:52', '0000-00-00 00:00:00', 237, '', 3),
(28, 'AWS FUNDAMENTALS SPECIALIZATION ', 'Course2GI21MC109.pdf', 86, 'Score2GI21MC109.pdf', '2023-08-04 12:52:16', '0000-00-00 00:00:00', 178, '', 13),
(29, 'AWS Fundamentals', 'Course2GI21MC065.pdf', 99, 'Score2GI21MC065.png', '2023-08-04 13:06:13', '0000-00-00 00:00:00', 238, '', 12),
(30, 'AWS Fundamentals', 'Course2GI21MC075.pdf', 95, 'Score2GI21MC075.jpeg', '2023-08-04 13:11:22', '0000-00-00 00:00:00', 193, '', 3),
(31, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC034.pdf', 0, 'Score2GI21MC034.pdf', '2023-08-04 13:24:23', '0000-00-00 00:00:00', 219, '', 14),
(32, 'IT security: Defence against the digital dark arts ', 'Course2GI21MC056.pdf', 98, 'Score2GI21MC056.png', '2023-08-04 13:25:04', '0000-00-00 00:00:00', 129, '', 6),
(33, 'Microsoft Azure Al Engineer Associate', 'Course2GI21MC041.jpg', 0, 'Score2GI21MC041.jpg', '2023-08-04 13:45:22', '0000-00-00 00:00:00', 213, '', 14),
(34, 'AWS fundamentals', 'Course2GI21MC106.docx', 95, 'Score2GI21MC106.png', '2023-08-04 14:22:03', '0000-00-00 00:00:00', 239, '', 1),
(35, 'Data Analysis with R Programming', 'Course2GI21MC037.pdf', 85, 'Score2GI21MC037.png', '2023-08-04 14:22:25', '0000-00-00 00:00:00', 168, '', 9),
(36, 'AWS Fundamentals ', 'Course2GI21MC094.pdf', 94, 'Score2GI21MC094.pdf', '2023-08-04 14:31:32', '0000-00-00 00:00:00', 148, '', 6),
(37, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC113.jpg', 0, 'Score2GI21MC113.jpg', '2023-08-04 14:41:48', '0000-00-00 00:00:00', 240, '', 7),
(38, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC074.jpeg', 0, 'Score2GI21MC074.jpeg', '2023-08-04 14:41:50', '0000-00-00 00:00:00', 241, '', 6),
(39, 'Data Analysis with R Programming', 'Course2GI21MC021.pdf', 99, 'Score2GI21MC021.png', '2023-08-04 15:06:18', '0000-00-00 00:00:00', 215, '', 8),
(40, 'AWS FUNDAMENTALS', 'Course2GI21MC085.pdf', 93, 'Score2GI21MC085.pdf', '2023-08-04 15:41:50', '0000-00-00 00:00:00', 211, '', 2),
(41, 'Microsoft Azure AI Engineer Associate', 'Course2GI21MC081.pdf', 0, 'Score2GI21MC081.pdf', '2023-08-04 15:44:23', '0000-00-00 00:00:00', 153, '', 11),
(42, 'DevOps on AWS', 'Course2GI21MC091.pdf', 96, 'Score2GI21MC091.pdf', '2023-08-04 15:55:18', '0000-00-00 00:00:00', 127, '', 7),
(43, 'AWS Fundamentals ', 'Course2GI21MC018.docx', 89, 'Score2GI21MC018.docx', '2023-08-04 15:55:44', '0000-00-00 00:00:00', 208, '', 9),
(44, 'AWS Fundamentals', 'Course2GI21MC071.pdf', 95, 'Score2GI21MC071.png', '2023-08-04 15:56:51', '0000-00-00 00:00:00', 132, '', 2),
(45, 'AWS FUNDAMENTALS', 'Course2GI21MC025.jpg', 94, 'Score2GI21MC025.jpg', '2023-08-04 16:02:29', '0000-00-00 00:00:00', 210, '', 11),
(46, 'AWS Fundamental', 'Course2GI21MC061.pdf', 95, 'Score2GI21MC061.pdf', '2023-08-04 17:14:44', '0000-00-00 00:00:00', 202, '', 8),
(47, 'AWS Fundamentals', 'Course2GI21MC083.pdf', 96, 'Score2GI21MC083.pdf', '2023-08-04 17:20:02', '0000-00-00 00:00:00', 204, '', 2),
(48, 'Microsoft azure Ai engineer associate ', 'Course2GI21MC046.jpg', 0, 'Score2GI21MC046.jpg', '2023-08-05 07:31:01', '0000-00-00 00:00:00', 134, '', 14),
(49, 'Data Analysis with R Programming', 'Course2GI21MC050.jpg', 86, 'Score2GI21MC050.jpg', '2023-08-05 07:43:44', '0000-00-00 00:00:00', 243, '', 12),
(50, 'AWS Fundamentals', 'Course2GI21MC019.pdf', 94, 'Score2GI21MC019.jpg', '2023-08-05 08:06:29', '0000-00-00 00:00:00', 209, '', 12),
(51, 'Microsoft Azure AI Engeneer associate ', 'Course2GI21MC040.jpg', 0, 'Score2GI21MC040.jpg', '2023-08-05 08:17:04', '0000-00-00 00:00:00', 194, '', 7),
(52, 'Microsoft Azure AI Associate Engineer', 'Course2GI21MC111.pdf', 0, 'Score2GI21MC111.pdf', '2023-08-05 08:17:18', '0000-00-00 00:00:00', 144, '', 8),
(53, 'Create UI in Android Studio', 'Course2GI21MC031.pdf', 87, 'Score2GI21MC031.pdf', '2023-08-05 08:22:42', '0000-00-00 00:00:00', 152, '', 15),
(54, 'Microsoft Azure AI Engineering Associate ', 'Course2GI21MC077.jpg', 0, 'Score2GI21MC077.jpg', '2023-08-05 08:42:47', '0000-00-00 00:00:00', 220, '', 2),
(55, 'AWS fundamentals ', 'Course2GI21MC063.pdf', 98, 'Score2GI21MC063.docx', '2023-08-05 09:06:11', '0000-00-00 00:00:00', 189, '', 2),
(56, 'AWS Fundamentals', 'Course2GI21MC055.pdf', 95, 'Score2GI21MC055.jpeg', '2023-08-05 09:19:52', '0000-00-00 00:00:00', 244, '', 2),
(57, 'Data Analysis with R Programming', 'Course2GI21MC105.pdf', 87, 'Score2GI21MC105.pdf', '2023-08-05 10:52:22', '0000-00-00 00:00:00', 162, '', 14),
(58, 'AWS Fundamentals ', 'Course2GI21MC117.pdf', 96, 'Score2GI21MC117.pdf', '2023-08-05 13:14:40', '0000-00-00 00:00:00', 201, '', 6),
(59, 'AWS Fundamental', 'Course2GI21MC062.pdf', 87, 'Score2GI21MC062.pdf', '2023-08-05 13:41:55', '0000-00-00 00:00:00', 137, '', 15),
(60, 'AWS Fundamentals ', 'Course2GI21MC107.pdf', 100, 'Score2GI21MC107.docx', '2023-08-05 15:49:41', '0000-00-00 00:00:00', 151, '', 7),
(61, 'AWS Fundamentals', 'Course2GI21MC000.pdf', 91, 'Score2GI21MC000.png', '2023-08-05 17:30:37', '0000-00-00 00:00:00', 188, '', 15),
(62, 'AWS Fundamentles ', 'Course2GI21MC007.pdf', 97, 'Score2GI21MC007.png', '2023-08-05 21:08:00', '0000-00-00 00:00:00', 242, '', 11),
(63, 'AWS Fundamentals', 'Course2GI21MC089.pdf', 95, 'Score2GI21MC089.pdf', '2023-08-06 08:59:24', '0000-00-00 00:00:00', 203, '95.03', 6),
(64, 'Microsoft Azure AI Engineer Associate ', 'Course2GI21MC108.jpg', 71, 'Score2GI21MC108.jpg', '2023-08-06 09:59:35', '0000-00-00 00:00:00', 131, '71', 6),
(65, 'Microsoft Azure AI Engineer Associate ', 'Course2GI21MC108.jpg', 71, 'Score2GI21MC108.jpg', '2023-08-06 10:00:32', '0000-00-00 00:00:00', 131, '71', 6),
(66, 'AWS Fundamentals', 'Course2GI21MC090.pdf', 94, 'Score2GI21MC090.pdf', '2023-08-06 10:05:45', '0000-00-00 00:00:00', 195, '94', 3),
(67, 'AWS Fundamentals', 'Course2GI21MC066.pdf', 92, 'Score2GI21MC066.docx', '2023-08-06 10:05:45', '0000-00-00 00:00:00', 199, '92', 8),
(68, 'Microsoft Azure AI Engineer Associate ', 'Course2GI21MC011.jpg', 57, 'Score2GI21MC011.jpg', '2023-08-06 13:05:29', '0000-00-00 00:00:00', 150, '57', 15),
(69, 'Microsoft Azure AI Engineer Associate ', 'Course2GI21MC080.jpg', 69, 'Score2GI21MC080.jpg', '2023-08-06 17:37:31', '0000-00-00 00:00:00', 167, '69', 1),
(70, 'AWS Cloud Technical Essentials', 'Course2GI21MC039.pdf', 92, 'Score2GI21MC039.pdf', '2023-08-06 18:59:59', '0000-00-00 00:00:00', 247, '92', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `evdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `evdate`, `created_at`, `updated_at`) VALUES
(1, 'Accenture Practice TEst', 'Mock TEst', '2023-07-21 18:30:00', '2023-07-21 19:27:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

CREATE TABLE `internship` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `mentor_id` int(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hours` int(100) NOT NULL,
  `certificate` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`id`, `user_id`, `mentor_id`, `company`, `startdate`, `enddate`, `hours`, `certificate`, `created_at`, `updated_at`) VALUES
(3, 152, 15, 'Apra Labs', '2023-04-16 18:30:00', '2023-08-01 15:57:42', 540, 'Internship2GI21MC031.pdf', '2023-08-01 15:57:42', '0000-00-00 00:00:00'),
(4, 199, 8, 'Vandyam Solutions', '2023-05-03 18:30:00', '2023-08-03 18:30:00', 810, 'Internship2GI21MC066.pdf', '2023-08-04 10:27:50', '0000-00-00 00:00:00'),
(5, 148, 6, 'ADIS Technologies Pvt Ltd', '2023-04-28 18:30:00', '2023-08-12 18:30:00', 720, 'Internship2GI21MC094.pdf', '2023-08-04 10:30:20', '0000-00-00 00:00:00'),
(6, 206, 14, 'Matserwits ', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC092.pdf', '2023-08-04 10:31:29', '0000-00-00 00:00:00'),
(7, 136, 3, 'Masterwites ', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC015.pdf', '2023-08-04 10:31:36', '0000-00-00 00:00:00'),
(8, 195, 3, 'Servicecart', '2023-05-14 18:30:00', '2023-08-14 18:30:00', 560, 'Internship2GI21MC090.pdf', '2023-08-04 10:34:17', '0000-00-00 00:00:00'),
(9, 177, 8, 'Infynow software solutions ', '2023-05-31 18:30:00', '2023-07-30 18:30:00', 1344, 'Internship2GI21MC099.pdf', '2023-08-04 10:43:18', '0000-00-00 00:00:00'),
(11, 146, 8, 'Varroc Tech Centre', '2023-05-16 18:30:00', '2023-10-15 18:30:00', 1464, 'Internship2GI21MC079.jpeg', '2023-08-04 10:55:05', '0000-00-00 00:00:00'),
(14, 189, 2, 'Infynow Software Solutions ', '2023-05-31 18:30:00', '2023-07-30 18:30:00', 1344, 'Internship2GI21MC063.pdf', '2023-08-04 11:10:02', '0000-00-00 00:00:00'),
(15, 149, 13, 'Anthropic Software\'s Pvt. Ltd', '2023-05-14 18:30:00', '2023-07-06 18:30:00', 350, 'Internship2GI21MC014.pdf', '2023-08-04 11:37:38', '0000-00-00 00:00:00'),
(16, 200, 1, 'ExpressAnalytics', '2023-05-14 18:30:00', '2023-07-30 18:30:00', 1848, 'Internship2GI21MC024.pdf', '2023-08-04 12:11:41', '0000-00-00 00:00:00'),
(17, 158, 1, 'PortQii', '2023-05-17 18:30:00', '2023-08-17 18:30:00', 80, 'Internship2GI21MC110.pdf', '2023-08-04 12:19:12', '0000-00-00 00:00:00'),
(18, 142, 15, 'MasterWits Digital Solution ', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC052.jpeg', '2023-08-04 12:21:20', '0000-00-00 00:00:00'),
(19, 158, 1, 'PortQii', '2023-05-17 18:30:00', '2023-08-17 18:30:00', 350, 'Internship2GI21MC110.pdf', '2023-08-04 12:22:16', '0000-00-00 00:00:00'),
(20, 138, 7, 'Masterwits Solutions', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC009.jpg', '2023-08-04 12:30:16', '0000-00-00 00:00:00'),
(21, 237, 3, 'Masterwits', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC004.pdf', '2023-08-04 13:03:20', '0000-00-00 00:00:00'),
(22, 238, 12, 'MasterWits ', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC065.pdf', '2023-08-04 13:09:33', '0000-00-00 00:00:00'),
(23, 126, 1, 'Infynow software solution ', '2023-05-31 18:30:00', '2023-07-30 18:30:00', 300, 'Internship2GI21MC013.jpg', '2023-08-04 13:20:12', '0000-00-00 00:00:00'),
(24, 239, 1, 'Masterwits', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC106.pdf', '2023-08-04 14:27:53', '0000-00-00 00:00:00'),
(25, 153, 11, 'Jabsa Infotech Pvt Ltd', '2023-05-21 18:30:00', '2023-08-30 18:30:00', 720, 'Internship2GI21MC081.pdf', '2023-08-04 15:54:51', '0000-00-00 00:00:00'),
(26, 127, 7, 'Express Analytics', '2023-05-14 18:30:00', '2023-07-30 18:30:00', 336, 'Internship2GI21MC091.pdf', '2023-08-04 15:58:44', '0000-00-00 00:00:00'),
(27, 208, 9, 'MasterWits', '2023-05-21 18:30:00', '2023-07-24 18:30:00', 300, 'Internship2GI21MC018.jpeg', '2023-08-04 16:02:21', '0000-00-00 00:00:00'),
(28, 210, 11, 'JABSA INFOTECH PVT LTD', '2023-05-21 18:30:00', '2023-08-30 18:30:00', 720, 'Internship2GI21MC025.jpg', '2023-08-04 16:05:13', '0000-00-00 00:00:00'),
(29, 132, 2, 'DigiAdd Technologies', '2023-05-07 18:30:00', '2023-08-09 18:30:00', 520, 'Internship2GI21MC071.pdf', '2023-08-04 16:05:48', '0000-00-00 00:00:00'),
(30, 202, 8, 'JABSA Infotech PVT LTD', '2023-05-21 18:30:00', '2023-08-30 18:30:00', 720, 'Internship2GI21MC061.jpg', '2023-08-04 17:25:52', '0000-00-00 00:00:00'),
(31, 243, 12, 'Anthropic Softwares Pvt.Ltd', '2023-05-14 18:30:00', '2023-11-14 18:30:00', 30, 'Internship2GI21MC050.pdf', '2023-08-05 07:51:06', '0000-00-00 00:00:00'),
(32, 209, 12, 'jabsa infotech pvt ltd', '2023-05-26 18:30:00', '2023-08-30 18:30:00', 700, 'Internship2GI21MC019.pdf', '2023-08-05 08:10:07', '0000-00-00 00:00:00'),
(33, 194, 7, 'Masterwits', '2023-05-24 18:30:00', '2023-04-24 18:30:00', 300, 'Internship2GI21MC040.jpg', '2023-08-05 08:30:01', '0000-00-00 00:00:00'),
(34, 143, 1, 'MasterWits Digital Solutions ', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 700, 'Internship2GI21MC016.jpg', '2023-08-05 08:33:08', '0000-00-00 00:00:00'),
(35, 129, 6, 'Anthropic Softwares Pvt Ltd', '2023-05-14 18:30:00', '2023-11-14 18:30:00', 30, 'Internship2GI21MC056.pdf', '2023-08-05 09:15:59', '0000-00-00 00:00:00'),
(36, 244, 2, 'MasterWits', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 1488, 'Internship2GI21MC055.jpeg', '2023-08-05 09:22:48', '0000-00-00 00:00:00'),
(37, 220, 2, 'MasterWits Digital Solutions ', '2023-04-30 18:30:00', '2023-08-16 18:30:00', 415, 'Internship2GI21MC077.pdf', '2023-08-05 09:34:42', '0000-00-00 00:00:00'),
(38, 137, 15, 'Infynow Software Solutions LLP', '2023-05-31 18:30:00', '2023-08-30 18:30:00', 1344, 'Internship2GI21MC062.pdf', '2023-08-05 13:54:06', '0000-00-00 00:00:00'),
(39, 212, 9, 'ShopTrade', '2023-05-01 18:30:00', '2023-07-27 18:30:00', 480, 'Internship2GI21MC026.jpg', '2023-08-05 16:35:55', '0000-00-00 00:00:00'),
(40, 188, 15, 'InfyNow Software Solutions Pvt Ltd ', '2023-05-31 18:30:00', '2023-07-30 18:30:00', 1344, 'Internship2GI21MC000.pdf', '2023-08-06 00:52:46', '0000-00-00 00:00:00'),
(41, 235, 15, 'Informech ', '2023-04-30 18:30:00', '2023-07-14 18:30:00', 600, 'Internship2GI21MC104.pdf', '2023-08-06 08:47:28', '0000-00-00 00:00:00'),
(42, 203, 6, 'Anthropic Technologies LLP', '2023-05-14 18:30:00', '2023-07-06 18:30:00', 30, 'Internship2GI21MC089.pdf', '2023-08-06 09:10:09', '0000-00-00 00:00:00'),
(43, 131, 6, 'Rachana infotech ', '2023-05-16 18:30:00', '2023-08-16 18:30:00', 38, 'Internship2GI21MC108.jpg', '2023-08-06 10:10:55', '0000-00-00 00:00:00'),
(44, 236, 3, 'ShopTrade', '2023-05-01 18:30:00', '2023-07-27 18:30:00', 801, 'Internship2GI21MC035.jpg', '2023-08-06 11:41:44', '0000-00-00 00:00:00'),
(45, 163, 13, 'Rachna infotech ', '2023-05-16 18:30:00', '2023-08-16 18:30:00', 40, 'Internship2GI21MC012.jpg', '2023-08-06 13:11:21', '0000-00-00 00:00:00'),
(46, 145, 15, 'ADIS TECHNOLOGIES PVT LTD BELGAUM ', '2023-04-28 18:30:00', '2023-08-28 18:30:00', 960, 'Internship2GI21MC023.pdf', '2023-08-06 17:20:43', '0000-00-00 00:00:00'),
(47, 173, 11, 'MasterWits Digital Solutions', '2023-05-24 18:30:00', '2023-07-24 18:30:00', 410, 'Internship2GI21MC002.pdf', '2023-08-08 13:35:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobconversion`
--

CREATE TABLE `jobconversion` (
  `id` int(100) NOT NULL,
  `intershipoffer` varchar(100) NOT NULL,
  `isplaced` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `offerletter` varchar(50) NOT NULL,
  `companyid` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Sachin Dessai', 'faculty', '2023-07-29 18:39:58', '2023-08-13 15:28:42'),
(2, 'Abhishek Nazare', 'faculty', '2023-07-30 15:49:01', '2023-08-13 15:28:42'),
(3, 'Hrishikesh Mogare', 'faculty', '2023-07-30 15:49:16', '2023-08-13 15:28:42'),
(4, 'Nilesh Anvekar', 'faculty', '2023-07-30 17:53:21', '2023-08-13 15:28:42'),
(5, 'Shivani Patankar', 'faculty', '2023-07-30 17:53:34', '2023-08-13 15:28:42'),
(6, 'Pavan Mitragotri', 'faculty', '2023-07-30 17:53:51', '2023-08-13 15:28:42'),
(7, 'Vijaylaxmi Patil', 'IT Head', '2023-07-30 17:54:07', '2023-08-13 15:29:16'),
(8, 'Sheetal Bandekar', 'faculty', '2023-07-30 17:54:26', '2023-08-13 15:28:42'),
(9, 'Swarooprani Manoor', 'faculty', '2023-07-30 17:54:45', '2023-08-13 15:28:42'),
(10, 'Vinod Kokitkar', 'faculty', '2023-07-30 17:54:59', '2023-08-13 15:28:42'),
(11, 'Sunita Padmannavar', 'faculty', '2023-07-30 17:55:15', '2023-08-13 15:28:42'),
(12, 'Swetha Goudar', 'Dean', '2023-07-30 17:55:45', '2023-08-13 15:29:04'),
(13, 'Pijush Barthakur', 'faculty', '2023-07-30 17:56:01', '2023-08-13 15:28:42'),
(14, 'Mrutunjaya Emmi', 'faculty', '2023-07-30 17:56:19', '2023-08-13 15:28:42'),
(15, 'Jayashri Madalgi', 'HOD', '2023-07-30 17:56:42', '2023-08-13 15:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `mentorallotment`
--

CREATE TABLE `mentorallotment` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `mentor_id` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentorallotment`
--

INSERT INTO `mentorallotment` (`id`, `user_id`, `mentor_id`, `created_at`, `updated_at`) VALUES
(1, 26, 4, '2023-07-30 18:12:14', '0000-00-00 00:00:00'),
(2, 84, 4, '2023-07-30 18:12:33', '0000-00-00 00:00:00'),
(3, 115, 4, '2023-07-30 18:12:48', '0000-00-00 00:00:00'),
(4, 39, 4, '2023-07-30 18:13:07', '0000-00-00 00:00:00'),
(5, 81, 4, '2023-07-30 18:13:16', '0000-00-00 00:00:00'),
(6, 111, 5, '2023-07-30 18:13:34', '0000-00-00 00:00:00'),
(7, 55, 5, '2023-07-30 18:13:46', '0000-00-00 00:00:00'),
(8, 114, 5, '2023-07-30 18:13:58', '0000-00-00 00:00:00'),
(9, 8, 5, '2023-07-30 18:14:14', '0000-00-00 00:00:00'),
(10, 102, 5, '2023-07-30 18:14:29', '0000-00-00 00:00:00'),
(11, 34, 1, '2023-07-30 18:15:40', '0000-00-00 00:00:00'),
(12, 63, 1, '2023-07-30 18:15:50', '0000-00-00 00:00:00'),
(13, 58, 1, '2023-07-30 18:18:29', '0000-00-00 00:00:00'),
(14, 45, 1, '2023-07-30 18:18:43', '0000-00-00 00:00:00'),
(15, 19, 1, '2023-07-30 18:19:03', '0000-00-00 00:00:00'),
(16, 62, 1, '2023-07-30 18:19:12', '0000-00-00 00:00:00'),
(17, 105, 1, '2023-07-30 18:19:24', '0000-00-00 00:00:00'),
(18, 9, 1, '2023-07-30 18:19:33', '0000-00-00 00:00:00'),
(19, 49, 1, '2023-07-30 18:19:44', '0000-00-00 00:00:00'),
(20, 1, 1, '2023-07-30 18:19:54', '0000-00-00 00:00:00'),
(21, 25, 6, '2023-07-30 18:21:17', '0000-00-00 00:00:00'),
(22, 100, 6, '2023-07-30 18:21:30', '0000-00-00 00:00:00'),
(23, 60, 6, '2023-07-30 18:21:41', '0000-00-00 00:00:00'),
(24, 91, 6, '2023-07-30 18:22:00', '0000-00-00 00:00:00'),
(25, 28, 6, '2023-07-30 18:22:14', '0000-00-00 00:00:00'),
(26, 35, 6, '2023-07-30 18:22:23', '0000-00-00 00:00:00'),
(27, 51, 6, '2023-07-30 18:22:31', '0000-00-00 00:00:00'),
(28, 10, 6, '2023-07-30 18:22:41', '0000-00-00 00:00:00'),
(29, 110, 6, '2023-07-30 18:22:59', '0000-00-00 00:00:00'),
(30, 92, 2, '2023-07-30 18:23:26', '0000-00-00 00:00:00'),
(31, 120, 2, '2023-07-30 18:23:39', '0000-00-00 00:00:00'),
(32, 66, 2, '2023-07-30 18:23:49', '0000-00-00 00:00:00'),
(33, 70, 2, '2023-07-30 18:24:01', '0000-00-00 00:00:00'),
(34, 71, 2, '2023-07-30 18:24:10', '0000-00-00 00:00:00'),
(35, 65, 2, '2023-07-30 18:24:20', '0000-00-00 00:00:00'),
(36, 53, 2, '2023-07-30 18:24:28', '0000-00-00 00:00:00'),
(37, 27, 2, '2023-07-30 18:24:36', '0000-00-00 00:00:00'),
(38, 72, 2, '2023-07-30 18:24:44', '0000-00-00 00:00:00'),
(39, 101, 3, '2023-07-30 18:24:59', '0000-00-00 00:00:00'),
(40, 5, 3, '2023-07-30 18:25:29', '0000-00-00 00:00:00'),
(41, 109, 3, '2023-07-30 18:25:39', '0000-00-00 00:00:00'),
(42, 11, 3, '2023-07-30 18:25:46', '0000-00-00 00:00:00'),
(43, 98, 3, '2023-07-30 18:25:55', '0000-00-00 00:00:00'),
(44, 104, 3, '2023-07-30 18:26:04', '0000-00-00 00:00:00'),
(45, 48, 3, '2023-07-30 18:26:14', '0000-00-00 00:00:00'),
(46, 89, 3, '2023-07-30 18:26:24', '0000-00-00 00:00:00'),
(47, 23, 3, '2023-07-30 18:26:36', '0000-00-00 00:00:00'),
(48, 24, 3, '2023-07-30 18:26:50', '0000-00-00 00:00:00'),
(49, 44, 7, '2023-07-30 18:28:02', '0000-00-00 00:00:00'),
(50, 106, 7, '2023-07-30 18:28:14', '0000-00-00 00:00:00'),
(51, 40, 7, '2023-07-30 18:28:34', '0000-00-00 00:00:00'),
(52, 83, 7, '2023-07-30 18:28:45', '0000-00-00 00:00:00'),
(53, 119, 8, '2023-07-30 18:29:20', '0000-00-00 00:00:00'),
(54, 118, 8, '2023-07-30 18:29:31', '0000-00-00 00:00:00'),
(55, 68, 8, '2023-07-30 18:29:39', '0000-00-00 00:00:00'),
(57, 29, 8, '2023-07-30 18:31:29', '0000-00-00 00:00:00'),
(58, 79, 8, '2023-07-30 18:31:42', '0000-00-00 00:00:00'),
(59, 69, 8, '2023-07-30 18:31:51', '0000-00-00 00:00:00'),
(60, 108, 8, '2023-07-30 18:31:59', '0000-00-00 00:00:00'),
(61, 33, 8, '2023-07-30 18:32:09', '0000-00-00 00:00:00'),
(62, 52, 8, '2023-07-30 18:32:20', '0000-00-00 00:00:00'),
(63, 30, 8, '2023-07-30 18:32:26', '0000-00-00 00:00:00'),
(64, 61, 9, '2023-07-30 18:32:56', '0000-00-00 00:00:00'),
(65, 7, 9, '2023-07-30 18:33:06', '0000-00-00 00:00:00'),
(66, 117, 9, '2023-07-30 18:33:18', '0000-00-00 00:00:00'),
(67, 95, 9, '2023-07-30 18:33:28', '0000-00-00 00:00:00'),
(68, 67, 9, '2023-07-30 18:33:36', '0000-00-00 00:00:00'),
(69, 41, 9, '2023-07-30 18:33:45', '0000-00-00 00:00:00'),
(70, 121, 9, '2023-07-30 18:33:54', '0000-00-00 00:00:00'),
(71, 43, 9, '2023-07-30 18:34:03', '0000-00-00 00:00:00'),
(72, 99, 9, '2023-07-30 18:34:09', '0000-00-00 00:00:00'),
(73, 12, 9, '2023-07-30 18:34:22', '0000-00-00 00:00:00'),
(74, 22, 10, '2023-07-30 18:34:38', '0000-00-00 00:00:00'),
(75, 56, 10, '2023-07-30 18:34:45', '0000-00-00 00:00:00'),
(76, 3, 10, '2023-07-30 18:34:54', '0000-00-00 00:00:00'),
(77, 107, 10, '2023-07-30 18:35:02', '0000-00-00 00:00:00'),
(78, 57, 10, '2023-07-30 18:35:09', '0000-00-00 00:00:00'),
(79, 20, 10, '2023-07-30 18:35:16', '0000-00-00 00:00:00'),
(80, 122, 10, '2023-07-30 18:35:27', '0000-00-00 00:00:00'),
(81, 17, 10, '2023-07-30 18:35:36', '0000-00-00 00:00:00'),
(82, 4, 10, '2023-07-30 18:35:43', '0000-00-00 00:00:00'),
(83, 54, 10, '2023-07-30 18:35:54', '0000-00-00 00:00:00'),
(84, 13, 11, '2023-07-30 18:36:15', '0000-00-00 00:00:00'),
(85, 36, 11, '2023-07-30 18:36:23', '0000-00-00 00:00:00'),
(86, 94, 11, '2023-07-30 18:36:40', '0000-00-00 00:00:00'),
(87, 74, 11, '2023-07-30 18:36:48', '0000-00-00 00:00:00'),
(88, 42, 11, '2023-07-30 18:36:56', '0000-00-00 00:00:00'),
(89, 88, 11, '2023-07-30 18:37:04', '0000-00-00 00:00:00'),
(90, 93, 11, '2023-07-30 18:37:17', '0000-00-00 00:00:00'),
(91, 18, 11, '2023-07-30 18:37:30', '0000-00-00 00:00:00'),
(92, 76, 11, '2023-07-30 18:37:39', '0000-00-00 00:00:00'),
(93, 103, 11, '2023-07-30 18:37:47', '0000-00-00 00:00:00'),
(94, 14, 12, '2023-07-30 18:38:02', '0000-00-00 00:00:00'),
(95, 31, 12, '2023-07-30 18:38:18', '0000-00-00 00:00:00'),
(96, 77, 12, '2023-07-30 18:38:28', '0000-00-00 00:00:00'),
(97, 80, 12, '2023-07-30 18:38:36', '0000-00-00 00:00:00'),
(98, 75, 13, '2023-07-30 18:38:49', '0000-00-00 00:00:00'),
(99, 16, 13, '2023-07-30 18:38:57', '0000-00-00 00:00:00'),
(100, 38, 13, '2023-07-30 18:39:05', '0000-00-00 00:00:00'),
(101, 90, 13, '2023-07-30 18:39:14', '0000-00-00 00:00:00'),
(102, 87, 13, '2023-07-30 18:39:22', '0000-00-00 00:00:00'),
(103, 86, 13, '2023-07-30 18:39:31', '0000-00-00 00:00:00'),
(104, 73, 13, '2023-07-30 18:39:41', '0000-00-00 00:00:00'),
(105, 47, 13, '2023-07-30 18:39:49', '0000-00-00 00:00:00'),
(106, 50, 14, '2023-07-30 18:40:01', '0000-00-00 00:00:00'),
(107, 82, 14, '2023-07-30 18:40:08', '0000-00-00 00:00:00'),
(108, 21, 14, '2023-07-30 18:40:16', '0000-00-00 00:00:00'),
(109, 59, 14, '2023-07-30 18:40:25', '0000-00-00 00:00:00'),
(110, 15, 14, '2023-07-30 18:40:33', '0000-00-00 00:00:00'),
(111, 64, 14, '2023-07-30 18:40:40', '0000-00-00 00:00:00'),
(112, 46, 14, '2023-07-30 18:40:45', '0000-00-00 00:00:00'),
(113, 37, 14, '2023-07-30 18:40:52', '0000-00-00 00:00:00'),
(114, 32, 14, '2023-07-30 18:41:11', '0000-00-00 00:00:00'),
(115, 96, 15, '2023-07-30 18:41:35', '0000-00-00 00:00:00'),
(116, 97, 15, '2023-07-30 18:41:45', '0000-00-00 00:00:00'),
(117, 116, 15, '2023-07-30 18:41:51', '0000-00-00 00:00:00'),
(118, 78, 15, '2023-07-30 18:41:57', '0000-00-00 00:00:00'),
(119, 220, 2, '2023-08-03 08:47:59', '0000-00-00 00:00:00'),
(120, 130, 2, '2023-08-03 08:48:17', '0000-00-00 00:00:00'),
(121, 157, 2, '2023-08-03 08:48:35', '0000-00-00 00:00:00'),
(122, 204, 2, '2023-08-03 08:48:58', '0000-00-00 00:00:00'),
(123, 211, 2, '2023-08-03 08:49:16', '0000-00-00 00:00:00'),
(124, 156, 2, '2023-08-03 08:49:34', '0000-00-00 00:00:00'),
(125, 170, 2, '2023-08-03 08:50:00', '0000-00-00 00:00:00'),
(126, 132, 2, '2023-08-03 08:50:18', '0000-00-00 00:00:00'),
(127, 244, 2, '2023-08-07 17:30:07', '0000-00-00 00:00:00'),
(128, 236, 3, '2023-08-07 18:20:09', '0000-00-00 00:00:00'),
(129, 246, 3, '2023-08-07 18:21:12', '0000-00-00 00:00:00'),
(130, 193, 3, '2023-08-07 18:21:38', '0000-00-00 00:00:00'),
(131, 136, 3, '2023-08-07 18:22:12', '0000-00-00 00:00:00'),
(132, 214, 3, '2023-08-07 18:23:26', '0000-00-00 00:00:00'),
(133, 245, 3, '2023-08-07 18:24:59', '0000-00-00 00:00:00'),
(134, 195, 3, '2023-08-07 18:25:50', '0000-00-00 00:00:00'),
(135, 137, 15, '2023-08-07 18:30:05', '0000-00-00 00:00:00'),
(136, 152, 15, '2023-08-07 18:30:47', '0000-00-00 00:00:00'),
(137, 209, 15, '2023-08-07 18:31:21', '0000-00-00 00:00:00'),
(138, 188, 15, '2023-08-07 18:32:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Test', '2023-08-14 19:04:03', '2023-08-14 19:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `xcgpa` varchar(20) NOT NULL,
  `xiicgpa` varchar(20) NOT NULL,
  `sem1cgpa` varchar(20) NOT NULL,
  `sem2cgpa` varchar(20) NOT NULL,
  `sem3cgpa` varchar(20) NOT NULL,
  `sem4cgpa` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `picture`, `xcgpa`, `xiicgpa`, `sem1cgpa`, `sem2cgpa`, `sem3cgpa`, `sem4cgpa`, `created_at`, `updated_at`) VALUES
(1, 1, '', '5.85', '8.14', '3.33', '', '', '', '2023-07-25 19:39:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(11, 'When you create a \"recipient\" hidden field for a form, which of the following is the ONLY correct wa', '2023-07-08 06:06:39', '0000-00-00 00:00:00'),
(12, 'Which file controls how your frames will appear?', '2023-07-08 06:27:04', '0000-00-00 00:00:00'),
(13, 'What can\'t layers do if you want to convert them to tables?', '2023-07-08 06:27:21', '0000-00-00 00:00:00'),
(14, 'Which HTML tag is used to define an internal style sheet?', '2023-07-08 06:27:37', '0000-00-00 00:00:00'),
(15, 'Which HTML attribute is used to define inline styles?', '2023-07-08 06:27:52', '0000-00-00 00:00:00'),
(16, ' Which is the correct CSS syntax?', '2023-07-08 06:28:07', '0000-00-00 00:00:00'),
(17, 'Using _______ statement is how you test for a specific condition.', '2023-07-08 06:28:21', '0000-00-00 00:00:00'),
(18, ' Which of the following is the structure of an if statement?', '2023-07-08 06:28:43', '0000-00-00 00:00:00'),
(19, 'The _______ method of an Array object adds and/or removes elements from an array.', '2023-07-08 06:29:03', '0000-00-00 00:00:00'),
(20, 'To set up the window to capture all Click events, we use which of the following statement?', '2023-07-08 06:29:23', '0000-00-00 00:00:00'),
(21, ' If you want to store dissimilar data together, then which type you will use?', '2023-07-08 07:23:12', '0000-00-00 00:00:00'),
(22, 'Suppose that x is a one dimensional array, then choose the correct answer regarding array.', '2023-07-08 07:23:24', '0000-00-00 00:00:00'),
(23, 'It is possible to pass a structure variable to a function either by value or by address.', '2023-07-08 07:23:46', '0000-00-00 00:00:00'),
(24, 'A collection of generic class and function is called as', '2023-07-08 07:24:00', '0000-00-00 00:00:00'),
(25, 'Which of the following is\\are true about virtual function?', '2023-07-08 07:24:14', '0000-00-00 00:00:00'),
(26, 'The Standard Template Library (STL) consists of three main components. What are those components?', '2023-07-08 07:24:47', '0000-00-00 00:00:00'),
(27, 'What is RTTI?', '2023-07-08 10:10:59', '0000-00-00 00:00:00'),
(28, 'Which model depicts the profile of the end users of a computer system. (Software Engineering)', '2023-07-08 10:12:34', '0000-00-00 00:00:00'),
(29, 'How many types of Prototype models are there? (Software Engineering)', '2023-07-08 10:12:53', '0000-00-00 00:00:00'),
(30, 'Which one of the following is not an SQA activity? (Software Engineering)', '2023-07-08 10:13:22', '0000-00-00 00:00:00'),
(31, 'Fanin in an OO context indicates. (Software Engineering)', '2023-07-08 10:13:38', '0000-00-00 00:00:00'),
(32, 'The octal equivalence of 111010 is', '2023-07-08 10:14:00', '0000-00-00 00:00:00'),
(33, 'What function should be used to free the memory allocated by calloc() ?', '2023-07-08 10:14:26', '0000-00-00 00:00:00'),
(34, 'What is the purpose of fflush() function? ', '2023-07-08 10:14:40', '0000-00-00 00:00:00'),
(35, 'Primitive operations common to all record management system include ? ', '2023-07-08 10:15:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `batch` int(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `usn`, `branch`, `batch`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Akbarsab Ontakudari', 'akbarsab1998@gmail.com', '2GI21MC008', 'mca', 2022, 'Akbarsab@143', '2023-07-31 08:49:45', '0000-00-00 00:00:00'),
(3, 'Amaresha Angadi', 'amareshangadi1998@gmail.com', '2GI21MC013', 'mca', 2022, 'amar1519', '2023-07-31 08:50:01', '0000-00-00 00:00:00'),
(4, 'Sanjay Bidikar ', '2gi21mc091@students.git.edu', '2GI21MC091', 'mca', 2021, 'Aaryan@1998', '2023-07-31 08:50:04', '0000-00-00 00:00:00'),
(5, 'Nivedita ', 'Secretsnowy37@gmail.com', '2GI21MC056', 'mca', 2022, 'nivedita12', '2023-07-31 08:51:01', '0000-00-00 00:00:00'),
(6, 'Mrunali jadhav ', 'mmj4264@gmail.com', '2GI21MC047', 'mca', 2020, '2GI21MC047', '2023-07-31 08:52:53', '0000-00-00 00:00:00'),
(7, 'SRIRAM S KOLHAR ', 'sriramkolhar@gmail.com', '2GI21MC108', 'mca', 2021, 'Sriram@123', '2023-07-31 08:56:56', '0000-00-00 00:00:00'),
(8, 'Pratika Murgod ', 'pratikag28@gmail.com', '2GI21MC071', 'mca', 2023, '123System456!', '2023-07-31 08:57:11', '0000-00-00 00:00:00'),
(9, 'Manisha Patil ', 'manishapatil5368@gmail.com', '2GI21MC043', 'mca', 2023, 'hani*5368', '2023-07-31 09:00:59', '0000-00-00 00:00:00'),
(10, 'Meghna Chougule ', 'Megchougule22@gmail.com', '2GI21MC046', 'mca', 2022, 'meghna@9480', '2023-07-31 09:01:15', '0000-00-00 00:00:00'),
(12, 'Ankita Hiremath', 'ankitaghiremath@gmail.com', '2GI21MC015', 'mca', 2023, 'Ankita@27', '2023-07-31 09:05:02', '0000-00-00 00:00:00'),
(13, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2023, 'protanpatil22', '2023-07-31 09:06:46', '0000-00-00 00:00:00'),
(15, 'Akshata R Hanagandi ', 'akshuhanagandi@gmail.com', '2GI21MC009', 'mca', 2021, 'Akshu@123', '2023-07-31 09:11:35', '0000-00-00 00:00:00'),
(16, 'Sangeeta M Upadhye', 'upadhyesangeeta057@gmail.com', '2GI21MC087', 'mca', 2023, 'Sangu@9611', '2023-07-31 09:12:58', '0000-00-00 00:00:00'),
(17, 'varshini kulkarni', 'kulkarnivarshini6@gmail.com', '2GI21MC114', 'mca', 2023, 'msdhoni', '2023-07-31 09:15:06', '0000-00-00 00:00:00'),
(18, 'Vishnukanth ', 'vkanth1807@gmail.com', '2GI21MC119', 'mca', 2023, 'Vishnu#18', '2023-07-31 09:15:33', '0000-00-00 00:00:00'),
(19, 'Nidhishree Mokhasi', 'nidhishreemokhasi@gmail.com', '2GI21MC052', 'mca', 2021, '7353844164', '2023-07-31 09:17:19', '0000-00-00 00:00:00'),
(20, 'ANUP PATIL', 'anuprpatil555@gmail.com', '2GI21MC016', 'mca', 2021, 'Anup@9875', '2023-07-31 09:20:02', '0000-00-00 00:00:00'),
(21, 'Tejaswini sakreppago', 'tejaswinisakreppagol2000@gmail', '2GI21MC111', 'mca', 2022, 'Tejaswini@2000', '2023-07-31 09:20:38', '0000-00-00 00:00:00'),
(22, 'Avinash Landage ', 'avinashlandageofficial@gmail.c', '2GI21MC023', 'mca', 2021, 'Avinashavi@1', '2023-07-31 09:23:15', '0000-00-00 00:00:00'),
(23, 'Rashmi Arjun Bavalat', 'rashmibavalatti@gmail.com', '2GI21MC079', 'mba', 2023, 'Rashrampi@18', '2023-07-31 09:25:39', '0000-00-00 00:00:00'),
(24, 'Ashlie Dsouza', 'ashgit07@gmail.com', '2GI21MC020', 'mca', 2023, 'qwerty@1234', '2023-07-31 09:31:11', '0000-00-00 00:00:00'),
(26, 'Kirti Ankalgi', 'kirtiankalgi@gmail.com', '2GI21MC014', 'mca', 2023, 'Abcd22767', '2023-07-31 09:39:05', '0000-00-00 00:00:00'),
(27, 'Akshatha L Biradar', 'biradarakshatha@gmail.com', '2GI21MC011', 'mba', 2018, 'akshatha', '2023-07-31 09:40:02', '0000-00-00 00:00:00'),
(29, 'Soumya Shrishail Udo', 'soumya124udoshi@gmail.com', '2GI21MC107', 'mca', 2021, 'Rani#124', '2023-07-31 09:43:16', '0000-00-00 00:00:00'),
(30, 'Aditya', 'officialdesaiaditya@gmail.com', '2GI21MC031', 'mca', 2022, 'Aditya*1', '2023-07-31 09:53:33', '0000-00-00 00:00:00'),
(31, 'Rohit M Katageri', 'rohitkatageri310@gmail.com', '2GI21MC081', 'mca', 2023, '2GI21MC081', '2023-07-31 09:58:29', '0000-00-00 00:00:00'),
(32, 'Prajwal Narendra', 'prajwalsnarendra56@gmail.com', '2GI21MC067', 'mca', 2022, 'Valowrangler2', '2023-07-31 10:03:16', '0000-00-00 00:00:00'),
(33, 'Pooja Davaskar ', 'davaskarpooja@gmail.com', '2GI21MC064', 'mca', 2023, 'PoojaDavaskar7829893773', '2023-07-31 10:04:13', '0000-00-00 00:00:00'),
(34, 'Anusha wali', 'Walianusha9@gmail.com', '2GI21MC017', 'mca', 2023, 'Anusha@8789', '2023-07-31 10:04:26', '0000-00-00 00:00:00'),
(35, 'Tejashri Malavi ', 'tejashri241@gmail.com', '2GI21MC110', 'mca', 2023, 'tejashri', '2023-07-31 10:11:12', '0000-00-00 00:00:00'),
(36, 'Siddappa', 'sidduhavaldar483@gmail.com', '2GI21MC101', 'mca', 2021, 'siddu@123', '2023-07-31 10:17:18', '0000-00-00 00:00:00'),
(38, 'Neha Desai', 'nehadesai2328@gmail.com', '2GI21MC049', 'mca', 2023, 'NehaDesai@23', '2023-07-31 10:26:02', '0000-00-00 00:00:00'),
(39, 'Abhishek Angadi ', 'abhishekra369@gmail.com', '2GI21MC002', 'mca', 2023, 'Asdf@1234', '2023-07-31 10:53:53', '0000-00-00 00:00:00'),
(40, 'Akanksha Narayan Des', '2gi21mc006@students.git.edu', '2GI21MC006', 'mca', 2023, 'akanksha@30', '2023-07-31 11:00:46', '0000-00-00 00:00:00'),
(41, 'Smita kamatagi', 'kamatagi3854@gmail.com', '2GI21MC105', 'mca', 2023, 'smita@9954', '2023-07-31 11:07:50', '0000-00-00 00:00:00'),
(42, 'Akshay Mouneshi Badi', 'akshaybadiger007@gmail.com', '2GI21MC012', 'mca', 2023, 'Face09@1', '2023-07-31 11:11:12', '0000-00-00 00:00:00'),
(44, 'Preeti Ankalagi ', 'preetiankalagi672@gmail.com', '2GI21MC072', 'mca', 2022, 'Priti@72', '2023-07-31 11:19:03', '0000-00-00 00:00:00'),
(45, 'Ekata ', 'belvatkarekata77@gmail.com', '2GI21MC032', 'mca', 2022, 'ekata1234', '2023-07-31 11:26:46', '0000-00-00 00:00:00'),
(46, 'Chetan Akkatangerhal', 'chetanakkatangerhal12@gmail.co', '2GI21MC027', 'mca', 2023, 'Chetan@spne007', '2023-07-31 12:05:28', '0000-00-00 00:00:00'),
(47, 'Raveena Madhav Honna', 'raveenahonnavar2602@gmail.com', '2GI21MC080 ', 'mca', 2021, '2GI21MC080', '2023-07-31 12:07:53', '0000-00-00 00:00:00'),
(48, 'Karuna Mutagekar', 'karunamutagekar123@gmail.com', '2GI21MC037', 'mca', 2023, 'Vaibhav@123', '2023-07-31 12:13:32', '0000-00-00 00:00:00'),
(49, 'Shamal Mallappa Pish', 'shamalpishani8@gmail.com', '2GI21MC093', 'mca', 2023, 'Shamal123', '2023-07-31 12:16:16', '0000-00-00 00:00:00'),
(50, 'Prathmesh Jadhav_ ', 'prathameshjadhav80955@gmail.co', '2GI21MC070', 'mca', 2023, '2GI21MC070P10300545j', '2023-07-31 12:29:38', '0000-00-00 00:00:00'),
(51, 'Meghan Shrinivas Kho', 'meghankhot1999@gmail.com', '2GI21MC045', 'mca', 2023, 'Mack@1077', '2023-07-31 12:29:46', '0000-00-00 00:00:00'),
(52, 'Mayuri ', 'mayuri.hawaldar@gmail.com', '2GI21MC044', 'mca', 2023, 'Mayuri@1999', '2023-07-31 12:32:11', '0000-00-00 00:00:00'),
(53, 'Vinaya Hande ', 'handevinaya77@gmail.com', '2gi21mc116', 'mca', 2023, 'Btcuwtcitw@77', '2023-07-31 12:51:03', '0000-00-00 00:00:00'),
(55, 'Simran Shaikh', 'simranshaikh73047@gmail.com', '2GI21MC103', 'mca', 2023, 'Simran@26', '2023-07-31 12:52:10', '0000-00-00 00:00:00'),
(56, 'Shivanand Kallappa K', 'shivanandkoli716@gmail.com', '2GI21MC096', 'mca', 2023, 'shiva@2000', '2023-07-31 12:52:46', '0000-00-00 00:00:00'),
(58, 'Sujit Satish Malage', 'malagesujit838@gmail.com', '2GI21MC109', 'mca', 2023, 'Sujit@124', '2023-07-31 12:54:23', '0000-00-00 00:00:00'),
(61, 'Pranali Chandrakant ', 'pannuj19@gmail.com', 'Professional@19', 'mca', 2023, 'Professional@19', '2023-07-31 12:59:03', '0000-00-00 00:00:00'),
(62, 'Pooja Sadanand Devag', 'poojadevagekar01@gmail.com', '2GI21MC063', 'mba', 2023, 'poojasdev', '2023-07-31 12:59:24', '0000-00-00 00:00:00'),
(63, 'shubhada shamkant gu', 'shubhadagurav1110@gmail.com', '2GI21MC099', 'mca', 2023, 'shubhu11', '2023-07-31 13:00:19', '0000-00-00 00:00:00'),
(65, 'Nikita Rajendra Raik', 'nikitaraikar1914@gmail.com', '2GI21MC053', 'mca', 2023, 'Nikita@1910', '2023-07-31 13:41:12', '0000-00-00 00:00:00'),
(66, 'Trupti Patil ', 'trupticpatil07@gmail.com', '2GI21MC112', 'mca', 2021, 'Trupti@123', '2023-07-31 13:49:47', '0000-00-00 00:00:00'),
(68, 'Priyanka Shettar', 'priyankashettar7@gmail.com', '2GI21MC075', 'mca', 2023, 'Rabbit@23', '2023-07-31 13:50:10', '0000-00-00 00:00:00'),
(69, 'Madhu Hiremath ', 'madhuhiremath2000@gmail.com', '2GI21MC040', 'mca', 2023, 'Mafhu@123', '2023-07-31 13:58:26', '0000-00-00 00:00:00'),
(70, 'Sanjana Anilkumar Ag', 'agadisanjana@gmail.com', '2GI21MC090', 'mca', 2023, 'Sagadi@18', '2023-07-31 13:59:07', '0000-00-00 00:00:00'),
(71, 'Parth kangralkar ', 'kangralkarparth1@gmail.com', '2GI21MC060', 'mca', 2021, 'Parth@123', '2023-07-31 14:01:55', '0000-00-00 00:00:00'),
(72, 'Komal Sanjay Belavi ', '2gi21mc038@students.git.edu', '2GI2MC038', 'mca', 2023, 'Komal@123', '2023-07-31 14:02:38', '0000-00-00 00:00:00'),
(74, 'Pooja Yaligar ', 'poojayaligar99@gmail.com', '2GI21MC066 ', 'mca', 2023, 'Poojay@1', '2023-07-31 14:04:04', '0000-00-00 00:00:00'),
(75, 'Bhagyashri Teli', 'bhagyateli121@gmail.com', '2GI21MC024', 'mca', 2023, 'Bhagya@1999', '2023-07-31 14:06:31', '0000-00-00 00:00:00'),
(76, 'Vinayak somappa kori', 'vinukori1704@gmail.com', '2GI21MC117', 'mca', 2023, 'Vinu@123', '2023-07-31 14:13:59', '0000-00-00 00:00:00'),
(77, 'Pratik prakash patil', 'pratikkalkundri@gmail.com', '2GI21MC061', 'mca', 2023, '8806696147', '2023-07-31 14:14:02', '0000-00-00 00:00:00'),
(79, 'Samiya Ashraf Ali Bi', 'samiyabijapur66@gmail.com', '2GI21MC086', 'mca', 2023, 'samiya66', '2023-07-31 14:18:54', '0000-00-00 00:00:00'),
(81, 'Saniya Ashraf Ali bi', 'saniyabijapur23@gmail.com', '2GI21MC089', 'mca', 2023, 'saniya66', '2023-07-31 14:35:42', '0000-00-00 00:00:00'),
(83, 'Nikita Ghatage ', 'nikitaghatage56@gmail.com', '2GI21MC054 ', 'mca', 2023, '2GI21MC054', '2023-07-31 14:35:57', '0000-00-00 00:00:00'),
(84, 'Seema Kongali ', 'seemakongali@gmail.com', '2GI21MC092', 'mca', 2022, 'Seema@12345', '2023-07-31 14:57:20', '0000-00-00 00:00:00'),
(85, 'Chetankumar Nooli', 'chetannooli94@gmail.com', '2GI21MC029', 'mca', 2022, 'Jarvis@12', '2023-07-31 15:04:40', '0000-00-00 00:00:00'),
(86, 'Arbazahmed Momin ', '2gi21mc018@students.git.edu', '2GI21MC018', 'mca', 2021, 'Arbaz@018', '2023-07-31 15:22:26', '0000-00-00 00:00:00'),
(87, 'Madhushri Betageri', 'madhushrirb12@gmail.com', '2GI21MC041', 'mca', 2021, 'mAdhu@123', '2023-07-31 16:16:06', '0000-00-00 00:00:00'),
(88, 'Aishwarya Basavraj P', 'aishwaryapatil02141@gmail.com', '2GI21MC005', 'mca', 2021, 'Aishj@123', '2023-07-31 16:42:35', '0000-00-00 00:00:00'),
(89, 'Brijesh M Patil', 'brijeshmpatil77@gmail.com', '2GI21MC026', 'mca', 2023, '7815840654', '2023-07-31 16:59:58', '0000-00-00 00:00:00'),
(90, 'Samarth Handral', 'samarth.handral118@gmail.com', '2gi21mc085', 'mca', 2022, '@sam2000@', '2023-07-31 17:10:00', '0000-00-00 00:00:00'),
(91, 'Rohan Bhushi ', 'bhushirohan@gmail.com', '2GI21MC025', 'mca', 2023, 'Rohan@18', '2023-07-31 17:12:09', '0000-00-00 00:00:00'),
(92, 'Ashish ', 'ashishgurav2000@gmail.com', '2GI21MC019', 'mca', 2021, 'Marvel@123', '2023-07-31 17:17:18', '0000-00-00 00:00:00'),
(93, 'Ashwini C. Kangralka', 'ashwinikangralkar9@gmail.com', '2GI21MC021', 'mca', 2023, 'Ashwini@31', '2023-08-01 02:56:37', '0000-00-00 00:00:00'),
(94, 'shubham', 'shubhamiroji66@gmail.com', '2GI21MC100', 'mca', 2023, 'shubham@81', '2023-08-01 03:41:33', '0000-00-00 00:00:00'),
(95, 'Prerana kamate', 'preranakamate9026@gmail.com', '2GI21MC083', 'mca', 2021, 'Msdhoni@27', '2023-08-01 04:13:28', '0000-00-00 00:00:00'),
(98, 'Sanika Salvade', 'sanika.salvade@gmail.com', '2GI21MC088', 'mca', 2023, '2GI21MC088', '2023-08-01 15:35:59', '0000-00-00 00:00:00'),
(99, 'Firozsab Nadaf ', 'firozsnadaf@gmail.com', '2gi21mc034', 'mca', 2021, 'Firoz@fz', '2023-08-01 15:38:54', '0000-00-00 00:00:00'),
(100, 'Rahul R Chavan ', '2gi21mc077@students.git.edu', '2GI21MC077', 'mca', 2021, 'Rahul@123', '2023-08-01 15:39:14', '0000-00-00 00:00:00'),
(101, 'Chetan Koppad', 'chetankoppad05@gmail.com', '2GI21MC028', 'mca', 2021, 'chetan@123', '2023-08-01 15:40:40', '0000-00-00 00:00:00'),
(103, 'Shankar B Puthani ', 'shankarputhani@gmail.com', '2GI21MC094', 'mba', 2021, 'http://git-mca.xyz', '2023-08-01 15:45:46', '0000-00-00 00:00:00'),
(104, 'Prashant Kadam ', 'prashantkadam3161@gmail.com', '2GI21MC069', 'mca', 2021, 'Taniii96@', '2023-08-01 15:49:13', '0000-00-00 00:00:00'),
(108, 'Pranali Chandrakant ', 'pannuj19@gmail.com', 'Professional@19', 'mca', 2023, 'Professional@19', '2023-08-04 05:49:14', '0000-00-00 00:00:00'),
(109, 'SRIRAM S KOLHAR ', 'sriramkolhar@gmail.com', '2GI21MC108', 'mca', 2021, 'Sriram@123', '2023-08-04 10:15:49', '0000-00-00 00:00:00'),
(110, 'Brijesh', 'brijeshmpatil77@gmail.com', '2GI21MC026', 'mca', 2023, '7815840654', '2023-08-04 10:22:16', '0000-00-00 00:00:00'),
(111, 'Gururaj mannolkar', 'gnmannolkar97@gmail.com', '2GI21MC035', 'mca', 2023, 'Qwerty@123', '2023-08-04 10:23:13', '0000-00-00 00:00:00'),
(112, 'Brijesh M Patil', 'brijeshmpatil77@gmail.com', '2GI21MC026', 'mca', 2023, '7815840654', '2023-08-04 10:23:50', '0000-00-00 00:00:00'),
(113, 'Neha Soudagar ', 'nehasoudagar1999@gmail.com', '2GI21MC051 ', 'mca', 2022, '@nehaqueen786', '2023-08-04 10:24:57', '0000-00-00 00:00:00'),
(117, 'Sindhu bhat', 'bhatsindhu6@gmail.com', '2GI21MC104 ', 'mca', 2023, 'sindhubhat', '2023-08-04 10:36:16', '0000-00-00 00:00:00'),
(119, 'Akash Jadhav', 'jadhavakashofficial@gmail.com', '2GI21MC007', 'mca', 2021, 'Git@1234', '2023-08-04 11:22:09', '0000-00-00 00:00:00'),
(120, 'Chetan Akkatangerhal', 'chetanakkatangerhal12@gmail.co', '2GI21MC027', 'mca', 2023, 'Chetan@spne007', '2023-08-04 11:23:10', '0000-00-00 00:00:00'),
(121, 'Preeti Ankalagi ', 'preetiankalagi672@gmail.com', '2GI21MC072', 'mca', 2022, 'git@123', '2023-08-04 11:25:03', '0000-00-00 00:00:00'),
(122, 'Akash Jadhav', 'jadhavakashofficial@gmail.com', '2GI21MC007', 'mca', 2023, 'Akashg@11', '2023-08-04 11:25:06', '0000-00-00 00:00:00'),
(123, 'Shruti Kangralkar ', 'Shrutikangralkar11@gmail.com', '2GI21MC098 ', 'mca', 2023, 'shru@98K', '2023-08-04 11:26:26', '0000-00-00 00:00:00'),
(124, 'Abhishek Angadi ', '2gi21mc002@students.git.edu', '2GI21MC002', 'mca', 2021, 'git@123', '2023-08-04 11:32:40', '0000-00-00 00:00:00'),
(125, 'Akash Jadhav', 'jadhavakashofficial@gmail.com', '2GI21MC007', 'mca', 2021, 'git@123', '2023-08-04 11:35:22', '0000-00-00 00:00:00'),
(126, 'Rahul Chavan', 'hitorahul1998@gmail.com', '2GI21MC077', 'mca', 2023, 'git@123', '2023-08-04 11:35:59', '0000-00-00 00:00:00'),
(127, 'Rahul Chavan', 'hi2rahul1998@gmail.com', '2GI21MC077', 'mca', 2023, 'git@123', '2023-08-04 11:37:18', '0000-00-00 00:00:00'),
(128, 'Rahul Chavan', '2gi21mc077@students.git.edu', '2GI21MC077', 'mca', 2023, 'git@123', '2023-08-04 11:38:48', '0000-00-00 00:00:00'),
(129, 'Akash Jadhav', '2gi21mc007@students.git.edu', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-04 11:39:55', '0000-00-00 00:00:00'),
(130, 'Akash Jadhav', 'jadhavakashofficial@gmail.com', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-04 11:41:05', '0000-00-00 00:00:00'),
(131, 'Siddappa', 'sidduhavaldar483@gmail.com', '2GI21MC101', 'mca', 2021, 'siddu@123', '2023-08-04 11:42:09', '0000-00-00 00:00:00'),
(132, 'Akash Jadhav', 'classictechak@gmail.com', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-04 11:42:56', '0000-00-00 00:00:00'),
(133, 'Brijesh M Patil', '2gi21mc026@students.git.edu', '2GI21MC026', 'mca', 2021, 'RaveR@007', '2023-08-04 11:44:08', '0000-00-00 00:00:00'),
(134, 'Akash Jadhav', 'classicjobs.in@gmail.com', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-04 11:44:35', '0000-00-00 00:00:00'),
(135, 'Siddappa ', 'sidduhavaldar483@gmail.com', '2GI21MC101', 'mca', 2021, 'siddu@123', '2023-08-04 11:46:56', '0000-00-00 00:00:00'),
(136, 'Akash Jadhav', 'classictechak@gmail.com', '2GI21MC007', 'mca', 2023, 'GIT@123', '2023-08-04 11:49:05', '0000-00-00 00:00:00'),
(137, 'Amaresha Angadi', 'amareshangadi1998@gmail.com', '2GI21MC013', 'mca', 2022, 'amar1519', '2023-08-04 11:54:53', '0000-00-00 00:00:00'),
(138, 'Chetankumar Nooli', 'chetannooli94@gmail.com', '2GI21MC029', 'mca', 2022, 'Jarvis@12', '2023-08-04 11:55:42', '0000-00-00 00:00:00'),
(139, 'Rahin Hoskoti ', 'rahinhoskoti50@gmail.com', '2GI21MC076', 'mca', 2023, 'rah@123', '2023-08-04 11:55:43', '0000-00-00 00:00:00'),
(140, 'Brijesh M Patil', '2gi21mc026@students.git.edu', '2GI21MC026', 'mca', 2021, 'git@123', '2023-08-04 11:56:06', '0000-00-00 00:00:00'),
(141, 'Aishwarya B Patil', 'aishupatil451@gmail.com', '2GI21MC004', 'mca', 2021, 'Aishu@25', '2023-08-04 12:01:29', '0000-00-00 00:00:00'),
(142, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'buddytany22', '2023-08-04 12:07:59', '0000-00-00 00:00:00'),
(143, 'Akash Jadhav', 'abhishekangadi68@gmail.com', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-04 12:09:06', '0000-00-00 00:00:00'),
(144, 'Rahin Hoskoti', 'rahinhoskoti50@gmail.com', '2GI21MC076', 'mca', 2023, 'git@123', '2023-08-04 12:09:09', '0000-00-00 00:00:00'),
(145, 'Manisha Patil', 'manishapatil@gmail.com', '2gi21mc043', 'mca', 2023, 'git@123', '2023-08-04 12:09:16', '0000-00-00 00:00:00'),
(146, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'protanpatil22', '2023-08-04 12:10:57', '0000-00-00 00:00:00'),
(147, 'Rahin Hoskoti', 'rahinhoskoti50@gmail.com', '2GI21MC076', 'mca', 2023, 'rah@123', '2023-08-04 12:10:57', '0000-00-00 00:00:00'),
(148, 'Akbarsab Ontakudari', 'akbarsab1998@gmail.com', '2GI21MC008', 'mba', 2021, 'Akbarsab@143', '2023-08-04 12:16:16', '0000-00-00 00:00:00'),
(149, 'ES PARSHURAM ', 'esparshuram7@gmail.com', '2GI21MC033', 'mca', 2021, 'Harekrishna@321', '2023-08-04 12:16:17', '0000-00-00 00:00:00'),
(150, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'git@123', '2023-08-04 12:20:40', '0000-00-00 00:00:00'),
(151, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'git@123', '2023-08-04 12:21:58', '0000-00-00 00:00:00'),
(152, 'Rahin Hoskoti', 'rahinhoskoti50@gmail.com', '2GI21MC076', 'mca', 2023, 'Rahin@123', '2023-08-04 12:22:45', '0000-00-00 00:00:00'),
(153, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'git@123', '2023-08-04 12:24:41', '0000-00-00 00:00:00'),
(154, 'Priyanka Shettar', 'priyankashettar7@gmail.com', '2GI21MC075', 'mca', 2022, 'Rabbit@22', '2023-08-04 12:28:26', '0000-00-00 00:00:00'),
(155, 'Pooja Naik ', 'poojabnaik0130@gmail.com', '2GI21MC065 ', 'mca', 2022, 'Jaisairam@01', '2023-08-04 12:50:28', '0000-00-00 00:00:00'),
(156, 'Priya BPatil', 'smithapriya903@gmail.com', '2GI21MC074', 'mca', 2023, 'priya@123', '2023-08-04 13:06:02', '0000-00-00 00:00:00'),
(157, 'Trupti Kavadimatti', 'kavadimattit5@gmail.com', '2GI21MC113', 'mca', 2023, 'Trupti@123', '2023-08-04 13:06:18', '0000-00-00 00:00:00'),
(158, 'Firozsab Nadaf ', 'firozsnadaf@gmail.com', '2gi21mc034', 'mca', 2022, 'Firoz@fz1234', '2023-08-04 13:09:03', '0000-00-00 00:00:00'),
(159, 'Priya B Patil', 'smiphapriya903@gmail.com', '2GI21MC074', 'mca', 2021, 'priya@123', '2023-08-04 13:11:22', '0000-00-00 00:00:00'),
(160, 'Sneha Totad', 'totadsneha@gmail.com', '2GI21MC106', 'mca', 2022, 'Sairam@01', '2023-08-04 13:12:18', '0000-00-00 00:00:00'),
(161, 'Trupti Kavadimatti', 'kavadimattit5@gmail.com', '2GI21MC113', 'mca', 2023, 'trupti@123', '2023-08-04 13:15:14', '0000-00-00 00:00:00'),
(162, 'Priya BPatil', 'smithapriya903@gmail.com', '2GI21MC074', 'mca', 2023, 'priya@123', '2023-08-04 13:15:37', '0000-00-00 00:00:00'),
(163, 'Trupti Kavadimatti', '2gi21mc113@students.git.edu', '2GI21MC113', 'mca', 2023, 'trupti@123', '2023-08-04 13:19:26', '0000-00-00 00:00:00'),
(164, 'Priya BPatil', '2gi21mc074@students.git.edu', '2GI21MC074', 'mca', 2023, 'priya@123', '2023-08-04 13:19:28', '0000-00-00 00:00:00'),
(165, 'Ashwini C. Kangralka', 'ashwinikangralkar9@gmail.com', '2GI21MC021', 'mca', 2023, 'Ashwini@31', '2023-08-04 13:33:47', '0000-00-00 00:00:00'),
(166, 'Trupti Patil ', '2gi21mc112@students.git.idu', '2GI21MC112', 'mca', 2021, 'git@123', '2023-08-04 13:39:57', '0000-00-00 00:00:00'),
(167, 'Varshini Kulkarni ', 'kulkarnivarshini6@gmail.com', '2GI21MC114 ', 'mca', 2021, 'msdhoni', '2023-08-04 13:43:04', '0000-00-00 00:00:00'),
(168, 'shridevi chougala', '2gi21mc097@students.git.edu', '2GI21MC097', 'mca', 2021, 'Shree$011', '2023-08-04 13:44:20', '0000-00-00 00:00:00'),
(169, 'Madhu Halli', 'madhuhalli36@gmail.com', '2GI21MC039', 'mca', 2021, 'git@123', '2023-08-04 14:02:37', '0000-00-00 00:00:00'),
(170, 'Ashwini C. Kangralka', 'ashwinikangralkar31@gmail.com', '2GI21MC021', 'mca', 2023, 'git@123', '2023-08-04 14:19:16', '0000-00-00 00:00:00'),
(171, 'smita', 'kamatagi3854@gmail.com', '2GI21MC105', 'mca', 2023, 'git@123', '2023-08-04 14:19:20', '0000-00-00 00:00:00'),
(172, 'smita kamatagi', 'smitakamatagi2200@gmail.com', '2GI21MC105', 'mca', 2023, 'git@123', '2023-08-04 14:21:07', '0000-00-00 00:00:00'),
(173, 'Ashwini C. Kangralka', 'ashwinikangralkar9@gmail.com', '2GI21MC021', 'mca', 2023, 'Ashwini@31', '2023-08-04 14:21:13', '0000-00-00 00:00:00'),
(174, 'Ashwini C. Kangralka', 'ashwinikangralkar9@gmail.com', '2GI21MC021', 'mca', 2023, 'Ashwini@31', '2023-08-04 14:22:00', '0000-00-00 00:00:00'),
(175, 'smita kamatagi', 'kamatagi3854@gmail.com', '2GI21MC105', 'mca', 2023, 'smita@123', '2023-08-04 14:23:12', '0000-00-00 00:00:00'),
(176, 'smita kamatagi', 'kamatagi3854@gmail.com', '2GI21MC105', 'mca', 2023, 'git@123', '2023-08-04 14:27:56', '0000-00-00 00:00:00'),
(177, 'smita kamatagi', '2gi21mc105@students.git.edu', '2GI21MC105', 'mca', 2023, 'git@123', '2023-08-04 14:31:41', '0000-00-00 00:00:00'),
(178, 'Patil Tanishta Praff', 'tanishtapt9003@gmail.com', '2GI21MC062', 'mca', 2018, 'git@123', '2023-08-04 15:10:46', '0000-00-00 00:00:00'),
(179, 'Sanjay G Bidikar', '2gi21mc091@students.git.edu', '2GI21MC091', 'mca', 2021, 'Aaryan@1998', '2023-08-04 15:16:58', '0000-00-00 00:00:00'),
(180, 'Samarth Handral', 'samarth.handral118@gmail.com', '2gi21mc085', 'mca', 2021, '@sam2000@', '2023-08-04 15:35:59', '0000-00-00 00:00:00'),
(181, 'Rahin Hoskoti', 'rahinhoskoti50@gmail.com', '2GI21MC076', 'mca', 2023, '2GI21MC076', '2023-08-04 16:40:15', '0000-00-00 00:00:00'),
(182, 'Shamal M. Pishani', 'shamalpishani8@gmail.com', '2GI21MC093', 'mca', 2023, 'git@123', '2023-08-05 04:28:46', '0000-00-00 00:00:00'),
(183, 'Shamal M. Pishani', 'shamalpishani8@gmail.com', '2GI21MC093', 'mca', 2023, 'git@123', '2023-08-05 04:34:18', '0000-00-00 00:00:00'),
(184, 'Neha Bhatkande', 'nehabhatkande0803@gmail.com', '2GI21MC050', 'mca', 2023, 'Neha890', '2023-08-05 05:24:37', '0000-00-00 00:00:00'),
(185, 'Rahul R Chavan ', 'hi2rahul1990@gmail.com', '2GI21MC077', 'mca', 2023, 'git@123', '2023-08-05 06:34:21', '0000-00-00 00:00:00'),
(186, 'Neha Bhatkande', 'nehabhatkande0803@gmail.com', '2GI21MC050', 'mca', 2023, 'neha@123', '2023-08-05 07:04:37', '0000-00-00 00:00:00'),
(187, 'Nachiket R Kunchnur ', 'rknachiket@gmail.com', '2GI21MC048', 'mca', 2023, 'git@123', '2023-08-05 07:47:51', '0000-00-00 00:00:00'),
(188, 'ashish', 'ashishgurav2000@gmail.com', '2GI21MC019', 'mca', 2023, 'Marvel@123', '2023-08-05 07:51:21', '0000-00-00 00:00:00'),
(189, 'Madhu Hirmath', 'madhuhiremath2000@gmail.com', '2GI21MC040', 'mca', 2023, 'Samarth@123', '2023-08-05 07:58:14', '0000-00-00 00:00:00'),
(190, 'Madhu Hirmath', 'madhuhiremath2000@gmail.com', '2GI21MC040', 'mca', 2023, 'git@123', '2023-08-05 08:00:47', '0000-00-00 00:00:00'),
(191, 'Neha Desai', 'nehadesai2328@gmail.com', '2GI21MC049', 'mca', 2023, 'Nehadesai@123', '2023-08-05 08:27:30', '0000-00-00 00:00:00'),
(192, 'Nikita ugare', 'niki1008ugare@gmail.com', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 08:38:50', '0000-00-00 00:00:00'),
(193, 'Nikita ugare', '2gi21mco55@students.git.edu', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 08:45:37', '0000-00-00 00:00:00'),
(194, 'Shamal M. Pishani', 'shamalpishani8@gmail.com', '2GI21MC093', 'mca', 2023, 'git@123', '2023-08-05 08:49:12', '0000-00-00 00:00:00'),
(195, 'Nikita', '2gi21mc055@students.git.edu', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 08:49:55', '0000-00-00 00:00:00'),
(196, 'Nikita ugare', 'niki1008ugare@gmail.com', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 09:00:21', '0000-00-00 00:00:00'),
(197, 'Nikita ugare', 'niki1008ugare@gmail.com', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 09:09:43', '0000-00-00 00:00:00'),
(198, 'Nikita ugare', 'niki1008ugare@gmail.com', '2gi21mc055', 'mca', 2023, 'git@123', '2023-08-05 09:14:34', '0000-00-00 00:00:00'),
(199, 'smita kamatagi', 'kamatagi3854@gmail.com', '2GI21MC105', 'mca', 2023, 'git@123', '2023-08-05 10:40:00', '0000-00-00 00:00:00'),
(200, 'Simran Shaikh', 'simranshaikh73047@gmail.com', '2GI21MC103', 'mca', 2023, 'Simran@26', '2023-08-05 11:25:13', '0000-00-00 00:00:00'),
(201, 'Neha Desai', 'nehadesai2328@gmail.com', '2GI21MC049', 'mca', 2023, 'git@123', '2023-08-05 11:31:02', '0000-00-00 00:00:00'),
(202, 'Simran Shaikh', 'simranshaikh73047@gmail.com', '2GI21MC103', 'mca', 2023, 'Simran@26', '2023-08-05 11:34:51', '0000-00-00 00:00:00'),
(203, 'Patil Tanishta Praff', 'tanishtapt22@gmail.com', '2GI21MC062', 'mca', 2023, 'git@123', '2023-08-05 13:11:19', '0000-00-00 00:00:00'),
(204, 'Patil Tanishta Praff', 'tanishtapt222@gmail.com', '2GI21MC062', 'mca', 2023, 'git@123', '2023-08-05 13:13:21', '0000-00-00 00:00:00'),
(205, 'Trupti Patil ', 'trupticpatil07@gmail.com', '2GI21MC112', 'mca', 2021, 'Trupti@123', '2023-08-05 14:08:28', '0000-00-00 00:00:00'),
(206, 'Nivedita', 'niveditanaiknivedita0654@gmail', '2GI21MC057', 'mca', 2023, 'git@123', '2023-08-05 14:36:32', '0000-00-00 00:00:00'),
(207, 'Pranali Chandrakant ', 'pannuj19@gmail.com', '2GI21MC068', 'mca', 2023, 'Professional@19', '2023-08-05 16:31:51', '0000-00-00 00:00:00'),
(208, 'Samiya Ashraf Ali Bi', 'samiyabijapur66@gmail.com', '2GI21MC086', 'mca', 2023, 'samiya66', '2023-08-05 18:00:03', '0000-00-00 00:00:00'),
(209, 'Akash Jadhav', 'jadhavakashofficial@gmail.com', '2GI21MC007', 'mca', 2023, 'git@123', '2023-08-05 20:51:08', '0000-00-00 00:00:00'),
(210, 'Mrunali jadhav ', 'mmj4264@gmail.com', '2GI21MC047 ', 'mca', 2022, 'MRUNALI', '2023-08-06 13:12:51', '0000-00-00 00:00:00'),
(211, 'Mrunali jadhav ', 'mmj4264@gmail.com', '2GI21MC047 ', 'mca', 2021, 'MRUNALI', '2023-08-06 14:30:27', '0000-00-00 00:00:00'),
(212, 'Madhu Halli', 'madhuhalli36@gmail.com', '2GI21MC039', 'mca', 2021, 'git@123', '2023-08-06 18:45:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `reset_password_id` int(11) NOT NULL,
  `reset_hash` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`reset_password_id`, `reset_hash`, `email`, `created_at`, `updated_at`) VALUES
(1, '$2y$13$owG0bKgbRfkwCCxtwYVCUePcPPrMZc7WWjfFOTdmrNlvfqXYPiP6i', 'alzaahid@gmail.com', '2023-08-03 01:51:45', '2023-08-02 20:21:45'),
(2, '$2y$13$t2sjxiHjQZvhv5vaVicRwewQFcQYdZu8JlBJbTaTq8rjKbweudmjC', 'seemakongali@gmail.com', '2023-08-03 23:34:57', '2023-08-03 18:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `set1`
--

CREATE TABLE `set1` (
  `id` int(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL DEFAULT 'Set1',
  `q1` varchar(100) NOT NULL,
  `q2` varchar(100) NOT NULL,
  `q3` varchar(100) NOT NULL,
  `q4` varchar(100) NOT NULL,
  `q5` varchar(100) NOT NULL,
  `q6` varchar(100) NOT NULL,
  `q7` varchar(100) NOT NULL,
  `q8` varchar(100) NOT NULL,
  `q9` varchar(100) NOT NULL,
  `q10` varchar(100) NOT NULL,
  `q11` varchar(100) NOT NULL,
  `q12` varchar(100) NOT NULL,
  `q13` varchar(100) NOT NULL,
  `q14` varchar(100) NOT NULL,
  `q15` varchar(100) NOT NULL,
  `q16` varchar(100) NOT NULL,
  `q17` varchar(100) NOT NULL,
  `q18` varchar(100) NOT NULL,
  `q19` varchar(100) NOT NULL,
  `q20` varchar(100) NOT NULL,
  `q21` varchar(100) NOT NULL,
  `q22` varchar(100) NOT NULL,
  `q23` varchar(100) NOT NULL,
  `q24` varchar(100) NOT NULL,
  `q25` varchar(100) NOT NULL,
  `user_id` int(50) NOT NULL,
  `total` int(50) NOT NULL,
  `test_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `set2`
--

CREATE TABLE `set2` (
  `id` int(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'Set2',
  `q1` varchar(100) NOT NULL,
  `q2` varchar(100) NOT NULL,
  `q3` varchar(100) NOT NULL,
  `q4` varchar(100) NOT NULL,
  `q5` varchar(100) NOT NULL,
  `q6` varchar(100) NOT NULL,
  `q7` varchar(100) NOT NULL,
  `q8` varchar(100) NOT NULL,
  `q9` varchar(100) NOT NULL,
  `q10` varchar(100) NOT NULL,
  `q11` varchar(100) NOT NULL,
  `q12` varchar(100) NOT NULL,
  `q13` varchar(100) NOT NULL,
  `q14` varchar(100) NOT NULL,
  `q15` varchar(100) NOT NULL,
  `q16` varchar(100) NOT NULL,
  `q17` varchar(100) NOT NULL,
  `q18` varchar(100) NOT NULL,
  `q19` varchar(100) NOT NULL,
  `q20` varchar(100) NOT NULL,
  `q21` varchar(100) NOT NULL,
  `q22` varchar(100) NOT NULL,
  `q23` varchar(100) NOT NULL,
  `q24` varchar(100) NOT NULL,
  `q25` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `test_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set2`
--

INSERT INTO `set2` (`id`, `usn`, `user_id`, `category`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `total`, `test_date`, `created_at`, `updated_at`) VALUES
(1, '2GI22MC047', 104, 'Set2', 'a', 'c', 'a', 'c', 'd', 'a', 'd', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '2023-08-09 05:24:19', '2023-08-09 05:24:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `id` int(100) NOT NULL,
  `q_id` int(100) NOT NULL,
  `sol` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`id`, `q_id`, `sol`, `created_at`, `updated_at`) VALUES
(1, 11, '<recipient></recipient>', '2023-07-08 06:26:23', NULL),
(2, 12, 'Frameset', '2023-07-08 06:30:09', NULL),
(3, 13, 'Overlap', '2023-07-08 06:30:35', NULL),
(4, 14, '<style>', '2023-07-08 06:30:56', NULL),
(5, 15, 'style', '2023-07-08 06:31:23', NULL),
(6, 16, 'body {color: black}', '2023-07-08 06:31:54', NULL),
(7, 17, 'If', '2023-07-08 06:32:11', NULL),
(8, 18, 'if (conditional expression is true)   {then execute this code>->}', '2023-07-08 06:32:37', NULL),
(9, 19, 'Splice', '2023-07-08 06:32:53', NULL),
(10, 20, 'window.captureEvents(Event.CLICK);', '2023-07-08 06:33:09', NULL),
(11, 21, 'structure', '2023-07-08 07:25:43', NULL),
(12, 22, ' *(x + n) is same as &x[n]', '2023-07-08 07:26:13', NULL),
(13, 23, 'True', '2023-07-08 07:26:32', NULL),
(14, 24, 'Standard Template Library (STL)', '2023-07-08 07:26:48', NULL),
(15, 25, 'All of the above.', '2023-07-08 07:27:05', NULL),
(16, 26, 'Containers, Algorithms, and Iterators.', '2023-07-08 07:27:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `q1` varchar(20) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(20) NOT NULL,
  `q4` varchar(20) NOT NULL,
  `q5` varchar(20) NOT NULL,
  `q6` varchar(20) NOT NULL,
  `q7` varchar(20) NOT NULL,
  `q8` varchar(20) NOT NULL,
  `q9` varchar(20) NOT NULL,
  `q10` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `batch` int(20) NOT NULL DEFAULT 2023,
  `ismentor` varchar(20) NOT NULL DEFAULT 'No',
  `hasMentor` varchar(20) NOT NULL DEFAULT 'Yes',
  `xcgpa` float NOT NULL,
  `xiicgpa` double NOT NULL,
  `bachelorcgpa` float NOT NULL,
  `sem1cgpa` float NOT NULL,
  `sem2cgpa` int(10) NOT NULL,
  `sem3cgpa` int(10) NOT NULL,
  `sem4cgpa` int(10) NOT NULL,
  `mentor_id` int(100) NOT NULL DEFAULT 0,
  `profile` varchar(100) NOT NULL,
  `level` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `usn`, `batch`, `ismentor`, `hasMentor`, `xcgpa`, `xiicgpa`, `bachelorcgpa`, `sem1cgpa`, `sem2cgpa`, `sem3cgpa`, `sem4cgpa`, `mentor_id`, `profile`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Alzaahid Nadaf', 'zaahid97!', 'alzaahid@gmail.com', '2GI22MC0111', 2024, 'No', 'Yes', 5.8, 8.1, 7, 3.3, 0, 0, 0, 1, 'profile2GI22MC0111.jpg', 1, '2022-05-08 10:35:36', '2023-08-13 13:04:03'),
(2, 'Abhishek Nazare', 'abhi@123', 'abhishekn@git.edu', '2GI03MCA02', 2024, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 2, '', 1, '2023-07-07 09:07:36', '2023-08-06 03:41:24'),
(3, 'Arjun', 'git@123', 'arjunpermi7@gmail.com', '2GI22MC015', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 00:26:25', '2023-08-06 03:40:56'),
(4, 'Naveen angadi', 'git@123', 'naveenangadi274@gmail.com', '2GI22MC049', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 00:28:13', '2023-08-06 03:40:56'),
(5, 'Musheb karikatti', 'git@123', 'mushebkarikatti@gmail.com', '2GI22MC044', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 00:28:48', '2023-08-06 03:40:56'),
(6, 'Admin', 'git@123', 'admin@git-mca.xyz', 'admin', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 1, '2023-07-08 02:54:45', '2023-08-06 03:40:25'),
(7, 'Nikhil', 'git@123', 'nikhilh242@gmail.com', '2GI22MC054', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 03:28:15', '2023-08-06 03:40:56'),
(8, 'Vaishnavi Mithare', 'git@123', 'vaishnavimithare15@gmail.com', '2GI22MC113', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 5, '', 3, '2023-07-08 03:31:20', '2023-08-06 03:40:56'),
(9, 'BIBIJAINAB K PATHAN', 'git@123', 'jkpathan1701@gmail.com', '2GI22MC021', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 03:31:56', '2023-08-06 03:40:56'),
(10, 'Satish S Patil', 'git@123', 'sp948705@gmail.com', '2GI22MC087', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 03:32:27', '2023-08-06 03:40:56'),
(11, 'Anusha V C', 'git@123', 'vasuanuvc27@gmail.com', '2GI22MC014', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 03:33:36', '2023-08-06 03:40:56'),
(12, 'Shradha', 'git@123', 'shradhak2001@gmail.com', '2GI22MC095', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 03:34:08', '2023-08-06 03:40:56'),
(13, 'Pravesh Naik', 'git@123', 'praveshnaik0360@gmail.com', '2GI22MC046', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 03:34:40', '2023-08-06 03:40:56'),
(14, 'Rajat Bandekar', 'git@123', 'bandekarraj40@gmail.com', '2GI22MC071', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-08 03:35:05', '2023-08-06 03:40:56'),
(15, 'Nidhi', 'git@123', 'ternikarnidhi@gmail.com', '2GI22MC053', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:35:49', '2023-08-06 03:40:56'),
(16, 'Netravati gangappa g', 'git@123', 'nnetravatigokavi@gmail.com', '2GI22MC052', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 03:36:11', '2023-08-06 03:40:56'),
(17, 'Dakshata Patil', 'git@123', 'dakshatapatil4289@gmail.com', '2GI22MC024', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 03:36:32', '2023-08-06 03:40:56'),
(18, 'Dnyaneshwari D Kolek', 'git@123', 'dnyaneshwarikolekar2001@gmail.com', '2GI22MC025', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 03:37:02', '2023-08-06 03:40:56'),
(19, 'Soniya Badawadagi', 'git@123', 'sonibadawadagi12@gmail.com', '2GI22MC104', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 03:37:32', '2023-08-06 03:40:56'),
(20, 'Nandashree', 'git@123', 'nandashreenk2001@gmail.com', '2GI22MC048', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 03:37:57', '2023-08-06 03:40:56'),
(21, 'Sylvester', 'git@123', 'sylvestermca2000@gmail.com', '2GI22MC110', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:39:10', '2023-08-06 03:40:56'),
(22, 'Nivedita Jadar', 'git@123', 'jadarkaveri15@gmail.com', '2GI22MC057', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 03:44:39', '2023-08-06 03:40:56'),
(23, 'Shivagouda Malagouda', 'git@123', 'shivagoudapatil15@gmail.com', '2GI22MC091', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 03:45:04', '2023-08-06 03:40:56'),
(24, 'Aishwarya', 'git@123', 'tanavidesai99@gmail.com', '2GI22MC006', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 03:45:27', '2023-08-06 03:40:56'),
(25, 'Shubham patil', 'git@123', 'shubhamtukarampatil@gmail.com', '2GI22MC099', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 03:45:49', '2023-08-06 03:40:56'),
(26, 'Pratibha H Lingadal', 'git@123', 'lingadalpratibha@gmail.com', '2GI22MC068', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 4, '', 3, '2023-07-08 03:46:12', '2023-08-06 03:40:56'),
(27, 'Varsha jat', 'git@123', 'varshajat02309@gmail.com', '2GI22MC114', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 03:46:36', '2023-08-06 03:40:56'),
(28, 'Abhishek khot', 'git@123', 'abhishekkhot9921@gmail.com', '2GI22MC035', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 03:46:58', '2023-08-06 03:40:56'),
(29, 'Prathamesh Prakash B', 'git@123', 'prathameshpbenake@gmail.com', '2GI22MC019', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 03:47:24', '2023-08-06 03:40:56'),
(30, 'Rakeeb Ontigar', 'git@123', 'ontigarraqib03@gmail.com', '2GI22MC073', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 03:47:47', '2023-08-06 03:40:56'),
(31, 'Sharan Hiremani', 'git@123', 'sharanrhiremani@gmail.com', '2GI22MC090', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-08 03:48:06', '2023-08-06 03:40:56'),
(32, 'Rupesh Chavan', 'git@123', 'rupeshchavan048@gmail.com', '2GI22MC077', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:48:24', '2023-08-06 03:40:56'),
(33, 'Vishal Ghadi', 'git@123', 'vishalghadi28112001@gmail.com', '2GI22MC118', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 03:48:44', '2023-08-06 03:40:56'),
(34, 'Nadaf Najama Hajisah', 'git@123', 'najamanadaf83@gmail.com', '2GI22MC045', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 03:49:49', '2023-08-06 03:40:56'),
(35, 'Suzen Nadaf', 'git@123', 'suzain1947@gmail.com', '2GI22MC108', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 03:51:55', '2023-08-06 03:40:56'),
(36, 'Kalmeshwar', 'git@123', 'kalmeshwarbirje@gmail.com', '2GI22MC031', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 03:52:14', '2023-08-06 03:40:56'),
(37, 'Pooja', 'git@123', 'poojavajramatti28@gmail.com', '2GI22MC063', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:52:51', '2023-08-06 03:40:56'),
(38, 'Laxmi Mullatti', 'git@123', 'mullattilaxmi@gmail.com', '2GI22MC037', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 03:53:12', '2023-08-06 03:40:56'),
(39, 'Sneha Gangal', 'git@123', 'snehagangal98@gmail.com', '2GI22MC101', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 4, '', 3, '2023-07-08 03:53:30', '2023-08-06 03:40:56'),
(40, 'Shweta Lokur', 'git@123', 'shwetalokur2@gmail.com', '2GI22MC100', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-08 03:53:48', '2023-08-06 03:40:56'),
(41, 'Anupama Manoj Kawale', 'git@123', 'anupamakawale1281998@gmail.com', '2GI22MC012', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 03:54:44', '2023-08-06 03:40:56'),
(42, 'Banashankari Kamat', 'git@123', 'banashankarikamat2001@gmail.com', '2GI22MC018', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 03:55:08', '2023-08-06 03:40:56'),
(43, 'Nikita Patil', 'git@123', 'nikitapatil95815@gmail.com', '2GI22MC055', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 03:55:51', '2023-08-06 03:40:56'),
(44, 'Aishwarya P Mahendrakar', 'git@123', 'aishwaryamahendrakar4@gmail.com', '2GI22MC005', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-08 03:56:17', '2023-08-06 03:40:56'),
(45, 'Gouri', 'git@123', '09gouri.desai@gmail.com', '2GI22MC026', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 03:56:37', '2023-08-06 03:40:56'),
(46, 'Tastain Sannakki', 'git@123', 'sannakkitastain@gmail.com', '2GI22MC111', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:56:58', '2023-08-06 12:23:51'),
(47, 'Akshata Bhadti', 'git@123', 'akshatabhadti2645@gmail.com', '2GI22MC010', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 03:57:15', '2023-08-06 03:40:56'),
(48, 'Shivani Nair', 'git@123', 'shivani.nair1201@gmail.com', '2GI22MC094', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 03:57:42', '2023-08-06 03:40:56'),
(49, 'Omkar Kesarkar', 'git@123', 'omkarkesarkar65@gmail.com', '2GI22MC058', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 03:58:00', '2023-08-06 03:40:56'),
(50, 'Palash Kalghatgi', 'git@123', 'kalghatgipalash@gmail.com', '2G122MC060', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 03:58:32', '2023-08-06 03:40:56'),
(51, 'Afra Pathan', 'git@123', 'afrapathan2506@gmail.com', '2GI22MC004', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 03:58:52', '2023-08-06 03:40:56'),
(52, 'Neha Vijay Yadav', 'git@123', 'nehayadavkerur@gmail.com', '2GI22MC051', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 03:59:14', '2023-08-06 03:40:56'),
(53, 'Keerti S Alebasappan', 'git@123', 'keertisakeerti@gmail.com', '2GI22MC034', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 03:59:32', '2023-08-06 03:40:56'),
(54, 'Sammed Shetti', 'git@123', 'sammedshetti1008@gmail.com', '2GI22MC084', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 03:59:50', '2023-08-06 03:40:56'),
(55, 'Rachana Mohite', 'git@123', 'mohiterach1998@gmail.com', '2GI22MC070', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 5, '', 3, '2023-07-08 04:00:35', '2023-08-06 03:40:56'),
(56, 'ARUNAKUMARA M MATAPA', 'git@123', 'arunmathapati9@gmail.com', '2GI22MC016', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 04:01:15', '2023-08-06 03:40:56'),
(57, 'Savitri Sonnad', 'git@123', 'savitrisonnad123@gmail.com', '2GI22MC088', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-08 04:01:36', '2023-08-06 03:40:56'),
(58, 'Mansi Bhatkande', 'git@123', 'mansibhatkande893@gmail.com', '2GI22MC041', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 04:01:55', '2023-08-06 03:40:56'),
(59, 'Chetan P Shirahatti', 'git@123', 'chetanpshi9@gmail.com', '2GI22MC023', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 04:02:14', '2023-08-06 03:40:56'),
(60, 'Omkar Potadar', 'git@123', 'omkarpotadar5302@gmail.com', '2GI22MC059', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 04:02:43', '2023-08-06 03:40:56'),
(61, 'Manikanta. Reddy.H', 'git@123', 'manireddyh333@gmail.com', '2GI22MC039', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 04:03:01', '2023-08-06 03:40:56'),
(62, 'Chetan', 'git@123', 'chetangoblin@gmail.com', '2GI22MC022', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 04:03:35', '2023-08-06 03:40:56'),
(63, 'Sunita Hosamani', 'git@123', 'sunitarhosamanikrt@gmail.com', '2GI22MC106', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-08 04:04:09', '2023-08-06 03:40:56'),
(64, 'Neha Malode', 'git@123', 'nehamalode1234@gmail.com', '2GI22MC050', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 04:04:33', '2023-08-06 03:40:56'),
(65, 'Sandesh U Mungari', 'git@123', 'sandeshum07@gmail.com', '2GI22MC085', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 04:04:52', '2023-08-06 03:40:56'),
(66, 'Affan Mujawar', 'git@123', 'mujawaraffanofficial@gmail.com', '2GI22MC003', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 04:05:11', '2023-08-06 03:40:56'),
(67, 'Sushmitha R Hiremath', 'git@123', 'sushmithah992@gmail.com', '2GI22MC107', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-08 04:05:30', '2023-08-06 03:40:56'),
(68, 'Komal Chavan', 'git@123', 'komalpc878@gmail.com', '2GI22MC036', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 04:05:51', '2023-08-06 03:40:56'),
(69, 'Ranjita Gombi', 'git@123', 'ranjitagombi01rbk@gmail.com', '2GI22MC074', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 04:06:32', '2023-08-06 03:40:56'),
(70, 'Shivani Shyam Pawar', 'git@123', 'shivanipawar9121999@gmail.com', '2GI22MC093', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 04:06:54', '2023-08-06 03:40:56'),
(71, 'Rohit R Gudasi', 'git@123', 'rohitgudasi18@gmail.com', '2GI22MC076', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 04:07:23', '2023-08-06 03:40:56'),
(72, 'Sumant Dharmatti', 'git@123', 'sumantdharmatti@gmail.com', '2GI22MC105', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 04:07:40', '2023-08-06 03:40:56'),
(73, 'Vinay Mali', 'git@123', 'malivinu2000@gmail.com', '2GI22MC116', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 04:07:59', '2023-08-06 03:40:56'),
(74, 'Pallavi Veerayya Hiremath', 'git@123', 'pallu.h18@gmail.com', '2GI22MC061', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 04:08:51', '2023-08-06 03:40:56'),
(75, 'Rajat Bahadduri', 'git@123', 'rajatbahadduri@gmail.com', '2GI22MC072', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 04:09:07', '2023-08-06 03:40:56'),
(76, 'Manjusha Pawar', 'git@123', 'pawarmanjusha818@gmail.com', '2GI22MC040', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 04:09:28', '2023-08-06 03:40:56'),
(77, 'Manasi Udaysingh Hon', 'git@123', 'hongekarmanasi539@gmail.com', '2GI22MC038', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-08 04:10:07', '2023-08-06 03:40:56'),
(78, 'Sayali', 'git@123', 'sayalislondhe@gmail.com', '2GI22MC089', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-08 04:10:25', '2023-08-06 03:40:56'),
(79, 'SHRINATH WADDAR', 'git@123', 'shrinathwaddar1224@gmail.com', '2GI22MC097', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-08 04:10:41', '2023-08-06 03:40:56'),
(80, 'Govardhan Sakhe', 'git@123', 'sakhegovardhan103@gmail.com', '2GI22MC027', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-08 06:24:59', '2023-08-06 03:40:56'),
(81, 'Saiprakash', 'git@123', 'saiprakashpednekar31@gmail.com', '2GI22MC081', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 4, '', 3, '2023-07-08 06:25:31', '2023-08-06 03:40:56'),
(82, 'Pratik desai', 'git@123', 'desaipratik1008@gmail.com', '2GI22MC069', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-08 06:31:06', '2023-08-06 03:40:56'),
(83, 'Sahana M Kubsad', 'git@123', 'sahanamkubsad0401@gmail.com', '2GI22MC080', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-08 06:31:34', '2023-08-06 03:40:56'),
(84, 'Jyoti ajjappanavar', 'git@123', 'jyotiajjappanavar321@gmail.com', '2GI22MC029', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 4, '', 3, '2023-07-08 06:51:34', '2023-08-06 03:40:56'),
(85, 'Abhishek F Chalawadi', 'git@123', 'abhishekchalawadi465@gmail.com', '2GI22MC002', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 06:52:07', '2023-08-06 03:40:56'),
(86, 'Jyoti Shivaji Salgud', 'git@123', 'salgudijyoti@gmail.com', '2GI22MC030', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 06:52:48', '2023-08-06 03:40:56'),
(87, 'Swati hattiholi', 'git@123', 'hattiholiswati@gmail.com', '2GI22MC0109', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 06:53:59', '2023-08-06 03:40:56'),
(88, 'Sanket Kulkarni', 'TeStPPCHsk@1/', 'sanketkulkarnisk812@gmail.com', '2GI22MC086', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 06:54:18', '2023-08-06 11:54:56'),
(89, 'Samhita R Adhyapak', 'git@123', 'samhitaadhyapak@gmail.com', '2GI22MC083', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-08 06:54:39', '2023-08-06 03:40:56'),
(90, 'Abhijeet A Ghodageri', 'git@123', 'abhijeetghodageri5@gmail.com', '2GI22MC001', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-08 06:55:04', '2023-08-06 03:40:56'),
(91, 'Ishwari Kothiwale', 'git@123', 'kothiwaleishwari@gmail.com', '2GI22MC028', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-08 06:55:21', '2023-08-06 03:40:56'),
(92, 'Akshata Anil Kokate', 'git@123', 'akshatakokate4386@gmail.com', '2GI22MC009', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-08 06:55:41', '2023-08-06 03:40:56'),
(93, 'Megha Prakash Bhekan', 'git@123', 'mpbhekane37@gmail.com', '2GI22MC042', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-08 06:56:01', '2023-08-06 03:40:56'),
(94, 'Shivakumar Jalihal', 'git@123', 'shivjalihal@gmail.com', '2GI22MC092', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-10 20:40:47', '2023-08-06 03:40:56'),
(95, 'Akash Hugar', 'git@123', 'akashhugar17@gmail.com', '2GI22MC008', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-10 20:42:49', '2023-08-06 03:40:56'),
(96, 'Tejal kesarkar', 'git@123', 'tejalkesarkar18@gmail.com', '2GI22MC112', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-10 20:43:24', '2023-08-06 03:40:56'),
(97, 'Snehal Shahu Patil', 'git@123', '23snehalpatil@gmail.com', '2GI22MC102', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-10 20:44:03', '2023-08-06 03:40:56'),
(98, 'Rutuja Jotiba Karate', 'git@123', 'rutujajk4@gmail.com', '2GI22MC032', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-10 20:44:39', '2023-08-06 03:40:56'),
(99, 'Nishant', 'git@123', 'nstotar3@gmail.com', '2GI22MC056', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-14 05:57:59', '2023-08-06 03:40:56'),
(100, 'Rutika Patil', 'git@123', 'rutikapatil270@gmail.com', '2GI22MC078', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-14 06:02:15', '2023-08-06 03:40:56'),
(101, 'Pramod Todakar', 'git@123', 'pramodtodakar81@gmail.com', '2GI22MC065', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-14 06:33:06', '2023-08-06 03:40:56'),
(102, 'Prashant Jatrate', 'git@123', 'prashantjatrate143@gmail.com', '2GI22MC067', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 5, '', 3, '2023-07-14 06:33:46', '2023-08-06 03:40:56'),
(103, 'Somesh Hanji', 'git@123', 'someshhanji26@gmail.com', '2GI22MC103', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-14 06:38:20', '2023-08-06 03:40:56'),
(104, 'Najmusahar kalkoti', 'git@123', 'najmusaharkalkoti@gmail.com', '2GI22MC047', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 1, '2023-07-14 06:48:35', '2023-08-06 19:14:56'),
(105, 'Jidnyasa Vishnu Pati', 'git@123', 'patiljidnyasa7@gmail.com', '2GI22MC062', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-14 06:56:11', '2023-08-06 03:40:56'),
(106, 'Kartik ITI', 'git@123', 'kartik.git108@gmail.com', '2GI22MC033', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-14 07:00:15', '2023-08-06 03:40:56'),
(107, 'Vishal Yadav', 'git@123', 'vishuvy99@gmail.com', '2GI22MC119', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-14 07:01:27', '2023-08-06 03:40:56'),
(108, 'Ajay kumar', 'git@123', 'ajayrchavan789@gmail.com', '2GI22MC007', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-14 07:02:42', '2023-08-06 03:40:56'),
(109, 'SAMEER', 'git@123', 'sameernadaf5761@gmail.com', '2GI22MC082', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-14 07:08:46', '2023-08-06 03:40:56'),
(110, 'Asheesh kulakarni', 'git@123', 'ashishkulkarni3502@gmail.com', '2GI22MC017', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-14 07:12:23', '2023-08-06 03:40:56'),
(111, 'Vinayak Marikatti', 'git@123', 'vinayakmarikatti@gmail.com', '2GI22MC117', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 5, '', 3, '2023-07-14 07:13:40', '2023-08-06 03:40:56'),
(112, 'STudent', 'git@123', 'student@git.edu', 'std123', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 3, '2023-07-16 00:33:16', '2023-08-06 03:40:56'),
(113, 'Tester', 'tester@123', 'tester@git.edu', '-', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 0, '', 4, '2023-07-18 05:13:13', '2023-08-06 09:55:32'),
(114, 'Bhoomika Nagathan', 'git@123', 'bhoomikacn11@gmail.com', '2GI22MC020', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 5, '', 3, '2023-07-18 12:13:01', '2023-08-06 03:40:56'),
(115, 'Shruti', 'git@123', 'stpatil166@gmail.com', '2GI22MC098', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 4, '', 3, '2023-07-18 12:13:49', '2023-08-06 03:40:56'),
(116, 'Anusha Kalburgi', 'git@123', 'anusha11kalburgi@gmail.com', '2GI22MC013', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-26 13:07:22', '2023-08-06 03:40:56'),
(117, 'Pranali Bhaganache', 'git@123', 'pranalibhaganache@gmail.com', '2GI22MC066', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-26 13:19:06', '2023-08-06 03:40:56'),
(118, 'Veena Bajantri', 'git@123', 'veenabajantri123@gmail.com', '2GI22MC115', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-26 13:22:13', '2023-08-06 03:40:56'),
(119, 'Shreya Ramagouda Naik', 'git@123', 'shreyanaik0802@gmail.com', '2GI22MC096', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-26 13:24:19', '2023-08-06 03:40:56'),
(120, 'Ritesh Shinge', 'git@123', 'riteshshinge106@gmail.com', '2GI22MC075', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-29 15:22:37', '2023-08-06 03:40:56'),
(121, 'Poorva Balikai', 'git@123', 'poorvi3337@gmail.com', '2GI22MC064', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-29 16:00:21', '2023-08-06 03:40:56'),
(122, 'Sadhana gokavi', 'git@123', 'Sadhanagokavi@gmail.com', '2GI22MC079', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 10, '', 3, '2023-07-29 16:13:44', '2023-08-06 03:40:56'),
(123, 'Hrishikesh Mogare', 'hrishi@123', 'hrishikeshsm@git.edu', '2GI20MC124', 2024, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 3, '', 2, '2023-07-29 17:12:51', '2023-08-06 09:29:22'),
(124, 'Supriya Mungare ', 'git@123', 'mungaresupriya@gmail.com', '2GI22MC043', 2024, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 11:01:57', '2023-08-06 03:40:56'),
(125, 'Akbarsab Ontakudari', 'git@123', 'akbarsab1998@gmail.com', '2GI21MC008', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 11:51:38', '2023-08-06 03:40:56'),
(126, 'Amaresha Angadi', 'git@123', 'amareshangadi1998@gmail.com', '2GI21MC013', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 11:56:16', '2023-08-06 03:40:56'),
(127, 'Sanjay Bidikar', 'git@123', '2gi21mc091@students.git.edu', '2GI21MC091', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 11:57:36', '2023-08-06 03:40:56'),
(128, 'Pavan Mitragotri', 'pavan@123', 'pvmitragotri@git.edu', '2GI19MC10', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 6, '', 2, '2023-07-30 12:09:00', '2023-08-06 09:29:37'),
(129, 'Nivedita A Gaonkar', 'git@123', 'Secretsnowy37@gmail.com', '2GI21MC056', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 13:34:48', '2023-08-06 03:40:56'),
(130, 'Mrunali jadhav', 'git@123', 'mmj4264@gmail.com', '2GI21MC047', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 13:35:35', '2023-08-06 03:40:56'),
(131, 'SRIRAM S KOLHAR', 'git@123', 'sriramkolhar@gmail.com', '2GI21MC108', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 13:36:26', '2023-08-06 03:40:56'),
(132, 'Pratika Murgod', 'git@123', 'pratikag28@gmail.com', '2GI21MC071', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 13:37:49', '2023-08-06 03:40:56'),
(133, 'Manisha Patil', 'git@123', 'manishapatil5368@gmail.com', '2GI21MC043', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 13:41:33', '2023-08-06 03:40:56'),
(134, 'Meghna Chougule', 'git@123', 'megchougule22@gmail.com', '2GI21MC046', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-30 13:42:36', '2023-08-06 03:40:56'),
(136, 'Ankita Hiremath', 'git@123', 'ankitaghiremath@gmail.com', '2GI21MC015', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-30 13:44:23', '2023-08-06 03:40:56'),
(137, 'Patil Tanishta Praff', 'git@123', 'tanishtapt9003@gmail.com', '2GI21MC062', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:44:57', '2023-08-06 03:40:56'),
(138, 'Akshata R Hanagandi', 'git@123', 'akshuhanagandi@gmail.com', '2GI21MC009', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 13:46:05', '2023-08-06 03:40:56'),
(139, 'Sangeeta M Upadhye', 'git@123', 'upadhyesangeeta057@gmail.com', '2GI21MC087', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 13:46:40', '2023-08-06 03:40:56'),
(140, 'varshini kulkarni', 'git@123', 'kulkarnivarshini6@gmail.com', '2GI21MC114', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 13:47:28', '2023-08-06 03:40:56'),
(141, 'Vishnukanth', 'git@123', 'vkanth1807@gmail.com', '2GI21MC119', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 13:48:01', '2023-08-06 03:40:56'),
(142, 'Nidhishree Mokhasi', 'git@123', 'nidhishreemokhasi@gmail.com', '2GI21MC052', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:48:29', '2023-08-06 03:40:56'),
(143, 'ANUP PATIL', 'git@123', 'anuprpatil555@gmail.com', '2GI21MC016', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 13:49:03', '2023-08-06 03:40:56'),
(144, 'Tejaswini sakreppago', 'git@123', 'tejaswinisakreppagol2000@gmail.com', '2GI21MC111', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 13:50:52', '2023-08-06 03:40:56'),
(145, 'Avinash Landage', 'git@123', 'avinashlandageofficial@gmail.com', '2GI21MC023', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:51:30', '2023-08-06 03:40:56'),
(146, 'Rashmi Arjun Bavalat', 'git@123', 'rashmibavalatti@gmail.com', '2GI21MC079', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 13:52:09', '2023-08-06 03:40:56'),
(147, 'Ashlie Dsouza', 'git@123', 'ashgit07@gmail.com', '2GI21MC020', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:53:06', '2023-08-06 03:40:56'),
(148, 'Shankar B Puthani', 'git@123', 'shankrubp@outlook.com', '2GI21MC094', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 13:53:38', '2023-08-06 03:40:56'),
(149, 'Kirti Ankalgi', 'git@123', 'kirtiankalgi@gmail.com', '2GI21MC014', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 13:54:05', '2023-08-06 03:40:56'),
(150, 'Akshatha L Biradar', 'git@123', 'biradarakshatha@gmail.com', '2GI21MC011', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:54:43', '2023-08-06 03:40:56'),
(151, 'Soumya Shrishail Udo', 'git@123', 'soumya124udoshi@gmail.com', '2GI21MC107', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 13:56:07', '2023-08-06 03:40:56'),
(152, 'Aditya', 'git@123', 'officialdesaiaditya@gmail.com', '2GI21MC031', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 13:56:44', '2023-08-06 03:40:56'),
(153, 'Rohit M Katageri', 'git@123', 'rohitkatageri310@gmail.com', '2GI21MC081', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-30 13:57:14', '2023-08-06 03:40:56'),
(154, 'Prajwal Narendra', 'git@123', 'prajwalsnarendra56@gmail.com', '2GI21MC067', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 13:57:46', '2023-08-06 03:40:56'),
(156, 'Pooja Davaskar', 'git@123', 'davaskarpooja@gmail.com', '2GI21MC064', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 14:08:49', '2023-08-06 03:40:56'),
(157, 'Anusha wali', 'git@123', 'walianusha9@gmail.com', '2GI21MC017', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 14:09:35', '2023-08-06 03:40:56'),
(158, 'Tejashri Malavi', 'git@123', 'tejashri241@gmail.com', '2GI21MC110', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 14:10:22', '2023-08-06 03:40:56'),
(159, 'Siddappa', 'git@123', 'sidduhavaldar483@gmail.com', '2GI21MC101', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 14:11:21', '2023-08-06 03:40:56'),
(160, 'Neha Desai', 'git@123', 'nehadesai2328@gmail.com', '2GI21MC049', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-30 14:12:03', '2023-08-06 03:40:56'),
(161, 'Akanksha Narayan Dessai', 'git@123', '2gi21mc006@students.git.edu', '2GI21MC006', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-30 14:13:11', '2023-08-06 03:40:56'),
(162, 'Smita kamatagi', 'git@123', 'kamatagi3854@gmail.com', '2GI21MC105', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-30 14:13:54', '2023-08-06 03:40:56'),
(163, 'Akshay Mouneshi Badiger', 'git@123', 'akshaybadiger007@gmail.com', '2GI21MC012', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 14:15:04', '2023-08-06 03:40:56'),
(164, 'Preeti Ankalagi', 'git@123', 'preetiankalagi672@gmail.com', '2GI21MC072', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 14:15:46', '2023-08-06 03:40:56'),
(165, 'Ekata', 'git@123', 'belvatkarekata77@gmail.com', '2GI21MC032', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 14:16:31', '2023-08-06 03:40:56'),
(166, 'Chetan Akkatangerhal', 'git@123', 'chetanakkatangerhal12@gmail.com', '2GI21MC027', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-30 14:17:07', '2023-08-06 03:40:56'),
(167, 'Raveena Madhav Honna', 'git@123', 'raveenahonnavar2602@gmail.com', '2GI21MC080', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 14:17:44', '2023-08-06 03:40:56'),
(168, 'Karuna Mutagekar', 'git@123', 'karunamutagekar123@gmail.com', '2GI21MC037', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 14:18:31', '2023-08-06 03:40:56'),
(169, 'Shamal Mallappa Pish', 'git@123', 'shamalpishani8@gmail.com', '2GI21MC093', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 14:31:00', '2023-08-06 03:40:56'),
(170, 'Prathmesh Jadhav', 'git@123', 'prathameshjadhav80955@gmail.com', '2GI21MC070', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 14:31:37', '2023-08-06 03:40:56'),
(171, 'Meghan Shrinivas Khot', 'git@123', 'meghankhot1999@gmail.com', '2GI21MC045', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 14:32:10', '2023-08-06 03:40:56'),
(172, 'Mayuri', 'git@123', 'mayuri.hawaldar@gmail.com', '2GI21MC044', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-30 14:34:29', '2023-08-06 03:40:56'),
(173, 'Abhishek Angadi', 'git@123', 'abhishekra369@gmail.com', '2GI21MC002', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-30 14:37:39', '2023-08-06 03:40:56'),
(174, 'Vinaya Hande', 'git@123', 'handevinaya77@gmail.com', '2GI21MC116', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 15:00:52', '2023-08-06 03:40:56'),
(175, 'Simran Shaikh', 'git@123', 'simranshaikh73047@gmail.com', '2GI21MC103', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 15:01:36', '2023-08-06 03:40:56'),
(176, 'Shivanand Kallappa K', 'git@123', 'shivanandkoli716@gmail.com', '2GI21MC096', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 15:04:30', '2023-08-06 03:40:56'),
(177, 'Shubhada Shamkant G', 'git@123', 'shubhadagurav1110@gmail.com', '2GI21MC099', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 15:05:18', '2023-08-06 03:40:56'),
(178, 'Sujit Satish Malage', 'git@123', 'malagesujit838@gmail.com', '2GI21MC109', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 15:06:13', '2023-08-06 03:40:56'),
(188, 'Pranali Chandrakant', 'git@123', 'pannuj19@gmail.com', '2GI21MC000', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-07-30 23:28:16', '2023-08-06 03:40:56'),
(189, 'Pooja Sadanand Devagekar', 'git@123', 'poojadevagekar01@gmail.com', '2GI21MC063', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 23:28:56', '2023-08-06 03:40:56'),
(190, 'Neha Soudagar', 'git@123', 'nehasoudagar1999@gmail.com', '2GI21MC051', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-30 23:29:37', '2023-08-06 03:40:56'),
(191, 'Nikita Rajendra Raik', 'git@123', 'nikitaraikar1914@gmail.com', '2GI21MC053', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 23:30:04', '2023-08-06 03:40:56'),
(192, 'Trupti Patil', 'git@123', 'trupticpatil07@gmail.com', '2GI21MC112', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 23:30:32', '2023-08-06 03:40:56'),
(193, 'Priyanka Shettar', 'git@123', 'priyankashettar7@gmail.com', '2GI21MC075', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-30 23:31:03', '2023-08-06 03:40:56'),
(194, 'Madhu Hiremath', 'git@123', 'madhuhiremath2000@gmail.com', '2GI21MC040', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-07-30 23:31:44', '2023-08-06 03:40:56'),
(195, 'Sanjana Anilkumar ', 'git@123', 'agadisanjana@gmail.com', '2GI21MC090', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-07-30 23:32:16', '2023-08-06 03:40:56'),
(196, 'Parth kangralkar', 'git@123', 'kangralkarparth1@gmail.com', '2GI21MC060', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 23:32:46', '2023-08-06 03:40:56'),
(197, 'Komal Sanjay Belavi', 'git@123', '2gi21mc038@students.git.edu', '2GI21MC038', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 23:33:15', '2023-08-06 03:40:56'),
(199, 'Pooja Yaligar', 'git@123', 'poojayaligar99@gmail.com', '2GI21MC066', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 23:41:34', '2023-08-06 03:40:56'),
(200, 'Bhagyashri Teli', 'git@123', 'bhagyateli121@gmail.com', '2GI21MC024', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-30 23:42:01', '2023-08-06 03:40:56'),
(201, 'Vinayak somappa kori', 'git@123', 'vinukori1704@gmail.com', '2GI21MC117', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 23:42:28', '2023-08-06 03:40:56'),
(202, 'Pratik prakash patil', 'git@123', 'pratikkalkundri@gmail.com', '2GI21MC061', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-30 23:42:59', '2023-08-06 03:40:56'),
(203, 'Saniya Ashraf Ali bijapur', 'git@123', 'saniyabijapur23@gmail.com', '2GI21MC089', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-07-30 23:43:27', '2023-08-06 03:40:56'),
(204, 'Roshansingh', 'git@123', 'rosh984511@gmail.com', '2GI21MC083', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-30 23:44:00', '2023-08-06 03:40:56'),
(205, 'Nikita Ghatage', 'git@123', 'nikitaghatage56@gmail.com', '2GI21MC054', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 23:44:26', '2023-08-06 03:40:56'),
(206, 'Seema Kongali', 'git@123', 'seemakongali@gmail.com', '2GI21MC092', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-30 23:44:54', '2023-08-06 03:40:56'),
(207, 'Chetankumar Nooli', 'git@123', 'chetannooli94@gmail.com', '2GI21MC029', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 13, '', 3, '2023-07-30 23:45:18', '2023-08-06 03:40:56'),
(208, 'Arbazahmed Momin', 'git@123', '2gi21mc018@students.git.edu', '2GI21MC018', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-30 23:45:41', '2023-08-06 03:40:56'),
(209, 'Ashish', 'git@123', 'ashishgurav2000@gmail.com', '2GI21MC019', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-07-31 06:22:15', '2023-08-06 03:40:56'),
(210, 'Rohan Bhushi', 'git@123', 'bhushirohan@gmail.com', '2GI21MC025', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 11, '', 3, '2023-07-31 06:23:13', '2023-08-06 03:40:56'),
(211, 'Samarth Handral', 'git@123', 'samarth.handral118@gmail.com', '2GI21MC085', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-07-31 06:23:57', '2023-08-06 03:40:56'),
(212, 'Brijesh M Patil', 'git@123', 'brijeshmpatil77@gmail.com', '2GI21MC026', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-07-31 06:24:59', '2023-08-06 03:40:56'),
(213, 'Madhushri Betageri', 'git@123', 'madhushrirb12@gmail.com', '2GI21MC041', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-31 06:25:49', '2023-08-06 03:40:56'),
(214, 'Aishwarya Basavraj Patil', 'git@123', 'aishwaryapatil02141@gmail.com', '2GI21MC005', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-07-31 06:26:20', '2023-08-07 08:08:59'),
(215, 'Ashwini C. Kangralka', 'git@123', 'ashwinikangralkar9@gmail.com', '2GI21MC021', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-31 23:37:04', '2023-08-06 03:40:56'),
(216, 'shubham', 'git@123', 'shubhamiroji66@gmail.com', '2GI21MC100', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 8, '', 3, '2023-07-31 23:37:33', '2023-08-06 03:40:56'),
(217, 'Prerana kamate', 'git@123', 'preranakamate9026@gmail.com', '2GI21MC083', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-07-31 23:38:02', '2023-08-06 03:40:56'),
(218, 'Sanika Salvade', 'git@123', 'sanika.salvade@gmail.com', '2GI21MC088', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 14, '', 3, '2023-08-01 05:18:11', '2023-08-06 03:40:56'),
(219, 'Firozsab Nadaf', 'git@123', 'firozsnadaf@gmail.com', '2GI21MC034', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-08-01 05:24:10', '2023-08-06 03:40:56'),
(220, 'Rahul R Chavan', 'git@123', '2gi21mc077@students.git.edu', '2GI21MC077', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-08-01 05:24:56', '2023-08-06 03:40:56'),
(221, 'Chetan Koppad', 'git@123', 'chetankoppad05@gmail.com', '2GI21MC028', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 9, '', 3, '2023-08-01 05:25:57', '2023-08-06 03:40:56'),
(222, 'Prashant Kadam', 'git@123', 'prashantkadam3161@gmail.com', '2GI21MC069', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-08-01 05:26:45', '2023-08-06 03:40:56'),
(223, 'Nilesh Anvekar', 'nilesh@123', 'nnanvekar@git.edu', '2GI19MC110', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 4, '', 2, '2023-08-01 13:44:11', '2023-08-06 09:29:51'),
(224, 'Shivani Patankar', 'shivani@123', 'sdpatankar@git.edu', '2GI20MC111', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 5, '', 2, '2023-08-01 14:45:27', '2023-08-06 09:30:04'),
(225, 'Vijaylaxmi Patil', 'vijaylaxmi@123', 'vcpatil@git.edu', '2GI20MC112', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 7, '', 2, '2023-08-01 14:46:36', '2023-08-06 09:30:17'),
(226, 'Sheetal Bandekar', 'sheetal@123', 'ssbandekar@git.edu', '2GI20MC113', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 8, '', 2, '2023-08-01 14:47:19', '2023-08-06 09:30:29'),
(227, 'Swarooprani Manoor', 'swarooprani@123', 'shmanoor@git.edu', '2GI20MC114', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 9, '', 2, '2023-08-01 14:49:48', '2023-08-06 09:30:57'),
(228, 'Vinod Kokitkar', 'vinod@123', 'vrkokitkar@git.edu', '2GI20MC115', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 10, '', 2, '2023-08-01 14:50:42', '2023-08-06 09:31:11'),
(229, 'Sunita Padmannavar', 'sunita@123', 'sspadmannavar@git.edu', '2GI20MC116', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 11, '', 2, '2023-08-01 14:51:39', '2023-08-06 09:31:24'),
(230, 'Swetha Goudar', 'swetha@123', 'sigoudar@git.edu', '2GI20MC116', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 12, '', 2, '2023-08-01 14:54:41', '2023-08-06 09:31:46'),
(231, 'Pijush Barthakur', 'pijush@123', 'pbarthakur@git.edu', '2GI20MC117', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 13, '', 2, '2023-08-01 14:55:57', '2023-08-06 09:31:59'),
(232, 'Mrutunjaya Emmi', 'emmi@123', 'msemmi@git.edu', '2GI20MC118', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 14, '', 2, '2023-08-01 14:56:40', '2023-08-06 09:32:12'),
(233, 'Jayashri Madalgi', 'jayashri@123', 'jayashri@git.edu', '2GI20MC119', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 15, '', 2, '2023-08-01 14:57:27', '2023-08-06 09:32:24'),
(234, 'Sachin Dessai', 'sachin@123', 'smdesai@git.edu', '2GI20MC119', 2023, 'Yes', 'No', 0, 0, 0, 0, 0, 0, 0, 1, '', 2, '2023-08-02 04:26:37', '2023-08-06 09:32:36'),
(235, 'Sindhu Bhatt', 'git@123', 'bhatsindhu6@gmail.com', '2GI21MC104', 2023, 'No', '', 0, 0, 0, 0, 0, 0, 0, 15, '', 3, '2023-08-04 05:24:16', '2023-08-06 03:40:56'),
(236, 'Gururaj Nagesh Mannolkar', 'git@123', '2gi21mc035@students.git.edu', '2GI21MC035', 2023, 'No', '', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-08-04 05:36:32', '2023-08-06 03:40:56'),
(237, 'Aishwarya B Patil', 'git@123', 'aishupatil451@gmail.com', '2GI21MC004', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-08-04 07:00:37', '2023-08-06 03:40:56'),
(238, 'Pooja Naik', 'git@123', 'poojabnaik0130@gmail.com', '2GI21MC065', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-08-04 07:29:36', '2023-08-06 03:40:56'),
(239, 'Sneha Totad', 'git@123', 'totadsneha@gmail.com', '2GI21MC106', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-08-04 07:56:27', '2023-08-06 03:40:56'),
(240, 'Trupti Kavadimatti', 'git@123', '2gi21mc113@students.git.edu', '2GI21MC113', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 7, '', 3, '2023-08-04 09:04:46', '2023-08-06 03:40:56'),
(241, 'Priya B Patil', 'git@123', '2gi21mc074@students.git.edu', '2GI21MC074', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 6, '', 3, '2023-08-04 09:05:04', '2023-08-06 03:40:56'),
(242, 'Akash Jadhav', 'git@123', 'jadhavakashofficial@gmail.com', '2GI21MC007', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-08-04 10:17:30', '2023-08-06 03:40:56'),
(243, 'Neha Bhatkande', 'git@123', 'nehabhatkande0803@gmail.com', '2GI21MC050', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 12, '', 3, '2023-08-05 02:02:06', '2023-08-06 03:40:56'),
(244, 'Nikita ugare', 'git@123', 'niki1008ugare@gmail.com', '2GI21MC055', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 2, '', 3, '2023-08-05 03:43:03', '2023-08-06 03:40:56'),
(245, 'Nivedita Naik ', 'git@123', 'niveditanaiknivedita0654@gmail.com', '2GI21MC057', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-08-05 09:58:20', '2023-08-06 03:40:56'),
(246, 'Samiya Ashraf Ali Bijapur', 'git@123', 'samiyabijapur66@gmail.com', '2GI21MC086', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 3, '', 3, '2023-08-06 03:15:34', '2023-08-06 03:40:56'),
(247, 'Madhu Halli', 'git@123', 'madhuhalli36@gmail.com', '2GI21MC039', 2023, 'No', 'Yes', 0, 0, 0, 0, 0, 0, 0, 1, '', 3, '2023-08-06 18:50:44', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificationcourse`
--
ALTER TABLE `certificationcourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `jobconversion`
--
ALTER TABLE `jobconversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentorallotment`
--
ALTER TABLE `mentorallotment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ussr` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`reset_password_id`);

--
-- Indexes for table `set1`
--
ALTER TABLE `set1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `set2`
--
ALTER TABLE `set2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userrr` (`user_id`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `mentor_id` (`mentor_id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certificationcourse`
--
ALTER TABLE `certificationcourse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `jobconversion`
--
ALTER TABLE `jobconversion`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mentorallotment`
--
ALTER TABLE `mentorallotment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `reset_password_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `set1`
--
ALTER TABLE `set1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set2`
--
ALTER TABLE `set2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solution`
--
ALTER TABLE `solution`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificationcourse`
--
ALTER TABLE `certificationcourse`
  ADD CONSTRAINT `certificationcourse_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `certificationcourse_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`);

--
-- Constraints for table `jobconversion`
--
ALTER TABLE `jobconversion`
  ADD CONSTRAINT `jobconversion_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `mentorallotment`
--
ALTER TABLE `mentorallotment`
  ADD CONSTRAINT `mentorallotment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `mentorallotment_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `ussr` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `set1`
--
ALTER TABLE `set1`
  ADD CONSTRAINT `set1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `set2`
--
ALTER TABLE `set2`
  ADD CONSTRAINT `userrr` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `solution`
--
ALTER TABLE `solution`
  ADD CONSTRAINT `solution_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
