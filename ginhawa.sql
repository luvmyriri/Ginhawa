-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 07:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('ginhawa@gmail.com', '$2y$10$yPiDT6Ez3oCXVdkiopOqQ.tyx6/N6OXAyOeUc3vwpDvubL24fjDWy');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(1, 1, 1, 1, '2022-06-03'),
(2, 1, 2, 1, '2025-03-13'),
(4, 3, 3, 1, '2025-03-14'),
(5, 6, 1, 9, '2025-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `doctel` text DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  `ptid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `doctel`, `specialties`, `ptid`) VALUES
(1, 'doctor@ginhawa.com', 'Test Doctor', '123', '0110000000', 1, NULL),
(5, 'marcalexis_099@gmail.com', 'Marc Alexis', '$2y$10$LW4V9FmKDbo0YoXMYIycTu1cTtcN6WdbseAaGHWlbWSqejZqeZ3VC', '+639074301972', 14, 'PT002'),
(6, 'vjlamsenlamsen328@gmail.com', 'Layla', '$2y$10$R8fEebjlLFadN8SqAZpf0uHPxu/zzo1UR66ic1wgLBtPPA5Sktt22', '+639073121311', 1, 'PT003'),
(7, 'garciamarc1900@gmail.com', 'maria santiago', '$2y$10$FDLa/qVIffHIIq4zEEuBkOmQ1xHwMwcoeT1Sb9Z5o7ql7nvIgF61i', '+639604385093', 6, 'PT004');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expires`, `created_at`) VALUES
(1, 'alexismarc066@gmail.com', '22afcc52f51914559e9754e7f241e8be09f9c5ca5ee20c093cf1de8c1739e008', '2025-03-30 05:27:39', '2025-03-30 02:27:39'),
(2, 'alexismarc066@gmail.com', 'ebb39dc93423b91c205f71634224ff53b36531062573338ae18608464d797c74', '2025-03-30 05:30:31', '2025-03-30 02:30:31'),
(3, 'alexismarc066@gmail.com', 'ffc2ff003341bf2532f768bb134ced3a7ffad510e95efda2828360598b0cf359', '2025-03-30 05:30:39', '2025-03-30 02:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `pclientid` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `psex` enum('male','female','other') NOT NULL,
  `age` int(11) NOT NULL,
  `ptel` text DEFAULT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `code_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `pclientid`, `pdob`, `psex`, `age`, `ptel`, `verification_code`, `code_expiry`) VALUES
(10, 'vjlamsenlamsen900@gmail.com', 'Marc Alexis Natividad Evangelista', '$2y$10$8.Cz92t/RY1sV3SApp5bSe1ckO282Vezh4fSMznhLzYRzqQUbJ.c2', 'CL256', '2005-01-05', 'male', 20, '+639073040705', NULL, NULL),
(11, 'evangelistamarcalexis05@gmail.com', 'Val Javez Lamsen', '$2y$10$5LFQpPrx59Kl13FGAH15nOTeKrL7qBCAf/5flOAilYYCzx0UP0oWe', 'CL802', '2005-01-05', 'male', 20, '+639075715112', NULL, NULL),
(12, 'vjlamsenlamsen238@gmail.com', 'Val Javez Lamsen', '$2y$10$E7MBtEO.Kt4h80haPU3zcuhtQadOZZEfmNj5YmXdgVdfDHeeCNB1.', 'CL003', '2005-01-05', 'male', 20, '+639074319031', NULL, NULL),
(13, 'alexismarc066@gmail.com', 'Jerald Galdiano', '$2y$10$MDJbmakNTCdEXT11yImBJuy/TAdAnH01/9rmiVSEb7Faljxr3Ej9e', 'CL728', '2005-01-05', 'male', 20, '+639074151513', NULL, NULL),
(14, 'gene.tabios13@gmail.com', 'Marc Evangelista', '$2y$10$mTcJFQyfHh/7uD3S6A6gIuG9obT.VogkZI35KEVz2hA6S3D3okbCW', 'CL333', '2005-01-05', 'male', 20, '+639075131231', '596375', '2025-03-14 06:41:00'),
(15, 'galdianojeraldg@gmail.com', 'Jerald Galdiano', '$2y$10$7.ddC8.kncTwf6CkXZOY4ONOE2LWVtfiJLC8.OJ0xQsoud5qkHiHi', 'CL803', '2007-03-08', 'male', 18, '+639954949299', NULL, NULL),
(16, 'marcmasmela@gmail.com', 'Johnemmanuel Nalang', '$2y$10$hqs4u9BQ9kZ/H0YlVUA6GuIZgnL0J1.jJCEKIdadJq5vkyuAlQNBK', 'CL516', '2005-01-28', 'male', 20, '+639086753121', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_requests`
--

CREATE TABLE `patient_requests` (
  `request_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_requests`
--

INSERT INTO `patient_requests` (`request_id`, `patient_id`, `doctor_id`, `title`, `session_date`, `session_time`, `status`, `request_date`) VALUES
(1, 13, 5, 'Anxiety', '2025-04-01', '12:07:00', 'approved', '2025-03-30 04:07:16'),
(2, 13, 5, 'Depression', '2025-04-01', '14:15:00', 'approved', '2025-03-30 04:15:03'),
(3, 13, 5, 'Anxiety', '2025-04-02', '13:27:00', 'approved', '2025-03-30 04:27:23'),
(4, 13, 5, 'Malicious', '2025-04-03', '05:20:00', 'approved', '2025-03-30 04:28:23'),
(5, 13, 5, 'Anxiety', '2025-03-31', '13:33:00', 'approved', '2025-03-30 04:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(17, '5', 'Depression', '2025-04-01', '11:25:00', 5),
(18, '5', 'Anxiety', '2025-03-31', '23:29:00', 2),
(19, '5', 'anxiety', '2025-03-30', '17:30:00', 3),
(20, '5', 'Depression', '2025-04-01', '14:15:00', 10),
(21, '5', 'Anxiety', '2025-04-01', '12:07:00', 10),
(22, '5', 'Malicious', '2025-04-03', '05:20:00', 10),
(23, '5', 'Anxiety', '2025-03-31', '12:36:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session_requests`
--

CREATE TABLE `session_requests` (
  `request_id` int(11) NOT NULL,
  `docid` int(11) DEFAULT NULL,
  `num_sessions` int(11) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_requests`
--

INSERT INTO `session_requests` (`request_id`, `docid`, `num_sessions`, `session_date`, `session_time`, `status`, `request_date`, `title`) VALUES
(1, 5, 5, '2025-03-30', '11:08:00', 'rejected', '2025-03-30 02:08:48', ''),
(2, 5, 5, '2025-03-31', '10:14:00', 'approved', '2025-03-30 02:12:45', ''),
(3, 5, 5, '2025-03-30', '11:21:00', 'approved', '2025-03-30 02:22:01', ''),
(4, 6, 2, '2025-03-31', '11:23:00', 'approved', '2025-03-30 02:23:29', ''),
(5, 5, 2, '2025-03-31', '12:07:00', 'approved', '2025-03-30 03:07:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin1@ginhawa.com', 'a'),
('alexismarc066@gmail.com', 'p'),
('doctor@ginhawa.com', 'd'),
('evangelistamarcalexis05@gmail.com', 'p'),
('galdianojeraldg@gmail.com', 'p'),
('garciamarc1900@gmail.com', 'd'),
('genetabios@gmail.com', 'p'),
('ginhawa123@gmail.com', 'a'),
('ginhawa@gmail.com', 'a'),
('marcalexis05@gmail.com', 'p'),
('marcalexis99@gmail.com', 'p'),
('marcalexis@gmail.com', 'p'),
('marcalexis_099@gmail.com', 'd'),
('marcjustine@gmail.com', 'p'),
('marcmasmela@gmail.com', 'p'),
('patient@ginhawa.com', 'p'),
('valgene08@gmail.com', 'p'),
('val_lamsen89@gmail.com', 'p'),
('vjlamsenlamsen18@gmail.com', 'p'),
('vjlamsenlamsen238@gmail.com', 'p'),
('vjlamsenlamsen280@gmail.com', 'p'),
('vjlamsenlamsen28@gmail.com', 'p'),
('vjlamsenlamsen29@gmail.com', 'p'),
('vjlamsenlamsen300@gmail.com', 'p'),
('vjlamsenlamsen308@gmail.com', 'p'),
('vjlamsenlamsen328@gmail.com', 'd'),
('vjlamsenlamsen38@gmail.com', 'p'),
('vjlamsenlamsen398@gmail.com', 'p'),
('vjlamsenlamsen900@gmail.com', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD UNIQUE KEY `ptid` (`ptid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `patient_requests`
--
ALTER TABLE `patient_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `session_requests`
--
ALTER TABLE `session_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `patient_requests`
--
ALTER TABLE `patient_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `session_requests`
--
ALTER TABLE `session_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_requests`
--
ALTER TABLE `patient_requests`
  ADD CONSTRAINT `patient_requests_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`pid`),
  ADD CONSTRAINT `patient_requests_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`docid`);

--
-- Constraints for table `session_requests`
--
ALTER TABLE `session_requests`
  ADD CONSTRAINT `session_requests_ibfk_1` FOREIGN KEY (`docid`) REFERENCES `doctor` (`docid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
