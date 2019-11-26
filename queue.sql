-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2019 at 09:13 AM
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
-- Database: `queue`
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
(5, 'Lions Diagnostic Center', '01868059598', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(6, 'Epic Diagonostic Center', '01790434658', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(7, 'Sheba Diagnostic Center', '01642751007', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(8, 'Metro Diagnostic Center', '01642751008', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(9, 'Pachlaish Diagnostic Center', '01716471335', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(10, 'Max hospital', '01711574870', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(11, 'delta diagnostic center', '01558673141', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', 1);

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
(7, ' Manik Khan', 'Male', '01778001401', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2017-10-10 15:31:32.260666'),
(13, 'Humyra Wardan', 'Female', '01558673140', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-11-12 10:09:17.637244'),
(9, 'Azizul Islam', 'Male', '01828858585', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-03-15 16:57:16.075685'),
(10, 'Rashel Ahmed', 'Male', '01905891389', '1', 'Dhaka', '84109e98c1294406c993c27af1eb4ba7', '2018-07-06 09:33:27.022810'),
(11, 'Ruchi Kondokar', 'Female', '01643668933', '1', 'Chittagong', '6531401f9a6807306651b87e44c05751', '2018-10-02 03:41:40.595829'),
(12, ' Motaleb', 'Male', '01778001402', '1', 'Chittagong', 'a384b6463fc216a5f8ecb6670f86456a', '2018-10-02 03:52:24.605427'),
(15, 'Rakib Uddun', 'Male', '01642751006', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-11-13 07:40:37.317533'),
(16, 'Rumana begum', 'Female', '01675655091', '1', 'Chittagong', '40b07f6a8857dbafbaa65251bc193287', '2018-12-01 15:41:53.645840'),
(17, 'Sabina akter', 'Female', '01683568663', '1', 'Chittagong', '3f06c9f725627d1686d9a7bd0c2ec0cd', '2018-12-02 05:34:06.220933'),
(18, 'Nusrat jahan', 'Female', '01834846074', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-12-06 07:57:32.241440'),
(19, 'nasrin', 'Female', '01862322779', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-10 04:19:18.209167'),
(20, 'Jamal Ahmed', 'Male', '01535403134', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-11 16:35:56.568932'),
(21, 'Md. Anwarul Hoque', 'Male', '01819833987', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-11 16:37:09.189830'),
(22, 'Palash Das', 'Male', '01841005588', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-11 16:38:51.611571'),
(23, 'Kamrul Hasan', 'Male', '01840145455', '0', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-11 16:39:43.560221'),
(24, 'Ameena Chy', 'Female', '01816282066', '1', 'Chittagong', 'd10906c3dac1172d4f60bd41f224ae75', '2018-12-11 16:46:44.544723'),
(25, 'Imran', 'Male', '01834846093', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2018-12-11 17:41:03.377696'),
(26, 'Sakib Hasan', 'Male', '01858931111', '1', 'Chittagong', '2c89109d42178de8a367c0228f169bf8', '2018-12-11 17:43:47.266543'),
(27, 'Masud Karim', 'Male', '01860111111', '1', 'Chittagong', '81dc9bdb52d04dc20036dbd8313ed055', '2018-12-11 17:45:15.614662'),
(28, 'A.S.M Didarul Alam', 'Male', '01558673142', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:08:35.208094'),
(29, 'A.S.M Zahid', 'Male', '01558673143', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:13:16.852250'),
(30, 'Alhaj Nurul Islam', 'Male', '01558673144', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:18:51.917357'),
(31, 'Sheikh  Mohammad Hassan Mamun', 'Male', '01676750706', '0', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:30:55.705390'),
(32, 'Mohitul Islam', 'Male', '01558673145', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:42:56.641463'),
(33, 'Sayed Wahidur Rahman', 'Male', '01558673146', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:46:44.199092'),
(34, 'Pradeep Kumar Kastagir', 'Male', '01558673147', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:50:04.705260'),
(35, 'Zillur Rahman', 'Male', '01558673148', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:52:45.559515'),
(36, 'Md.Hasanuzzaman', 'Male', '01558673149', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 06:58:09.762320'),
(37, 'Khondokar A K Azad', 'Male', '01819833981', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 07:01:27.253785'),
(38, 'Sanaullah Shelly', 'Female', '01819833982', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 07:04:16.815699'),
(39, 'Mayin Uddin Mahmud', 'Male', '01819833983', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 07:07:15.015059'),
(40, 'Emad Uddin Chowdhury', 'Male', '01676750707', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:22:01.762426'),
(41, 'Md. Mohim Uddin', 'Male', '01834846094', '0', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:27:21.037849'),
(42, 'Hafizur Rahman', 'Male', '01834846095', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:30:00.323468'),
(43, 'Anowara Begum', 'Female', '01834846096', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:31:08.282525'),
(44, 'Kohinoor Begum', 'Female', '01834846097', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:32:21.723621'),
(45, 'Md. Abdur Razzak', 'Male', '01834846098', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 08:34:56.682706'),
(46, 'Md. Rizwanul Haque', 'Male', '01834846092', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 09:00:01.739480'),
(47, 'Palash Das', 'Male', '01834846091', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 09:13:37.045567'),
(48, 'Shakera Ahmed', 'Female', '01819833984', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 09:44:16.489517'),
(49, 'Prof. Syeda Nurjahan Bhuiyan', 'Female', '01834846090', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 10:33:16.686728'),
(50, 'Sadia Afroz', 'Female', '01834846099', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 10:59:03.883855'),
(51, 'Md. Rizwanul Haque', 'Male', '01676750700', '1', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 11:06:07.988690'),
(52, 'Mohammad Liaquat Ali', 'Male', '01816282065', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 11:14:59.181417'),
(53, 'Abdul Wadud Chowdhury', 'Male', '01816282064', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 11:19:01.253867'),
(54, 'Golam Haider Rasul', 'Male', '01816282063', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 11:23:11.752850'),
(55, 'Kazi Hasinur Rahman', 'Male', '01816282062', '1', 'Dhaka', '827ccb0eea8a706c4c34a16891f84e7b', '2019-01-18 11:29:28.461192');

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
(1, 'Dr. Manik Khan', 'Medicine', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001401', 'Male', '1000'),
(2, 'Dr. Motaleb Hossain', 'Surgery', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001402', 'Male', '600'),
(13, 'Lutfur Nahar', 'Medicine', 'MBBS,FCPS', 'Chittagong', '8PM-10PM', '01868059596', 'Female', '600'),
(3, 'Dr. Selina Parvin', 'Medicine', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001403', 'Female', '500'),
(4, 'Dr. Rakib Hasan', 'Medicine', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001404', 'Male', '600'),
(5, 'Dr. Hassan Forhad', 'Surgery', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001405', 'Male', '600'),
(6, 'Dr. Jasmin Akter', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001406', 'Female', '600'),
(7, 'Dr. Anik Khan', 'Cardiologist', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001407', 'Male', '600'),
(8, 'Dr.M.A Hassan', 'Medicine', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001408', 'Male', '600'),
(9, 'Dr. Israt Popy', 'Medicine', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001409', 'Female', '600'),
(10, 'Dr. Karim uddin', 'Dental', 'BDS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01778001410', 'Male', '600'),
(11, 'Dr.Rahim Uddin', 'Cardiologist', 'MBBS,FCPS', 'Sensive,Chittagong', '8 PM -10 PM', '01778001411', 'Male', '600'),
(12, 'Dr.Tashfia Islam', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01778001412', 'Female', '600'),
(14, 'Humyra Wardan', 'Gynecologist', 'MBBS,FCPS', 'Jamal Khan, Chittagong', '6PM-8PM', '01558673140', 'Female', '500'),
(16, 'Rakib Uddun', 'Dental', 'BDS', 'Agrabad,Chittagong ', '7PM-9PM', '01642751006', 'Male', '600'),
(18, 'Rumana Begum', 'Gynecologist', 'MBBS,FCPS part 1 and 2', 'roufabad, oxygen,Chittagong ', '8-11pm', '01675655091', 'Female', '500'),
(19, 'Sabina akter', 'Medicine', 'MBBS', 'agrabad ma o shishu hospital,agrabad', '7pm-10pm', '01683568663', 'Female', '500'),
(20, 'Nusrat Jahan', 'Medicine', 'MBBS', 'Chevron, Chittagong ', '7.00 PM-10.00 PM', '01834846074', 'Female', '500'),
(21, 'Noor Khan', 'Medicine', 'MBBS,FCPS', 'Sensive,Jamal Khan, Chittagong', '7 PM-11 PM', '01642751006', 'Male', '1000'),
(22, 'Nasrin Akter', 'Gynecologist', 'MBBS', 'jamal khan ', '7pm-9pm', '01862322779', 'Female', '500'),
(23, 'Dr. Ameena Chy', 'Neurology', 'MBBS, FCPS, MD(NEURO) ', 'CSCR, CHITTAGONG ', '7pm-10pm', '01816282066', 'Female', '1000'),
(24, 'Md. Anwarul Hoque', 'Cardiologist', 'MBBS', 'Chevron', '7PM-10PM', '01819833987', 'Male', '700'),
(25, 'Jamal Ahmed', 'Cardiologist', 'MBBS,FCPS', 'CSCR', '7PM- 11PM', '01535403134', 'Male', '700'),
(26, 'Dr. Imran', 'Neurology', 'MBBS, FCPS MD(NEURO) ', 'Gec, Chittagong ', '7pm-10pm', '01834846093', 'Male', '500'),
(27, 'Masud Karim', 'Surgery', 'MBBS', 'Chevron', '7pm-10pm', '01860111111', 'Male', '700'),
(28, 'Dr. Sakib Hasan', 'Dental', 'Chittagong International Dental College,(BDS,BDSc,BD,BOH)', 'Boro pol, access road', '6pm-9pm', '01858931111', 'Male', '600'),
(29, 'A.S.M Didarul Alam', 'Medicine', 'MBBS,DTM & H,MAMS,FRSH,PGT', '84/A, Jamal Khan,Chittagong', '7Pm-11Pm', '01558673142', 'Male', '600'),
(30, 'A.S.M Zahid', 'Medicine', 'Consultant,MBBS,FCPS', 'National Hospital and Sigma lab ltd.', '6Pm-11Pm', '01558673143', 'Male', '700'),
(31, 'Alhaj Nurul Islam', 'Medicine', 'MBBS,FELLOW,WHO(UK),FELLOW ECFMG,BMDC', 'Dallah Medical Centre', '6Pm-11Pm', '01558673144', 'Male', '700'),
(32, 'Mohitul Islam', 'Neurology', 'MD(Neuro)', 'National Hospital Chittagong', '7Pm-10Pm', '01558673145', 'Male', '700'),
(33, 'Sayed Wahidur Rahman', 'Neurology', 'FCPS', 'National Hospital Chittagong', '6Pm-11Pm', '01558673146', 'Male', '600'),
(34, 'Pradeep Kumar Kastagir', 'Neurology', 'MD', 'Chawkbazar', '7Pm-11Pm', '01558673147', 'Male', '700'),
(35, 'Zillur Rahman', 'Neurology', 'FCPS', 'CSCR', '6Pm-11Pm', '01558673148', 'Male', '600'),
(36, 'Md.Hasanuzzaman', 'Neurology', 'MBBS,FCPS,MD', 'Chittagong Medical College and Hospital', '9AM-1PM', '01558673149', 'Male', '500'),
(37, 'Khondokar A K Azad', 'Surgery', 'MBBS,FCPS,FRCS', 'CSCR', '7PM-11PM', '01819833981', 'Male', '700'),
(38, 'Sanaullah Shelly', 'Surgery', 'MBBS,FCPS', 'CSCR', '7PM-11PM', '01819833982', 'Female', 'null'),
(39, 'Mayin Uddin Mahmud', 'Surgery', 'MBBS,FCPS,FMAS', 'Epic Health Care', '7Pm-11Pm', '01819833983', 'Male', '700'),
(40, 'Emad Uddin Chowdhury', 'Dental', 'BDS(IUD) ', 'Chittagong Medical College', '7:00 pm-10:00pm', '01676750707', 'Male', '500'),
(41, 'Md. Abdur Razzak', 'Cardiologist', 'Associate Professor, Dept. of Cardiology, Chittagong Medical College & Hospital ', 'Chittagong Square, Mukdijuddha Bhaban, Panchlaish, Chittagong ', '6:00pm-8:00pm', '01834846098', 'Male', '700'),
(42, 'Anowara Begum', 'Gynecologist', 'MBBS, FCPS (Gynae & Obs) ', 'Apollo Hospital ', '6:30pm-8:30pm', '01834846096', 'Female', '800'),
(43, 'Hafizur Rahman', 'Gynecologist', 'MBBS, FRCOG(London) ', 'Popular Diagnostic Centre Ltd, House #16, Rd #2, Dhamnondi, Dhaka', '7:00pm-10:00pm', '01834846095', 'Male', '700'),
(44, 'Palash Das', 'Dental', 'BDS (CMC) ', 'Chittagong Square, Mukdijuddha Bhaban, 195, Panchlaish, Chittagong ', '6:00pm-9:00pm', '01834846091', 'Male', '700'),
(45, 'Shakera Ahmed', 'Surgery', 'MBBS,FCPS', 'Chevron', '7Pm-11Pm', '01819833984', 'Female', '700'),
(47, 'Prof. Syeda Nurjahan Bhuiyan', 'Gynecologist', 'MBBS(Dhaka), MRCOG(London), FRCOG (London) ', 'Hill View Clinic, K. B. Fazlul Kader Road, Sadar, Chittagong ', '5:00-7:00pm', '01834846090', 'Female', '1000'),
(48, 'Sadia Afroz', 'Dental', 'BDS (DU), PGT (Dhaka Dental College & Hospital) ', '1sr floor, 83,Jamal Khan, Opposite to Sensiv, Chittagong, Bangladesh ', '6:00-8:00pm', '01834846099', 'Female', '500'),
(50, 'Mohammad Liaquat Ali', 'Cardiologist', 'MBBS , FCPS, MRCP(UK ) ', 'Ibrahim Cardiac Hospital and Research Institute, 122 kazi Nazrul Islam avenue, Shahbagh, Dhaka', '7:00-9:00pm', '01816282065', 'Male', '1000'),
(51, 'Abdul Wadud Chowdhury', 'Cardiologist', 'MBBS, FCPS, MD(Cardiology ) ', 'Lab Aid Cardiac Hospital, House # 1,Rd #4, Dhamnondi, Dhaka ', '4:00-7:00pm', '01816282064', 'Male', '1000'),
(52, 'Golam Haider Rasul', 'Cardiologist', 'FCPS, FRCS(Glasgow) ', 'United Hospital Limited, plot #15, Rd #71, Gulshan, Dhaka ', '7:00-9:00pm', '01816282063', 'Male', '700'),
(53, 'Kazi Hasinur Rahman', 'Dental', 'BDS, MS', 'Apollo Hospital, Dhaka ', '6:00-8:00pm', '01816282062', 'Male', '500');

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
(41, 'Rakib Uddin', '01642751006', '01672902634', '7PM-9PM', 1, '2019-01-16 07:43:34.824847', '13/11/2018', 'Urgent Appointment Needed'),
(40, 'Anik Khan', '01778001401', '01558673140', '6PM-8PM', 2, '2018-12-09 18:19:02.087266', '10/12/2018', 'Fever'),
(39, ' Humyra Wardan', '01535403134', '01672902634', '6PM-8PM', 1, '2018-12-09 10:36:05.203957', '13/11/2018', 'Fever'),
(38, 'Manik Khan', '01778001401', '01672902634', '7 PM-11 PM', 2, '2018-12-09 18:18:41.509585', '13/11/2018', 'Fever'),
(42, 'Manik Khan', '01778001401', '01672902634', '7 PM-11 PM', 2, '2018-12-10 11:48:54.466870', '16/11/2018', 'notes'),
(43, 'Rumana begum', '01675655091', '01796495656', '8-11pm', 1, '2018-12-08 15:52:34.987216', '02/12/2018', 'i need a appoint at 8-10 pm '),
(44, 'Sabina akter', '01683568663', '01852256426', '7pm-10pm', 1, '2018-12-15 06:43:36.290222', '03/12/2018', '6pm'),
(45, 'Sabina akter', '01683568663', '01676750705', '7pm-10pm', 1, '2018-12-15 06:44:16.430114', '07/12/2018', 'emergency '),
(46, 'Hassan Forhad', '01778001405', '01676750705', '8 PM -10 PM', 0, '2018-12-08 15:52:23.478817', '14/12/2018', 'need appointment as soon as possible '),
(47, 'Humyra Wardan', '01535403134', '01676750705', '6PM-8PM', 1, '2018-12-08 15:52:19.252124', '12/12/2018', 'thank you '),
(48, 'Nusrat jahan', '01834846074', '01676750705', '7.00 PM-10.00 PM', 1, '2018-12-09 10:18:12.643526', '06/12/2018', 'emergency'),
(49, 'Humyra Wardan', '01535403134', '01676750705', '6PM-8PM', 0, '2018-12-08 15:52:13.581457', '06/12/2018', 'emergency'),
(50, 'Humyra Wardan', '01535403134', '01558673140', '6PM-8PM', 0, '2018-12-08 15:52:09.119375', '06/12/2018', 'emergency '),
(51, 'Dr.Noor Khan', '01642751006', '01672902634', '7 PM-11 PM', 0, '2018-12-08 16:18:29.588921', '08/12/2018', 'appointment '),
(52, 'Nusrat jahan', '01834846074', '01676750705', '7.00 PM-10.00 PM', 1, '2018-12-09 10:23:14.863865', '10/12/2018', 'emergency '),
(53, 'Dr. Humyra Wardan', '01535403134', '01558673140', '6PM-8PM', 0, '2018-12-09 10:26:07.291042', '09/12/2018', 'urgent'),
(54, 'Nusrat jahan', '01834846074', '01676750705', '7.00 PM-10.00 PM', 1, '2018-12-09 10:35:30.369966', '20/12/2018', 'fever'),
(55, 'Dr. Manik Khan', '01778001401', '01672902634', '7 PM-11 PM', 2, '2019-03-19 07:59:25.583712', '10/12/2018', 'Fever'),
(56, 'nasrin', '01862322779', '01558673140', '7pm-9pm', 0, '2018-12-10 04:21:43.188428', '10/12/2018', 'hormonal '),
(57, 'Dr. Humyra Wardan', '01558673140', '01676750705', '6PM-8PM', 2, '2018-12-11 16:32:17.163051', '12/12/2018', 'fever '),
(58, 'Dr. Ameena Chy', '01816282066', '01676750705', '7pm-10pm', 0, '2018-12-11 17:09:15.542742', '12/12/2018', 'emergency '),
(59, 'Dr. Imran', '01834846093', '01676750705', '7pm-10pm', 1, '2018-12-11 17:47:12.386907', '12/12/2018', 'severe headache '),
(60, 'Dr. Manik Khan', '01778001401', '01672902634', '7 PM-11 PM', 2, '2018-12-15 03:34:59.765067', '10/12/2018', 'Fever'),
(61, 'Sabina akter', '01683568663', '01778146434', '7pm-10pm', 1, '2018-12-15 06:45:20.061193', '15/12/2018', '7-10pm '),
(62, 'Dr. Sakib Hasan', '01858931111', '01676750705', '6pm-9pm', 0, '2018-12-18 02:52:21.342627', '19/12/2018', 'mmr'),
(63, 'Nusrat Jahan', '01834846074', '01676750705', '7.00 PM-10.00 PM', 1, '2018-12-18 02:54:54.633605', '19/12/2018', 'fever '),
(64, 'Humyra Wardan', '01558673140', '01676750705', '6PM-8PM', 1, '2019-01-16 12:39:49.717364', '17/01/2019', 'fever'),
(65, 'Prof. Syeda Nurjahan Bhuiyan', '01834846090', '01676750705', '5:00-7:00pm', 1, '2019-01-18 10:55:21.232795', '19/01/2019', 'extreme headache '),
(66, 'Prof. Syeda Nurjahan Bhuiyan', '01834846090', '01676750705', '5:00-7:00pm', 2, '2019-01-18 11:34:36.213708', '19/01/2019', 'Unusual period '),
(67, 'Humyra Wardan', '01558673140', '01676750705', '6PM-8PM', 2, '2019-01-19 04:14:03.971026', '20/01/2019', 'emergency '),
(68, 'A.S.M Zahid', '01558673143', '01672902634', '6Pm-11Pm', 0, '2019-03-17 11:03:17.551526', '17/03/2019', 'notes'),
(69, 'Dr. Imran', '01834846093', '01672902634', '7pm-10pm', 0, '2019-03-18 12:22:02.145305', '18/03/2019', 'notes'),
(70, 'Alhaj Nurul Islam', '01558673144', '01838679747', '6Pm-11Pm', 0, '2019-03-19 07:37:52.569298', '15/03/2019', 'ffff'),
(71, 'Dr. Manik Khan', '01778001401', '01838679747', '7 PM-11 PM', 1, '2019-03-19 08:09:47.312039', '19/03/2019', 'Fever'),
(72, 'Dr. Manik Khan', '01778001401', '01819611365', '7 PM-11 PM', 1, '2019-03-19 08:09:54.047932', '19/03/2019', 'headache'),
(73, 'Dr. Manik Khan', '01778001401', '01819611365', '7 PM-11 PM', 2, '2019-03-19 08:25:42.485738', '20/03/2019', 'cough');

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
(18, 'Zunaid Masud Niloy', 'Male', '01838679747', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-02-17 08:36:54.655812'),
(19, 'Shawkat', 'Male', '01819611365', 'Chittagong', '827ccb0eea8a706c4c34a16891f84e7b', '2019-02-17 08:42:41.626964');

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
(19, '01557670601', 'Tutul', 'Male', '07/11/2018', 'Napa, 1+0+1,', 'Take rest for 7 days', '01868059596', 'Ruchi', '20', '60', '30.4', 'somefobia', 'Blood Test, '),
(20, '01820236235', 'Mr. Hasan', 'Male', '07/11/2018', 'Napa, 1+1+1,', 'Take rest 7 days', '01868059596', 'Ruchi', '35', '80', '40', 'Somephobia', 'Blood Test, '),
(21, '01557670601', 'rt', 'Female', '11/11/2018', 'vv', 'vb', '01868059596', 'Ruchi', '58', '35', '45', 'tjj', 'vbn'),
(22, '01557670601', 'rt', 'Female', '11/11/2018', 'vv', 'vb', '01868059596', 'Ruchi', '58', '35', '45', 'tjj', 'vbn'),
(23, '01672902634', 'Anik', 'Male', '24/03/2019', 'Napa Extra,', 'general info', '01778001401', ' Manik Khan', '26', NULL, NULL, NULL, 'Blood Test, ');

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
(2, '01672902634', 'Noor Mohammed', 'Male', '09/02/2018', '25', '01831758799', 'Popular Diagonostic Center', '1. Coff Test\n2. Urine Test', 'Dr. Anik Khan', '01778001401', '2000'),
(3, '01868059597', 'ruchi', 'Female', '24/02/2018', '24', '01831758799', 'Popular Diagonostic Center', 'blood test', 'Ruchi', '01868059596', '950'),
(4, '01672902634', 'Anik', 'Male', '05/03/2018', '25', '01831758799', 'Popular Diagonostic Center', 'Coff test', 'Dr. Anik Khan', '01778001401', '200'),
(5, '01868059597', 'ruchi', 'Female', '07/03/2018', '29', '01868059598', 'shahin', 'cofe test', 'Ruchi', '01868059596', NULL),
(6, '01868059597', 'faria', 'Female', '13/04/2018', '25', '01868059598', 'shahin', 'blood test\nultrasonography', 'Ruchi', '01868059596', NULL),
(7, '01868059597', 'zubaida ', 'Female', '27/04/2018', '25', '01868059598', 'shahin', 'cofe test \nblood test\nETT', 'Ruchi', '01868059596', '2400'),
(8, '0868059597', 'decosta', 'Male', '23/09/2018', '34', '01868059598', 'shahin', 'ultrasonograpgy', 'Ruchi', '01868059596', NULL),
(9, '01868059597', 'decosta', 'Male', '23/09/2018', '34', '01868059598', 'shahin', 'ultrasonograpgy', 'Ruchi', '01868059596', '3500'),
(10, '01558673140', 'Rushad', 'Female', '12/11/2018', '24', '1', '', 'blood test', 'Humyra', '01535403134', NULL),
(11, '01558673140', 'rushad', 'Female', '12/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'blood test', 'Humyra', '01535403134', '1000'),
(12, '01558673140', 'rushad', 'Female', '13/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'x ray\n ECG\nBlood test', 'Humyra', '01535403134', '1500'),
(13, '01558673140', 'humyra', 'Female', '14/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'blood test', 'Humyra', '01535403134', '1000'),
(14, '01558673140', 'Rushad ', 'Female', '06/12/2018', '24', '01790434658', 'Epic Diagonostic Center', 'X ray\nBlood test\n', 'Humyra', '01535403134', '1500'),
(15, '01676750705', 'Nusrat Khalil Chowdhury ', 'Female', '16/12/2018', '23', '01790434658', 'Epic Diagonostic Center', 'CBC', 'Nusrat jahan', '01834846074', '500'),
(16, '01676750705', 'nusrat', 'Female', '11/12/2018', '24', '01790434658', 'Epic Diagonostic Center', 'ultrasonography', 'Dr. Humyra Wardan', '01558673140', '1500'),
(17, '01676750705', 'Nusrat Khalil Chowdhury ', 'Female', '12/12/2018', '24', '01711574870', 'Max hospital', 'CT scan', 'Dr. Imran', '01834846093', '5000'),
(18, '01676750705', 'nusrat', 'Female', '19/12/2018', '21', '01790434658', 'Epic Diagonostic Center', 'q \na', 'Nusrat jahan', '01834846074', '1000'),
(19, '01672902634', 'kamal', 'Male', '16/01/2019', '', '01831758799', 'Popular Diagonostic Center', 'Coff Test', 'Dr. Manik Khan', '01778001401', NULL),
(20, '01672902634', 'Nayeem', 'Male', '16/01/2019', '25', '01831758799', 'Popular Diagonostic Center', 'Coff Test', 'Dr. Manik Khan', '01778001401', NULL),
(21, '01676750705', 'nusrat', 'Female', '17/01/2019', '24', '01833078609', '', 'bsbsbsjsj', 'Humyra Wardan', '01558673140', NULL),
(22, '01676750705', 'nusrat', 'Female', '17/01/2019', '24', '01831758799', 'Popular Diagonostic Center', 'bsjsjsjsn', 'Humyra Wardan', '01558673140', '5000'),
(23, '01676750705', 'Nusrat ', 'Female', '19/01/2019', '24', '01831758799', 'Popular Diagonostic Center', 'Xray', 'Prof. Syeda Nurjahan Bhuiyan', '01834846090', '1500'),
(24, '01676750705', 'nusrat', 'Female', '19/01/2019', '24', '01790434658', 'Epic Diagonostic Center', 'jsndndn', 'Humyra Wardan', '01558673140', '1000');

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
(5, '01558673140', 'rushad', 'Female', '12/11/2018', '24', '01790434658', 'Epic Diagonostic Center', 'normal'),
(6, '01558673140', 'rushad', 'Female', '06/12/2018', '24', '01790434658', 'Epic Diagonostic Center', 'Normal'),
(7, '01558673140', 'rushad', 'Female', '09/12/2018', '24', '01790434658', 'Epic Diagonostic Center', 'normal'),
(8, '01676750705', 'Nusrat Khalil Chowdhury ', 'Female', '16/12/2018', '23', '01790434658', 'Epic Diagonostic Center', 'Normal'),
(9, '01676750705', 'Nusrat', 'Female', '11/12/2018', '25', '01790434658', 'Epic Diagonostic Center', 'Normal'),
(10, '01676750705', 'Nusrat Khalil Chowdhury ', 'Female', '12/12/2018', '24', '01711574870', 'Max hospital', 'Normal'),
(11, '01676750705', 'nusrat', 'Female', '20/12/2018', '25', '01790434658', 'Epic Diagonostic Center', 'nornal');

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
  MODIFY `diago_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `doctors_info`
--
ALTER TABLE `doctors_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `dr_appointment`
--
ALTER TABLE `dr_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test_result`
--
ALTER TABLE `test_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
