-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 01:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sfps_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `level` varchar(150) NOT NULL,
  `total_amount` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `level`, `total_amount`, `date_created`) VALUES
(2, 'PLUMBING', '', 'level1', 20000, '2025-07-01 13:29:19'),
(3, 'PLUMBING', '', 'level2', 15000, '2025-07-01 13:29:19'),
(4, 'PLUMBING', '', 'level3', 10000, '2025-07-01 13:29:19'),
(5, 'INFORMATION TECHNOLOGY', '', 'level1', 20000, '2025-07-01 13:30:17'),
(6, 'INFORMATION TECHNOLOGY', '', 'level2', 35000, '2025-07-01 13:30:17'),
(7, 'INFORMATION TECHNOLOGY', '', 'level3', 15000, '2025-07-01 13:30:17'),
(8, 'CATERING AND ACCOMMODATION', '', 'level1', 20000, '2025-07-01 13:31:04'),
(9, 'CATERING AND ACCOMMODATION', '', 'level2', 35000, '2025-07-01 13:31:04'),
(10, 'CATERING AND ACCOMMODATION', '', 'level3', 35000, '2025-07-01 13:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `course_id`, `description`, `amount`) VALUES
(4, 2, 'TUITION-THEORY', 20000),
(5, 2, 'TUITION-PRACTICALS', 15000),
(6, 2, 'TUITION- ATTACHMENT', 10000),
(7, 3, 'TUITION-THEORY', 20000),
(8, 3, 'TUITION-PRACTICALS', 15000),
(9, 3, 'TUITION- ATTACHMENT', 10000),
(10, 4, 'TUITION-THEORY', 20000),
(11, 4, 'TUITION-PRACTICALS', 15000),
(12, 4, 'TUITION- ATTACHMENT', 10000),
(13, 5, 'TUITION-THEORY', 20000),
(14, 5, 'TUITION-PRACTICALS', 35000),
(15, 5, 'TUITION- ATTACHMENT', 15000),
(16, 6, 'TUITION-THEORY', 20000),
(17, 6, 'TUITION-PRACTICALS', 35000),
(18, 6, 'TUITION- ATTACHMENT', 15000),
(19, 7, 'TUITION-THEORY', 20000),
(20, 7, 'TUITION-PRACTICALS', 35000),
(21, 7, 'TUITION- ATTACHMENT', 15000),
(22, 8, 'TUITION-THEORY', 20000),
(23, 8, 'TUITION-PRACTICALS', 35000),
(24, 8, 'TUITION- ATTACHMENT', 35000),
(25, 9, 'TUITION-THEORY', 20000),
(26, 9, 'TUITION-PRACTICALS', 35000),
(27, 9, 'TUITION- ATTACHMENT', 35000),
(28, 10, 'TUITION-THEORY', 20000),
(29, 10, 'TUITION-PRACTICALS', 35000),
(30, 10, 'TUITION- ATTACHMENT', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `ef_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `ef_id`, `amount`, `remarks`, `date_created`, `balance`) VALUES
(1, 1, 1000, 'sample', '2020-10-31 14:25:35', 3500),
(2, 1, 500, 'sample 2', '2020-10-31 14:47:15', 3000),
(3, 4, 7000, 'none', '2025-07-01 13:44:03', 13000),
(4, 6, 9000, 'payed', '2025-07-01 14:35:40', 11000),
(5, 3, 1000, 'payed', '2025-07-01 14:49:11', 19000),
(6, 7, 0, 'Unpaid', '2025-07-01 16:06:28', 20000),
(7, 3, 6000, '', '2025-07-01 16:12:38', 13000),
(8, 8, 0, 'Unpaid', '2025-07-01 16:16:00', 35000),
(9, 8, 3500, '', '2025-07-01 16:17:03', 31500),
(10, 7, 8000, '', '2025-07-02 17:30:44', 12000),
(13, 7, 3500, 'payed', '2025-07-04 11:52:55', 8500);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `id_no`, `name`, `contact`, `address`, `email`, `date_created`, `course`) VALUES
(3, '00001', 'simon elimlim', '0789009008', '20-20320 kinamba', 'simon@gmail.com', '2025-07-01 13:25:23', 'INFORMATION TECHNOLOGY'),
(6, '00002', 'Adrian nderitu', '07789654321', '40 rumuruti', 'adrian@gmail.com', '2025-07-01 16:06:28', ''),
(7, '00003', 'kabingo', '0789009008', '', 'kabingo@gmail.com', '2025-07-01 16:16:00', ''),
(8, '10007', 'mourine cheptoo', '0113171819', '20-20320 kinamba', 'mourine@gmail.com', '2025-07-04 10:54:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_ef_list`
--

CREATE TABLE `student_ef_list` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `ef_no` varchar(200) NOT NULL,
  `course_id` int(30) NOT NULL,
  `total_fee` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_ef_list`
--

INSERT INTO `student_ef_list` (`id`, `student_id`, `ef_no`, `course_id`, `total_fee`, `date_created`) VALUES
(1, 2, '2020-654278', 1, 4500, '2020-10-31 12:04:18'),
(2, 1, '2020-65427823', 1, 4500, '2020-10-31 13:12:13'),
(3, 3, '2025-111018', 5, 20000, '2025-07-01 13:42:37'),
(4, 4, '2025-373251', 5, 20000, '2025-07-01 13:42:47'),
(6, 5, '00003', 5, 20000, '2025-07-01 14:30:06'),
(7, 6, '2025-377043', 5, 20000, '2025-07-01 16:06:28'),
(8, 7, '2025-683634', 9, 35000, '2025-07-01 16:16:00'),
(9, 8, '2025-282695', 2, 20000, '2025-07-04 10:54:00'),
(10, 8, '10007', 2, 20000, '2025-07-04 10:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'School Fees Payment Management System', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff',
  `establishment_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `establishment_id`) VALUES
(1, 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'Accountant', 'acc', '7f4bba20acd3fc4168e3a6576d13adcb', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_ef_list`
--
ALTER TABLE `student_ef_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_ef_list`
--
ALTER TABLE `student_ef_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
