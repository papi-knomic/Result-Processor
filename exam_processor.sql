-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2020 at 08:59 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam_processor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(20) NOT NULL,
  `user_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `user_Password`) VALUES
('admin', 'knomic'),
('sam', 'knomic');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CourseName` text NOT NULL,
  `Level` int(5) NOT NULL,
  `Department` text NOT NULL,
  `CourseCode` text NOT NULL,
  `Lecturer` text NOT NULL,
  `CourseUnit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseName`, `Level`, `Department`, `CourseCode`, `Lecturer`, `CourseUnit`) VALUES
('Mathematics', 300, 'Computer Science', 'MTH301', 'Mr Oni', 3),
('Benin People & Culure', 300, 'Computer Science', 'GNS302', 'Mr Apata', 2),
('Rap', 300, 'Computer Science', 'MUS301', 'JohnBull', 3);

-- --------------------------------------------------------

--
-- Table structure for table `csc_300_1sem`
--

CREATE TABLE IF NOT EXISTS `csc_300_1sem` (
  `MatricNo` varchar(100) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `TotalScore` int(5) NOT NULL,
  `GPA` text NOT NULL,
  `Class` text NOT NULL,
  `FRN301` int(3) NOT NULL,
  `GNS302` int(3) NOT NULL,
  `CSC301` int(3) NOT NULL,
  `CSC303` int(3) NOT NULL,
  `CSC305` int(3) NOT NULL,
  `CSC307` int(3) NOT NULL,
  `CSC309` int(3) NOT NULL,
  `CSC311` int(3) NOT NULL,
  `CSC313` int(3) NOT NULL,
  `CSC317` int(3) NOT NULL,
  KEY `MatricNo` (`MatricNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc_300_1sem`
--

INSERT INTO `csc_300_1sem` (`MatricNo`, `FirstName`, `LastName`, `TotalScore`, `GPA`, `Class`, `FRN301`, `GNS302`, `CSC301`, `CSC303`, `CSC305`, `CSC307`, `CSC309`, `CSC311`, `CSC313`, `CSC317`) VALUES
('01231', 'Elizabeth', 'Stanley', 771, '3.779', '2nd Upper', 87, 63, 69, 74, 88, 91, 73, 62, 77, 87);

-- --------------------------------------------------------

--
-- Table structure for table `csc_300_2sem`
--

CREATE TABLE IF NOT EXISTS `csc_300_2sem` (
  `MatricNo` varchar(25) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `TotalScore` int(5) NOT NULL,
  `GPA` text NOT NULL,
  `Class` text NOT NULL,
  `FRN302` int(3) NOT NULL,
  `GNS301` int(3) NOT NULL,
  `CSC300` int(3) NOT NULL,
  `CSC302` int(3) NOT NULL,
  `CSC304` int(3) NOT NULL,
  `CSC306` int(3) NOT NULL,
  `CSC308` int(3) NOT NULL,
  `CSC310` int(3) NOT NULL,
  `CSC312` int(3) NOT NULL,
  `CSC314` int(3) NOT NULL,
  KEY `MatricNo` (`MatricNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc_300_2sem`
--

INSERT INTO `csc_300_2sem` (`MatricNo`, `FirstName`, `LastName`, `TotalScore`, `GPA`, `Class`, `FRN302`, `GNS301`, `CSC300`, `CSC302`, `CSC304`, `CSC306`, `CSC308`, `CSC310`, `CSC312`, `CSC314`) VALUES
('017/CSC/036', 'Samson', 'Moses', 770, '3.900', '2nd Upper', 60, 89, 73, 99, 87, 57, 77, 83, 84, 61),
('01231', 'Elizabeth', 'Stanley', 817, '4.105', '2nd Upper', 83, 77, 90, 75, 83, 92, 78, 84, 67, 88);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `username` text NOT NULL,
  `password` varchar(20) NOT NULL,
  `nameofuser` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContactNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `nameofuser`, `Email`, `ContactNo`) VALUES
('sam', 'knomic', 'Moses', 'knomic10@gmail.com', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `studentregistration`
--

CREATE TABLE IF NOT EXISTS `studentregistration` (
  `MatricNo` varchar(12) NOT NULL,
  `Fname` text NOT NULL,
  `Sname` text NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `ContactNo` varchar(25) NOT NULL,
  `EmailID` varchar(30) NOT NULL,
  `Age` int(4) NOT NULL,
  `Gender` text NOT NULL,
  `Department` text NOT NULL,
  `Level` int(4) NOT NULL,
  PRIMARY KEY (`MatricNo`),
  UNIQUE KEY `MatricNo` (`MatricNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentregistration`
--

INSERT INTO `studentregistration` (`MatricNo`, `Fname`, `Sname`, `Address`, `ContactNo`, `EmailID`, `Age`, `Gender`, `Department`, `Level`) VALUES
('01231', 'Elizabeth', 'Stanley', 'No 6 Sike COdji Street, Ketu, Lagos', '817256766', 'igbunumoses@gmail.com', 21, 'F', 'Computer Science', 300),
('017/CSC/036', 'Samson', 'Moses', 'Arikawe Street', '08172567660', 'knomic10@gmail.com', 33, 'M', 'Computer Science', 300);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `csc_300_1sem`
--
ALTER TABLE `csc_300_1sem`
  ADD CONSTRAINT `csc_300_1sem_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `studentregistration` (`MatricNo`);

--
-- Constraints for table `csc_300_2sem`
--
ALTER TABLE `csc_300_2sem`
  ADD CONSTRAINT `csc_300_2sem_ibfk_1` FOREIGN KEY (`MatricNo`) REFERENCES `studentregistration` (`MatricNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
