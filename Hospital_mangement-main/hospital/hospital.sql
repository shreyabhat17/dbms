-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 07:15 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `desg` varchar(20) NOT NULL,
  `pno` varchar(20) NOT NULL,
  `adds` varchar(20) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `name`, `uname`, `dept`, `desg`, `pno`, `adds`, `psw`) VALUES
(2, 'Manasa', 'mana123', 'MD', 'GeneralDoctor', '9992342342', 'Mangaluru', '899'),
(3, 'Mukund', 'muku123', 'heart', 'cardiologist', '6756487633', 'rpc layout', '845'),
(4, 'Suchitra', 'such123', 'eye', 'Optometrist', '9546754678', 'vv puram', '452'),
(8, 'Jayram', 'jay123', 'heart', 'cardiologist', '8932434543', 'bangalore', '332');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `durt` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`pid`, `pname`, `mname`, `qty`, `durt`, `price`) VALUES
(4, 'Hari', 'concor', '10', '1 month', '780'),
(5, 'lisha', 'Benadryl', '3', '1 months', '980'),
(6, 'Sukesh', 'azithromycin', '3', '5 weeks', '450');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pat_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `dis` varchar(30) NOT NULL,
  `pno` varchar(30) NOT NULL,
  `adds` varchar(30) NOT NULL,
  `regdate` date NOT NULL,
  `showp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pat_id`, `name`, `dname`, `dept`, `age`, `sex`, `dis`, `pno`, `adds`, `regdate`, `showp`) VALUES
(1, 'Meghshree', 'mukund', 'heart', '21', 'Female', 'heartpain', '9913232400', 'rs road', '2023-01-9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rec_info`
--

CREATE TABLE `rec_info` (
  `p_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pno` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `rec` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rec_info`
--

INSERT INTO `rec_info` (`p_id`, `name`, `uname`, `email`, `pno`, `psw`, `rec`) VALUES
(2, 'megha', 'megh123', 'meg@gmail.com', '8765548775', '225', '1'),
(7, 'kusuma', 'kusu123', 'kusu@gmail.com', '9741220640', '239', '1'),
(8, 'Hani', 'hani123', 'hani@gmail.com', '9090909090', '174', '1'),
(15, 'Harsha', 'hars123', 'hars@gmail.com', '9876543210', '122', '1'),
(16, 'Rakshitha', 'raksi123', 'rak@gmail.com', '9806512345', '263', '1'),
(17, 'Shreya', 'shre123', 'shre@gmail.com', '9480033390', '487', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `rec_info`
--
ALTER TABLE `rec_info`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rec_info`
--
ALTER TABLE `rec_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
