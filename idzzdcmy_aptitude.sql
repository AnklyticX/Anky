-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2023 at 12:48 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idzzdcmy_aptitude`
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
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
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `evdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `evdate`, `created_at`, `updated_at`) VALUES
(1, 'Accenture Practice TEst', 'Mock TEst', '2023-07-21 18:30:00', '2023-07-21 19:27:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(100) NOT NULL,
  `notify` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `question` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
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
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `usn`, `branch`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Arjun', 'arjunpermi7@gmail.com', '2GI22MC015', 'mca', 'Arjuna723#', '2023-07-08 17:42:27', '0000-00-00 00:00:00'),
(2, 'Naveen angadi ', 'naveenangadi274@gmail.com', '2GI22MC049', 'mca', 'Naveen@123', '2023-07-08 17:42:40', '0000-00-00 00:00:00'),
(3, 'Musheb karikatti ', 'mushebkarikatti@gmail.com', '2GI22MC044', 'mca', 'Musheb@123', '2023-07-08 17:42:55', '0000-00-00 00:00:00'),
(4, 'Pramod Todakar', 'pramodtodakar81@gmail.com', '2GI22MC0651', 'mca', 'pramod@123', '2023-07-08 17:43:25', '0000-00-00 00:00:00'),
(5, 'Nikhil', 'nikhilh242@gmail.com', '2GI22MC054', 'mca', 'Nikhil#1234', '2023-07-08 17:43:38', '0000-00-00 00:00:00'),
(6, 'Vaishnavi Mithare ', 'vaishnavimithare15@gmail.com', '2GI22MC113', 'mca', 'Vaishnavi01', '2023-07-08 17:43:39', '0000-00-00 00:00:00'),
(7, 'BIBIJAINAB K PATHAN ', 'jkpathan1701@gmail.com', '2GI22MC021', 'mca', '7026667083', '2023-07-08 17:44:29', '0000-00-00 00:00:00'),
(8, 'Satish S Patil', 'sp948705@gmail.com', '2GI22MC087', 'mca', 'Satish@123', '2023-07-08 17:44:34', '0000-00-00 00:00:00'),
(9, 'SAMEER', 'sameernadaf5761@gmail.com', '2GI22MC082', 'mca', 'sanxxopfakshsb12', '2023-07-08 17:47:51', '0000-00-00 00:00:00'),
(10, 'Anusha V C ', 'vasuanuvc27@gmail.com', '2GI22MC014', 'mca', 'Vasu%Anu66', '2023-07-08 17:49:07', '0000-00-00 00:00:00'),
(11, 'Shradha', 'shradhak2001@gmail.com', '2GI22MC095', 'mca', '20010814', '2023-07-08 17:49:12', '0000-00-00 00:00:00'),
(12, 'Pravesh Naik', 'praveshnaik0360@gmail.com', '2GI22MC046', 'mca', 'PraveshN@ik2000', '2023-07-08 17:49:33', '0000-00-00 00:00:00'),
(13, 'Rajat Bandekar', 'bandekarraj40@gmail.com', '2GI22MC071', 'mca', 'git4040', '2023-07-08 17:50:03', '0000-00-00 00:00:00'),
(14, 'Vishal Yadav ', 'vishuvy99@gmail.com', '2GI22MC119', 'mca', 'mahi7781', '2023-07-08 17:51:07', '0000-00-00 00:00:00'),
(15, 'Nidhi', 'ternikarnidhi@gmail.com', '2GI22MC053', 'mca', 'nidhi2020', '2023-07-08 17:51:16', '0000-00-00 00:00:00'),
(17, 'Netravati gangappa g', 'nnetravatigokavi@gmail.com', '2GI22MC052', 'mca', 'netra@2001', '2023-07-08 17:54:14', '0000-00-00 00:00:00'),
(18, 'Dakshata Patil ', 'dakshatapatil4289@gmail.com', '2GI22MC024', 'mca', '3366@git', '2023-07-08 17:54:16', '0000-00-00 00:00:00'),
(19, 'Dnyaneshwari D Kolek', 'dnyaneshwarikolekar2001@gmail.', '2GI22MC025', 'mca', 'kolekar16', '2023-07-08 17:56:23', '0000-00-00 00:00:00'),
(20, 'Soniya Badawadagi', 'sonibadawadagi12@gmail.com', '2GI22MC104', 'mca', 'siddu8088', '2023-07-08 17:59:43', '0000-00-00 00:00:00'),
(22, 'Nandashree', 'nandashreenk2001@gmail.com', '2GI22MC048', 'mca', 'Nanda@2001', '2023-07-08 18:05:45', '0000-00-00 00:00:00'),
(23, 'Sylvester', 'sylvestermca2000@gmail.com', '2GI22MC110', 'mba', 'Sillujr29', '2023-07-08 18:12:15', '0000-00-00 00:00:00'),
(24, 'Prashant Jatrate ', 'prashantjatrate143@gmail.com', '2GI22MC067', 'mca', 'PJ@git16', '2023-07-08 18:12:40', '0000-00-00 00:00:00'),
(25, 'Asheesh kulakarni ', 'ashishkulkarni3502@gmail.com', '2GI22MC017', 'mca', 'Asheesh@234', '2023-07-08 18:12:58', '0000-00-00 00:00:00'),
(26, 'Vinayak Marikatti ', 'vinayakmarikatti@gmail.com', '2GI22MC117', 'mca', 'Vinsrohit45@123', '2023-07-08 18:33:22', '0000-00-00 00:00:00'),
(27, 'Somesh Hanji', 'someshhanji26@gmail.com', '2GI22MC103', 'mca', 'Somesh@#2001', '2023-07-08 18:42:07', '0000-00-00 00:00:00'),
(28, 'Nivedita ', 'jadarkaveri15@gmail.com', '2GI22MC057', 'mca', 'Nivii@15', '2023-07-08 18:42:26', '0000-00-00 00:00:00'),
(29, 'Shivagouda Malagouda', 'shivagoudapatil15@gmail.com', '2GI22MC091', 'mca', 'Shivu@2000', '2023-07-08 18:46:49', '0000-00-00 00:00:00'),
(30, 'Aishwarya', 'tanavidesai99@gmail.com', '2GI22MC006', 'mca', '*tanvi14', '2023-07-09 01:34:43', '0000-00-00 00:00:00'),
(31, 'Shubham patil', 'shubhamtukarampatil@gmail.com', '2GI22MC099', 'mca', '8884392473', '2023-07-09 02:05:34', '0000-00-00 00:00:00'),
(32, 'Pratibha H Lingadal', 'lingadalpratibha@gmail.com', '2GI22MC068', 'mca', 'Appu@123', '2023-07-09 02:24:18', '0000-00-00 00:00:00'),
(33, 'Varsha jat', 'varshajat02309@gmail.com', '2GI22MC114', 'mca', 'VARSHAJAT705239', '2023-07-09 02:25:35', '0000-00-00 00:00:00'),
(34, 'Abhishek khot', 'abhishekkhot9921@gmail.com', '2GI22MC035', 'mca', '9921', '2023-07-09 02:25:43', '2023-07-09 11:08:41'),
(35, 'Prathamesh Prakash B', 'prathameshpbenake@gmail.com', '2GI22MC019', 'mca', 'PRATHAMESH5344', '2023-07-09 02:44:37', '0000-00-00 00:00:00'),
(36, 'Rakeeb Ontigar', 'ontigarraqib03@gmail.com', '2GI22MC073', 'mca', 'GIt@mca.xyz1234', '2023-07-09 03:01:37', '0000-00-00 00:00:00'),
(37, 'Sharan Hiremani', 'sharanrhiremani@gmail.com', '2GI22MC090', 'mca', 'Sharan@123', '2023-07-09 03:17:28', '2023-07-15 16:50:01'),
(38, 'Rupesh Chavan ', 'rupeshchavan048@gmail.com', '2GI22MC077 ', 'mca', 'rupesh88', '2023-07-09 03:24:51', '0000-00-00 00:00:00'),
(39, 'Vishal Ghadi ', 'vishalghadi28112001@gmail.com', '2GI22MC118', 'mca', 'Vishal@123', '2023-07-09 03:33:14', '0000-00-00 00:00:00'),
(41, 'Najmusahar kalkoti', 'najmusaharkalkoti@gmail.com', '2GI22MC047', 'mca', 'najju.com@123', '2023-07-09 04:22:13', '0000-00-00 00:00:00'),
(42, 'Nadaf Najama Hajisah', 'najamanadaf83@gmail.com', '2GI22MC045', 'mca', 'Najama@2001', '2023-07-09 04:38:57', '0000-00-00 00:00:00'),
(43, 'Suzen', 'suzain1947@gmail.com', '2GI22MC108', 'mca', 'Suzen@2001', '2023-07-09 05:26:33', '0000-00-00 00:00:00'),
(44, 'Kalmeshwar', 'kalmeshwarbirje@gmail.com', '2GI22MC031', 'mca', 'Kalmi27@', '2023-07-09 05:39:22', '0000-00-00 00:00:00'),
(45, 'Pooja', 'poojavajramatti28@gmail.com', '2GI22MC063', 'mca', 'Poojavj@28', '2023-07-09 05:48:27', '0000-00-00 00:00:00'),
(46, 'Laxmi Mullatti', 'mullattilaxmi@gmail.com', '2GI22MC037', 'mca', 'laxmi@123', '2023-07-09 06:15:46', '0000-00-00 00:00:00'),
(47, 'Sneha Gangal', 'snehagangal98@gmail.com', '2GI22MC101', 'mca', 'Sneha@2001', '2023-07-09 06:21:10', '0000-00-00 00:00:00'),
(48, 'Shweta Lokur ', 'shwetalokur2@gmail.com', '2GI22MC100', 'mca', 'shweta@123', '2023-07-09 06:21:54', '0000-00-00 00:00:00'),
(49, 'Anupama Manoj Kawale', 'anupamakawale1281998@gmail.com', '2GI22MC012', 'mca', '123456789', '2023-07-09 06:30:11', '0000-00-00 00:00:00'),
(50, 'Banashankari Kamat ', 'banashankarikamat2001@gmail.co', '2GI22MC018 ', 'mca', 'banu123', '2023-07-09 06:34:35', '0000-00-00 00:00:00'),
(51, 'Nikita Patil ', 'nikitapatil95815@gmail.com', '2GI22MC055', 'mca', 'nikita001', '2023-07-09 06:38:53', '0000-00-00 00:00:00'),
(52, 'Aishwarya P Mahendra', 'aishwaryamahendrakar4@gmail.co', '2GI22MC005 ', 'mca', 'ash@0809', '2023-07-09 06:42:04', '0000-00-00 00:00:00'),
(53, 'Gouri', '09gouri.desai@gmail.com', '2GI22MC026', 'mca', 'gouriNnr', '2023-07-09 06:47:35', '0000-00-00 00:00:00'),
(54, 'Tastain Sannakki ', 'sannakkitastain@gmail.com', '2GI22MCA111', 'mca', 'Tastain@123', '2023-07-09 06:50:33', '0000-00-00 00:00:00'),
(55, 'Akshata', 'akshatabhadti2645@gmail.com', '2GI22MC010', 'mca', 'Aksh@GIT10', '2023-07-09 07:09:06', '0000-00-00 00:00:00'),
(56, 'Shivani Nahi ', 'shivani.nair1201@gmail.com', '2GI22MC094', 'mca', 'Shivani@12', '2023-07-09 07:14:02', '0000-00-00 00:00:00'),
(57, 'Omkar Kesarkar ', 'omkarkesarkar65@gmail.com', '2GI22MC058', 'mca', 'kesarkar@2001', '2023-07-09 07:16:25', '0000-00-00 00:00:00'),
(58, 'Palash Kalghatgi ', 'kalghatgipalash@gmail.com', '2G122MC060 ', 'mca', 'palash44', '2023-07-09 08:03:10', '0000-00-00 00:00:00'),
(59, 'Afra Pathan', 'afrapathan2506@gmail.com', '2GI22MC004', 'mca', '0125Afr@', '2023-07-09 08:25:41', '0000-00-00 00:00:00'),
(60, 'Neha Vijay Yadav ', 'nehayadavkerur@gmail.com', '2GI22MC051', 'mca', 'Nehayadav@1', '2023-07-09 08:48:21', '0000-00-00 00:00:00'),
(62, 'Keerti S Alebasappan', 'keertisakeerti@gmail.com', '2GI22MC034', 'mca', 'Keerti@123', '2023-07-09 08:51:52', '0000-00-00 00:00:00'),
(63, 'Sammed  Shetti', 'sammedshetti1008@gmail.com', '2GI22MC084', 'mca', 'Sammed@2001', '2023-07-09 11:11:24', '0000-00-00 00:00:00'),
(64, 'Rachana Mohite', 'mohiterach1998@gmail.com', '2GI22MC070', 'mca', 'Rachanapm17!', '2023-07-09 11:44:09', '0000-00-00 00:00:00'),
(65, 'ARUNAKUMARA M MATAPA', 'arunmathapati9@gmail.com', '2GI22MC016', 'mca', '22P2293', '2023-07-09 11:44:30', '0000-00-00 00:00:00'),
(66, 'Savitri Sonnad ', 'savitrisonnad123@gmail.com', '2GI22MC088', 'mca', 'savi@1234', '2023-07-09 11:44:45', '0000-00-00 00:00:00'),
(67, 'Mansi Bhatkande ', 'mansibhatkande893@gmail.com', '2GI22MC041', 'mca', 'Mansi@1234', '2023-07-09 11:44:45', '0000-00-00 00:00:00'),
(68, 'Chetan P Shirahatti', 'chetanpshi9@gmail.com', '2GI22MC023', 'mca', '3124', '2023-07-09 11:46:50', '0000-00-00 00:00:00'),
(69, 'Omkar Potadar ', 'omkarpotadar5302@gmail.com', '2GI22MC059', 'mca', 'op45@gmail.com', '2023-07-09 11:46:50', '0000-00-00 00:00:00'),
(70, 'Manikanta. Reddy.H', 'manireddyh333@gmail.com', '2GI22MC039', 'mca', '9902080025', '2023-07-09 11:46:50', '0000-00-00 00:00:00'),
(71, 'Chetan', 'chetangoblin@gmail.com', '2GI22MC022', 'mca', 'mca115', '2023-07-09 11:46:55', '0000-00-00 00:00:00'),
(73, 'Sunita Hosamani', 'sunitarhosamanikrt@gmail.com', '2GI22MC106', 'mca', 'Sonu@1234', '2023-07-09 11:56:36', '0000-00-00 00:00:00'),
(74, 'Neha Malode ', 'nehamalode1234@gmail.com', '2GI22MC050', 'mca', 'Schufy@123', '2023-07-09 11:56:54', '0000-00-00 00:00:00'),
(75, 'Sandesh U Mungari ', 'sandeshum07@gmail.com', '2GI22MC085', 'mca', 'Sandesh@2001', '2023-07-09 11:57:49', '0000-00-00 00:00:00'),
(76, 'Affan Mujawar ', 'mujawaraffanofficial@gmail.com', '2GI22MC003', 'mca', 'kls@git', '2023-07-09 12:09:05', '0000-00-00 00:00:00'),
(77, 'Sushmitha R Hiremath', 'sushmithah992@gmail.com', '2gi22mca107 ', 'mca', 'git@1979', '2023-07-09 12:09:35', '0000-00-00 00:00:00'),
(78, 'Komal Chavan ', 'komalpc878@gmail.com', '2GI22MC036', 'mca', 'Aptitude@1010', '2023-07-09 12:18:50', '0000-00-00 00:00:00'),
(79, 'Ranjita Gombi', 'ranjitagombi01rbk@gmail.com', '2GI22MC074', 'mca', 'Ranjita@123', '2023-07-09 12:19:30', '0000-00-00 00:00:00'),
(80, 'Shivani Shyam Pawar ', 'shivanipawar9121999@gmail.com', '2GI22MC093 ', 'mca', 'namishapawar1999', '2023-07-09 12:19:59', '0000-00-00 00:00:00'),
(81, 'Rohit R Gudasi ', 'rohitgudasi18@gmail.com', '2GI22MC076', 'mca', 'Rohitraj18', '2023-07-09 12:29:29', '0000-00-00 00:00:00'),
(82, 'Sumant Dharmatti ', 'sumantdharmatti@gmail.com', '2GI22MC105', 'mca', 'Sumant_21', '2023-07-09 12:29:35', '0000-00-00 00:00:00'),
(83, 'Vinay Mali ', 'malivinu2000@gmail.com', '2GI22MC116', 'mca', 'Vinay@2000', '2023-07-09 12:31:05', '0000-00-00 00:00:00'),
(84, 'Pallavi Veerayya Hir', 'pallu.h18@gmail.com', '2GI22MC061', 'mca', '@Pallavi.18', '2023-07-09 12:32:15', '0000-00-00 00:00:00'),
(85, 'Rajat Bahadduri ', 'rajatbahadduri@gmail.com', '2GI22MC072', 'mca', 'rajat@123', '2023-07-09 12:38:39', '0000-00-00 00:00:00'),
(86, 'Manjusha Pawar ', 'pawarmanjusha818@gmail.com', '2GI22MC040', 'mca', 'cutekitty', '2023-07-09 12:45:54', '0000-00-00 00:00:00'),
(87, 'Manasi Udaysingh Hon', 'hongekarmanasi539@gmail.com', '2GI23MCA038', 'mca', 'Sanjy@123', '2023-07-09 12:46:19', '0000-00-00 00:00:00'),
(88, 'Sayali', 'sayalislondhe@gmail.com', '2GI22MC089', 'mca', '2304@Sayali', '2023-07-09 12:58:24', '0000-00-00 00:00:00'),
(89, 'SHRINATH WADDAR', 'shrinathwaddar1224@gmail.com', '2GI22MC097', 'mca', 'shri@1234', '2023-07-09 13:04:46', '0000-00-00 00:00:00'),
(90, 'Govardhan Sakhe ', 'sakhegovardhan103@gmail.com', '2GI22MC027 ', 'mca', '123456789', '2023-07-09 13:13:50', '0000-00-00 00:00:00'),
(91, 'Saiprakash', 'saiprakashpednekar31@gmail.com', '2GI22MC081', 'mca', 'rockst@r31', '2023-07-09 13:21:41', '0000-00-00 00:00:00'),
(92, 'Ajay kumar', 'ajayrchavan789@gmail.com', '2GI22MC007', 'mca', 'Chavan@0789', '2023-07-09 13:47:17', '0000-00-00 00:00:00'),
(93, 'Pratik desai', 'desaipratik1008@gmail.com', '2GI22MC069', 'mca', 'prarik@9040', '2023-07-09 13:56:30', '0000-00-00 00:00:00'),
(94, 'Sahana M Kubsad ', 'sahanamkubsad0401@gmail.com', '2GI22MC080', 'mca', 'sahana0401@', '2023-07-09 14:15:57', '0000-00-00 00:00:00'),
(95, 'Jyoti ajjappanavar ', 'jyotiajjappanavar321@gmail.com', '2GI22MC029', 'mca', 'jyoti@888', '2023-07-09 14:16:02', '0000-00-00 00:00:00'),
(97, 'Abhishek F Chalawadi', 'abhishekchalawadi465@gmail.com', '2GI22MC002', 'mca', '7795924616', '2023-07-09 14:17:08', '0000-00-00 00:00:00'),
(98, 'Jyoti Shivaji Salgud', 'salgudijyoti@gmail.com', '2GI22MC030', 'mca', 'Jyoti123@', '2023-07-09 14:17:13', '0000-00-00 00:00:00'),
(99, 'Swati hattiholi', 'hattiholiswati@gmail.com', '2GI22MC0109', 'mca', 'swati@000', '2023-07-09 14:17:51', '0000-00-00 00:00:00'),
(101, 'Sanket Kulkarni ', 'sanketkulkarnisk812@gmail.com', '2GI22MC086', 'mca', 'place1regsk', '2023-07-09 14:27:34', '0000-00-00 00:00:00'),
(102, 'Samhita R Adhyapak ', 'samhitaadhyapak@gmail.com', '2GI22MC083', 'mca', 'Samhita@1234', '2023-07-09 14:29:53', '0000-00-00 00:00:00'),
(103, 'Abhijeet A Ghodageri', 'abhijeetghodageri5@gmail.com', '2GI22MC001', 'mca', 'abhijeetagpu2597', '2023-07-09 14:59:20', '0000-00-00 00:00:00'),
(104, 'Ishwari Kothiwale ', 'kothiwaleishwari@gmail.com', '2GI22MC028', 'mca', 'jyoti', '2023-07-09 15:03:44', '0000-00-00 00:00:00'),
(105, 'Akshata Anil Kokate ', 'akshatakokate4386@gmail.com', '2GI22MC009', 'mca', 'Kokate@04', '2023-07-09 15:04:13', '0000-00-00 00:00:00'),
(106, 'Megha Prakash Bhekan', 'mpbhekane37@gmail.com', '2GI22MC042', 'mca', 'GitPlacement23', '2023-07-09 15:09:48', '0000-00-00 00:00:00'),
(107, 'Jidnyasa Vishnu Pati', 'patiljidnyasa7@gmail.com', '2GI22MCA062', 'mca', 'Prajakta@1906', '2023-07-09 15:47:58', '0000-00-00 00:00:00'),
(108, 'Shivakumar Jalihal ', 'shivjalihal@gmail.com', '2GI22MC092', 'mca', 'shiv80951', '2023-07-09 16:14:21', '0000-00-00 00:00:00'),
(109, 'KARTIK ITI', 'kartik.git108@gmail.com', '2GI22MC033', 'mca', 'Kartik@325', '2023-07-10 06:25:40', '0000-00-00 00:00:00'),
(110, 'Akash Hugar', 'akashhugar17@gmail.com', '2GI22MC008', 'mca', 'Akash@2200', '2023-07-10 06:43:55', '0000-00-00 00:00:00'),
(111, 'Tejal kesarkar', 'tejalkesarkar18@gmail.com', '2GI22MC112', 'mca', 'Tejal@1234', '2023-07-10 07:26:51', '0000-00-00 00:00:00'),
(112, 'Snehal Shahu Patil ', '23snehalpatil@gmail.com', '2GI22MC102', 'mca', 'Ff@23122000', '2023-07-10 08:55:21', '0000-00-00 00:00:00'),
(113, 'Rutuja Jotiba Karate', 'rutujajk4@gmail.com', '2GI22MCA032', 'mca', 'Rutujajk4', '2023-07-10 12:03:26', '0000-00-00 00:00:00'),
(120, 'Bhoomika Nagathan ', 'bhoomikacn11@gmail.com', '2GI22MC020', 'mca', 'stuartlittle28', '2023-07-15 15:32:12', '0000-00-00 00:00:00'),
(122, 'Shruti ', 'stpatil166@gmaim.com', '2GI22MC098', 'mca', 'patil.166', '2023-07-15 15:35:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `reset_password_id` int(11) NOT NULL,
  `reset_hash` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set1`
--

CREATE TABLE `set1` (
  `id` int(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
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
  `test_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set1`
--

INSERT INTO `set1` (`id`, `usn`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `test_date`, `created_at`, `updated_at`) VALUES
(1, '2GI22MC111', 'b', 'a', 'd', 'c', 'd', 'a', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'c', 'd', 'c', 'd', 'b', 'c', 'c', 'c', '2023-07-15 14:23:28', '2023-07-15 14:23:28', '0000-00-00 00:00:00'),
(2, '2GI22MC035', 'b', 'c', 'c', 'd', 'd', 'b', 'c', 'b', 'c', 'b', 'b', 'b', 'b', 'a', 'd', 'c', 'b', 'c', 'b', 'c', 'd', 'b', 'c', 'c', 'c', '2023-07-15 14:41:16', '2023-07-15 14:41:16', '0000-00-00 00:00:00'),
(3, '2GI22MC087', 'b', 'a', 'c', 'c', 'd', 'd', 'c', 'a', 'b', 'a', 'b', 'c', 'a', 'a', 'a', 'a', 'a', 'a', 'd', 'b', 'a', 'c', 'b', 'a', 'd', '2023-07-15 14:44:57', '2023-07-15 14:44:57', '0000-00-00 00:00:00'),
(4, '2GI22MC019', 'c', 'a', 'd', 'c', 'c', 'd', 'b', 'c', 'd', 'd', 'b', 'a', 'a', 'a', 'b', 'a', 'c', 'a', 'c', 'b', 'b', 'd', 'b', 'c', 'c', '2023-07-15 14:53:59', '2023-07-15 14:53:59', '0000-00-00 00:00:00'),
(6, '2GI22MC051', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'd', 'a', 'c', 'd', 'b', 'd', 'd', 'a', 'c', 'a', 'b', 'c', 'd', 'd', '2023-07-15 14:54:04', '2023-07-15 14:54:04', '0000-00-00 00:00:00'),
(7, '2GI22MC009', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'd', 'b', 'b', 'c', 'c', 'b', 'c', '2023-07-15 14:54:50', '2023-07-15 14:54:50', '0000-00-00 00:00:00'),
(8, '2GI22MC091', 'c', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'a', 'd', 'a', 'a', 'd', 'c', 'b', 'd', 'b', 'd', 'a', 'b', 'c', 'c', 'd', '2023-07-15 14:57:19', '2023-07-15 14:57:19', '0000-00-00 00:00:00'),
(9, '2GI22MC063', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 15:01:04', '2023-07-15 15:01:04', '0000-00-00 00:00:00'),
(10, '2GI22MC001', 'a', 'c', 'c', 'c', 'c', 'b', 'b', 'c', 'b', 'a', 'b', 'b', 'a', 'a', 'b', 'b', 'c', 'c', 'd', 'a', 'b', 'd', 'c', 'd', 'b', '2023-07-15 15:06:01', '2023-07-15 15:06:01', '0000-00-00 00:00:00'),
(11, '2GI22MC085', 'c', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'b', 'c', 'a', 'a', 'd', 'b', 'c', 'a', 'd', 'd', 'd', 'b', 'c', 'd', 'd', '2023-07-15 15:06:12', '2023-07-15 15:06:12', '0000-00-00 00:00:00'),
(13, '2GI22MC021', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 15:14:55', '2023-07-15 15:14:55', '0000-00-00 00:00:00'),
(14, '2GI22MC077', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'c', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 15:27:16', '2023-07-15 15:27:16', '0000-00-00 00:00:00'),
(15, '2GI22MC078', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'b', 'c', '2023-07-15 15:28:58', '2023-07-15 15:28:58', '0000-00-00 00:00:00'),
(16, '2GI22MC016', 'b', 'a', 'b', 'c', 'b', 'd', 'd', 'd', 'd', 'b', 'c', 'b', 'a', 'b', 'd', 'c', 'a', 'd', 'd', 'a', 'b', 'b', 'c', 'b', 'd', '2023-07-15 15:33:49', '2023-07-15 15:33:49', '0000-00-00 00:00:00'),
(17, '2GI22MC022', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'c', 'b', 'a', 'a', 'a', 'c', 'a', 'd', 'd', 'b', 'a', 'b', 'c', 'b', 'd', '2023-07-15 15:37:13', '2023-07-15 15:37:13', '0000-00-00 00:00:00'),
(18, '2GI22MC070', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 15:43:37', '2023-07-15 15:43:37', '0000-00-00 00:00:00'),
(19, '2GI22MC103', 'c', 'b', 'c', 'c', 'd', 'd', 'b', 'd', 'd', 'd', 'c', 'c', 'b', 'b', 'c', 'b', 'a', 'c', 'd', 'b', 'a', 'd', 'a', 'a', 'c', '2023-07-15 15:53:58', '2023-07-15 15:53:58', '0000-00-00 00:00:00'),
(20, '2GI22MC014', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'b', 'a', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 15:54:54', '2023-07-15 15:54:54', '0000-00-00 00:00:00'),
(21, '2gi22mc008', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'a', 'd', 'd', 'c', 'c', 'd', '2023-07-15 15:55:54', '2023-07-15 15:55:54', '0000-00-00 00:00:00'),
(22, '2GI22MC062', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'd', 'c', 'c', 'd', '2023-07-15 16:01:33', '2023-07-15 16:01:33', '0000-00-00 00:00:00'),
(23, '2GI22MC045', 'b', 'a', 'd', 'c', 'd', 'c', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 16:02:01', '2023-07-15 16:02:01', '0000-00-00 00:00:00'),
(24, '2GI22MC045', 'b', 'a', 'd', 'c', 'd', 'c', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 16:02:08', '2023-07-15 16:02:08', '0000-00-00 00:00:00'),
(25, '2GI22MC067', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'd', 'c', 'c', 'd', '2023-07-15 16:02:31', '2023-07-15 16:02:31', '0000-00-00 00:00:00'),
(26, '2GI22MC054', 'c', 'a', 'c', 'c', 'a', 'd', 'b', 'b', 'c', 'a', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'd', 'c', 'd', 'b', 'c', 'd', 'd', '2023-07-15 16:03:48', '2023-07-15 16:03:48', '0000-00-00 00:00:00'),
(27, '2GI22MC046', 'c', 'a', 'b', 'c', 'a', 'd', 'b', 'b', 'c', 'a', 'b', 'a', 'a', 'a', 'd', 'a', 'a', 'b', 'd', 'c', 'a', 'b', 'c', 'b', 'd', '2023-07-15 16:04:28', '2023-07-15 16:04:28', '0000-00-00 00:00:00'),
(28, '2GI22MC062', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'd', 'c', 'c', 'd', '2023-07-15 16:05:30', '2023-07-15 16:05:30', '0000-00-00 00:00:00'),
(29, '2GI22MC057', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 16:06:49', '2023-07-15 16:06:49', '0000-00-00 00:00:00'),
(30, '2GI22MC041', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'd', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 16:07:59', '2023-07-15 16:07:59', '0000-00-00 00:00:00'),
(31, '2GI22MC057', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 16:08:26', '2023-07-15 16:08:26', '0000-00-00 00:00:00'),
(32, '22GIMC119', 'b', 'a', 'd', 'c', 'd', 'd', 'c', 'd', 'c', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'd', 'b', 'c', 'b', 'b', 'b', 'd', '2023-07-15 16:15:31', '2023-07-15 16:15:31', '0000-00-00 00:00:00'),
(33, '2GI22MC017', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'd', 'b', 'b', 'c', '2023-07-15 16:16:38', '2023-07-15 16:16:38', '0000-00-00 00:00:00'),
(34, '2GI22MC033', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'd', 'c', 'c', 'd', '2023-07-15 16:16:54', '2023-07-15 16:16:54', '0000-00-00 00:00:00'),
(36, '2GI22MC117', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'b', 'd', 'd', 'b', 'c', 'b', 'd', '2023-07-15 16:20:18', '2023-07-15 16:20:18', '0000-00-00 00:00:00'),
(37, '2GI22MC041', 'b', 'a', 'd', 'c', 'c', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'c', 'c', '2023-07-15 16:21:01', '2023-07-15 16:21:01', '0000-00-00 00:00:00'),
(38, '2GI22MC083', 'b', 'a', 'c', 'c', 'd', 'd', 'c', 'd', 'c', 'a', 'b', 'd', 'b', 'a', 'd', 'a', 'd', 'c', 'd', 'c', 'a', 'd', 'a', 'd', 'd', '2023-07-15 16:21:54', '2023-07-15 16:21:54', '0000-00-00 00:00:00'),
(39, '2GI22MC010', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 16:24:12', '2023-07-15 16:24:12', '0000-00-00 00:00:00'),
(41, '2GI22MC047', 'a', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'c', 'a', 'a', 'c', 'b', 'd', 'd', 'd', 'c', 'a', 'd', '2023-07-15 16:28:45', '2023-07-15 16:28:45', '0000-00-00 00:00:00'),
(42, '2GI22MC007', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'c', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-15 16:33:33', '2023-07-15 16:33:33', '0000-00-00 00:00:00'),
(43, '2GI22MC101', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'a', 'c', 'a', 'd', 'd', 'b', 'a', 'b', 'c', 'b', 'c', '2023-07-15 16:34:31', '2023-07-15 16:34:31', '0000-00-00 00:00:00'),
(44, '2GI22MC094', 'c', 'a', 'd', 'c', 'd', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'd', 'c', '2023-07-15 17:20:14', '2023-07-15 17:20:14', '0000-00-00 00:00:00'),
(45, '2GI22MC102', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'c', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'c', 'b', 'c', '2023-07-15 17:32:04', '2023-07-15 17:32:04', '2023-07-15 17:56:28'),
(46, '2GI22MC086 ', 'b', 'a', 'c', 'c', 'c', 'd', 'b', 'd', 'd', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'd', 'b', 'b', 'b', 'a', 'a', 'c', '2023-07-15 17:32:58', '2023-07-15 17:32:58', '0000-00-00 00:00:00'),
(47, '2GI22MC024', 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'c', 'c', 'a', 'b', 'c', 'a', 'a', 'd', 'c', 'a', 'd', 'c', 'b', 'b', 'b', 'c', 'a', 'c', '2023-07-17 04:34:56', '2023-07-17 04:34:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `set2`
--

CREATE TABLE `set2` (
  `id` int(100) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
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
  `test_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `set2`
--

INSERT INTO `set2` (`id`, `usn`, `user_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `total`, `test_date`, `created_at`, `updated_at`) VALUES
(1, '2GI22MC011', 1, 'a', 'a', 'd', 'c', 'a', 'd', 'b', 'd', 'a', 'a', 'b', 'a', 'a', 'a', 'd', 'c', 'a', 'd', 'c', 'a', 'b', 'a', 'c', 'a', 'a', '0', '2023-07-23 12:16:38', '2023-07-23 12:16:38', '0000-00-00 00:00:00'),
(2, '2GI22MC0121', 112, 'a', 'b', 'a', 'd', 'c', 'd', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'd', 'b', 'b', 'b', 'c', 'c', 'a', 'c', '0', '2023-07-23 12:30:08', '2023-07-23 12:30:08', '0000-00-00 00:00:00'),
(3, '22GI2MC111', 46, 'b', 'a', 'd', 'c', 'c', 'b', 'c', 'c', 'd', 'a', 'b', 'c', 'a', 'a', 'd', 'c', 'a', 'a', 'd', 'c', 'd', 'b', 'c', 'c', 'd', '0', '2023-07-23 12:34:30', '2023-07-23 12:34:30', '0000-00-00 00:00:00'),
(4, 'dummmytest123', 81, 'b', 'a', 'd', 'c', 'd', 'd', 'b', 'b', 'b', 'a', 'c', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'c', 'b', 'b', 'b', 'c', 'c', 'c', '0', '2023-07-23 13:14:02', '2023-07-23 13:14:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `id` int(100) NOT NULL,
  `q_id` int(100) NOT NULL,
  `sol` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`id`, `q_id`, `sol`, `created_at`, `updated_at`) VALUES
(1, 11, '<recipient></recipient>', '2023-07-08 11:56:23', NULL),
(2, 12, 'Frameset', '2023-07-08 12:00:09', NULL),
(3, 13, 'Overlap', '2023-07-08 12:00:35', NULL),
(4, 14, '<style>', '2023-07-08 12:00:56', NULL),
(5, 15, 'style', '2023-07-08 12:01:23', NULL),
(6, 16, 'body {color: black}', '2023-07-08 12:01:54', NULL),
(7, 17, 'If', '2023-07-08 12:02:11', NULL),
(8, 18, 'if (conditional expression is true)   {then execute this code>->}', '2023-07-08 12:02:37', NULL),
(9, 19, 'Splice', '2023-07-08 12:02:53', NULL),
(10, 20, 'window.captureEvents(Event.CLICK);', '2023-07-08 12:03:09', NULL),
(11, 21, 'structure', '2023-07-08 12:55:43', NULL),
(12, 22, ' *(x + n) is same as &x[n]', '2023-07-08 12:56:13', NULL),
(13, 23, 'True', '2023-07-08 12:56:32', NULL),
(14, 24, 'Standard Template Library (STL)', '2023-07-08 12:56:48', NULL),
(15, 25, 'All of the above.', '2023-07-08 12:57:05', NULL),
(16, 26, 'Containers, Algorithms, and Iterators.', '2023-07-08 12:57:28', NULL);

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
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
  `level` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `usn`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Alzaahid', '$2y$13$6PPD19C9HNd0maELJM0DTua4TUZH.vVC6P4Rpnb9AWL5JeGUz0K/.', 'alzaahid@gmail.com', '2GI22MC011', 1, '2022-05-09 08:35:36', '2023-07-19 17:02:51'),
(2, 'Abhishek Nazare', '$2y$13$/qmQ9JDcqEB.7YVJJF/MsO.bPlVSft1YxezU6SAKjKbfwTj6YfSnC', 'abhishekn@git.edu', '2GI03MCA02', 1, '2023-07-08 07:07:36', '2023-07-21 06:15:17'),
(3, 'Arjun', '$2y$13$yRfp/0ESL4B.rNciybzaIOmU2w75bpACf.1vGhFgM70bRWaIKto4C', 'arjunpermi7@gmail.com', '2GI22MC015', 3, '2023-07-08 22:26:25', '2023-07-19 02:31:13'),
(4, 'Naveen angadi', '$2y$13$HLFK3Pq2GU5qmZ7XbFy1bOZ0H9a4ChuU9A4Nn4OQvXAbvweS1lXIO', 'naveenangadi274@gmail.com', '2GI22MC049', 3, '2023-07-08 22:28:13', '2023-07-19 10:15:24'),
(5, 'Musheb karikatti', '$2y$13$xaAw.DHf1/1shnkbWVmd1u2vJhi9Y3xOwkETknGvoH1EFbIHIkLhC', 'mushebkarikatti@gmail.com', '2GI22MC044', 3, '2023-07-08 22:28:48', '2023-07-19 02:47:17'),
(6, 'Admin', '$2y$13$tAH632dbjWc9kI5rs8fCGO9ddjtBnp0C8oRwsdds2xX0Qcv1Gi1hG', 'admin@git-mca.xyz', 'admin', 1, '2023-07-09 00:54:45', '2023-07-19 10:15:31'),
(7, 'Nikhil', '$2y$13$15OTtIHxVwmeyyDFvXqV4ONWUTr6mCQi7ACrm1MMyiNSCDsTACA/C', 'nikhilh242@gmail.com', '2GI22MC054', 3, '2023-07-09 01:28:15', '2023-07-19 02:48:03'),
(8, 'Vaishnavi Mithare', '$2y$13$x6WOXS2fO4zdlCeYr9T50.OT2Ecqc9pJO4e854bnqAt/4vdUOx3se', 'vaishnavimithare15@gmail.com', '2GI22MC113', 3, '2023-07-09 01:31:20', '2023-07-19 02:48:29'),
(9, 'BIBIJAINAB K PATHAN', '$2y$13$.5iC8K2.MQlo/Y46py1XseUrh1GhR2/rAWkmpv5vp294aITgVKtZy', 'jkpathan1701@gmail.com', '2GI22MC021', 3, '2023-07-09 01:31:56', '2023-07-19 02:48:56'),
(10, 'Satish S Patil', '$2y$13$39LJ.5Mc.ym69iQJHasvS.o42kL0l0F7kAIy3tZcYdjscvm4lm05q', 'sp948705@gmail.com', '2GI22MC087', 3, '2023-07-09 01:32:27', '2023-07-19 02:49:20'),
(11, 'Anusha V C', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'vasuanuvc27@gmail.com', '2GI22MC014', 3, '2023-07-09 01:33:36', '2023-07-19 02:49:51'),
(12, 'Shradha', '$2y$13$H7.bq3AQyb7xOhf6PQOTVOjOvo.1jB3M4zyVla1xheu1a/BFv/kQC', 'shradhak2001@gmail.com', '2GI22MC095', 3, '2023-07-09 01:34:08', '2023-07-19 02:50:30'),
(13, 'Pravesh Naik', '$2y$13$/eRhGuDCmmJRj9V3aifMEu6SX7VpwFFKWrxWiBGr5XhxMEndhtszK', 'praveshnaik0360@gmail.com', '2GI22MC046', 3, '2023-07-09 01:34:40', '2023-07-19 02:50:44'),
(14, 'Rajat Bandekar', '$2y$13$KPOJH7bo4HdSvUx.KCIyd.j13Si/ulg.A17GwVPe1Ca/5Ioxx.neC', 'bandekarraj40@gmail.com', '2GI22MC071', 3, '2023-07-09 01:35:05', '2023-07-19 02:51:08'),
(15, 'Nidhi', '$2y$13$diBoA/45H1UOIpF8QZbbaOpvaNBaQpWv7nVAwretJlv64rzm6UF.2', 'ternikarnidhi@gmail.com', '2GI22MC053', 3, '2023-07-09 01:35:49', '2023-07-19 02:51:44'),
(16, 'Netravati gangappa g', '$2y$13$eO/23EEtEZ0hxXH.sc9rhugOj5CB9b2thpRXzndc5QqiH11uNpmHa', 'nnetravatigokavi@gmail.com', '2GI22MC052', 3, '2023-07-09 01:36:11', '2023-07-19 02:52:03'),
(17, 'Dakshata Patil', '$2y$13$Lq.KeGNGXtZeCXrrzTycoOLgAJnO9Ul6UpKfA/Qpn4hilt3pfTyFq', 'dakshatapatil4289@gmail.com', '2GI22MC024', 3, '2023-07-09 01:36:32', '2023-07-19 02:52:21'),
(18, 'Dnyaneshwari D Kolek', '$2y$13$8QOlqjtzhbFOjoASHMdq5OmsBFafcgTlfspWc92u7CUglKSrY06wm', 'dnyaneshwarikolekar2001@gmail.com', '2GI22MC025', 3, '2023-07-09 01:37:02', '2023-07-19 02:52:51'),
(19, 'Soniya Badawadagi', '$2y$13$ujhNYSOrLJSZujP3Ece29..5NZrniJ6VeCWecg0gNxsuu9zIyps0K', 'sonibadawadagi12@gmail.com', '2GI22MC104', 3, '2023-07-09 01:37:32', '2023-07-19 02:53:05'),
(20, 'Nandashree', '$2y$13$xIPe4.OBNFlT8LqaSIYfI.8Ml44E/jBRnXnAti7yulCEEXMz8s1Ci', 'nandashreenk2001@gmail.com', '2GI22MC048', 3, '2023-07-09 01:37:57', '2023-07-19 02:53:25'),
(21, 'Sylvester', '$2y$13$4A/P2dpH28ES9dckI/UaO.U309W7jfEFk7pSC8mp.MbwA9wFA5YkC', 'sylvestermca2000@gmail.com', '2GI22MC110', 3, '2023-07-09 01:39:10', '2023-07-19 02:53:49'),
(22, 'Nivedita', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'jadarkaveri15@gmail.com', '2GI22MC057', 3, '2023-07-09 01:44:39', '2023-07-19 02:55:06'),
(23, 'Shivagouda Malagouda', '$2y$13$t/zRYovuqzbyVP9FAoyF4.umAgykwLX4kgy94HzAnYcntWgSHGE5W', 'shivagoudapatil15@gmail.com', '2GI22MC091', 3, '2023-07-09 01:45:04', '2023-07-19 02:55:31'),
(24, 'Aishwarya', '$2y$13$c/Q3O.CLV40uIrb9XtpstOOjmnOzvkD5eIKgDiBNJ6mGA12fQHM0.', 'tanavidesai99@gmail.com', '2GI22MC006', 3, '2023-07-09 01:45:27', '2023-07-19 02:55:49'),
(25, 'Shubham patil', '$2y$13$.XiYkz3dRNcCKpsm8mhqeu7Okhx5.JuzCRXqE4JFhn0zrHLjkqmWq', 'shubhamtukarampatil@gmail.com', '2GI22MC099', 3, '2023-07-09 01:45:49', '2023-07-19 02:56:04'),
(26, 'Pratibha H Lingadal', '$2y$13$Gzd4dCxMke8zbvWqB5oh/utx5eE2XbI0zTjpplHi5tHOjd0vvwNRW', 'lingadalpratibha@gmail.com', '2GI22MC068', 3, '2023-07-09 01:46:12', '2023-07-19 02:56:23'),
(27, 'Varsha jat', '$2y$13$WdVJWfKC3ub98LNAzQGMaevZ/cBI9.g4o/0gnvlEnpPvKav1eG2q6', 'varshajat02309@gmail.com', '2GI22MC114', 3, '2023-07-09 01:46:36', '2023-07-19 02:56:39'),
(28, 'Abhishek khot', '$2y$13$g652OTgXvi6IGRxD1jptzuzLpAdmwbhxr.UpN3IxGrr9UEhBdISTC', 'abhishekkhot9921@gmail.com', '2GI22MC035', 3, '2023-07-09 01:46:58', '2023-07-19 02:56:55'),
(29, 'Prathamesh Prakash B', '$2y$13$TNxaWNqDnRSE3Hzi7n.v1uM9hxZJide6pUhgSvMAQ2WvRLqnXtb06', 'prathameshpbenake@gmail.com', '2GI22MC019', 3, '2023-07-09 01:47:24', '2023-07-19 02:57:16'),
(30, 'Rakeeb Ontigar', '$2y$13$XIhf/bHObd4tTULVmioo1eJOZn.Qcn4qph2xNBNV9ZUio0d4NlS/W', 'ontigarraqib03@gmail.com', '2GI22MC073', 3, '2023-07-09 01:47:47', '2023-07-19 02:57:29'),
(31, 'Sharan Hiremani', '$2y$13$ekgI/DuYGdrep4/eHqBhgOkscpgDprDVGJ8v99Zn7NHOSFYehazPy', 'sharanrhiremani@gmail.com', '2GI22MC090', 3, '2023-07-09 01:48:06', '2023-07-19 02:57:47'),
(32, 'Rupesh Chavan', '$2y$13$68YoZa3aFawfrPMT5hOb2OgiZicFrVjCS4KHZh3w2qn2PUoI7agGe', 'rupeshchavan048@gmail.com', '2GI22MC077', 3, '2023-07-09 01:48:24', '2023-07-19 02:58:09'),
(33, 'Vishal Ghadi', '$2y$13$l5W1wn/5IXCwY/PdW18w2eCWH.ugx9RBFPtxzkwBHwfUyR68My5Xe', 'vishalghadi28112001@gmail.com', '2GI22MC118', 3, '2023-07-09 01:48:44', '2023-07-19 02:58:24'),
(34, 'Nadaf Najama Hajisah', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'najamanadaf83@gmail.com', '2GI22MC045', 3, '2023-07-09 01:49:49', '2023-07-19 02:59:44'),
(35, 'Suzen', '$2y$13$kxlz97dXKyfTGj7tGzhN6.6rbnZ45dFaoZSDnN1JMmew3ziNb/H/2', 'suzain1947@gmail.com', '2GI22MC108', 3, '2023-07-09 01:51:55', '2023-07-19 03:00:01'),
(36, 'Kalmeshwar', '$2y$13$7lnk84c2HXlO9N3zYsdTCuJobxUAnaZBaTsFgpGtyum1ZbsFkSaiK', 'kalmeshwarbirje@gmail.com', '2GI22MC031', 3, '2023-07-09 01:52:14', '2023-07-19 03:00:30'),
(37, 'Pooja', '$2y$13$11B7RbP5nRYLgd8a3tB6GexN0rCZxqokOqR5x/G/4Y1Pp9edCR6SS', 'poojavajramatti28@gmail.com', '2GI22MC063', 3, '2023-07-09 01:52:51', '2023-07-19 03:00:48'),
(38, 'Laxmi Mullatti', '$2y$13$Hhd.LuE0OdPaSXho6RS3WeDI6pjSqGMMDkYuZ9HbJyzRbuOrkY5LC', 'mullattilaxmi@gmail.com', '2GI22MC037', 3, '2023-07-09 01:53:12', '2023-07-19 03:01:08'),
(39, 'Sneha Gangal', '$2y$13$PsyOwTt0HuzaAp8q5qwAI.le98Ymg1mGJ7JzRxJid29H/gAFD9sZS', 'snehagangal98@gmail.com', '2GI22MC101', 3, '2023-07-09 01:53:30', '2023-07-19 03:01:26'),
(40, 'Shweta Lokur', '$2y$13$Ia.rKmzLJTKQx0IYNY/XWem3x2b5a0axgK4l2n/Qmqdb1noRis5sS', 'shwetalokur2@gmail.com', '2GI22MC100', 3, '2023-07-09 01:53:48', '2023-07-19 03:01:57'),
(41, 'Anupama Manoj Kawale', '$2y$13$8CQPIUP4Rwa/mLTenb92fOp73ItdM2yCsOuNN62KhLdTfGxm2B0nq', 'anupamakawale1281998@gmail.com', '2GI22MC012', 3, '2023-07-09 01:54:44', '2023-07-19 03:02:14'),
(42, 'Banashankari Kamat', '$2y$13$ctq4NUI8gwQp/86jJJzOZu14MzHdfA4hfvbw8hLxdIuEh1skAL0/y', 'banashankarikamat2001@gmail.com', '2GI22MC018', 3, '2023-07-09 01:55:08', '2023-07-19 03:02:28'),
(43, 'Nikita Patil', '$2y$13$//Gbfx8OfFxX.o3Iv7SkKO8JxtL7n4HyxajH5RqlX94GriC.xgznm', 'nikitapatil95815@gmail.com', '2GI22MC055', 3, '2023-07-09 01:55:51', '2023-07-19 03:02:44'),
(44, 'Aishwarya P Mahendra', '$2y$13$mD4bF.RhecFDwVVSLdyw5e5tkle8ITc/9H7T/skU82VfTcI1RJgMC', 'aishwaryamahendrakar4@gmail.com', '2GI22MC005', 3, '2023-07-09 01:56:17', '2023-07-19 03:03:01'),
(45, 'Gouri', '$2y$13$sXkp0VEI9bwu1.gOytYkBuTEVYnCy45fBN0eMC5G.zaSIxZ2aygfK', '09gouri.desai@gmail.com', '2GI22MC026', 3, '2023-07-09 01:56:37', '2023-07-19 03:03:19'),
(46, 'Tastain Sannakki', '$2y$13$zePB6YzaoEjAvhmFi5GF7eju1XTLAqMUMS2tDXUpWVRBliJwfilaW', 'sannakkitastain@gmail.com', '2GI22MCA111', 3, '2023-07-09 01:56:58', '2023-07-19 17:16:48'),
(47, 'Akshata', '$2y$13$QtFCRdEqvPwUbtHSjvYcxeq5h4t3TvBXGxI/Onox9ALcKr/eaWaa2', 'akshatabhadti2645@gmail.com', '2GI22MC010', 3, '2023-07-09 01:57:15', '2023-07-19 03:05:26'),
(48, 'Shivani Nair', '$2y$13$D2Ogj8NmeTulRAFQvxJMteLEtx6K9ub8IEDw2HhfcfECUsMFCi5py', 'shivani.nair1201@gmail.com', '2GI22MC094', 3, '2023-07-09 01:57:42', '2023-07-19 03:05:46'),
(49, 'Omkar Kesarkar', '$2y$13$poHUNoPHwW5cOMLvVrmy6eBzvZFHa.xA5r8unFK/Y2SDpLOhshtCm', 'omkarkesarkar65@gmail.com', '2GI22MC058', 3, '2023-07-09 01:58:00', '2023-07-19 03:05:59'),
(50, 'Palash Kalghatgi', '$2y$13$J2mCWwr.lN/y94Gpc9n0HubLjBR9cuVlvMA6CfspvHsKpGDsb3LWq', 'kalghatgipalash@gmail.com', '2G122MC060', 3, '2023-07-09 01:58:32', '2023-07-19 03:06:12'),
(51, 'Afra Pathan', '$2y$13$4X8Ok5dtck1X1xSQW8O1l.jgkR180NRPF0NPGfuO1ltqd/WRM9Isy', 'afrapathan2506@gmail.com', '2GI22MC004', 3, '2023-07-09 01:58:52', '2023-07-19 03:06:34'),
(52, 'Neha Vijay Yadav', '$2y$13$NotBkdQD93C.RuehPBmZjenJJaxjWSjWq78DRrx9ORRp9mr5kk.zW', 'nehayadavkerur@gmail.com', '2GI22MC051', 3, '2023-07-09 01:59:14', '2023-07-19 03:06:53'),
(53, 'Keerti S Alebasappan', '$2y$13$wNo7NgUZqpdNSkPEb.cH4e92O7OINflNm73o9WHix6uyWiOFFwpsm', 'keertisakeerti@gmail.com', '2GI22MC034', 3, '2023-07-09 01:59:32', '2023-07-19 03:07:33'),
(54, 'Sammed Shetti', '$2y$13$PJewhJiWuuk3BMZHNp66TuVVYq2VYoRLlbK7zKheiyhz361K44ZCa', 'sammedshetti1008@gmail.com', '2GI22MC084', 3, '2023-07-09 01:59:50', '2023-07-19 03:08:35'),
(55, 'Rachana Mohite', '$2y$13$wRmVI0Bs5eXjrx5s.EHRKOgDa0p5PdmANd0nGJkExxHg.ZhHJIzxy', 'mohiterach1998@gmail.com', '2GI22MC070', 3, '2023-07-09 02:00:35', '2023-07-19 03:08:52'),
(56, 'ARUNAKUMARA M MATAPA', '$2y$13$y1WMtFzfUnIM9YUCZeq3ZOSwSRhmbnAxgIgG9UqiiDL4.jIbMwj4i', 'arunmathapati9@gmail.com', '2GI22MC016', 3, '2023-07-09 02:01:15', '2023-07-19 03:11:13'),
(57, 'Savitri Sonnad', '$2y$13$kQNG6QErpj5IMx7GVZ1cvuH9zJO67.Sl9vKF64y85yHJHGbt7FRU6', 'savitrisonnad123@gmail.com', '2GI22MC088', 3, '2023-07-09 02:01:36', '2023-07-19 03:47:28'),
(58, 'Mansi Bhatkande', '$2y$13$YnSMHSKO7QT319zFXshz5.0xDPe0PGK.u7SvYAIjjveEls23DP2uK', 'mansibhatkande893@gmail.com', '2GI22MC041', 3, '2023-07-09 02:01:55', '2023-07-19 09:51:41'),
(59, 'Chetan P Shirahatti', '$2y$13$fuix9C6CkcUx95K9qi6Ttu2mMtOTgC6XgMdBV1ZeZhF9J/kW5nR5K', 'chetanpshi9@gmail.com', '2GI22MC023', 3, '2023-07-09 02:02:14', '2023-07-19 09:52:06'),
(60, 'Omkar Potadar', '$2y$13$gNiDnETIlHjCQF.fEcpkQeEJ9uXBnYZMOgFbjnz5VB4DmWssJ64Se', 'omkarpotadar5302@gmail.com', '2GI22MC059', 3, '2023-07-09 02:02:43', '2023-07-19 09:52:59'),
(61, 'Manikanta. Reddy.H', '$2y$13$PvDxxnwTsi9CDTrFjmoi8OsefSXWyj9rtCswNb6GMQY.P67elyvp2', 'manireddyh333@gmail.com', '2GI22MC039', 3, '2023-07-09 02:03:01', '2023-07-19 09:53:36'),
(62, 'Chetan', '$2y$13$23a5wgTYJ2QUiSCHBoZTCuMrzqB/sBgqb8i4VWZeyrwjbXaeWBfb2', 'chetangoblin@gmail.com', '2GI22MC022', 3, '2023-07-09 02:03:35', '2023-07-19 09:54:40'),
(63, 'Sunita Hosamani', '$2y$13$Xe2gdRc44.yYfIXlVwnr9OeuETa2eqpbV.yqnC2/5/OlZYw6Zhgxq', 'sunitarhosamanikrt@gmail.com', '2GI22MC106', 3, '2023-07-09 02:04:09', '2023-07-19 09:59:32'),
(64, 'Neha Malode', '$2y$13$8unwbyjZhEfsvNljoBStb.virOpwScFb3c6wyy.KEbFy2o2lO20xm', 'nehamalode1234@gmail.com', '2GI22MC050', 3, '2023-07-09 02:04:33', '2023-07-19 09:59:52'),
(65, 'Sandesh U Mungari', '$2y$13$/7i7hA2kazMArj5rme5Jy.TYVXIUPAIP/XbEHYSg7rOHQ2QYgaDz.', 'sandeshum07@gmail.com', '2GI22MC085', 3, '2023-07-09 02:04:52', '2023-07-19 10:00:10'),
(66, 'Affan Mujawar', '$2y$13$QvF0GX1LtLx7bECW7eqkXu5mkmcKB/EZn23b8YWloSBh5HU90ItJW', 'mujawaraffanofficial@gmail.com', '2GI22MC003', 3, '2023-07-09 02:05:11', '2023-07-19 10:00:26'),
(67, 'Sushmitha R Hiremath', '$2y$13$pFDwZjViP6WyuoLnybIbY.BFJB52PQtg5oqd8xWLZCwBbjrAJIjqW', 'sushmithah992@gmail.com', '2GI22MC107', 3, '2023-07-09 02:05:30', '2023-07-19 10:00:54'),
(68, 'Komal Chavan', '$2y$13$QaOJnlOZGYqhlIsVr8gyeOIWAJtpDqAmvJy8U5JkRvjdOuAphRwRy', 'komalpc878@gmail.com', '2GI22MC036', 3, '2023-07-09 02:05:51', '2023-07-19 10:01:11'),
(69, 'Ranjita Gombi', '$2y$13$2SxFkid2OViKPlT.aFHkMOxHOVfrB9TJAcb.cS4mtq/78YIvLn.hK', 'ranjitagombi01rbk@gmail.com', '2GI22MC074', 3, '2023-07-09 02:06:32', '2023-07-19 10:01:27'),
(70, 'Shivani Shyam Pawar', '$2y$13$ALhmX8ymHm8lXZyfY5wADeBsYC8N.SuzGobGXVFHsNTXu09.Qc1mi', 'shivanipawar9121999@gmail.com', '2GI22MC093', 3, '2023-07-09 02:06:54', '2023-07-19 10:01:46'),
(71, 'Rohit R Gudasi', '$2y$13$MGuC0X.pmWQHgK5e6miI3.qciHgnF6slG1jyj1T31OSRc2NG.QdYG', 'rohitgudasi18@gmail.com', '2GI22MC076', 3, '2023-07-09 02:07:23', '2023-07-19 10:02:05'),
(72, 'Sumant Dharmatti', '$2y$13$q8vTWbHRWrlhDU6xnWsYXu/CxEL6SbIeVeS3MWhUP6nf7Flbun1cS', 'sumantdharmatti@gmail.com', '2GI22MC105', 3, '2023-07-09 02:07:40', '2023-07-19 10:02:25'),
(73, 'Vinay Mali', '$2y$13$6SPMhISAUwFoaIJEfgMBDOSE/rccYcbzB1LXfOOKaDI8XKySEjqYS', 'malivinu2000@gmail.com', '2GI22MC116', 3, '2023-07-09 02:07:59', '2023-07-19 10:02:46'),
(74, 'Pallavi Veerayya Hir', '$2y$13$ElgpshLDMnth/UXT4wXohOBJut5e.CGbFxmjQqllnxAgfkvMC2p62', 'pallu.h18@gmail.com', '2GI22MC061', 3, '2023-07-09 02:08:51', '2023-07-19 10:03:00'),
(75, 'Rajat Bahadduri', '$2y$13$rKivCv7tu7XBAomfWTC/KOnsxu5SbegvbAyHGQWjGwwbE1FcDcaGm', 'rajatbahadduri@gmail.com', '2GI22MC072', 3, '2023-07-09 02:09:07', '2023-07-19 10:03:14'),
(76, 'Manjusha Pawar', '$2y$13$IQdZk2SnfMnZe1YRKhdnyOwH.EuT0J1FgTB1AFG1hrY58igqz2CKq', 'pawarmanjusha818@gmail.com', '2GI22MC040', 3, '2023-07-09 02:09:28', '2023-07-19 10:03:36'),
(77, 'Manasi Udaysingh Hon', '$2y$13$oKW9gDojWENtbHauPzeM.eDTN.X5ZNTVyauOJZrmghBAzvbBI692e', 'hongekarmanasi539@gmail.com', '2GI22MC038', 3, '2023-07-09 02:10:07', '2023-07-19 10:04:11'),
(78, 'Sayali', '$2y$13$.T/K/ybR3e0JFFnYxjhp8uF25OND2T7znqRtOYdcbjcuuxkqczL6a', 'sayalislondhe@gmail.com', '2GI22MC089', 3, '2023-07-09 02:10:25', '2023-07-19 10:04:26'),
(79, 'SHRINATH WADDAR', '$2y$13$fqOsv1Yb0EYgdJQRzeqidejPRgV2DaFBq.ozPBNyoaSiq6nzVYpTm', 'shrinathwaddar1224@gmail.com', '2GI22MC097', 3, '2023-07-09 02:10:41', '2023-07-19 10:04:39'),
(80, 'Govardhan Sakhe', '$2y$13$r5t6jJ7IKLk/nS4.NuHAvuW5VceMl0ITPDW6JhqkiMkOTkfFgjzZG', 'sakhegovardhan103@gmail.com', '2GI22MC027', 3, '2023-07-09 04:24:59', '2023-07-19 10:04:54'),
(81, 'Saiprakash', '$2y$13$H6RfdE.nZ96RBXwSxbMTZOie3iLtjy9PM5KYfbSkyk3/S8FGm8gI.', 'saiprakashpednekar31@gmail.com', '2GI22MC081', 3, '2023-07-09 04:25:31', '2023-07-23 13:17:29'),
(82, 'Pratik desai', '$2y$13$wQiKqgnExzyjXSTNkmbquuQkb7KGPwaRpRVa1XbM8uFJlmzF3pr/O', 'desaipratik1008@gmail.com', '2GI22MC069', 3, '2023-07-09 04:31:06', '2023-07-19 10:05:42'),
(83, 'Sahana M Kubsad', '$2y$13$mZFpxkgVDs0rDhihXuTTpecvrRUNsnsHQXCQiT.jw8tfphxY4xo.S', 'sahanamkubsad0401@gmail.com', '2GI22MC080', 3, '2023-07-09 04:31:34', '2023-07-19 10:06:10'),
(84, 'Jyoti ajjappanavar', '$2y$13$GM7ANp2y8LNTVZx3IUpuOe94RAF2kuVK0zhgLtn7Pe5ehF90kyGHO', 'jyotiajjappanavar321@gmail.com', '2GI22MC029', 3, '2023-07-09 04:51:34', '2023-07-19 10:06:23'),
(85, 'Abhishek F Chalawadi', '$2y$13$iaeopbNSVtiFpdtlKGttKuISv6uKhrIU7v77Co4m5lFHYxibkNcwS', 'abhishekchalawadi465@gmail.com', '2GI22MC002', 3, '2023-07-09 04:52:07', '2023-07-19 10:06:42'),
(86, 'Jyoti Shivaji Salgud', '$2y$13$JY/45DqLAIqHNgxtBRmjmu6wL1TRPolDB7UvkMlrr2/inUeX87RJq', 'salgudijyoti@gmail.com', '2GI22MC030', 3, '2023-07-09 04:52:48', '2023-07-19 10:06:58'),
(87, 'Swati hattiholi', '$2y$13$EECSuTgkmrMBnhYlmoD/feQTn1fYtLS91pkds8hbe0xmfzwNA9AMW', 'hattiholiswati@gmail.com', '2GI22MC0109', 3, '2023-07-09 04:53:59', '2023-07-19 10:07:16'),
(88, 'Sanket Kulkarni', '$2y$13$Bar4RP99HhffZwEWbV41oeW69Cd.OyHnacJLws92tj7FJzqgdbWCS', 'sanketkulkarnisk812@gmail.com', '2GI22MC086', 3, '2023-07-09 04:54:18', '2023-07-19 10:07:30'),
(89, 'Samhita R Adhyapak', '$2y$13$uxMJnQKCd47Jo.lCU2YoVucTHKCY7Mo9Fty.yI9w7t6RpoC3/fxhW', 'samhitaadhyapak@gmail.com', '2GI22MC083', 3, '2023-07-09 04:54:39', '2023-07-19 10:07:47'),
(90, 'Abhijeet A Ghodageri', '$2y$13$hjeITp9h405AmByXDlesJ.E9bUnv7JDRp9BCbMpXHE2xuNBWo965y', 'abhijeetghodageri5@gmail.com', '2GI22MC001', 3, '2023-07-09 04:55:04', '2023-07-19 10:08:02'),
(91, 'Ishwari Kothiwale', '$2y$13$qpIUCnENGHNPOZRDx3KA2Ojw6Ukv6v9Ui.DwOFa/EZT7zm37eKxga', 'kothiwaleishwari@gmail.com', '2GI22MC028', 3, '2023-07-09 04:55:21', '2023-07-19 10:08:19'),
(92, 'Akshata Anil Kokate', '$2y$13$wLFzJhzpMRqiEXuIwGPEVexogqwDFq3T4Ac4GOnZB29cS03QUNceO', 'akshatakokate4386@gmail.com', '2GI22MC009', 3, '2023-07-09 04:55:41', '2023-07-19 10:08:44'),
(93, 'Megha Prakash Bhekan', '$2y$13$m9GY8t34RRqE7.ydfbEOje9SZ0hgJmYz8lun7XXaxJBMbL3oeYjee', 'mpbhekane37@gmail.com', '2GI22MC042', 3, '2023-07-09 04:56:01', '2023-07-19 10:08:59'),
(94, 'Shivakumar Jalihal', '$2y$13$3Y/fudecAc/F9i9vwYiGIe69AlIf.LbMbsHREKIbOQsBv8UuYBT2C', 'shivjalihal@gmail.com', '2GI22MC092', 3, '2023-07-11 18:40:47', '2023-07-19 10:09:43'),
(95, 'Akash Hugar', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'akashhugar17@gmail.com', '2GI22MC008', 3, '2023-07-11 18:42:49', '2023-07-19 10:10:15'),
(96, 'Tejal kesarkar', '$2y$13$k1VmrK.j2OJP.9wu33i7ZeoAh/qFdUvpUSj5.6erlBx.SzRnUDAuq', 'tejalkesarkar18@gmail.com', '2GI22MC112', 3, '2023-07-11 18:43:24', '2023-07-19 10:10:32'),
(97, 'Snehal Shahu Patil', '$2y$13$hpp0CFjDqR27lTvUHHb3/.nzpPYEuvX8yN1.ZLvslt9CNXMtwUnI6', '23snehalpatil@gmail.com', '2GI22MC102', 3, '2023-07-11 18:44:03', '2023-07-19 10:11:47'),
(98, 'Rutuja Jotiba Karate', '$2y$13$VuBOLqE6NKGgwaq/PXOVKu861dtgqCbxtU/EpB2NTaEovjiS6vK0C', 'rutujajk4@gmail.com', '2GI22MC032', 3, '2023-07-11 18:44:39', '2023-07-19 10:12:11'),
(99, 'Nishant', '$2y$13$t3deLIng/PQ0PqVFqiiQxeFAjYllQFtSDN8ubDXcuarI0VbYD0bwW', 'nstotar3@gmail.com', '2GI22MC056', 3, '2023-07-15 03:57:59', '2023-07-19 10:20:53'),
(100, 'Rutika Patil', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'rutikapatil270@gmail.com', '2GI22MC078', 3, '2023-07-15 04:02:15', '2023-07-19 10:21:16'),
(101, 'Pramod Todakar', '$2y$13$AvQb9v2MJyvAWeaJ7uOOQ.trbrXXHHO0q8KaMUlkxzFdmCdRGDyeG', 'pramodtodakar81@gmail.com', '2GI22MC0651', 3, '2023-07-15 04:33:06', '2023-07-19 02:47:47'),
(102, 'Prashant Jatrate', '$2y$13$01TiRNoA8nOcxrhAuMr8ZuWz.DJ6tdZ3GTg/.X3fF1/XT1632/0y6', 'prashantjatrate143@gmail.com', '2GI22MC067', 3, '2023-07-15 04:33:46', '2023-07-19 02:54:03'),
(103, 'Somesh Hanji', '$2y$13$3TXiGf03u5dh2Sq1PzG0UuZZyV1FzabBiW0QYjSC3D.v8vmXXMgaS', 'someshhanji26@gmail.com', '2GI22MC103', 3, '2023-07-15 04:38:20', '2023-07-19 02:54:50'),
(104, 'Najmusahar kalkoti', '$2y$13$HvKWLMc63X9AcD9Nx8uSa.oaS2vKGgPSWgOQwDw6x4BtmjYirxSPC', 'najmusaharkalkoti@gmail.com', '2GI22MC047', 3, '2023-07-15 04:48:35', '2023-07-19 16:59:19'),
(105, 'Jidnyasa Vishnu Pati', '$2y$13$gOw0YnAHcof32GPbEhnNZu/3JzqHXUMNJPuJF4e4C9wKr.kWQHEg6', 'patiljidnyasa7@gmail.com', '2GI22MC062', 3, '2023-07-15 04:56:11', '2023-07-19 10:09:22'),
(106, 'Kartik ITI', '$2y$13$4zxqTaKXCloo1ATzRz6rQepilfboOJTv6B04kG5o9HNb1rDHzOfKq', 'kartik.git108@gmail.com', '2GI22MC033', 3, '2023-07-15 05:00:15', '2023-07-19 10:09:57'),
(107, 'Vishal Yadav', '$2y$13$SZX0r/t/bnQHaDq/YUB5OuPrkRRIYTz1rkB0NNVLwmCKDg1CyvLcC', 'vishuvy99@gmail.com', '2GI22MC119', 3, '2023-07-15 05:01:27', '2023-07-19 02:51:30'),
(108, 'Ajay kumar', '$2y$13$hun1ogrYAhqnIGMPhDu8quO0LhsfDA0yPHYsbYvTwy9V4Umzw9r9a', 'ajayrchavan789@gmail.com', '2GI22MC007', 3, '2023-07-15 05:02:42', '2023-07-19 10:05:28'),
(109, 'SAMEER', '$2y$13$/K0DK7Tvqind1hYIPhnheOVn5TTMhbI1nCjlA489.gDHRo7AXRmy6', 'sameernadaf5761@gmail.com', '2GI22MC082', 3, '2023-07-15 05:08:46', '2023-07-19 02:49:34'),
(110, 'Asheesh kulakarni', '$2y$13$x05muu2eES8Yxfx99LeGC./0ZapdLkrKSAM8pBenbdiJ9Gr07HphK', 'ashishkulkarni3502@gmail.com', '2GI22MC017', 3, '2023-07-15 05:12:23', '2023-07-19 02:54:21'),
(111, 'Vinayak Marikatti', '$2y$13$X7wVch6.Y5/Y2m5Bcm4.OeP.s8I/2BLPeLsJI1aQ4erAOqCpqEjLy', 'vinayakmarikatti@gmail.com', '2GI22MC117', 3, '2023-07-15 05:13:40', '2023-07-19 02:54:36'),
(112, 'STudent', '$2y$13$fBv4qd/c.mxawBEDWG6lZuG9XPczghs5uH6h4yYVlWTzpK9isZl56', 'student@git.edu', '-', 3, '2023-07-16 22:33:16', '2023-07-19 10:21:42'),
(113, 'Tester', '$2y$13$w0XOAT0zPimbOTEMfEBrxucHmW96HJPRAqQB611B.tlkXZN7hzJsu', 'tester@git.edu', '-', 4, '2023-07-19 03:13:13', '2023-07-20 07:13:55'),
(114, 'Bhoomika Nagathan', '$2y$13$0jJhtXjgDSZsZU6S6zYlJeEXl18dWmhLZhw9/RZblCPcUr3PJI67y', 'bhoomikacn11@gmail.com', '2GI22MC020', 3, '2023-07-19 10:13:01', '2023-07-20 07:14:15'),
(115, 'Shruti', '$2y$13$DMluzPODAxa7n3xDapjgWu9VyJMbA7HfpLmnOKuQ.K9egfeIjVIuK', 'stpatil166@gmail.com', '2GI22MC098', 3, '2023-07-19 10:13:49', '2023-07-20 07:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `qqq` (`q_id`);

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
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `reset_password_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set1`
--
ALTER TABLE `set1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `set2`
--
ALTER TABLE `set2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `solution`
--
ALTER TABLE `solution`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `set2`
--
ALTER TABLE `set2`
  ADD CONSTRAINT `userrr` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `solution`
--
ALTER TABLE `solution`
  ADD CONSTRAINT `qqq` FOREIGN KEY (`q_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
