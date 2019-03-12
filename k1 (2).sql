-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 07:40 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k1`
--

-- --------------------------------------------------------

--
-- Table structure for table `og_attendance`
--

CREATE TABLE `og_attendance` (
  `aid` int(11) NOT NULL,
  `att_date` datetime NOT NULL,
  `att_course` int(11) NOT NULL,
  `att_student` int(11) NOT NULL,
  `att_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `og_attendance`
--

INSERT INTO `og_attendance` (`aid`, `att_date`, `att_course`, `att_student`, `att_status`) VALUES
(1, '2019-03-04 00:00:00', 1, 1, 1),
(2, '2019-03-04 00:00:00', 1, 2, 1),
(3, '2019-03-04 00:00:00', 1, 3, 0),
(4, '2019-03-04 00:00:00', 1, 4, 0),
(5, '2019-03-04 00:00:00', 1, 5, 1),
(6, '2019-03-04 00:00:00', 1, 6, 1),
(7, '2019-03-04 00:00:00', 1, 7, 1),
(8, '2019-03-04 00:00:00', 1, 8, 0),
(9, '2019-03-04 00:00:00', 1, 9, 1),
(10, '2019-03-04 00:00:00', 1, 10, 1),
(11, '2019-03-04 00:00:00', 2, 1, 1),
(12, '2019-03-04 00:00:00', 2, 2, 1),
(13, '2019-03-04 00:00:00', 2, 3, 1),
(14, '2019-03-04 00:00:00', 2, 4, 0),
(15, '2019-03-04 00:00:00', 2, 5, 1),
(16, '2019-03-04 00:00:00', 2, 6, 1),
(17, '2019-03-04 00:00:00', 2, 7, 1),
(18, '2019-03-04 00:00:00', 2, 8, 1),
(19, '2019-03-04 00:00:00', 2, 9, 1),
(20, '2019-03-04 00:00:00', 2, 10, 1),
(21, '2019-03-04 00:00:00', 3, 1, 1),
(22, '2019-03-04 00:00:00', 3, 2, 0),
(23, '2019-03-04 00:00:00', 3, 3, 0),
(24, '2019-03-04 00:00:00', 3, 4, 0),
(25, '2019-03-04 00:00:00', 3, 5, 0),
(26, '2019-03-04 00:00:00', 3, 6, 1),
(27, '2019-03-04 00:00:00', 3, 7, 1),
(28, '2019-03-04 00:00:00', 3, 8, 1),
(29, '2019-03-04 00:00:00', 3, 9, 1),
(30, '2019-03-04 00:00:00', 3, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `og_course`
--

CREATE TABLE `og_course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `og_course`
--

INSERT INTO `og_course` (`courseid`, `coursename`) VALUES
(1, 'Software Engineering'),
(2, 'DBMS'),
(3, 'Internet Security'),
(4, 'Networking'),
(5, 'Discrete Mathematics'),
(6, 'Business Process Management');

-- --------------------------------------------------------

--
-- Table structure for table `og_student`
--

CREATE TABLE `og_student` (
  `studentid` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `og_student`
--

INSERT INTO `og_student` (`studentid`, `studentname`) VALUES
(1, 'Kavinda Silva'),
(2, 'Kushal Peiris'),
(3, 'Dinuji Randika'),
(4, 'Luckshara '),
(5, 'Chamika'),
(6, 'Roshan'),
(7, 'Vishni'),
(8, 'Rashmika'),
(9, 'Sithara'),
(10, 'Eranda');

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `Age` int(2) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `CP_Type` varchar(16) DEFAULT NULL,
  `Resting_BP` int(3) DEFAULT NULL,
  `SerChol` int(3) DEFAULT NULL,
  `FBS` varchar(3) DEFAULT NULL,
  `Rest_ECG` varchar(9) DEFAULT NULL,
  `Max_HR` int(3) DEFAULT NULL,
  `Ex_IA` varchar(3) DEFAULT NULL,
  `Vessels` int(1) DEFAULT NULL,
  `HD` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`Age`, `Gender`, `CP_Type`, `Resting_BP`, `SerChol`, `FBS`, `Rest_ECG`, `Max_HR`, `Ex_IA`, `Vessels`, `HD`) VALUES
(70, 'male', 'asymptotic', 130, 322, 'no', 'uncertain', 109, 'no', 3, 'present'),
(67, 'female', 'non-anginal pain', 115, 564, 'no', 'uncertain', 160, 'no', 0, 'absent'),
(57, 'male', 'atypical angina', 124, 261, 'no', 'normal', 141, 'no', 0, 'present'),
(64, 'male', 'asymptotic', 128, 263, 'no', 'normal', 105, 'yes', 1, 'absent'),
(74, 'female', 'atypical angina', 120, 269, 'no', 'uncertain', 121, 'yes', 1, 'absent'),
(65, 'male', 'asymptotic', 120, 177, 'no', 'normal', 140, 'no', 0, 'absent'),
(56, 'male', 'non-anginal pain', 130, 256, 'yes', 'uncertain', 142, 'yes', 1, 'present'),
(59, 'male', 'asymptotic', 110, 239, 'no', 'uncertain', 142, 'yes', 1, 'present'),
(60, 'male', 'asymptotic', 140, 293, 'no', 'uncertain', 170, 'no', 2, 'present'),
(63, 'female', 'asymptotic', 150, 407, 'no', 'uncertain', 154, 'no', 3, 'present'),
(59, 'male', 'asymptotic', 135, 234, 'no', 'normal', 161, 'no', 0, 'absent'),
(53, 'male', 'asymptotic', 142, 226, 'no', 'uncertain', 111, 'yes', 0, 'absent'),
(44, 'male', 'non-anginal pain', 140, 235, 'no', 'uncertain', 180, 'no', 0, 'absent'),
(61, 'male', 'typical angina', 134, 234, 'no', 'normal', 145, 'no', 2, 'present'),
(57, 'female', 'asymptotic', 128, 303, 'no', 'uncertain', 159, 'no', 1, 'absent'),
(71, 'female', 'asymptotic', 112, 149, 'no', 'normal', 125, 'no', 0, 'absent'),
(46, 'male', 'asymptotic', 140, 311, 'no', 'normal', 120, 'yes', 2, 'present'),
(53, 'male', 'asymptotic', 140, 203, 'yes', 'uncertain', 155, 'yes', 0, 'present'),
(64, 'male', 'typical angina', 110, 211, 'no', 'uncertain', 144, 'yes', 0, 'absent'),
(40, 'male', 'typical angina', 140, 199, 'no', 'normal', 178, 'yes', 0, 'absent'),
(67, 'male', 'asymptotic', 120, 229, 'no', 'uncertain', 129, 'yes', 2, 'present'),
(48, 'male', 'atypical angina', 130, 245, 'no', 'uncertain', 180, 'no', 0, 'absent'),
(43, 'male', 'asymptotic', 115, 303, 'no', 'normal', 181, 'no', 0, 'absent'),
(47, 'male', 'asymptotic', 112, 204, 'no', 'normal', 143, 'no', 0, 'absent'),
(54, 'female', 'atypical angina', 132, 288, 'yes', 'uncertain', 159, 'yes', 1, 'absent'),
(48, 'female', 'non-anginal pain', 130, 275, 'no', 'normal', 139, 'no', 0, 'absent'),
(46, 'female', 'asymptotic', 138, 243, 'no', 'uncertain', 152, 'yes', 0, 'absent'),
(51, 'female', 'non-anginal pain', 120, 295, 'no', 'uncertain', 157, 'no', 0, 'absent'),
(58, 'male', 'non-anginal pain', 112, 230, 'no', 'uncertain', 165, 'no', 1, 'present'),
(71, 'female', 'non-anginal pain', 110, 265, 'yes', 'uncertain', 130, 'no', 1, 'absent'),
(57, 'male', 'non-anginal pain', 128, 229, 'no', 'uncertain', 150, 'no', 1, 'present'),
(66, 'male', 'asymptotic', 160, 228, 'no', 'uncertain', 138, 'no', 0, 'absent'),
(37, 'female', 'non-anginal pain', 120, 215, 'no', 'normal', 170, 'no', 0, 'absent'),
(59, 'male', 'asymptotic', 170, 326, 'no', 'uncertain', 140, 'yes', 0, 'present'),
(50, 'male', 'asymptotic', 144, 200, 'no', 'uncertain', 126, 'yes', 0, 'present'),
(48, 'male', 'asymptotic', 130, 256, 'yes', 'uncertain', 150, 'yes', 2, 'present'),
(61, 'male', 'asymptotic', 140, 207, 'no', 'uncertain', 138, 'yes', 1, 'present'),
(59, 'male', 'typical angina', 160, 273, 'no', 'uncertain', 125, 'no', 0, 'present'),
(42, 'male', 'non-anginal pain', 130, 180, 'no', 'normal', 150, 'no', 0, 'absent'),
(48, 'male', 'asymptotic', 122, 222, 'no', 'uncertain', 186, 'no', 0, 'absent'),
(40, 'male', 'asymptotic', 152, 223, 'no', 'normal', 181, 'no', 0, 'present'),
(62, 'female', 'asymptotic', 124, 209, 'no', 'normal', 163, 'no', 0, 'absent'),
(44, 'male', 'non-anginal pain', 130, 233, 'no', 'normal', 179, 'yes', 0, 'absent'),
(46, 'male', 'atypical angina', 101, 197, 'yes', 'normal', 156, 'no', 0, 'absent'),
(59, 'male', 'non-anginal pain', 126, 218, 'yes', 'normal', 134, 'no', 1, 'present'),
(58, 'male', 'non-anginal pain', 140, 211, 'yes', 'uncertain', 165, 'no', 0, 'absent'),
(49, 'male', 'non-anginal pain', 118, 149, 'no', 'uncertain', 126, 'no', 3, 'present'),
(44, 'male', 'asymptotic', 110, 197, 'no', 'uncertain', 177, 'no', 1, 'present'),
(66, 'male', 'atypical angina', 160, 246, 'no', 'normal', 120, 'yes', 3, 'present'),
(65, 'female', 'asymptotic', 150, 225, 'no', 'uncertain', 114, 'no', 3, 'present'),
(42, 'male', 'asymptotic', 136, 315, 'no', 'normal', 125, 'yes', 0, 'present'),
(52, 'male', 'atypical angina', 128, 205, 'yes', 'normal', 184, 'no', 0, 'absent'),
(65, 'female', 'non-anginal pain', 140, 417, 'yes', 'uncertain', 157, 'no', 1, 'absent'),
(63, 'female', 'atypical angina', 140, 195, 'no', 'normal', 179, 'no', 2, 'absent'),
(45, 'female', 'atypical angina', 130, 234, 'no', 'uncertain', 175, 'no', 0, 'absent'),
(41, 'female', 'atypical angina', 105, 198, 'no', 'normal', 168, 'no', 1, 'absent'),
(61, 'male', 'asymptotic', 138, 166, 'no', 'uncertain', 125, 'yes', 1, 'present'),
(60, 'female', 'non-anginal pain', 120, 178, 'yes', 'normal', 96, 'no', 0, 'absent'),
(59, 'female', 'asymptotic', 174, 249, 'no', 'normal', 143, 'yes', 0, 'present'),
(62, 'male', 'atypical angina', 120, 281, 'no', 'uncertain', 103, 'no', 1, 'present'),
(57, 'male', 'non-anginal pain', 150, 126, 'yes', 'normal', 173, 'no', 1, 'absent'),
(51, 'female', 'asymptotic', 130, 305, 'no', 'normal', 142, 'yes', 0, 'present'),
(44, 'male', 'non-anginal pain', 120, 226, 'no', 'normal', 169, 'no', 0, 'absent'),
(60, 'female', 'typical angina', 150, 240, 'no', 'normal', 171, 'no', 0, 'absent'),
(63, 'male', 'typical angina', 145, 233, 'yes', 'uncertain', 150, 'no', 0, 'absent'),
(57, 'male', 'asymptotic', 150, 276, 'no', 'uncertain', 112, 'yes', 1, 'present'),
(51, 'male', 'asymptotic', 140, 261, 'no', 'uncertain', 186, 'yes', 0, 'absent'),
(58, 'female', 'atypical angina', 136, 319, 'yes', 'uncertain', 152, 'no', 2, 'present'),
(44, 'female', 'non-anginal pain', 118, 242, 'no', 'normal', 149, 'no', 1, 'absent'),
(47, 'male', 'non-anginal pain', 108, 243, 'no', 'normal', 152, 'no', 0, 'present'),
(61, 'male', 'asymptotic', 120, 260, 'no', 'normal', 140, 'yes', 1, 'present'),
(57, 'female', 'asymptotic', 120, 354, 'no', 'normal', 163, 'yes', 0, 'absent'),
(70, 'male', 'atypical angina', 156, 245, 'no', 'uncertain', 143, 'no', 0, 'absent'),
(76, 'female', 'non-anginal pain', 140, 197, 'no', 'abnormal', 116, 'no', 0, 'absent'),
(67, 'female', 'asymptotic', 106, 223, 'no', 'normal', 142, 'no', 2, 'absent'),
(45, 'male', 'asymptotic', 142, 309, 'no', 'uncertain', 147, 'yes', 3, 'present'),
(45, 'male', 'asymptotic', 104, 208, 'no', 'uncertain', 148, 'yes', 0, 'absent'),
(39, 'female', 'non-anginal pain', 94, 199, 'no', 'normal', 179, 'no', 0, 'absent'),
(42, 'female', 'non-anginal pain', 120, 209, 'no', 'normal', 173, 'no', 0, 'absent'),
(56, 'male', 'atypical angina', 120, 236, 'no', 'normal', 178, 'no', 0, 'absent'),
(58, 'male', 'asymptotic', 146, 218, 'no', 'normal', 105, 'no', 1, 'present'),
(35, 'male', 'asymptotic', 120, 198, 'no', 'normal', 130, 'yes', 0, 'present'),
(58, 'male', 'asymptotic', 150, 270, 'no', 'uncertain', 111, 'yes', 0, 'present'),
(41, 'male', 'non-anginal pain', 130, 214, 'no', 'uncertain', 168, 'no', 0, 'absent'),
(57, 'male', 'asymptotic', 110, 201, 'no', 'normal', 126, 'yes', 0, 'absent'),
(42, 'male', 'typical angina', 148, 244, 'no', 'uncertain', 178, 'no', 2, 'absent'),
(62, 'male', 'atypical angina', 128, 208, 'yes', 'uncertain', 140, 'no', 0, 'absent'),
(59, 'male', 'typical angina', 178, 270, 'no', 'uncertain', 145, 'no', 0, 'absent'),
(41, 'female', 'atypical angina', 126, 306, 'no', 'normal', 163, 'no', 0, 'absent'),
(50, 'male', 'asymptotic', 150, 243, 'no', 'uncertain', 128, 'no', 0, 'present'),
(59, 'male', 'atypical angina', 140, 221, 'no', 'normal', 164, 'yes', 0, 'absent'),
(61, 'female', 'asymptotic', 130, 330, 'no', 'uncertain', 169, 'no', 0, 'present'),
(54, 'male', 'asymptotic', 124, 266, 'no', 'uncertain', 109, 'yes', 1, 'present'),
(54, 'male', 'asymptotic', 110, 206, 'no', 'uncertain', 108, 'yes', 1, 'present'),
(52, 'male', 'asymptotic', 125, 212, 'no', 'normal', 168, 'no', 2, 'present'),
(47, 'male', 'asymptotic', 110, 275, 'no', 'uncertain', 118, 'yes', 1, 'present'),
(66, 'male', 'asymptotic', 120, 302, 'no', 'uncertain', 151, 'no', 0, 'absent'),
(58, 'male', 'asymptotic', 100, 234, 'no', 'normal', 156, 'no', 1, 'present'),
(64, 'female', 'non-anginal pain', 140, 313, 'no', 'normal', 133, 'no', 0, 'absent'),
(50, 'female', 'atypical angina', 120, 244, 'no', 'normal', 162, 'no', 0, 'absent'),
(44, 'female', 'non-anginal pain', 108, 141, 'no', 'normal', 175, 'no', 0, 'absent'),
(67, 'male', 'asymptotic', 120, 237, 'no', 'normal', 71, 'no', 0, 'present'),
(49, 'female', 'asymptotic', 130, 269, 'no', 'normal', 163, 'no', 0, 'absent'),
(57, 'male', 'asymptotic', 165, 289, 'yes', 'uncertain', 124, 'no', 3, 'present'),
(63, 'male', 'asymptotic', 130, 254, 'no', 'uncertain', 147, 'no', 1, 'present'),
(48, 'male', 'asymptotic', 124, 274, 'no', 'uncertain', 166, 'no', 0, 'present'),
(51, 'male', 'non-anginal pain', 100, 222, 'no', 'normal', 143, 'yes', 0, 'absent'),
(60, 'female', 'asymptotic', 150, 258, 'no', 'uncertain', 157, 'no', 2, 'present'),
(59, 'male', 'asymptotic', 140, 177, 'no', 'normal', 162, 'yes', 1, 'present'),
(45, 'female', 'atypical angina', 112, 160, 'no', 'normal', 138, 'no', 0, 'absent'),
(55, 'female', 'asymptotic', 180, 327, 'no', 'abnormal', 117, 'yes', 0, 'present'),
(41, 'male', 'atypical angina', 110, 235, 'no', 'normal', 153, 'no', 0, 'absent'),
(60, 'female', 'asymptotic', 158, 305, 'no', 'uncertain', 161, 'no', 0, 'present'),
(54, 'female', 'non-anginal pain', 135, 304, 'yes', 'normal', 170, 'no', 0, 'absent'),
(42, 'male', 'atypical angina', 120, 295, 'no', 'normal', 162, 'no', 0, 'absent'),
(49, 'female', 'atypical angina', 134, 271, 'no', 'normal', 162, 'no', 0, 'absent'),
(46, 'male', 'asymptotic', 120, 249, 'no', 'uncertain', 144, 'no', 0, 'present'),
(56, 'female', 'asymptotic', 200, 288, 'yes', 'uncertain', 133, 'yes', 2, 'present'),
(66, 'female', 'typical angina', 150, 226, 'no', 'normal', 114, 'no', 0, 'absent'),
(56, 'male', 'asymptotic', 130, 283, 'yes', 'uncertain', 103, 'yes', 0, 'present'),
(49, 'male', 'non-anginal pain', 120, 188, 'no', 'normal', 139, 'no', 3, 'present'),
(54, 'male', 'asymptotic', 122, 286, 'no', 'uncertain', 116, 'yes', 2, 'present'),
(57, 'male', 'asymptotic', 152, 274, 'no', 'normal', 88, 'yes', 1, 'present'),
(65, 'female', 'non-anginal pain', 160, 360, 'no', 'uncertain', 151, 'no', 0, 'absent'),
(54, 'male', 'non-anginal pain', 125, 273, 'no', 'uncertain', 152, 'no', 1, 'absent'),
(54, 'female', 'non-anginal pain', 160, 201, 'no', 'normal', 163, 'no', 1, 'absent'),
(62, 'male', 'asymptotic', 120, 267, 'no', 'normal', 99, 'yes', 2, 'present'),
(52, 'female', 'non-anginal pain', 136, 196, 'no', 'uncertain', 169, 'no', 0, 'absent'),
(52, 'male', 'atypical angina', 134, 201, 'no', 'normal', 158, 'no', 1, 'absent'),
(60, 'male', 'asymptotic', 117, 230, 'yes', 'normal', 160, 'yes', 2, 'present'),
(63, 'female', 'asymptotic', 108, 269, 'no', 'normal', 169, 'yes', 2, 'present'),
(66, 'male', 'asymptotic', 112, 212, 'no', 'uncertain', 132, 'yes', 1, 'present'),
(42, 'male', 'asymptotic', 140, 226, 'no', 'normal', 178, 'no', 0, 'absent'),
(64, 'male', 'asymptotic', 120, 246, 'no', 'uncertain', 96, 'yes', 1, 'present'),
(54, 'male', 'non-anginal pain', 150, 232, 'no', 'uncertain', 165, 'no', 0, 'absent'),
(46, 'female', 'non-anginal pain', 142, 177, 'no', 'uncertain', 160, 'yes', 0, 'absent'),
(67, 'female', 'non-anginal pain', 152, 277, 'no', 'normal', 172, 'no', 1, 'absent'),
(56, 'male', 'asymptotic', 125, 249, 'yes', 'uncertain', 144, 'yes', 1, 'present'),
(34, 'female', 'atypical angina', 118, 210, 'no', 'normal', 192, 'no', 0, 'absent'),
(57, 'male', 'asymptotic', 132, 207, 'no', 'normal', 168, 'yes', 0, 'absent'),
(64, 'male', 'asymptotic', 145, 212, 'no', 'uncertain', 132, 'no', 2, 'present'),
(59, 'male', 'asymptotic', 138, 271, 'no', 'uncertain', 182, 'no', 0, 'absent'),
(50, 'male', 'non-anginal pain', 140, 233, 'no', 'normal', 163, 'no', 1, 'present'),
(51, 'male', 'typical angina', 125, 213, 'no', 'uncertain', 125, 'yes', 1, 'absent'),
(54, 'male', 'atypical angina', 192, 283, 'no', 'uncertain', 195, 'no', 1, 'present'),
(53, 'male', 'asymptotic', 123, 282, 'no', 'normal', 95, 'yes', 2, 'present'),
(52, 'male', 'asymptotic', 112, 230, 'no', 'normal', 160, 'no', 1, 'present'),
(40, 'male', 'asymptotic', 110, 167, 'no', 'uncertain', 114, 'yes', 0, 'present'),
(58, 'male', 'non-anginal pain', 132, 224, 'no', 'uncertain', 173, 'no', 2, 'present'),
(41, 'female', 'non-anginal pain', 112, 268, 'no', 'uncertain', 172, 'yes', 0, 'absent'),
(41, 'male', 'non-anginal pain', 112, 250, 'no', 'normal', 179, 'no', 0, 'absent'),
(50, 'female', 'non-anginal pain', 120, 219, 'no', 'normal', 158, 'no', 0, 'absent'),
(54, 'female', 'non-anginal pain', 108, 267, 'no', 'uncertain', 167, 'no', 0, 'absent'),
(64, 'female', 'asymptotic', 130, 303, 'no', 'normal', 122, 'no', 2, 'absent'),
(51, 'female', 'non-anginal pain', 130, 256, 'no', 'uncertain', 149, 'no', 0, 'absent'),
(46, 'female', 'atypical angina', 105, 204, 'no', 'normal', 172, 'no', 0, 'absent'),
(55, 'male', 'asymptotic', 140, 217, 'no', 'normal', 111, 'yes', 0, 'present'),
(45, 'male', 'atypical angina', 128, 308, 'no', 'uncertain', 170, 'no', 0, 'absent'),
(56, 'male', 'typical angina', 120, 193, 'no', 'uncertain', 162, 'no', 0, 'absent'),
(66, 'female', 'asymptotic', 178, 228, 'yes', 'normal', 165, 'yes', 2, 'present'),
(38, 'male', 'typical angina', 120, 231, 'no', 'normal', 182, 'yes', 0, 'present'),
(62, 'female', 'asymptotic', 150, 244, 'no', 'normal', 154, 'yes', 0, 'present'),
(55, 'male', 'atypical angina', 130, 262, 'no', 'normal', 155, 'no', 0, 'absent'),
(58, 'male', 'asymptotic', 128, 259, 'no', 'uncertain', 130, 'yes', 2, 'present'),
(43, 'male', 'asymptotic', 110, 211, 'no', 'normal', 161, 'no', 0, 'absent'),
(64, 'female', 'asymptotic', 180, 325, 'no', 'normal', 154, 'yes', 0, 'absent'),
(50, 'female', 'asymptotic', 110, 254, 'no', 'uncertain', 159, 'no', 0, 'absent'),
(53, 'male', 'non-anginal pain', 130, 197, 'yes', 'uncertain', 152, 'no', 0, 'absent'),
(45, 'female', 'asymptotic', 138, 236, 'no', 'uncertain', 152, 'yes', 0, 'absent'),
(65, 'male', 'typical angina', 138, 282, 'yes', 'uncertain', 174, 'no', 1, 'present'),
(69, 'male', 'typical angina', 160, 234, 'yes', 'uncertain', 131, 'no', 1, 'absent'),
(69, 'male', 'non-anginal pain', 140, 254, 'no', 'uncertain', 146, 'no', 3, 'present'),
(67, 'male', 'asymptotic', 100, 299, 'no', 'uncertain', 125, 'yes', 2, 'present'),
(68, 'female', 'non-anginal pain', 120, 211, 'no', 'uncertain', 115, 'no', 0, 'absent'),
(34, 'male', 'typical angina', 118, 182, 'no', 'uncertain', 174, 'no', 0, 'absent'),
(62, 'female', 'asymptotic', 138, 294, 'yes', 'normal', 106, 'no', 3, 'present'),
(51, 'male', 'asymptotic', 140, 298, 'no', 'normal', 122, 'yes', 3, 'present'),
(46, 'male', 'non-anginal pain', 150, 231, 'no', 'normal', 147, 'no', 0, 'present'),
(67, 'male', 'asymptotic', 125, 254, 'yes', 'normal', 163, 'no', 2, 'present'),
(50, 'male', 'non-anginal pain', 129, 196, 'no', 'normal', 163, 'no', 0, 'absent'),
(42, 'male', 'non-anginal pain', 120, 240, 'yes', 'normal', 194, 'no', 0, 'absent'),
(56, 'female', 'asymptotic', 134, 409, 'no', 'uncertain', 150, 'yes', 2, 'present'),
(41, 'male', 'asymptotic', 110, 172, 'no', 'uncertain', 158, 'no', 0, 'present'),
(42, 'female', 'asymptotic', 102, 265, 'no', 'uncertain', 122, 'no', 0, 'absent'),
(53, 'male', 'non-anginal pain', 130, 246, 'yes', 'uncertain', 173, 'no', 3, 'absent'),
(43, 'male', 'non-anginal pain', 130, 315, 'no', 'normal', 162, 'no', 1, 'absent'),
(56, 'male', 'asymptotic', 132, 184, 'no', 'uncertain', 105, 'yes', 1, 'present'),
(52, 'male', 'asymptotic', 108, 233, 'yes', 'normal', 147, 'no', 3, 'absent'),
(62, 'female', 'asymptotic', 140, 394, 'no', 'uncertain', 157, 'no', 0, 'absent'),
(70, 'male', 'non-anginal pain', 160, 269, 'no', 'normal', 112, 'yes', 1, 'present'),
(54, 'male', 'asymptotic', 140, 239, 'no', 'normal', 160, 'no', 0, 'absent'),
(70, 'male', 'asymptotic', 145, 174, 'no', 'normal', 125, 'yes', 0, 'present'),
(54, 'male', 'atypical angina', 108, 309, 'no', 'normal', 156, 'no', 0, 'absent'),
(35, 'male', 'asymptotic', 126, 282, 'no', 'uncertain', 156, 'yes', 0, 'present'),
(48, 'male', 'non-anginal pain', 124, 255, 'yes', 'normal', 175, 'no', 2, 'absent'),
(55, 'female', 'atypical angina', 135, 250, 'no', 'uncertain', 161, 'no', 0, 'absent'),
(58, 'female', 'asymptotic', 100, 248, 'no', 'uncertain', 122, 'no', 0, 'absent'),
(54, 'female', 'non-anginal pain', 110, 214, 'no', 'normal', 158, 'no', 0, 'absent'),
(69, 'female', 'typical angina', 140, 239, 'no', 'normal', 151, 'no', 2, 'absent'),
(77, 'male', 'asymptotic', 125, 304, 'no', 'uncertain', 162, 'yes', 3, 'present'),
(68, 'male', 'non-anginal pain', 118, 277, 'no', 'normal', 151, 'no', 1, 'absent'),
(58, 'male', 'asymptotic', 125, 300, 'no', 'uncertain', 171, 'no', 2, 'present'),
(60, 'male', 'asymptotic', 125, 258, 'no', 'uncertain', 141, 'yes', 1, 'present'),
(51, 'male', 'asymptotic', 140, 299, 'no', 'normal', 173, 'yes', 0, 'present'),
(55, 'male', 'asymptotic', 160, 289, 'no', 'uncertain', 145, 'yes', 1, 'present'),
(52, 'male', 'typical angina', 152, 298, 'yes', 'normal', 178, 'no', 0, 'absent'),
(60, 'female', 'non-anginal pain', 102, 318, 'no', 'normal', 160, 'no', 1, 'absent'),
(58, 'male', 'non-anginal pain', 105, 240, 'no', 'uncertain', 154, 'yes', 0, 'absent'),
(64, 'male', 'non-anginal pain', 125, 309, 'no', 'normal', 131, 'yes', 0, 'present'),
(37, 'male', 'non-anginal pain', 130, 250, 'no', 'normal', 187, 'no', 0, 'absent'),
(59, 'male', 'typical angina', 170, 288, 'no', 'uncertain', 159, 'no', 0, 'present'),
(51, 'male', 'non-anginal pain', 125, 245, 'yes', 'uncertain', 166, 'no', 0, 'absent'),
(43, 'female', 'non-anginal pain', 122, 213, 'no', 'normal', 165, 'no', 0, 'absent'),
(58, 'male', 'asymptotic', 128, 216, 'no', 'uncertain', 131, 'yes', 3, 'present'),
(29, 'male', 'atypical angina', 130, 204, 'no', 'uncertain', 202, 'no', 0, 'absent'),
(41, 'female', 'atypical angina', 130, 204, 'no', 'uncertain', 172, 'no', 0, 'absent'),
(63, 'female', 'non-anginal pain', 135, 252, 'no', 'uncertain', 172, 'no', 0, 'absent'),
(51, 'male', 'non-anginal pain', 94, 227, 'no', 'normal', 154, 'yes', 1, 'absent'),
(54, 'male', 'non-anginal pain', 120, 258, 'no', 'uncertain', 147, 'no', 0, 'absent'),
(44, 'male', 'atypical angina', 120, 220, 'no', 'normal', 170, 'no', 0, 'absent'),
(54, 'male', 'asymptotic', 110, 239, 'no', 'normal', 126, 'yes', 1, 'present'),
(65, 'male', 'asymptotic', 135, 254, 'no', 'uncertain', 127, 'no', 1, 'present'),
(57, 'male', 'non-anginal pain', 150, 168, 'no', 'normal', 174, 'no', 0, 'absent'),
(63, 'male', 'asymptotic', 130, 330, 'yes', 'uncertain', 132, 'yes', 3, 'present'),
(35, 'female', 'asymptotic', 138, 183, 'no', 'normal', 182, 'no', 0, 'absent'),
(41, 'male', 'atypical angina', 135, 203, 'no', 'normal', 132, 'no', 0, 'absent'),
(62, 'female', 'non-anginal pain', 130, 263, 'no', 'normal', 97, 'no', 1, 'present'),
(43, 'female', 'asymptotic', 132, 341, 'yes', 'uncertain', 136, 'yes', 0, 'present'),
(58, 'female', 'typical angina', 150, 283, 'yes', 'uncertain', 162, 'no', 0, 'absent'),
(52, 'male', 'typical angina', 118, 186, 'no', 'uncertain', 190, 'no', 0, 'absent'),
(61, 'female', 'asymptotic', 145, 307, 'no', 'uncertain', 146, 'yes', 0, 'present'),
(39, 'male', 'asymptotic', 118, 219, 'no', 'normal', 140, 'no', 0, 'present'),
(45, 'male', 'asymptotic', 115, 260, 'no', 'uncertain', 185, 'no', 0, 'absent'),
(52, 'male', 'asymptotic', 128, 255, 'no', 'normal', 161, 'yes', 1, 'present'),
(62, 'male', 'non-anginal pain', 130, 231, 'no', 'normal', 146, 'no', 3, 'absent'),
(62, 'female', 'asymptotic', 160, 164, 'no', 'uncertain', 145, 'no', 3, 'present'),
(53, 'female', 'asymptotic', 138, 234, 'no', 'uncertain', 160, 'no', 0, 'absent'),
(43, 'male', 'asymptotic', 120, 177, 'no', 'uncertain', 120, 'yes', 0, 'present'),
(47, 'male', 'non-anginal pain', 138, 257, 'no', 'uncertain', 156, 'no', 0, 'absent'),
(52, 'male', 'atypical angina', 120, 325, 'no', 'normal', 172, 'no', 0, 'absent'),
(68, 'male', 'non-anginal pain', 180, 274, 'yes', 'uncertain', 150, 'yes', 0, 'present'),
(39, 'male', 'non-anginal pain', 140, 321, 'no', 'uncertain', 182, 'no', 0, 'absent'),
(53, 'female', 'asymptotic', 130, 264, 'no', 'uncertain', 143, 'no', 0, 'absent'),
(62, 'female', 'asymptotic', 140, 268, 'no', 'uncertain', 160, 'no', 2, 'present'),
(51, 'female', 'non-anginal pain', 140, 308, 'no', 'uncertain', 142, 'no', 1, 'absent'),
(60, 'male', 'asymptotic', 130, 253, 'no', 'normal', 144, 'yes', 1, 'present'),
(65, 'male', 'asymptotic', 110, 248, 'no', 'uncertain', 158, 'no', 2, 'present'),
(65, 'female', 'non-anginal pain', 155, 269, 'no', 'normal', 148, 'no', 0, 'absent'),
(60, 'male', 'non-anginal pain', 140, 185, 'no', 'uncertain', 155, 'no', 0, 'present'),
(60, 'male', 'asymptotic', 145, 282, 'no', 'uncertain', 142, 'yes', 2, 'present'),
(54, 'male', 'asymptotic', 120, 188, 'no', 'normal', 113, 'no', 1, 'present'),
(44, 'male', 'atypical angina', 130, 219, 'no', 'uncertain', 188, 'no', 0, 'absent'),
(44, 'male', 'asymptotic', 112, 290, 'no', 'uncertain', 153, 'no', 1, 'present'),
(51, 'male', 'non-anginal pain', 110, 175, 'no', 'normal', 123, 'no', 0, 'absent'),
(59, 'male', 'non-anginal pain', 150, 212, 'yes', 'normal', 157, 'no', 0, 'absent'),
(71, 'female', 'atypical angina', 160, 302, 'no', 'normal', 162, 'no', 2, 'absent'),
(61, 'male', 'non-anginal pain', 150, 243, 'yes', 'normal', 137, 'yes', 0, 'absent'),
(55, 'male', 'asymptotic', 132, 353, 'no', 'normal', 132, 'yes', 1, 'present'),
(64, 'male', 'non-anginal pain', 140, 335, 'no', 'normal', 158, 'no', 0, 'present'),
(43, 'male', 'asymptotic', 150, 247, 'no', 'normal', 171, 'no', 0, 'absent'),
(58, 'female', 'non-anginal pain', 120, 340, 'no', 'normal', 172, 'no', 0, 'absent'),
(60, 'male', 'asymptotic', 130, 206, 'no', 'uncertain', 132, 'yes', 2, 'present'),
(58, 'male', 'atypical angina', 120, 284, 'no', 'uncertain', 160, 'no', 0, 'present'),
(49, 'male', 'atypical angina', 130, 266, 'no', 'normal', 171, 'no', 0, 'absent'),
(48, 'male', 'atypical angina', 110, 229, 'no', 'normal', 168, 'no', 0, 'present'),
(52, 'male', 'non-anginal pain', 172, 199, 'yes', 'normal', 162, 'no', 0, 'absent'),
(44, 'male', 'atypical angina', 120, 263, 'no', 'normal', 173, 'no', 0, 'absent'),
(56, 'female', 'atypical angina', 140, 294, 'no', 'uncertain', 153, 'no', 0, 'absent'),
(57, 'male', 'asymptotic', 140, 192, 'no', 'normal', 148, 'no', 0, 'absent'),
(67, 'male', 'asymptotic', 160, 286, 'no', 'uncertain', 108, 'yes', 3, 'present');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) DEFAULT '1000',
  `name` varchar(20) NOT NULL,
  `typ` char(1) NOT NULL,
  `passw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `typ`, `passw`) VALUES
(NULL, 'us1', 'a', '12'),
(NULL, 'qw', 'a', 'W'),
(NULL, 'we2', 'a', 'xc'),
(NULL, 'po', 'a', 'po'),
(NULL, 'ghj', 'a', 'po'),
(NULL, 'zxc', 'a', '12'),
(NULL, 'zxc', 'm', '45'),
(NULL, 'rew', 'm', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `og_attendance`
--
ALTER TABLE `og_attendance`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `fk_att_stud` (`att_student`),
  ADD KEY `fk_att_course` (`att_course`);

--
-- Indexes for table `og_course`
--
ALTER TABLE `og_course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `og_student`
--
ALTER TABLE `og_student`
  ADD PRIMARY KEY (`studentid`);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `og_attendance`
--
ALTER TABLE `og_attendance`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `og_student`
--
ALTER TABLE `og_student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `og_attendance`
--
ALTER TABLE `og_attendance`
  ADD CONSTRAINT `fk_att_course` FOREIGN KEY (`att_course`) REFERENCES `og_course` (`courseid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_att_stud` FOREIGN KEY (`att_student`) REFERENCES `og_student` (`studentid`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
