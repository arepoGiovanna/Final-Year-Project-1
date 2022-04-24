-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 06:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinabalu5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `adminID` int(10) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `adminPass` varchar(100) NOT NULL,
  `adminEmail` varchar(100) NOT NULL,
  `adminConnum` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`adminID`, `adminName`, `adminPass`, `adminEmail`, `adminConnum`, `user_type`, `verified`) VALUES
(1, 'admin', 'fcea920f7412b5da7be0cf42b8c93759', 'admin@admin.com', '0102152907', 'admin', 0),
(3, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(4, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(5, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(6, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(7, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(8, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(9, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(10, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0),
(11, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assign_mguide`
--

CREATE TABLE `assign_mguide` (
  `hikerID` int(10) NOT NULL,
  `mguideID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bagent_account`
--

CREATE TABLE `bagent_account` (
  `bAgent_ID` int(10) NOT NULL,
  `bAgent_name` varchar(100) NOT NULL,
  `bAgent_pword` varchar(100) NOT NULL,
  `bAgent_email` varchar(100) NOT NULL,
  `bAgent_cNum` varchar(100) NOT NULL,
  `agname` varchar(100) NOT NULL,
  `comname` varchar(100) NOT NULL,
  `cert_img` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `routeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bagent_account`
--

INSERT INTO `bagent_account` (`bAgent_ID`, `bAgent_name`, `bAgent_pword`, `bAgent_email`, `bAgent_cNum`, `agname`, `comname`, `cert_img`, `user_type`, `routeID`) VALUES
(1, 'Nigel', '81dc9bdb52d04dc20036dbd8313ed055', '1234@s.com', '111223', 'red hot chili pepper', 'headstrong', 'first_cert.jpg', 'booking agent', 0),
(2, 'nigel123', 'd93591bdf7860e1e4ee2fca799911215', 'noEmail@gmail.com', '4139980', 'Tour Tour', 'Red Hot Chilli Peppers', 'certificate1.png', 'booking agent', 0),
(3, 'Negus', 'fcea920f7412b5da7be0cf42b8c93759', 'nigel@gmaile.com', '857493730', 'Yap Ai Wei', 'Lok Yuk', 'certificate1.png', 'booking agent', 0),
(4, 'Isis', '81dc9bdb52d04dc20036dbd8313ed055', '123@La.com', '775408978', 'Yu Yu', 'Ya Ya', 'first_cert.jpg', 'booking agent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hiker_account`
--

CREATE TABLE `hiker_account` (
  `hikerID` int(10) NOT NULL,
  `hikerUname` varchar(100) NOT NULL,
  `hikerPword` varchar(100) NOT NULL,
  `hikerEmail` varchar(100) NOT NULL,
  `hiker_pNum` varchar(100) NOT NULL,
  `hiker_nation` varchar(30) NOT NULL,
  `enquiries` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `routeID` int(11) NOT NULL,
  `MtGuideID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hiker_account`
--

INSERT INTO `hiker_account` (`hikerID`, `hikerUname`, `hikerPword`, `hikerEmail`, `hiker_pNum`, `hiker_nation`, `enquiries`, `user_type`, `routeID`, `MtGuideID`) VALUES
(3, 'nigel', 'fcea920f7412b5da7be0cf42b8c93759', 'nigel@gmail.com', '0102152907', '', '', '	\r\nhiker', 0, 0),
(4, 'arepo', 'fcea920f7412b5da7be0cf42b8c93759', 'arepo@gmail.com', '0102152907', '', '', '	\r\nhiker', 0, 0),
(5, 'hoshi', '81dc9bdb52d04dc20036dbd8313ed055', 'hoshi@gmail.com', '2134', '', '', '	\r\nhiker', 0, 0),
(6, 'Aang', '81dc9bdb52d04dc20036dbd8313ed055', 'aang@apu.com', '45678', '', '', '	\r\nhiker', 0, 0),
(7, 'eve', '81dc9bdb52d04dc20036dbd8313ed055', 'eve@eve.com', '1234', '', '', '	\r\nhiker', 0, 0),
(8, 'Namine', '827ccb0eea8a706c4c34a16891f84e7b', 'fake@email.com', '12344', '', '', 'hiker', 0, 0),
(9, 'modern', '81dc9bdb52d04dc20036dbd8313ed055', 'modern@m.com', '413', '', '', 'hiker', 0, 0),
(10, 'jolyne', '81dc9bdb52d04dc20036dbd8313ed055', 'jolyne@g.com', '4563345', '', '', 'hiker', 0, 0),
(11, 'KY', '3c12398638c9a6f164935f3aac770745', 'k@y.com', '2345674', '', '', 'hiker', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mguide_account`
--

CREATE TABLE `mguide_account` (
  `mguideID` int(10) NOT NULL,
  `mguide_uname` varchar(100) NOT NULL,
  `mguide_pass` varchar(100) NOT NULL,
  `mguide_email` varchar(100) NOT NULL,
  `mguide_cpr_cert1` varchar(255) NOT NULL,
  `mguide_cpr_cert2` varchar(255) NOT NULL,
  `mguide_phone` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `routeID` int(11) NOT NULL,
  `hikerID` int(10) NOT NULL,
  `bAgent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mguide_account`
--

INSERT INTO `mguide_account` (`mguideID`, `mguide_uname`, `mguide_pass`, `mguide_email`, `mguide_cpr_cert1`, `mguide_cpr_cert2`, `mguide_phone`, `user_type`, `routeID`, `hikerID`, `bAgent_ID`) VALUES
(1, 'Joshua', '81dc9bdb52d04dc20036dbd8313ed055', 'joshua@gmail.com', 'certificate1.png', 'second_cert.jpg', '111223', 'mountain guide', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sagent_account`
--

CREATE TABLE `sagent_account` (
  `sAgent_ID` int(10) NOT NULL,
  `sAgent_name` varchar(100) NOT NULL,
  `sAgent_pass` varchar(100) NOT NULL,
  `sAgent_email` varchar(100) NOT NULL,
  `sAgent_phone` varchar(100) NOT NULL,
  `sAgent_uni` varchar(100) NOT NULL,
  `sAgent_course` varchar(100) NOT NULL,
  `sAgent_cgpa` float NOT NULL,
  `sAgent_cert` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sagent_account`
--

INSERT INTO `sagent_account` (`sAgent_ID`, `sAgent_name`, `sAgent_pass`, `sAgent_email`, `sAgent_phone`, `sAgent_uni`, `sAgent_course`, `sAgent_cgpa`, `sAgent_cert`, `user_type`) VALUES
(1, 'uwu', '81dc9bdb52d04dc20036dbd8313ed055', 'uwu@uwu.com', '0102152907', 'UITM', 'Business', 4, 'certificate1.png', 'sales agent'),
(3, 'FireMadeAsh', 'f299397f9f986ece3f6ab8365fd56ad4', 'fire@fire.com', '13424623', 'CUCMS', 'Business', 3.4, 'first_cert.jpg', 'sales agent'),
(4, 'AngAng', '81dc9bdb52d04dc20036dbd8313ed055', 'AngAng@Kelvin.com', '1234635', 'Ang Kelvin', 'business', 3, 'second_cert.jpg', 'sales agent');

-- --------------------------------------------------------

--
-- Table structure for table `sagent_product`
--

CREATE TABLE `sagent_product` (
  `routeID` int(11) NOT NULL,
  `route` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `capacity` int(100) NOT NULL,
  `accom` varchar(30) NOT NULL,
  `price_myr` int(200) NOT NULL,
  `price_intl` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sagent_product`
--

INSERT INTO `sagent_product` (`routeID`, `route`, `date`, `capacity`, `accom`, `price_myr`, `price_intl`) VALUES
(1, 'Ranau trail', '2022-04-15', 23, 'Aki House', 123, 123),
(2, 'Ranau trail', '2022-04-15', 23, 'Aki House', 123, 123),
(3, 'Via Ferrata', '2022-04-09', 20, 'Suria Rooms', 123, 123),
(4, 'Kota Belud trail', '2022-05-01', 30, 'Rumah Si Gaman', 900, 1000),
(5, 'Via Ferrata', '2023-01-16', 40, 'Suria Rooms', 800, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `assign_mguide`
--
ALTER TABLE `assign_mguide`
  ADD KEY `assign_fk2` (`hikerID`),
  ADD KEY `assign_fk3` (`mguideID`);

--
-- Indexes for table `bagent_account`
--
ALTER TABLE `bagent_account`
  ADD PRIMARY KEY (`bAgent_ID`);

--
-- Indexes for table `hiker_account`
--
ALTER TABLE `hiker_account`
  ADD PRIMARY KEY (`hikerID`);

--
-- Indexes for table `mguide_account`
--
ALTER TABLE `mguide_account`
  ADD PRIMARY KEY (`mguideID`);

--
-- Indexes for table `sagent_account`
--
ALTER TABLE `sagent_account`
  ADD PRIMARY KEY (`sAgent_ID`);

--
-- Indexes for table `sagent_product`
--
ALTER TABLE `sagent_product`
  ADD PRIMARY KEY (`routeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `adminID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bagent_account`
--
ALTER TABLE `bagent_account`
  MODIFY `bAgent_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hiker_account`
--
ALTER TABLE `hiker_account`
  MODIFY `hikerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mguide_account`
--
ALTER TABLE `mguide_account`
  MODIFY `mguideID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sagent_account`
--
ALTER TABLE `sagent_account`
  MODIFY `sAgent_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sagent_product`
--
ALTER TABLE `sagent_product`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_mguide`
--
ALTER TABLE `assign_mguide`
  ADD CONSTRAINT `assign_fk2` FOREIGN KEY (`hikerID`) REFERENCES `hiker_account` (`hikerID`),
  ADD CONSTRAINT `assign_fk3` FOREIGN KEY (`mguideID`) REFERENCES `mguide_account` (`mguideID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
