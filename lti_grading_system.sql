-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2025 at 04:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lti_grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `date`, `code`) VALUES
(13, 'BACHELOR SCIENCE IN INFROMATION TECHNOLOGY', '2025-06-03 05:33:06', 'BSIT');

-- --------------------------------------------------------

--
-- Table structure for table `crurriculum`
--

CREATE TABLE `crurriculum` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crurriculum`
--

INSERT INTO `crurriculum` (`id`, `name`, `date`) VALUES
(4, '', '0000-00-00'),
(5, 'ched-RO.12-aser.342123232', '2025-05-26'),
(6, '', '0000-00-00'),
(7, 'ched A01wr-oR.242', '2025-05-14'),
(8, '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_subject`
--

CREATE TABLE `curriculum_subject` (
  `id` int(11) NOT NULL,
  `curriculum` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `sem` varchar(200) NOT NULL,
  `course` int(200) NOT NULL,
  `year` int(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum_subject`
--

INSERT INTO `curriculum_subject` (`id`, `curriculum`, `subject`, `sem`, `course`, `year`, `date`) VALUES
(9, '5', '1', '1', 13, 1, '2025-06-09'),
(10, '5', '4', '1', 13, 1, '2025-06-09'),
(14, '13', '2', '2', 13, 1, '2025-06-09'),
(15, '5', '3', '2', 13, 1, '2025-06-09'),
(16, '7', '4', '2', 13, 1, '2025-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(12) NOT NULL,
  `address` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `phone_number`, `address`, `user_name`, `password`) VALUES
(1, 'zaeed', 'nillas', 'cervantes', 'zedcervantes4@gmail.com', 2147483647, 'lagasan brgy kulay bato lamitan city basilan', 'zed12345', 'may182001');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject`
--

CREATE TABLE `faculty_subject` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject`
--

INSERT INTO `faculty_subject` (`id`, `faculty_id`, `id_subject`, `day`, `time`) VALUES
(12, 1, 1, 'MON', '07:00'),
(13, 1, 2, 'TUE', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `course` varchar(200) NOT NULL,
  `year` int(20) NOT NULL,
  `curriculum` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(20) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `mname`, `lname`, `dob`, `course`, `year`, `curriculum`, `email`, `phone`, `address`, `username`, `password`) VALUES
(1, 'zaeed', 'nillas', 'cervantes', '0000-00-00', 'IT', 4, 'ched A01wr-oR.242', 'zedcervantes4@gmail.com', 2147483647, 'lagasan brgy kulay bato lamitan city basilan', 'zedcervantes4@gmail.com', 'May182001');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `des` text NOT NULL,
  `unit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject_code`, `des`, `unit`) VALUES
(1, 'IT2', 'OBJECT-ORIENTED-PROGRAMMING', 3),
(3, 'IT1', 'COMPUTER 1', 3),
(4, 'ICT 3', 'WEB DEVELOPMENT 1', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crurriculum`
--
ALTER TABLE `crurriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum_subject`
--
ALTER TABLE `curriculum_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crurriculum`
--
ALTER TABLE `crurriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `curriculum_subject`
--
ALTER TABLE `curriculum_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
