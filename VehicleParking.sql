-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2023 at 05:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VehicleParking`
--

-- --------------------------------------------------------

--
-- Table structure for table `HOURS_OTHERS`
--

CREATE TABLE `HOURS_OTHERS` (
  `id_no` varchar(30) NOT NULL,
  `slot_id` varchar(10) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HOURS_OTHERS`
--

INSERT INTO `HOURS_OTHERS` (`id_no`, `slot_id`, `start_time`, `end_time`) VALUES
('4567 5555', 'AD106', '2023-01-23 11:14:34', '2023-01-23 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `HOURS_USER`
--

CREATE TABLE `HOURS_USER` (
  `user_id` varchar(20) NOT NULL,
  `slot_id` varchar(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HOURS_USER`
--

INSERT INTO `HOURS_USER` (`user_id`, `slot_id`, `start_time`, `end_time`) VALUES
('01jst20is020', 'GB006', '2023-01-10 12:24:59', '2023-01-24 20:55:09'),
('528', 'GB014', '2023-01-10 12:27:47', '2023-01-10 12:29:20'),
('01jst20is020', 'PS001', '2023-01-10 12:40:24', '2023-01-24 20:55:09'),
('01jst20is026', 'AD012', '2023-01-10 21:57:37', '2023-01-12 18:35:02'),
('01jst20is020', 'PS001', '2023-01-11 10:56:15', '2023-01-24 20:55:09'),
('01jst20is020', 'GB001', '2023-01-12 18:31:35', '2023-01-24 20:55:09'),
('01jst20is020', 'AD011', '2023-01-23 03:07:36', '2023-01-24 20:55:09'),
('01jst20is020', 'AD010', '2023-01-24 20:19:27', '2023-01-24 20:55:09'),
('01jst20is020', 'PS001', '2023-01-24 20:55:08', '2023-01-24 20:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `OTHERS`
--

CREATE TABLE `OTHERS` (
  `id_type` varchar(30) NOT NULL,
  `id_no` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `alt_phone_no` varchar(10) DEFAULT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `vehicle_no` varchar(10) NOT NULL,
  `visit_purpose` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `OTHERS`
--

INSERT INTO `OTHERS` (`id_type`, `id_no`, `name`, `phone_no`, `alt_phone_no`, `vehicle_type`, `vehicle_no`, `visit_purpose`) VALUES
('', '', '', '', '', '', '', ''),
('PAN', '4567 5555', 'HRITHIK RAJ', '9128287223', '9128287223', 'car', 'ka 06 1278', 'dfgv');

-- --------------------------------------------------------

--
-- Table structure for table `PARKING_LOT`
--

CREATE TABLE `PARKING_LOT` (
  `slot_id` varchar(20) NOT NULL,
  `wing_code` varchar(10) NOT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `reserved_for` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PARKING_LOT`
--

INSERT INTO `PARKING_LOT` (`slot_id`, `wing_code`, `vehicle_type`, `reserved_for`) VALUES
('AD001', 'AD', 'BIKE', 'FACULTY'),
('AD002', 'AD', 'BIKE', 'FACULTY'),
('AD003', 'AD', 'CAR', 'FACULTY'),
('AD004', 'AD', 'CAR', 'FACULTY'),
('AD005', 'AD', 'BUS', 'STAFF'),
('AD006', 'AD', 'BUS', 'STAFF'),
('AD00P', 'AD', 'CAR', 'PRINCIPAL'),
('AD00R', 'AD', 'CAR', 'REGISTRAR'),
('AD010', 'AD', 'BIKE', 'STUDENT'),
('AD011', 'AD', 'BIKE', 'STUDENT'),
('AD012', 'AD', 'CAR', 'STUDENT'),
('AD013', 'AD', 'CAR', 'STUDENT'),
('AD0VC', 'AD', 'CAR', 'VICE PRINCIPAL'),
('AD104', 'AD', 'CAR', 'OTHERS'),
('AD105', 'AD', 'CAR', 'OTHERS'),
('AD106', 'AD', 'BIKE', 'OTHERS'),
('AD107', 'AD', 'BIKE', 'OTHERS'),
('GB001', 'GB', 'BIKE', 'STUDENT'),
('GB002', 'GB', 'BIKE', 'STUDENT'),
('GB003', 'GB', 'BIKE', 'STUDENT'),
('GB004', 'GB', 'BIKE', 'STUDENT'),
('GB005', 'GB', 'BIKE', 'STUDENT'),
('GB006', 'GB', 'CAR', 'STUDENT'),
('GB007', 'GB', 'CAR', 'STUDENT'),
('GB008', 'GB', 'CAR', 'STUDENT'),
('GB009', 'GB', 'BIKE', 'FACULTY'),
('GB010', 'GB', 'BIKE', 'FACULTY'),
('GB011', 'GB', 'BIKE', 'FACULTY'),
('GB012', 'GB', 'BIKE', 'FACULTY'),
('GB013', 'GB', 'BIKE', 'FACULTY'),
('GB014', 'GB', 'CAR', 'FACULTY'),
('GB015', 'GB', 'CAR', 'FACULTY'),
('GB016', 'GB', 'CAR', 'FACULTY'),
('GB017', 'GB', 'BIKE', 'STAFF'),
('GB018', 'GB', 'BIKE', 'STAFF'),
('GB019', 'GB', 'BIKE', 'OTHERS'),
('GB020', 'GB', 'CAR', 'OTHERS'),
('GB104', 'GB', 'CAR', 'OTHERS'),
('GB105', 'GB', 'CAR', 'OTHERS'),
('GB106', 'GB', 'BIKE', 'OTHERS'),
('GB107', 'GB', 'BIKE', 'OTHERS'),
('MCV001', 'MCV', 'BIKE', 'FACULTY'),
('MCV002', 'MCV', 'BIKE', 'FACULTY'),
('MCV003', 'MCV', 'BIKE', 'STUDENT'),
('MCV004', 'MCV', 'BIKE', 'STUDENT'),
('MCV005', 'MCV', 'BIKE', 'OTHERS'),
('MCV006', 'MCV', 'BIKE', 'OTHERS'),
('MCV007', 'MCV', 'CAR', 'FACULTY'),
('MCV008', 'MCV', 'CAR', 'STUDENT'),
('MCV009', 'MCV', 'CAR', 'OTHERS'),
('PS001', 'PS', 'BIKE', 'STUDENT'),
('PS002', 'PS', 'BIKE', 'STUDENT'),
('PS003', 'PS', 'BIKE', 'STUDENT'),
('PS004', 'PS', 'BIKE', 'STUDENT'),
('PS005', 'PS', 'BIKE', 'STUDENT'),
('PS006', 'PS', 'BIKE', 'FACULTY'),
('PS007', 'PS', 'BIKE', 'FACULTY'),
('PS008', 'PS', 'BIKE', 'FACULTY'),
('PS009', 'PS', 'BIKE', 'FACULTY'),
('PS010', 'PS', 'BIKE', 'FACULTY'),
('PS011', 'PS', 'CAR', 'STUDENT'),
('PS012', 'PS', 'CAR', 'STUDENT'),
('PS013', 'PS', 'CAR', 'STUDENT'),
('PS014', 'PS', 'CAR', 'FACULTY'),
('PS015', 'PS', 'CAR', 'FACULTY'),
('PS016', 'PS', 'CAR', 'FACULTY'),
('PS017', 'PS', 'BIKE', 'STAFF'),
('PS018', 'PS', 'BIKE', 'STAFF'),
('PS019', 'PS', 'BIKE', 'OTHERS'),
('PS020', 'PS', 'CAR', 'OTHERS'),
('PS104', 'PS', 'BIKE', 'OTHERS'),
('PS105', 'PS', 'CAR', 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_desig` varchar(10) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(220) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `alt_phone_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_desig`, `user_id`, `username`, `email`, `password`, `phone_no`, `alt_phone_no`) VALUES
('STUDENT', '01jst20is020', 'Hrithik', 'rajhrithik523@gmail.com', '$2y$10$ForaGiv0G4ckRsq2H56yBObyfX/9DoD7y4F9fvM8H4kCrL25lfwMi', '9128287223', ''),
('student', '01jst20is026', 'navneet swaraj', 'navneetswaraj149@gmail.com', 'nav123', '9090909090', '8888888888'),
('admin', 'admin123', 'Hrithik', 'rajhrithik522@gmail.com', 'Admin@1234', '9128287223', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HOURS_OTHERS`
--
ALTER TABLE `HOURS_OTHERS`
  ADD KEY `id_no` (`id_no`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `HOURS_USER`
--
ALTER TABLE `HOURS_USER`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `OTHERS`
--
ALTER TABLE `OTHERS`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `PARKING_LOT`
--
ALTER TABLE `PARKING_LOT`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `HOURS_OTHERS`
--
ALTER TABLE `HOURS_OTHERS`
  ADD CONSTRAINT `hours_others_ibfk_1` FOREIGN KEY (`id_no`) REFERENCES `OTHERS` (`id_no`),
  ADD CONSTRAINT `hours_others_ibfk_2` FOREIGN KEY (`slot_id`) REFERENCES `PARKING_LOT` (`slot_id`);

--
-- Constraints for table `HOURS_USER`
--
ALTER TABLE `HOURS_USER`
  ADD CONSTRAINT `hours_user_ibfk_2` FOREIGN KEY (`slot_id`) REFERENCES `PARKING_LOT` (`slot_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
