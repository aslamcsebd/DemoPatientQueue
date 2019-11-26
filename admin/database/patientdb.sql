-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2018 at 08:09 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `diagonostic`
--

CREATE TABLE `diagonostic` (
  `diago_id` int(11) NOT NULL,
  `diago_name` varchar(255) NOT NULL,
  `diago_cell` varchar(20) NOT NULL,
  `diago_location` varchar(255) NOT NULL,
  `diago_password` varchar(255) NOT NULL,
  `mode` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagonostic`
--

INSERT INTO `diagonostic` (`diago_id`, `diago_name`, `diago_cell`, `diago_location`, `diago_password`, `mode`) VALUES
(4, 'Popular Diagonostic Center', '01831758799', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(5, 'shahin', '01868059598', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(6, 'Epic Diagonostic Center', '01790434658', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `d_gender` varchar(20) NOT NULL,
  `d_cell` varchar(20) NOT NULL,
  `d_mode` varchar(20) NOT NULL,
  `d_location` varchar(255) NOT NULL,
  `d_password` varchar(255) NOT NULL,
  `d_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `d_name`, `d_gender`, `d_cell`, `d_mode`, `d_location`, `d_password`, `d_timestamp`) VALUES
(8, 'Nasima', 'Female', '01817773672', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-10-11 07:46:18.363431'),
(7, 'Manik Khan', 'Male', '01778001401', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-10-10 15:31:32.260666'),
(13, 'Humyra', 'Female', '01535403134', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-11-12 10:09:17.637244'),
(9, 'Azizul Islam', 'Male', '01828858585', '0', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-03-15 16:57:16.075685'),
(10, 'Rashel Ahmed', 'Male', '01905891389', '1', 'Dhaka', '84109e98c1294406c993c27af1eb4ba7', '2018-07-06 09:33:27.022810'),
(11, 'Ruchi Kondokar', 'Female', '01643668933', '1', 'Chittagong', '6531401f9a6807306651b87e44c05751', '2018-10-02 03:41:40.595829'),
(12, 'Motaleb Hossain', 'Male', '01778001402', '1', 'Chittagong', 'a384b6463fc216a5f8ecb6670f86456a', '2018-10-02 03:52:24.605427'),
(15, 'Rakib Uddun', 'Male', '01642751006', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-11-13 07:40:37.317533'),
(16, 'Rumana begum', 'Female', '01675655091', '1', 'Chittagong', '40b07f6a8857dbafbaa65251bc193287', '2018-12-01 15:41:53.645840'),
(17, 'Sabina akter', 'Female', '01683568663', '1', 'Chittagong', '3f06c9f725627d1686d9a7bd0c2ec0cd', '2018-12-02 05:34:06.220933');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_info`
--

CREATE TABLE `doctors_info` (
  `id` int(11) NOT NULL,
  `dr_name` varchar(255) NOT NULL,
  `dr_speciality` varchar(255) NOT NULL,
  `dr_degree` varchar(255) NOT NULL,
  `dr_address` varchar(255) NOT NULL,
  `dr_time` varchar(255) NOT NULL,
  `dr_cell` varchar(255) NOT NULL,
  `dr_gender` varchar(20) NOT NULL,
  `dr_fee` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_info`
--

INSERT INTO `doctors_info` (`id`, `dr_name`, `dr_speciality`, `dr_degree`, `dr_address`, `dr_time`, `dr_cell`, `dr_gender`, `dr_fee`) VALUES
(1, 'Anik Khan', 'Medicine', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001401', 'Male', '1000'),
(2, 'Motaleb Hossain', 'Surgery', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001402', 'Male', '600'),
(13, 'Ruchi Siddique', 'Medicine', 'MBBS,FCPS', 'Chittagong', '8PM-10PM', '01868059596', 'Female', '600'),
(3, 'Selina Parvin', 'Medicine', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001403', 'Female', '500'),
(4, 'Rakib Hasan', 'Medicine', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001404', 'Male', '600'),
(5, 'Hassan Forhad', 'Surgery', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001405', 'Male', '600'),
(6, 'Jasmin Akter', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001406', 'Female', '600'),
(7, 'Manik Khan', 'Cardiologist', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001407', 'Male', '600'),
(8, 'M.A Hassan', 'Medicine', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001408', 'Male', '600'),
(9, 'Israt Akter Popy', 'Medicine', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001409', 'Female', '600'),
(10, 'Karim uddin', 'Dental', 'BDS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001410', 'Male', '600'),
(11, 'Rahim Uddin', 'Cardiologist', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001411', 'Male', '600'),
(12, 'Tashfia Islam', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001412', 'Female', '600'),
(14, 'Humyra Wardan', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01535403134', 'Female', '500'),
(16, 'Rakib Uddun', 'Dental', 'BDS', 'Agrabad,Chittagong ', '7PM-9PM', '01642751006', 'Male', '600'),
(18, 'Rumana begum', 'Gynecologist', 'MBBS,FCPS part 1 and 2', 'roufabad, oxygen,Chittagong ', '8-11pm', '01675655091', 'Female', '500'),
(19, 'Sabina akter', 'Medicine', 'MBBS', 'agrabad ma o shishu hospital,agrabad', '7pm-10pm', '01683568663', 'Female', '500');

-- --------------------------------------------------------

--
-- Table structure for table `dr_appointment`
--

CREATE TABLE `dr_appointment` (
  `id` int(11) NOT NULL,
  `dr_name` varchar(255) NOT NULL,
  `dr_cell` varchar(255) NOT NULL,
  `patient_cell` varchar(255) NOT NULL,
  `appoint_time` varchar(255) NOT NULL,
  `mode` int(11) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `date` varchar(20) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dr_appointment`
--

INSERT INTO `dr_appointment` (`id`, `dr_name`, `dr_cell`, `patient_cell`, `appoint_time`, `mode`, `timestamp`, `date`, `note`) VALUES
(41, 'Rakib Uddun', '01642751006', '01672902634', '7PM-9PM', 1, '2018-11-13 10:39:35.903978', '13/11/2018', 'Urgent Appointment Needed'),
(40, 'Dr. Humyra Wardan', '01535403134', '01558673140', '6PM-8PM', 1, '2018-11-13 04:08:52.679093', '13/11/2018', 'Fever'),
(39, 'Dr. Humyra Wardan', '01535403134', '01558673140', '6PM-8PM', 1, '2018-11-13 04:08:48.035362', '13/11/2018', 'Fever'),
(38, 'Dr.Anik Khan', '01778001401', '01672902634', '7 PM-11 PM', 1, '2018-11-14 13:08:36.551346', '13/11/2018', 'Fever'),
(42, 'Dr.Anik Khan', '01778001401', '01672902634', '7 PM-11 PM', 0, '2018-11-14 13:07:37.456864', '16/11/2018', 'notes'),
(43, 'dr.Rumana begum', '01675655091', '01796495656', '8-11pm', 1, '2018-12-01 15:51:20.103362', '02/12/2018', 'i need a appoint at 8-10 pm '),
(44, 'dr Sabina akter', '01683568663', '01852256426', '7pm-10pm', 0, '2018-12-02 06:06:13.559865', '03/12/2018', '6pm');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_gender` varchar(20) NOT NULL,
  `p_cell` varchar(20) NOT NULL,
  `p_location` varchar(255) NOT NULL,
  `p_password` varchar(255) NOT NULL,
  `p_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_gender`, `p_cell`, `p_location`, `p_password`, `p_timestamp`) VALUES
(3, 'Anik Rahaman', 'Male', '01672902634', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-05-31 15:02:29.322242'),
(1, 'Anik', 'Male', '01672902635', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-05-31 14:57:13.562935'),
(4, 'ruma', 'Female', '01944106675', 'Chittagong', '1a100d2c0dab19c4430e7d73762b3423', '2017-09-13 07:50:54.677703'),
(5, 'Ruchi', 'Female', '01868059597', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-09-26 06:58:54.411199'),
(6, 'Rashis', 'Male', '01736941693', 'Chittagong', '17b3c7061788dbe82de5abe9f6fe22b3', '2017-10-24 22:06:22.441997'),
(7, 'Atikul Islam', 'Male', '01516130999', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-02-24 08:02:50.239534'),
(8, 'sarmin jahan', 'Female', '01643668903', 'Chittagong', 'e2fc714c4727ee9395f324cd2e7f331f', '2018-09-01 10:37:44.474345'),
(12, 'Humyra', 'Female', '01558673140', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-11-12 10:05:19.195502'),
(10, 'santu', 'Female', '01840855298', 'Chittagong', '6531401f9a6807306651b87e44c05751', '2018-09-05 05:42:55.323655'),
(13, 'aysha akter', 'Female', '01796495656', 'Chittagong', '2b940be69d726d08ed15baff9336a95d', '2018-12-01 10:29:53.503704'),
(14, 'taslima akter', 'Female', '01778146434', 'Chittagong', 'ff9876ef2e784954f8665216c89b162b', '2018-12-02 05:32:50.478473'),
(15, 'Nihad', 'Male', '01852256426', 'Chittagong', '962012d09b8170d912f0669f6d7d9d07', '2018-12-02 06:01:41.066446');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `patient_cell` varchar(20) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `prescription_details` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `dr_cell` varchar(20) NOT NULL,
  `dr_name` varchar(255) NOT NULL,
  `age` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `pulse` varchar(11) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `test` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `patient_cell`, `patient_name`, `gender`, `date`, `prescription_details`, `info`, `dr_cell`, `dr_name`, `age`, `weight`, `pulse`, `disease`, `test`) VALUES
(1, '01672902634', 'Anik', 'Male', '04-02-18', 'Napa Extra 1-0-1', 'General information', '01778001401', 'Dr. Anik Khan', '', '', '', '', ''),
(2, '01672902634', 'Noor Md', 'Male', '10/02/18', 'napa extra', 'General information', '01778001401', 'Dr. Anik Khan', '', '', '', '', ''),
(3, '01516130999', 'Atikul Islam', 'Male', '24/02/2018', 'Napa xtra\nParasitamol', 'General information', '01778001401', 'Dr. Anik Khan', '', '', '', '', ''),
(4, '01868059597', 'ruchi', 'Female', '24/02/2018', 'zinnat \nvitamin\n', 'General information', '01868059596', 'Ruchi', '', '', '', '', ''),
(5, '01868059597', 'ruchi', 'Female', '07/03/2018', 'parestimal ', 'General information', '01868059596', 'Ruchi', '', '', '', '', ''),
(14, '01672902634', 'Anik', 'Male', '12/10/2018', 'Napa Extra, Napa,', 'no', '01778001401', 'Dr. Anik Khan', '26', '65', '54', 'fever', ''),
(15, '01672902634', 'Anik', 'Male', '10/10/2018', 'Napa Extra, 1+1+1,', 'drink hot water', '01778001401', 'Dr. Anik Khan', '26', '65', '56', 'fever', 'No'),
(16, '01868059597', 'suborna', 'Female', '03/11/2018', 'Acidol, 1+0+1, Acetic acid,', 'use cotton', '01868059596', 'Ruchi', '25', '22', '6.0', 'fever', 'Full blood count test, kidney function test, '),
(17, '81868059597', 'ayan', 'Female', '04/11/2018', 'Acetic acid, 1+1+0,', 'gfubbj', '01868059596', 'Ruchi', '18', '52', '6.7', 'ryv', ''),
(18, '01868059597', 'yasmin', 'Female', '04/11/2018', 'Acetic acid, 1+0+1,  Abemaciclib Tablet, 1+1+0,', 'typhodr', '01868059596', 'Ruchi', '22', '23', '70.7', 'frver', 'Full blood count test, kidney function test, '),
(19, '01558673140', 'Rushad', 'Female', '12/11/2018', 'napa extend 1+1+1', 'fever', '01535403134', 'Humyra', '', '', '', '', ''),
(20, '01558673140', 'rushad', 'Female', '13/11/2018', 'alcet 1+0+1\nfexo 0+0+1', 'allergy ', '01535403134', 'Humyra', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_list`
--

CREATE TABLE `test_list` (
  `test_id` int(11) NOT NULL,
  `patient_cell` varchar(20) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `diago_id` varchar(20) NOT NULL,
  `diago_name` varchar(255) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `dr_name` varchar(255) NOT NULL,
  `dr_cell` varchar(20) NOT NULL,
  `test_price` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_list`
--

INSERT INTO `test_list` (`test_id`, `patient_cell`, `patient_name`, `gender`, `date`, `age`, `diago_id`, `diago_name`, `test_name`, `dr_name`, `dr_cell`, `test_price`) VALUES
(2, '01672902634', 'Noor Mohammed', 'Male', '09/02/2018', '25', '01831758799', 'Popular Diagonostic Center', '1. Coff Test\n2. Urine Test', 'Manik Khan', '01778001401', '2000'),
(3, '01868059597', 'ruchi', 'Female', '24/02/2018', '24', '01831758799', 'Popular Diagonostic Center', 'blood test', 'Ruchi', '01868059596', '950'),
(4, '01672902634', 'Anik', 'Male', '05/03/2018', '25', '01831758799', 'Popular Diagonostic Center', 'Coff test', 'Manik Khan', '01778001401', '200'),
(5, '01868059597', 'ruchi', 'Female', '07/03/2018', '29', '01868059598', 'shahin', 'cofe test', 'Ruchi', '01868059596', NULL),
(6, '01868059597', 'faria', 'Female', '13/04/2018', '25', '01868059598', 'shahin', 'blood test\nultrasonography', 'Ruchi', '01868059596', NULL),
(7, '01868059597', 'zubaida ', 'Female', '27/04/2018', '25', '01868059598', 'shahin', 'cofe test \nblood test\nETT', 'Ruchi', '01868059596', '2400'),
(8, '0868059597', 'decosta', 'Male', '23/09/2018', '34', '01868059598', 'shahin', 'ultrasonograpgy', 'Ruchi', '01868059596', NULL),
(9, '01868059597', 'decosta', 'Male', '23/09/2018', '34', '01868059598', 'shahin', 'ultrasonograpgy', 'Ruchi', '01868059596', '3500'),
(10, '01558673140', 'Rushad', 'Female', '12/11/2018', '24', '1', '', 'blood test', 'Humyra', '01535403134', NULL),
(11, '01558673140', 'rushad', 'Female', '12/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'blood test', 'Humyra', '01535403134', '1000'),
(12, '01558673140', 'rushad', 'Female', '13/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'x ray\n ECG\nBlood test', 'Humyra', '01535403134', '1500'),
(13, '01558673140', 'humyra', 'Female', '14/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'blood test', 'Humyra', '01535403134', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `id` int(11) NOT NULL,
  `patient_cell` varchar(20) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `diago_id` varchar(20) NOT NULL,
  `diago_name` varchar(255) NOT NULL,
  `test_result` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`id`, `patient_cell`, `patient_name`, `gender`, `date`, `age`, `diago_id`, `diago_name`, `test_result`) VALUES
(1, '01672902634', 'Anik', 'Male', '04/03/2018', '25', '01831758799', 'Popular Diagonostic Center', 'No urine \nno diabetics'),
(2, '01672902634', 'Anik', 'Male', '05/03/2018', '25', '01831758799', 'Popular Diagonostic Center', 'No coff found'),
(3, '01868059596', 'rasis', 'Female', '07/03/2018', '29', '01868059598', 'shahin', 'no cofe'),
(4, '01558673140', 'rushad', 'Female', '12/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'normal'),
(5, '01558673140', 'rushad', 'Female', '12/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagonostic`
--
ALTER TABLE `diagonostic`
  ADD PRIMARY KEY (`diago_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `doctors_info`
--
ALTER TABLE `doctors_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dr_appointment`
--
ALTER TABLE `dr_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_list`
--
ALTER TABLE `test_list`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diagonostic`
--
ALTER TABLE `diagonostic`
  MODIFY `diago_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctors_info`
--
ALTER TABLE `doctors_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dr_appointment`
--
ALTER TABLE `dr_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `test_result`
--
ALTER TABLE `test_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
