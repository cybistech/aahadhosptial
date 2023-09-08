-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2023 at 08:54 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freaktem_singleclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(2500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Surgery', '2020-06-06 01:34:33', '2020-06-06 01:34:33'),
(2, 'Laboratory', '2020-06-06 01:41:09', '2020-06-06 01:41:09'),
(3, 'Dental', '2020-06-06 01:41:24', '2020-06-06 01:41:24'),
(4, 'x-ray', '2021-01-09 11:56:46', '2021-01-09 11:56:46'),
(5, 'Pharmacies', '2021-01-09 12:03:11', '2021-01-09 12:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `doc_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(1000) DEFAULT NULL,
  `phone_no` varchar(500) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL,
  `time` varchar(500) DEFAULT NULL,
  `messages` varchar(10000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT '0' COMMENT 'receive=1,reschedule=2,approve=3,completed=4,refer_doc=>5,absent=0,reject=6'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `department_id`, `doc_id`, `service_id`, `user_id`, `name`, `phone_no`, `date`, `time`, `messages`, `created_at`, `updated_at`, `status`) VALUES
(1, 3, 5, 10, 33, 'Iwenge', '09025741418', '2021-10-23', '10:30', 'hello', '2021-10-22 15:43:02', '2021-10-22 15:43:02', '1'),
(2, 1, 4, 1, 29, 'Dejah Ullrich', '1234567890', '2021-12-10', '15:14', 'check routine checkup', '2021-12-07 09:45:08', '2021-12-07 09:45:08', '1'),
(3, 3, 21, 10, 39, 'majed Saeed', '770006050', '2021-12-09', '22:42', 'ndnnrnrn', '2021-12-09 16:42:39', '2021-12-09 16:42:39', '1'),
(4, 1, 10, 6, 39, 'majed Saeed', '770006050', '2021-12-09', '23:57', 'hehjrjeje', '2021-12-09 16:43:45', '2021-12-09 16:43:45', '1'),
(5, 2, 11, 7, 39, 'majed Saeed', '770006050', '2021-12-09', '19:44', 'hrhrjr', '2021-12-09 16:44:19', '2021-12-09 16:44:19', '1'),
(6, 1, 4, 2, 40, 'Dan', '996559771909', '2021-12-16', '13:30', 'good morning I am going', '2021-12-09 17:00:28', '2021-12-09 17:00:28', '1'),
(7, 1, 10, 5, 42, 'testing', '8989898989', '2021-12-09', '20:30', 'St', '2021-12-09 18:00:53', '2021-12-09 18:00:53', '1'),
(8, 3, 5, 11, 40, 'Dandan@gmail.com', '996559771909', '2021-12-10', '03:41', 'January Jones and', '2021-12-10 03:42:21', '2021-12-10 03:42:21', '1'),
(9, 1, 10, 6, 39, 'majed Saeed', '770006050', '2021-12-11', '14:16', 'test', '2021-12-11 09:02:53', '2021-12-11 09:02:53', '1'),
(10, 3, 6, 11, 43, 'Nelson Mandela', '0620202020', '2021-12-11', '10:35', '.', '2021-12-11 09:20:14', '2021-12-11 09:20:14', '1'),
(11, 1, 4, 2, 44, 'sx', '0123456789', '2021-12-11', '16:08', 'x', '2021-12-11 10:38:48', '2021-12-11 10:38:48', '1'),
(12, 1, 4, 5, 45, 'Paul', '123456789', '2021-12-11', '10:50', 'Teste', '2021-12-11 11:51:06', '2021-12-11 11:54:27', '3'),
(13, 1, 19, 4, 45, 'Paul', '123456789', '2021-12-11', '02:15', 'Teste 2', '2021-12-11 12:00:26', '2021-12-11 12:00:26', '1'),
(14, 1, 10, 4, 39, 'majed Saeed', '770006050', '2021-12-11', '18:34', 'test', '2021-12-11 13:35:11', '2021-12-11 13:35:11', '1'),
(15, 1, 4, 6, 46, 'harsha', '7845269901', '2021-12-11', '21:12', 'teat', '2021-12-11 13:42:55', '2021-12-11 13:42:55', '1'),
(16, 1, 4, 6, 46, 'harsha', '7845269901', '2021-12-11', '23:13', 'hh', '2021-12-11 13:43:59', '2021-12-11 13:43:59', '1'),
(17, 3, 5, 11, 47, 'mohamed', '010000000', '2021-12-13', '12:16', 'uj', '2021-12-13 10:17:09', '2021-12-13 10:17:09', '1'),
(18, 1, 4, 2, 28, 'John Due', '9774085430', '2021-12-13', '18:30', 'getthe latest flash player', '2021-12-13 12:02:48', '2021-12-13 12:02:48', '1'),
(19, 4, 2, 20, 38, 'Manveer', '123567788999', '2021-12-13', '17:45', 'lorem ipsum', '2021-12-13 12:16:20', '2021-12-13 12:16:20', '1'),
(20, 2, 20, 10, 48, 'test', '5555555555', '2021-12-13', '12:00', '124', '2021-12-13 13:25:08', '2021-12-13 13:25:08', '1'),
(21, 5, 3, 23, 1, 'Hospital Management', '0125683467', '2021-12-13', '12:41', 'ok', '2021-12-13 15:42:17', '2021-12-13 15:42:17', '1'),
(22, 7, 16, 34, 48, 'test', '5555555555', '2021-12-13', '21:34', 'test', '2021-12-13 18:34:45', '2021-12-13 18:34:45', '1'),
(23, 1, 4, 5, 49, 'John loan', '35623547896', '2021-12-22', '12:30', 'Hello', '2021-12-13 20:43:26', '2021-12-13 20:43:26', '1'),
(24, 1, 4, 5, 50, 'Jim Morrison', '36952365478', '2021-12-22', '12:30', 'Hello', '2021-12-13 21:07:44', '2021-12-13 21:07:44', '1'),
(25, 5, 3, 22, 52, 'srin', '9173317411', '2021-12-14', '04:00', 'hhj', '2021-12-14 17:47:55', '2021-12-14 17:47:55', '1'),
(26, 3, 6, 12, 54, 'pary', '3636363636', '2021-12-15', '16:20', 'hey. doctor', '2021-12-15 09:24:31', '2021-12-15 09:24:31', '1'),
(27, 1, 4, 1, 54, 'pary', '3636363636', '2021-12-18', '14:59', 'pls pls', '2021-12-15 09:30:27', '2021-12-15 09:30:27', '1'),
(28, 3, 6, 15, 54, 'pary', '3636363636', '2021-12-31', '14:44', '.', '2021-12-15 10:19:16', '2021-12-15 10:19:16', '1'),
(29, 1, 4, 1, 29, 'Dejah Ullrich', '1234567890', '2021-12-23', '18:28', 'test', '2021-12-15 12:58:10', '2021-12-15 12:58:10', '1'),
(30, 4, 2, 18, 55, 'this', '9211690165', '2021-12-15', '21:19', 'thank', '2021-12-15 20:19:26', '2021-12-15 20:19:26', '1'),
(31, 5, 3, 24, 55, 'this', '9211690165', '2021-12-15', '21:20', 'he is just an image', '2021-12-15 20:21:13', '2021-12-15 20:21:13', '1'),
(32, 2, 11, 9, 55, 'this', '9211690165', '2021-12-17', '21:22', 'hello', '2021-12-15 20:22:28', '2021-12-15 20:22:28', '1'),
(33, 6, 56, 30, 57, 'akhil', '6969696969', '2021-12-17', '16:34', 'njjk', '2021-12-17 10:04:40', '2021-12-17 10:04:40', '1'),
(34, 4, 2, 21, 58, 'walid', '0736363666', '2021-12-18', '17:30', 'I need to know what to do before I visit or attending my clinic thanks.', '2021-12-18 14:26:01', '2021-12-18 14:26:01', '1'),
(35, 1, 59, 4, 58, 'walid', '0736363666', '2021-12-18', '17:47', 'please call me ASAP', '2021-12-18 14:46:30', '2021-12-18 14:53:23', '3'),
(36, 4, 2, 19, 60, 'Kalpesh', '9876543210', '2021-12-20', '17:10', 'Hello', '2021-12-19 10:22:07', '2021-12-20 09:17:12', '3'),
(37, 5, 14, 24, 61, 'bidyot', '8888888888', '2021-12-19', '19:16', 'urgent', '2021-12-19 13:47:14', '2021-12-19 13:47:14', '1'),
(38, 4, 2, 19, 60, 'Kalpesh', '9876543210', '2021-12-20', '16:29', 'Hello', '2021-12-20 09:13:58', '2021-12-23 07:03:06', '4'),
(39, 3, 5, 15, 60, 'Kalpesh', '9876543210', '2021-12-22', '14:44', 'Hello', '2021-12-20 09:14:37', '2021-12-20 09:14:37', '1'),
(40, 6, 15, 27, 60, 'Kalpesh', '9876543210', '2021-12-20', '20:27', 'hello', '2021-12-20 14:57:27', '2021-12-20 14:57:27', '1'),
(41, 1, 4, 2, 63, 'alefe', '33999316789', '2021-12-20', '13:04', 'teste', '2021-12-20 15:05:09', '2021-12-20 15:05:09', '1'),
(42, 5, 3, 24, 63, 'alefe', '33999316789', '2021-12-20', '15:06', 'jj', '2021-12-20 15:06:15', '2021-12-20 15:06:15', '1'),
(43, 3, 6, 13, 64, 'naga kishore', '9966442333', '2021-12-23', '15:35', 'nhuks jjsnjos jsjmw', '2021-12-22 12:49:52', '2021-12-22 12:49:52', '1'),
(44, 4, 2, 19, 65, 'byzed amin', '01830747554', '2021-12-23', '23:10', 'VII', '2021-12-23 17:10:52', '2021-12-23 17:10:52', '1'),
(45, 4, 2, 21, 66, 'abc', '9876543210', '2021-12-24', '04:57', 'qergg fghj', '2021-12-23 22:28:19', '2021-12-25 06:03:04', '4'),
(46, 1, 4, 3, 66, 'abc', '9876543210', '2021-12-24', '04:00', 'hwheh', '2021-12-23 22:31:11', '2021-12-23 22:31:11', '1'),
(47, 4, 2, 19, 52, 'srin', '9173317411', '2021-12-25', '15:30', 'meet at the achedule', '2021-12-25 23:03:21', '2021-12-25 23:03:21', '1'),
(48, 1, 4, 2, 67, 'OWBE WEST', '05423327264', '2021-12-29', '21:36', 'test', '2021-12-26 18:36:32', '2021-12-26 18:36:32', '1'),
(49, 3, 5, 15, 68, 'Erkan', '5255252525', '2021-12-28', '18:13', 'Yok', '2021-12-27 13:14:04', '2021-12-27 13:14:04', '1'),
(50, 4, 2, 17, 2, 'Dr Pol Woker', '+1-541-754-3010', '2021-12-28', '09:18', 'headache', '2021-12-28 02:19:20', '2021-12-28 02:19:20', '1'),
(51, 4, 2, 17, 69, 'tukangnyontek', '98765432', '2021-12-28', '08:43', 'headache', '2021-12-28 02:20:16', '2021-12-28 02:20:16', '1'),
(52, 4, 2, 19, 10, 'Dr Chris Wogan', '+1-541-754-3010', '2021-12-28', '10:30', 'need ur help', '2021-12-28 02:35:33', '2021-12-28 02:35:33', '1'),
(53, 4, 2, 19, 70, 'jov ramos', '9511452595', '2021-12-27', '13:44', 'Me duele un diente', '2021-12-28 02:44:57', '2021-12-30 05:22:04', '3'),
(54, 8, 17, 38, 70, 'jov ramos', '9511452595', '2021-12-27', '14:45', 'J hola', '2021-12-28 02:45:48', '2021-12-28 02:45:48', '1'),
(55, 5, 14, 24, 60, 'Kalpesh', '9876543210', '2021-12-29', '02:10', 'bb', '2021-12-28 05:17:52', '2021-12-28 05:17:52', '1'),
(56, 5, 3, 24, 60, 'Kalpesh', '9876543210', '2021-12-29', '14:08', 'hfg', '2021-12-29 08:38:46', '2021-12-29 08:38:46', '1'),
(57, 4, 9, 19, 58, 'walid', '0736363666', '2021-12-29', '15:15', 'grhcgvh', '2021-12-29 11:48:06', '2021-12-29 11:48:06', '1'),
(58, 2, 11, 10, 43, 'Nelson Mandela', '0620202020', '2021-12-31', '08:00', '.', '2021-12-30 18:55:17', '2021-12-30 18:55:17', '1'),
(59, 5, 3, 23, 1, 'Hospital Management', '01158920992', '2022-01-05', '21:48', 'Test', '2021-12-31 13:50:10', '2021-12-31 13:50:10', '1'),
(60, 1, 10, 3, 1, 'Hospital Management', '556656', '2021-12-31', '22:34', 'gg', '2021-12-31 20:34:47', '2021-12-31 20:34:47', '1'),
(61, 12, 2, 61, 2, 'drh. Farid Rizal', '+1-541-754-3010', '2022-01-02', '20:00', 'kucing tidak mau makan', '2022-01-02 11:10:50', '2022-01-02 11:10:50', '1'),
(62, 12, 2, 59, 72, 'qr', '389999999', '2022-01-02', '10:49', 'teste', '2022-01-02 18:49:34', '2022-01-02 18:49:34', '1'),
(63, 1, 19, 1, 72, 'qr', '389999999', '2022-01-02', '17:25', 'testes', '2022-01-02 18:51:26', '2022-01-02 18:51:26', '1'),
(64, 1, 4, 2, 1, 'Hospital Management', '0978578966', '2022-01-03', '02:39', 'no', '2022-01-03 03:40:32', '2022-01-03 03:40:32', '1'),
(65, 5, 3, 24, 1, 'Hospital Management', '087798020517', '2022-01-04', '10:41', 'hi', '2022-01-03 03:42:04', '2022-01-03 03:42:04', '1'),
(66, 12, 2, 60, 73, 'raj', '3333333333', '2022-01-04', '19:49', 'hi', '2022-01-03 13:01:41', '2022-01-03 13:01:41', '1'),
(67, 12, 2, 60, 75, 'Amrinder', '2580255025800', '2022-01-06', '09:40', 'xyz', '2022-01-06 08:11:13', '2022-01-06 08:11:13', '1'),
(68, 12, 2, 60, 75, 'Amrinder', '2580255025800', '2022-01-06', '11:41', 'xyz', '2022-01-06 08:12:12', '2022-01-06 08:12:12', '1'),
(69, 12, 2, 60, 75, 'Amrinder', '2580255025800', '2022-01-06', '16:42', 'appointment notice', '2022-01-06 09:13:04', '2022-01-06 09:13:04', '1'),
(70, 1, 4, 4, 75, 'Amrinder', '2580255025800', '2022-01-07', '17:45', 'xyz', '2022-01-06 09:16:04', '2022-01-06 09:16:04', '1'),
(71, 5, 3, 23, 51, 'Cnu', '23456778888', '2022-01-06', '17:48', 'mssg goes here', '2022-01-06 09:18:53', '2022-01-06 09:18:53', '1'),
(72, 12, 2, 60, 74, 'Rashi', '25588888655', '2022-01-19', '17:16', 'xyzkkhg', '2022-01-10 11:47:21', '2022-01-10 11:47:21', '1'),
(73, 2, 11, 8, 74, 'Rashi', '25800085558888', '2022-01-11', '18:19', 'message', '2022-01-10 11:51:07', '2022-01-10 11:51:07', '1'),
(74, 1, 4, 2, 80, 'Jasmine', '1122334455', '2022-01-15', '12:30', 'Doctor am suffering from heart pain from last two days. I have taken somw pills but non of them worked.', '2022-01-12 04:26:02', '2022-01-12 04:26:02', '1'),
(75, 5, 3, 24, 80, 'Jasmine', '1122334455', '2022-01-19', '14:30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:27:46', '2022-01-12 04:27:46', '1'),
(76, 5, 14, 25, 80, 'Jasmine', '1122334455', '2022-01-21', '18:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:28:35', '2022-01-12 04:28:35', '1'),
(77, 4, 13, 18, 80, 'Jasmine', '1122334455', '2022-01-28', '16:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:29:11', '2022-01-12 04:29:11', '1'),
(78, 3, 6, 14, 80, 'Jasmine', '1122334455', '2022-01-31', '03:59', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:29:59', '2022-01-12 04:29:59', '1'),
(79, 8, 17, 39, 80, 'Jasmine', '1122334455', '2022-01-08', '11:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry most', '2022-01-12 04:34:23', '2022-01-12 04:34:23', '1'),
(80, 9, 18, 44, 80, 'Jasmine', '1122334455', '2022-01-07', '17:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry most', '2022-01-12 04:35:04', '2022-01-12 04:35:04', '1'),
(81, 5, 14, 24, 80, 'Jasmine', '1122334455', '2022-01-05', '15:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry most', '2022-01-12 04:35:38', '2022-01-12 04:35:38', '1'),
(82, 3, 6, 14, 80, 'Jasmine', '1122334455', '2022-01-10', '10:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:37:04', '2022-01-12 04:37:04', '1'),
(83, 3, 6, 14, 80, 'Jasmine', '1122334455', '2022-01-02', '10:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', '2022-01-12 04:37:16', '2022-01-12 04:37:16', '1'),
(84, 3, 6, 13, 81, 'xhdjd', '85644584679', '2022-01-18', '01:13', 'ggjfbnvvb', '2022-01-17 19:14:23', '2022-01-17 19:14:23', '1'),
(85, 5, 3, 23, 13, 'Dr Juan Konare', '+1-541-754-3010', '2022-01-19', '09:20', 'have a great day and', '2022-01-18 05:42:12', '2022-01-18 05:42:12', '1'),
(86, 1, 4, 1, 73, 'raj', '3333333333', '2022-01-18', '18:44', 'hi', '2022-01-18 13:12:15', '2022-01-18 13:12:15', '1'),
(87, 1, 4, 1, 73, 'raj', '3333333333', '2022-01-18', '18:44', 'hh', '2022-01-18 13:13:36', '2022-01-18 13:13:36', '1'),
(88, 3, 5, 16, 85, 'Waqar', '03206070015', '2022-01-20', '07:40', 'I need', '2022-01-19 03:44:22', '2022-01-19 03:44:22', '1'),
(89, 2, 11, 8, 28, 'John Due', '9774085430', '2022-01-19', '18:30', 'have a great day and', '2022-01-19 09:09:06', '2022-01-19 09:09:06', '1'),
(90, 1, 4, 6, 89, 'Manglo', '000000000', '2022-01-21', '18:00', 'sdfgs', '2022-01-20 13:23:45', '2022-01-20 13:23:45', '1'),
(91, 5, 3, 24, 90, 'Meme', '059903321', '2022-01-20', '18:06', 'hi', '2022-01-20 14:06:51', '2022-01-20 14:06:51', '1'),
(92, 5, 3, 25, 91, 'hshahah', '56443121581848', '2022-01-23', '20:32', 'Jdjdjd', '2022-01-20 17:32:34', '2022-01-20 17:32:34', '1'),
(93, 5, 3, 23, 77, 'M', '000', '2022-01-23', '12:22', 'اريد حجز', '2022-01-20 21:55:03', '2022-01-20 21:55:03', '1'),
(94, 2, 11, 8, 92, '3C', '9696857432', '2022-01-21', '05:10', 'hhh', '2022-01-20 22:37:26', '2022-01-20 22:37:26', '1'),
(95, 3, 6, 14, 73, 'raj', '3333333333', '2022-01-22', '16:42', 'hii', '2022-01-22 08:12:48', '2022-01-22 08:12:48', '1'),
(96, 5, 3, 25, 73, 'raj', '3333333333', '2022-01-22', '16:43', 'hi', '2022-01-22 08:13:34', '2022-01-22 08:13:34', '1'),
(97, 5, 3, 24, 94, 'Srinivas', '1234563218', '2022-01-28', '10:30', 'ghuu bhi', '2022-01-22 16:32:05', '2022-01-22 16:32:05', '1'),
(98, 2, 20, 8, 63, 'alefe', '33999316789', '2022-01-25', '04:11', 'u', '2022-01-25 04:12:32', '2022-01-25 04:12:32', '1'),
(99, 5, 3, 23, 95, 'chinh I gg', '089978788497', '2022-01-26', '09:29', 'hhhsjsjjsjsjjsjsjsjsjjw', '2022-01-25 14:55:53', '2022-01-25 14:55:53', '1'),
(100, 5, 3, 23, 96, 'Mohammad', '6281806776222', '2022-01-29', '15:19', 'oke', '2022-01-27 15:20:09', '2022-01-27 15:20:09', '1'),
(101, 3, 5, 15, 97, 'Kikas_', '428363656', '2022-01-28', '19:22', 'test', '2022-01-28 23:19:59', '2022-01-28 23:19:59', '1'),
(102, 5, 3, 24, 98, 'محمود', '01551196969', '2022-01-31', '21:57', 'ففف', '2022-01-29 19:58:23', '2022-01-29 19:58:23', '1'),
(103, 5, 14, 25, 97, 'Kikas_', '563636333', '2022-01-30', '18:30', 'jiaj', '2022-01-30 21:09:32', '2022-01-30 21:09:32', '1'),
(104, 3, 6, 16, 99, 'Bet', '+251972233791', '2022-01-31', '23:55', 'pls accept', '2022-01-31 20:40:20', '2022-01-31 20:40:20', '1'),
(105, 5, 3, 23, 48, 'test', '5555555555', '2022-02-02', '00:29', 'tes', '2022-01-31 21:29:33', '2022-01-31 21:29:33', '1'),
(106, 9, 18, 44, 99, 'Bet', '22288', '2022-02-01', '23:19', 'fgh', '2022-02-01 09:20:38', '2022-02-01 09:20:38', '1'),
(107, 1, 4, 1, 100, 'mir', '148865756', '2022-02-01', '22:13', 'neeed u', '2022-02-01 14:13:45', '2022-02-01 14:13:45', '1'),
(108, 5, 3, 24, 100, 'mir', '148865756', '2022-02-02', '12:23', 'need more', '2022-02-02 04:24:50', '2022-02-02 04:24:50', '1'),
(109, 5, 3, 23, 77, 'Jessie Bryan', '09564667', '2022-02-06', '10:08', 'Message', '2022-02-03 00:09:06', '2022-02-03 00:09:06', '1'),
(110, 4, 13, 19, 77, 'Mike', '22222222', '2022-02-03', '11:20', 'hhhhfffgg', '2022-02-03 13:21:49', '2022-02-03 13:21:49', '1'),
(111, 5, 3, 22, 102, 'masum.ahammed', '9126250084', '2022-02-04', '14:07', 'hhii', '2022-02-04 06:37:49', '2022-02-04 06:37:49', '1'),
(112, 2, 11, 8, 46, 'harsha', '7845269901', '2022-02-04', '22:39', 'test', '2022-02-04 14:10:19', '2022-02-04 14:10:19', '1'),
(113, 5, 3, 22, 103, 'Nipuna', '789334854', '2022-02-06', '11:00', 'ji', '2022-02-05 06:28:27', '2022-02-05 06:28:27', '1'),
(114, 5, 3, 22, 43, 'Nelson Mandela', '0620202020', '2022-02-07', '10:25', '.', '2022-02-06 16:20:43', '2022-02-06 16:20:43', '1'),
(115, 2, 20, 9, 104, 'Fábio', '474736363737', '2022-02-07', '18:30', 'Djdjdhdhs', '2022-02-07 12:42:04', '2022-02-07 12:42:04', '1'),
(116, 4, 13, 19, 105, 'Gonçalo', '212213913', '2022-02-08', '03:45', 'hello dra', '2022-02-08 00:41:29', '2022-02-08 00:41:29', '1'),
(117, 3, 12, 16, 1, 'Hospital Management', '99966666', '2022-02-09', '22:58', 'vv', '2022-02-09 14:28:44', '2022-02-09 14:28:44', '1'),
(118, 5, 3, 22, 106, 'Moha', '777459599', '2022-02-10', '04:34', 'test', '2022-02-09 22:34:43', '2022-02-09 22:34:43', '1'),
(119, 4, 9, 19, 107, 'ahmad', '123456789', '2022-02-18', '16:42', 'test', '2022-02-10 10:42:49', '2022-02-10 10:42:49', '1'),
(120, 3, 6, 13, 1, 'Hospital Management', '694889892', '2022-02-25', '15:58', 'waifkdnd', '2022-02-11 12:58:48', '2022-02-11 12:58:48', '1'),
(121, 5, 8, 26, 1, 'St Mary Soledad', '697884581', '2022-02-25', '15:30', 'Needs immediafe suegery', '2022-02-11 13:32:16', '2022-02-11 13:32:16', '1'),
(122, 3, 6, 15, 108, 'Stanley Kiven', '6963566', '2022-02-10', '14:56', '.', '2022-02-11 15:57:37', '2022-02-11 15:57:37', '1'),
(123, 7, 16, 35, 113, '승열', '2222', '2022-02-13', '21:34', 'hhh', '2022-02-13 10:35:37', '2022-02-13 10:35:37', '1'),
(124, 5, 3, 22, 113, '승열', '111', '2022-02-14', '17:52', '33', '2022-02-14 06:52:35', '2022-02-14 06:52:35', '1'),
(125, 3, 12, 16, 113, '승열', '11', '2022-02-14', '18:48', '22', '2022-02-14 08:49:13', '2022-02-14 08:49:13', '1'),
(126, 2, 20, 7, 113, '승열', '878', '2022-02-15', '22:58', 'ㄹ', '2022-02-15 01:58:28', '2022-02-15 01:58:28', '1'),
(127, 4, 13, 19, 1, 'Hospital Management', '963256996', '2022-02-25', '05:37', 'njmni', '2022-02-15 02:38:26', '2022-02-15 02:38:26', '1'),
(128, 5, 3, 25, 104, 'Fábio', '4847474747', '2022-02-15', '11:23', 'CNH kids foi', '2022-02-15 10:25:11', '2022-02-15 10:25:11', '1'),
(129, 5, 3, 24, 104, 'Fábio', '37373736', '2022-02-22', '06:30', 'Dhdhdhshe', '2022-02-18 18:32:13', '2022-02-18 18:32:13', '1'),
(130, 5, 3, 22, 119, 'Mohamed', '666666', '2022-02-20', '06:23', 'jjj', '2022-02-20 02:24:40', '2022-02-20 02:24:40', '1'),
(131, 1, 4, 1, 121, 'Arslan', '66994798', '2022-02-22', '20:43', 'Test', '2022-02-21 17:43:50', '2022-02-21 17:43:50', '1'),
(132, 4, 9, 18, 123, 'jjjj', '7778888888', '2022-02-22', '23:14', 'test', '2022-02-21 17:44:41', '2022-02-21 17:44:41', '1'),
(133, 5, 3, 23, 1, 'Hospital Management', '7845269901', '2022-02-24', '02:25', 'ttt', '2022-02-21 17:56:22', '2022-02-21 17:56:22', '1'),
(134, 2, 11, 8, 1, 'Hospital Management', '9999999999', '2022-02-22', '00:26', 'vv', '2022-02-21 17:57:56', '2022-02-21 17:57:56', '1'),
(135, 5, 3, 25, 124, 'Rehmat', '9888414149', '2022-02-22', '12:00', 'hello', '2022-02-22 04:57:37', '2022-03-02 13:52:32', '3'),
(136, 1, 4, 1, 110, 'Abdullah Al-Wajih', '773946646', '2022-02-22', '09:46', 'hi', '2022-02-22 06:47:16', '2022-02-22 06:47:16', '1'),
(137, 2, 20, 9, 1, 'Hospital Management', '222222222222', '2022-02-24', '14:19', 'teste', '2022-02-22 15:19:45', '2022-02-22 15:19:45', '1'),
(138, 3, 12, 12, 113, '승열', '44', '2022-02-23', '14:45', 'ㅋ', '2022-02-23 02:51:04', '2022-02-23 02:51:04', '1'),
(139, 5, 3, 23, 110, 'Abdullah Al-Wajih', '773946646', '2022-02-23', '11:11', 'aaa', '2022-02-23 08:12:14', '2022-03-02 08:28:14', '6'),
(140, 3, 5, 14, 110, 'Abdullah Al-Wajih', '773946646', '2022-02-23', '17:25', 'rrr', '2022-02-23 10:05:28', '2022-02-23 10:05:28', '1'),
(141, 5, 3, 22, 2, 'drh. Farid Rizal', '+1-541-754-3010', '2022-02-23', '00:09', 'm', '2022-02-23 20:35:56', '2022-03-01 04:56:56', '3'),
(142, 1, 4, 4, 113, '승열', '5555', '2022-02-24', '17:57', 'ㄹ', '2022-02-24 06:58:02', '2022-02-24 06:58:02', '1'),
(143, 5, 3, 23, 110, 'Abdullah Al-Wajih', '773946646', '2022-02-24', '10:26', 'aa', '2022-02-24 07:27:06', '2022-03-02 08:27:41', '3'),
(144, 7, 7, 33, 110, 'Abdullah Al-Wajih', '773946646', '2022-02-24', '00:33', 'uu', '2022-02-24 07:34:36', '2022-02-24 07:34:36', '1'),
(145, 2, 20, 9, 131, 'test123', '123123123', '2022-02-25', '09:00', 'Test', '2022-02-24 12:27:17', '2022-02-24 12:27:17', '1'),
(146, 5, 3, 23, 132, 'Mekki', '0533829106', '2022-02-24', '19:59', 'مرحبا', '2022-02-24 17:00:34', '2022-02-28 11:07:46', '4'),
(147, 5, 3, 23, 133, 'rama krishna', '9553453335', '2022-02-25', '02:38', 'hi i need appointment', '2022-02-24 18:08:35', '2022-02-26 07:40:05', '4'),
(148, 1, 4, 6, 134, 'mohit', '467940404477', '2022-02-25', '13:20', 'sjxhx', '2022-02-25 06:47:28', '2022-02-25 06:47:28', '1'),
(149, 2, 20, 8, 1, 'Hospital Management', '876868', '2022-03-11', '04:06', 'hi', '2022-02-25 19:06:33', '2022-02-25 19:06:33', '1'),
(150, 4, 9, 18, 137, 'deneme', '2555555', '2022-02-25', '15:15', 'g', '2022-02-25 19:11:36', '2022-02-25 19:11:36', '1'),
(151, 2, 11, 7, 1, 'Hospital Management', '1234567890', '2023-02-12', '20:50', 'dasdasdsasadasd', '2022-02-27 02:10:28', '2022-02-27 02:10:28', '1'),
(152, 3, 5, 12, 1, 'Hospital Management', '1234567890', '2022-03-05', '12:00', 'qweqwewqe', '2022-02-27 02:11:06', '2022-02-27 02:11:06', '1'),
(153, 4, 53, 19, 139, 'Samsung', '23123123', '2022-03-11', '10:03', '444', '2022-02-28 06:17:49', '2022-02-28 06:17:49', '1'),
(154, 1, 4, 1, 139, 'Samsung', '23123123', '2022-03-01', '10:30', '555', '2022-02-28 06:18:24', '2022-02-28 06:18:24', '1'),
(155, 1, 4, 1, 139, 'Samsung', '23123123', '2022-03-01', '10:30', '5411', '2022-02-28 06:18:46', '2022-02-28 06:18:46', '1'),
(156, 8, 17, 40, 1, 'Hospital Management', '98898528265', '2022-03-01', '16:32', 'fg', '2022-02-28 08:59:57', '2022-02-28 08:59:57', '1'),
(157, 4, 13, 19, 140, 'sourav', '9348622201', '2022-03-23', '00:10', 'gggggggggg', '2022-02-28 13:41:45', '2022-02-28 13:41:45', '1'),
(158, 5, 3, 22, 131, 'test123', '123123123', '2022-03-05', '08:56', 'Tset Data', '2022-03-03 09:23:47', '2022-03-03 09:23:47', '1'),
(159, 5, 3, 24, 131, 'test123', '123123123', '2022-03-04', '11:09', 'Tset New Dataa', '2022-03-03 09:38:43', '2022-03-03 09:38:43', '1'),
(160, 5, 3, 25, 143, 'Phantom', '0776536324', '2022-03-03', '01:20', 'hou with you', '2022-03-03 10:10:53', '2022-03-03 15:13:56', '4'),
(161, 1, 10, 2, 1, 'Hospital Management', '4333444343', '2022-03-16', '03:02', 'cccccccc', '2022-03-03 15:22:03', '2022-03-03 15:22:03', '1'),
(162, 1, 4, 2, 1, 'Hospital Management', '45453535345', '2022-03-08', '04:04', '444', '2022-03-03 15:22:58', '2022-03-03 15:22:58', '1');

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `sender_user_id` int(11) DEFAULT NULL,
  `receiver_user_id` int(11) DEFAULT NULL,
  `channel` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `topic` varchar(2000) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `topic`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Olivia Pointon', 'avaolivia2747@gmail.com', 'Video to explain your product or service', '02079460433', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site demo.freaktemplate.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=ivTmAwuli14\r\nhttps://www.youtube.com/watch?v=uywKJQvfeAM\r\nhttps://www.youtube.com/watch?v=oPNdmMo40pI\r\nhttps://www.youtube.com/watch?v=6gRb-HPo_ck\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $449\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nKind Regards,\r\nOlivia', '2021-11-11 14:33:12', '2021-11-11 14:33:12'),
(4, 'Kylie Hart', 'kyliehartila@yahoo.com', 'DA50 Backlink to freaktemplate.com', '070 3370 9086', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to demo.freaktemplate.com from our Moz DA50 website?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content.\r\n\r\nThe fee is just $40 USD to be paid via Paypal. This is a one-time fee, so there are no extra charges and the link is permanent.\r\n\r\nAlso: Once the article has been published, and your backlink has been added, it will be shared out to almost 3 million social media followers (if it\'s educationally based). This means you aren\'t just getting the high valued backlink, you\'re also getting the potential of more traffic to your site.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nNot sure what DA is? Have a read here: https://moz.com/learn/seo/domain-authority\r\n\r\nKind Regards,\r\nKylie', '2021-11-14 02:01:21', '2021-11-14 02:01:21'),
(5, NULL, NULL, NULL, NULL, NULL, '2022-02-02 21:36:48', '2022-02-02 21:36:48'),
(6, NULL, NULL, NULL, NULL, NULL, '2022-02-03 06:18:06', '2022-02-03 06:18:06'),
(7, NULL, NULL, NULL, NULL, NULL, '2022-02-05 10:10:36', '2022-02-05 10:10:36'),
(8, 'LesliejeK', 'mz8vy@course-fitness.com', '第一借錢網擁有全台最多的借錢資訊', '82596619627', '第一借錢網擁有全台最多的借錢資訊 \r\n \r\n \r\nhttps://168cash.com.tw/', '2023-02-21 14:18:10', '2023-02-21 14:18:10'),
(9, 'DennisSpuck', 'mamuka@kmiha.su', 'Сервис загрузки изображений', '86851578778', '<a href=https://hostimage.su>Фотохостинг - бесплатная загрузка картинок и фотографий</a> Сервис разрешает шара также сверх регистрации загружать изображения \r\nи расквартировывать ссылки на них на форумах, блогах и сайтах, \r\nчто-что также поделится ими маленький друзьями. \r\n \r\n<a href=https://hostimage.su>fotohost - Free image hosting / image upload</a> The service allows you to upload images exchange for untrammelled and without registration \r\nand postal service links to them on forums, blogs and websites, \r\nand also partition them with friends.', '2023-02-22 02:48:26', '2023-02-22 02:48:26'),
(10, 'LesterNor', 'yourmail@gmail.com', 'Jackpot Bet Online', '83468335875', 'Find free guest post on high DA 61+ \r\n \r\nhttps://www.jackpotbetonline.com/', '2023-02-22 06:58:38', '2023-02-22 06:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `emergency_no` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `image`, `description`, `emergency_no`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Cardiology', 'department_468444.png', 'It provides medical care to patients who have problems with their heart or circulation. Cardiology is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology.', '757-209-0953', '2020-06-30 06:54:36', '2022-01-12 06:22:07', '0'),
(2, 'Urology', 'department_867895.png', 'The urology department is run by consultant urology surgeons and investigates areas linked to kidney and bladder conditions.', '440-776-3274', '2020-06-30 06:55:12', '2022-01-12 06:22:58', '0'),
(3, 'Neurology', 'department_991456.png', 'Monitors and assesses patients with various kidney (renal) problems and conditions.', '281-481-6666', '2020-06-30 06:55:44', '2022-01-12 06:22:24', '0'),
(4, 'Dental', 'department_575472.png', 'Dentistry, also known as dental medicine and oral medicine, is a branch of medicine that consists of the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, commonly in the dentition', '610-253-7878', '2020-06-30 06:57:07', '2022-01-12 08:53:12', '0'),
(5, 'Padiatrics', 'department_284608.png', 'Pediatrics is the branch of medicine that involves the medical care of infants, children, and adolescents.', '586-473-9162', '2021-01-09 04:34:05', '2022-01-12 06:24:20', '0'),
(6, 'Pulmonary', 'department_684761.png', 'The word pulmonary means \"pertaining to the lungs.\" It is derived from the Latin root word pulmo, which means lung. If someone has pulmonary disease, this means they have a lung disease, and that may affect their ability to breathe well.', '530-701-8783', '2021-01-09 04:35:50', '2022-01-12 06:24:35', '0'),
(7, 'Traumatology', 'department_475932.png', 'In medicine, traumatology (from Greek trauma, meaning injury or wound) is the study of wounds and injuries caused by accidents or violence to a person, and the surgical therapy and repair of the damage.', '507-473-3337', '2021-01-09 04:37:03', '2022-01-12 09:06:03', '0'),
(8, 'X-ray', 'department_415354.png', 'X-rays are a type of radiation called electromagnetic waves. X-ray imaging creates pictures of the inside of your body. The images show the parts of your body in different shades of black and white. This is because different tissues absorb different amounts of radiation.', '512-682-2963', '2021-01-09 04:38:09', '2022-01-12 08:53:24', '0'),
(9, 'Pregnancy', 'department_458456.png', 'En Español. Pregnancy is the term used to describe the period in which a fetus develops inside a woman\'s womb or uterus. Pregnancy usually lasts about 40 weeks, or just over 9 months, as measured from the last menstrual period to delivery.', '310-854-7320', '2021-01-09 04:39:41', '2022-01-12 08:53:35', '0'),
(10, 'For disabled', 'department_607721.png', 'A disability is any condition of the body or mind (impairment) that makes it more difficult for the person with the condition to do certain activities (activity limitation) and interact with the world around them (participation restrictions).', '734-372-6383', '2021-01-09 04:47:14', '2022-01-12 08:53:45', '0'),
(11, 'Prosthes', 'department_175575.png', 'Prosthesis, artificial substitute for a missing part of the body. ... The medical specialty that deals with prostheses is called prosthetics.', '540-445-7305', '2021-01-09 04:48:27', '2022-01-12 08:53:55', '0'),
(12, 'Nuclear magnetic', 'department_100709.png', 'Nuclear magnetic resonance (NMR) is a physical phenomenon in which nuclei in a strong constant magnetic field are perturbed by a weak oscillating magnetic field (in the near field) and respond by producing an electromagnetic signal with a frequency characteristic of the magnetic field at the nucleus.', '870-209-1834', '2021-01-09 04:49:20', '2022-01-12 09:05:45', '0');

-- --------------------------------------------------------

--
-- Table structure for table `department_service`
--

CREATE TABLE `department_service` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(5000) DEFAULT NULL,
  `price` varchar(500) DEFAULT NULL,
  `price_for` varchar(250) DEFAULT NULL COMMENT '1=>Investigations,2=>Treatments',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_service`
--

INSERT INTO `department_service` (`id`, `department_id`, `name`, `price`, `price_for`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alcohol Septal Ablation', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(2, 1, 'Aneurysm Clipping', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(3, 1, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(4, 1, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(5, 1, 'Electrocardiogram', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(6, 1, 'Chest x-ray', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(7, 2, 'Emergency Medicine', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(8, 2, 'Endocrinology', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(9, 2, 'General Surgery', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(10, 2, 'Internal Medicine', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(11, 2, 'Maxillofacial Surgery', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(12, 3, 'Nephrology', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(13, 3, 'Surgical Oncology', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(14, 3, 'Rheumatology', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(15, 3, 'Ophthalmology', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(16, 3, 'Infectious Diseases', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(17, 4, 'Cosmetic Fillings', '45.00', '2', '2020-06-30 01:34:28', '2021-12-13 12:39:43'),
(18, 4, 'Bridgework', '75.00', '1', '2020-06-30 01:34:48', '2021-12-13 12:39:22'),
(19, 4, 'Dental Crowns', '45.00', '1', '2020-06-30 01:32:23', '2021-12-13 12:39:09'),
(21, 4, 'Dental Bonding', '160.00', '1', '2020-06-30 01:33:19', '2021-12-13 12:38:52'),
(22, 5, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(23, 5, 'Electrocardiogram', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(24, 5, 'Chest x-ray', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(25, 5, 'Neurosurgery', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(26, 5, 'Aneurysm Clipping', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(27, 6, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(28, 6, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(29, 6, 'Neurosurgery', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(30, 6, 'Chest x-ray', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(31, 6, 'Alcohol Septal Ablation', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(32, 7, 'Neurosurgery', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(33, 7, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(34, 7, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(35, 7, 'Electrocardiogram', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(36, 7, 'Neurosurgery', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(37, 8, 'Alcohol Septal Ablation', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(38, 8, 'Aneurysm Clipping', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(39, 8, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(40, 8, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(41, 8, 'Neurosurgery', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(42, 9, 'Chest x-ray', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(43, 9, 'Alcohol Septal Ablation', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(44, 9, 'Neurosurgery', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(45, 9, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(46, 9, 'Electrical Cardioversion', '150.00', '2', '2020-06-30 01:33:40', '2020-06-30 01:33:40'),
(47, 10, 'Neurosurgery', '45.00', '1', '2020-06-30 01:34:28', '2020-06-30 01:34:28'),
(48, 10, 'Chest x-ray', '75.00', '2', '2020-06-30 01:34:48', '2020-09-08 04:56:53'),
(49, 10, 'Alcohol Septal Ablation', '45.00', '2', '2020-06-30 01:32:23', '2020-06-30 01:32:23'),
(50, 10, 'Aneurysm Clipping', '65.00', '2', '2020-06-30 01:32:59', '2020-06-30 01:32:59'),
(51, 10, 'Balloon Valvuloplasty', '160.00', '2', '2020-06-30 01:33:19', '2020-06-30 01:33:19'),
(52, 11, 'Artificial heart', '150.00', '1', '2020-06-30 01:33:40', '2021-12-13 12:52:01'),
(53, 11, 'Capua Leg', '45.00', '2', '2020-06-30 01:34:28', '2021-12-13 12:51:51'),
(54, 11, 'Cybernetics', '75.00', '1', '2020-06-30 01:34:48', '2021-12-13 12:51:42'),
(55, 11, 'Muscle control', '45.00', '1', '2020-06-30 01:32:23', '2021-12-13 12:50:39'),
(56, 11, 'Osseointegration', '65.00', '1', '2020-06-30 01:32:59', '2021-12-13 12:50:06'),
(59, 12, 'ESR', '45.00', '2', '2020-06-30 01:34:28', '2021-12-13 12:42:25'),
(60, 12, 'NQR', '75.00', '1', '2020-06-30 01:34:48', '2021-12-13 12:42:15'),
(61, 12, 'MRI', '45.00', '1', '2020-06-30 01:32:23', '2021-12-13 12:41:44'),
(62, 12, 'NMR', '65.00', '1', '2020-06-30 01:32:59', '2021-12-13 12:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `working_hour` varchar(500) DEFAULT NULL,
  `about_us` varchar(8000) DEFAULT NULL,
  `service` varchar(8000) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `facebook_id` varchar(500) DEFAULT NULL,
  `twitter_id` varchar(500) DEFAULT NULL,
  `google_id` varchar(1000) DEFAULT NULL,
  `instagram_id` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `department_id`, `name`, `email`, `password`, `phone_no`, `working_hour`, `about_us`, `service`, `image`, `facebook_id`, `twitter_id`, `google_id`, `instagram_id`, `created_at`, `updated_at`) VALUES
(2, 3, 5, 'Dr. Olivier Lund', 'Olivier@gmail.com', '123', '+1-541-754-3010', '12h', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Pediatricians have graduated from medical school and completed a 3-year residency program in pediatrics. A board-certified pediatrician has passed rigorous exams given by the American Board of Pediatrics. To remain certified, pediatricians have to meet regular continuing education requirements.', '6.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2022-02-26 19:32:39'),
(3, 4, 1, 'Dr. mahajan', 'mahajan@gmail.com', '123', '+1-541-754-3010', '09:00 am to 10:00 pm', 'Cardiologists specify in the study and treatment of the heart and the many diseases and issues related to it. They assess the medical and family history of patients to determine potential risk for certain cardiovascular diseases and take action to prevent them.', 'Cardiologists specify in the study and treatment of the heart and the many diseases and issues related to it. They assess the medical and family history of patients to determine potential risk for certain cardiovascular diseases and take action to prevent them.', '12.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(4, 5, 3, 'Dr. Julia Jhones', 'Julia@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', '11.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(5, 6, 3, 'Dr. Agnes Ayres', 'Agnes@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Nullam mollis. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapi.', 'Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Nullam mollis. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapi.', '16.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(6, 7, 7, 'Dr. Edward Asner', 'Edward@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', '20.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(7, 8, 5, 'Dr. Cate Blanchett', 'Cate@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', '21.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(8, 9, 4, 'Dr. Leroy Anderson', 'Leroy@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', 'Dr. Agnes Ayres is a Maxillofacial Surgeon in New York, NY. Dr. Ayres has more experience with Congenital Cardiac Disorders and Cardiac Care than other specialists in his area. He is affiliated with medical facilities such as Mount Sinai Morningside and Roosevelt Hospital. He is accepting new patients. Be sure to call ahead with Dr. Pinney to book an appointment.', '15.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(9, 10, 1, 'Dr Chris Wogan', 'john@gmail.com', '123', '+1-541-754-3010', '09:00 AM To 09:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '16.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(10, 11, 2, 'Dr Pol Woker', 'john1@gmail.com', '123', '+1-541-754-3010', '09:00 AM To 09:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '2.jpg', 'https://www.facebook.com/PolWoker', 'https://twitter.com/PolWoker', 'https://twitter.com/PolWoker', 'https://www.facebook.com/PolWoker', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(11, 12, 3, 'Dr. Koureissi Carlos', 'Koureissi@gmail.com', '123', '+1-541-754-3010', '09:00 AM To 09:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '3.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.facebook.com/', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(12, 13, 4, 'Dr Juan Konare', 'chirag.redixbit@gmail.com', '123', '+1-541-754-3010', '9 Am to 9 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '11.jpg', 'https://www.facebook.com/JuanKonare', 'https://www.facebook.com/JuanKonare', 'https://www.facebook.com/JuanKonare', 'https://www.facebook.com/JuanKonare', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(13, 14, 5, 'Dr Charles', 'chrles@gmail.com', '123', '+1-541-754-3010', '8:00 AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '12.jpg', 'https://www.facebook.com/Charles', 'https://twitter.com/Charles', 'https://twitter.com/Charles', 'https://www.facebook.com/Charles', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(14, 15, 6, 'Dr Catholina Marin', 'Catholina@gmail.com', '123', '+1-541-754-3010', '10:0 AM to 8:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '14.png', 'https://www.facebook.com/CatholinaMarin', 'https://twitter.com/CatholinaMarin', 'https://twitter.com/CatholinaMarin', 'https://www.facebook.com/CatholinaMarin', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(15, 16, 7, 'DR Andrew Simons', 'Simonse@gmil.com', '123', '+1-541-754-3010', '8:30 AM to 5:30 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '13.jpg', 'https://www.facebook.com/AndrewSimons', 'https://twitter.com/AndrewSimons', 'https://twitter.com/AndrewSimons', 'https://www.facebook.com/AndrewSimons', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(16, 17, 8, 'Dr Amily Smith', 'Amily_smith@gmail.com', '123', '+1-541-754-3010', '8:00AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '19.jpg', 'https://www.facebook.com/MarkSmith', 'https://twitter.com/MarkSmith', 'https://twitter.com/MarkSmith', 'https://www.facebook.com/MarkSmith', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(17, 18, 9, 'Dr Joseph Martina', 'martina@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '15.jpg', 'https://twitter.com/Martina', 'https://www.facebook.com/Martina', 'https://www.facebook.com/Martina', 'https://twitter.com/Martina', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(18, 19, 1, 'Dr James Paul', 'jin_paul@gmail.com', '123', '+1-541-754-3010', '8:30 AM to 7:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '16.jpg', 'https://www.facebook.com/Jinpaul', 'https://twitter.com/Jinpaul', 'https://twitter.com/Jinpaul', 'https://www.facebook.com/Jinpaul', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(19, 20, 2, 'Dr Ethan Noah', 'anthony@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '11.jpg', 'https://twitter.com/Anthonygonzalise', 'https://www.facebook.com/Anthonygonzalise', 'https://www.facebook.com/Anthonygonzalise', 'https://twitter.com/Anthonygonzalise', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(20, 21, 3, 'Dr Michel Jonson', 'michel@gmail.com', '123', '+1-541-754-3010', '9:00 AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '22.jpg', 'http://www.Redixbit.com', 'http://www.Redixbit.com', 'http://www.Redixbit.com', 'http://www.Redixbit.com', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(21, 22, 4, 'Dr Carlous Smith', 'Smth_carlous@gmail.com', '123', '+1-541-754-3010', '10:00 AM to 7:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '23.jpg', 'https://www.facebook.com/CarlousSmith', 'https://twitter.com/CarlousSmith', 'https://twitter.com/CarlousSmith', 'https://www.facebook.com/CarlousSmith', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(22, 23, 5, 'Dr Mark Tescrothic', 'mark_tescrothic@gmail.com', '123', '+1-541-754-3010', '8:00 AM to 6:00 PM', 'A doctor diagnoses and treats diseases and conditions, as well as provides treatment in many forms including medication, procedures, surgery, or therapy.', 'Medical Services provides routine and urgent medical care, travel medicine, immunizations, as well as sexual health services, reproductive and gynecological services, LGBTQ health care, and confidential HIV testing.', '24.png', 'https://www.facebook.com/MarkTescrothic', 'https://twitter.com/MarkTescrothic', 'https://twitter.com/MarkTescrothic', 'https://www.facebook.com/MarkTescrothic', '2021-10-20 04:18:50', '2021-10-20 04:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `album_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, '5efb21eba7acb.jpg', '2020-06-30 05:58:43', '2020-06-30 05:58:43'),
(4, 1, '5efb2235c5f2d.jpg', '2020-06-30 05:59:57', '2020-06-30 05:59:57'),
(5, 2, '5efb228f242ab.jpg', '2020-06-30 06:01:27', '2020-06-30 06:01:27'),
(6, 2, '5efb2294a3cc2.jpg', '2020-06-30 06:01:32', '2020-06-30 06:01:32'),
(7, 2, '5efb2299ced89.jpg', '2020-06-30 06:01:37', '2020-06-30 06:01:37'),
(8, 2, '5efb22a0b6c13.jpg', '2020-06-30 06:01:44', '2020-06-30 06:01:44'),
(9, 3, '5efb22ed6248c.jpg', '2020-06-30 06:03:01', '2020-06-30 06:03:01'),
(10, 3, '5efb22f5d02b2.jpg', '2020-06-30 06:03:09', '2020-06-30 06:03:09'),
(12, 1, '5efc367c1dbb4.jpg', '2020-07-01 01:38:44', '2020-07-01 01:38:44'),
(13, 1, '5efc3691c44cc.jpg', '2020-07-01 01:39:05', '2020-07-01 01:39:05'),
(14, 1, '5efc4ae45f684.jpg', '2020-07-01 03:05:48', '2020-07-01 03:05:48'),
(15, 1, '5efc4ae763338.jpg', '2020-07-01 03:05:51', '2020-07-01 03:05:51'),
(16, 1, '5efc4aed11593.jpg', '2020-07-01 03:05:57', '2020-07-01 03:05:57'),
(18, 1, '5efc4b79028cf.jpg', '2020-07-01 03:08:17', '2020-07-01 03:08:17'),
(19, 4, '5ff938a1ca614.jpg', '2021-01-09 12:01:21', '2021-01-09 12:01:21'),
(20, 4, '5ff938a4bf508.jpg', '2021-01-09 12:01:24', '2021-01-09 12:01:24'),
(21, 4, '5ff938a628299.jpg', '2021-01-09 12:01:26', '2021-01-09 12:01:26'),
(22, 5, '5ff9394e8268a.jpg', '2021-01-09 12:04:14', '2021-01-09 12:04:14'),
(23, 5, '5ff939509ac0e.jpg', '2021-01-09 12:04:16', '2021-01-09 12:04:16'),
(24, 5, '5ff9395247c0e.jpg', '2021-01-09 12:04:18', '2021-01-09 12:04:18'),
(25, 5, '6202521cdcb04.jpg', '2022-02-08 11:21:00', '2022-02-08 11:21:00'),
(26, 5, '6202521da70e1.jpg', '2022-02-08 11:21:01', '2022-02-08 11:21:01'),
(27, 5, '6202521e3bbde.jpg', '2022-02-08 11:21:02', '2022-02-08 11:21:02'),
(28, 5, '6202521ead7e1.jpg', '2022-02-08 11:21:02', '2022-02-08 11:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL,
  `gateway_name` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL,
  `key` varchar(1000) DEFAULT NULL,
  `merchant_key` varchar(500) DEFAULT NULL,
  `secert` varchar(1000) DEFAULT NULL,
  `mode` varchar(500) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1=>active,0=>deactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `gateway_name`, `Image`, `key`, `merchant_key`, `secert`, `mode`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Authorize.net', 'featured-image.gif', '2w4YPn23', NULL, '225KJca8W7Y548ww', 'test', '0', '2020-07-20 09:39:47', '2022-02-28 16:53:49'),
(2, 'Braintree', 'pay_415299.png', 'xmdt5zcp75bdfnjf', 'qpj7hhj994nbzy5q', '48c75a472b66bf3c0bc1313466570f95', 'sandbox', '0', '2020-07-20 09:39:25', '2022-02-28 16:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `price_package`
--

CREATE TABLE `price_package` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_package`
--

INSERT INTO `price_package` (`id`, `name`, `price`, `department_id`, `description`, `created_at`, `updated_at`, `is_delete`) VALUES
(1, 'Standard', '25', 1, 'Urea\r\nCreatinine\r\nTSH\r\nBlood Sugar (Fasting)\r\nUltra Sonography (KUBP)\r\nUroflowmetry', '2020-06-08 00:43:20', '2020-08-04 00:16:35', '0'),
(2, 'Premium', '99', 2, 'Urea\r\nCreatinine\r\nTSH\r\nBlood Sugar (Fasting)\r\nUltra Sonography (KUBP)\r\nUroflowmetry', '2020-06-30 00:32:14', '2020-08-04 00:13:55', '0'),
(3, 'Professional', '149', 4, 'Diagnostic Services\r\nProfessional Consultation\r\nTooth Implants\r\nSurgical Extractions\r\nTeeth Whitening', '2020-06-30 00:32:59', '2020-08-04 00:11:21', '0');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 38, '771451', '2021-12-08 10:07:34', '2021-12-08 10:07:34'),
(2, 75, '873686', '2022-01-06 10:34:00', '2022-01-06 10:34:00'),
(3, 75, '853251', '2022-01-06 10:34:54', '2022-01-06 10:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` varchar(8000) NOT NULL,
  `ratting` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `doctor_id`, `user_id`, `review`, `ratting`, `created_at`, `updated_at`) VALUES
(1, 2, 29, 'The services that I receive from Dr Pol Woker is excellent. Dr. Pol Woker and the staff are friendly and ensure that I am properly informed about my health and care.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(2, 2, 30, 'he did a great job with my first ever health exam. She explained everything to me in a very clear manner. She was also kind and friendly. All of the staff was great.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(3, 2, 31, 'he is incredible. Not only has she taken great care of my health, but also she is lovely to speak with at every appointment. It’s rare to find a doctor that combines.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(4, 2, 32, 'he is a great doctor! He’s very understanding and listens to your concerns. He takes time with the patient to help them with their health issues! I highly recommend', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(5, 2, 28, 'Looks good and seems durable', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(6, 2, 30, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(7, 2, 31, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(8, 2, 32, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(9, 3, 30, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(10, 3, 31, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(11, 3, 32, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(12, 3, 33, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(13, 4, 28, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(14, 4, 30, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(15, 4, 31, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(16, 4, 32, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(17, 5, 28, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(18, 5, 29, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(19, 5, 32, 'Superb product. Great design and works very well', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(20, 5, 33, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(21, 6, 28, 'Great service ,quality products at affordable prices', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(22, 6, 29, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(23, 6, 31, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(24, 6, 32, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(25, 7, 28, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(26, 7, 29, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(27, 7, 31, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(28, 7, 32, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(29, 8, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(30, 8, 29, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(31, 8, 30, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(32, 8, 32, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(33, 9, 28, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(34, 9, 30, 'Superb product. Great design and works very well', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(35, 9, 32, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(36, 9, 33, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(37, 10, 28, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(38, 10, 30, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(39, 10, 32, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(40, 10, 33, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(41, 11, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(42, 11, 29, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(43, 11, 31, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(44, 11, 32, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(45, 12, 28, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(46, 12, 31, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(47, 12, 32, 'Looks good and seems durable', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(48, 12, 33, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(49, 13, 28, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(50, 13, 30, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(51, 13, 31, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(52, 13, 32, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(53, 14, 28, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(54, 14, 29, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(55, 14, 31, 'Superb product. Great design and works very well', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(56, 14, 33, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(57, 15, 28, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(58, 15, 29, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(59, 15, 31, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(60, 15, 33, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(61, 16, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(62, 16, 29, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(63, 16, 30, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(64, 16, 32, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(65, 17, 28, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(66, 17, 30, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(67, 17, 31, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(68, 17, 32, 'Looks good and seems durable', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(69, 18, 28, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(70, 18, 29, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(71, 18, 30, 'Looks good and seems durable', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(72, 18, 32, 'Great service ,quality products at affordable prices', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(73, 19, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(74, 19, 29, 'Great service ,quality products at affordable prices', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(75, 19, 30, 'Looks good and seems durable', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(76, 19, 33, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(77, 20, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(78, 20, 30, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(79, 20, 31, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(80, 20, 33, 'Superb product. Great design and works very well', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(81, 21, 28, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(82, 21, 29, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(83, 21, 30, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(84, 21, 31, 'Looks good and seems durable', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(85, 22, 29, 'Great service ,quality products at affordable prices', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(86, 22, 30, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(87, 22, 31, 'Great service ,quality products at affordable prices', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(88, 22, 32, 'Superb product. Great design and works very well', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(89, 23, 28, 'I have had nothing but wonderful service from them. I would highly recommend them and I would hire them again.', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(90, 23, 29, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(91, 23, 30, 'it was a good value for the money!', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(92, 23, 33, 'it was a good value for the money!', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(93, 24, 28, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '5', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(94, 24, 30, 'Great service ,quality products at affordable prices', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(95, 24, 32, 'They have descent customer service. Overall, I rate them highly. I would use them again in the future', '4', '2021-10-23 05:41:24', '2021-10-23 05:41:24'),
(106, 6, 80, 'Very humble and deals with positive attitude. i am giving 5 star rating for his service', '5', '2022-01-12 06:18:08', '2022-01-12 06:18:08'),
(107, 4, 1, 'vvv', '5', '2022-03-03 15:23:45', '2022-03-03 15:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `icon`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'service_335711.png', 'Laboratory services', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:35:23', '2022-01-12 07:18:24'),
(2, 'service_451010.png', 'Heart Disease', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:35:49', '2022-01-12 07:17:58'),
(3, 'service_440329.png', 'Dental Care', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:36:14', '2022-01-12 07:17:43'),
(4, 'service_255652.png', 'Body Surgery', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:36:40', '2022-01-12 07:17:19'),
(5, 'service_656473.png', 'Neurology Surgery', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:37:03', '2022-01-12 07:16:19'),
(6, 'service_770786.png', 'Gynaecology', 'There are only 2 dental specialties that only focus on dental esthetics.', '2020-06-30 05:37:23', '2022-01-12 07:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `is_demo` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>live,1=>demo',
  `android_server_key` varchar(1000) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `is_web` enum('1','2') NOT NULL DEFAULT '1',
  `is_rtl` enum('0','1') NOT NULL DEFAULT '0',
  `ios_server_key` varchar(500) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `facebook_id` varchar(500) DEFAULT NULL,
  `twitter_id` varchar(500) DEFAULT NULL,
  `instagram_id` varchar(500) DEFAULT NULL,
  `google_id` varchar(500) DEFAULT NULL,
  `happy_client` varchar(100) DEFAULT NULL,
  `surgery_complete` varchar(100) DEFAULT NULL,
  `expert_doctor` varchar(100) DEFAULT NULL,
  `worldwide_branch` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `terms_condition` varchar(5000) DEFAULT NULL,
  `privacy_policy` varchar(5000) DEFAULT NULL,
  `TWILIO_ACCOUNT_SID` varchar(250) DEFAULT NULL,
  `TWILIO_API_KEY` varchar(250) DEFAULT NULL,
  `TWILIO_API_SECRET` varchar(250) DEFAULT NULL,
  `TWILIO_CHAT_SERVICE_SID` varchar(250) DEFAULT NULL,
  `TWILIO_AUTH_TOKEN` varchar(250) DEFAULT NULL,
  `APNCredentialSid` varchar(250) DEFAULT NULL,
  `GCM_or_FCM_Credential_Sid` varchar(250) DEFAULT NULL,
  `working_day` varchar(500) DEFAULT NULL,
  `main_banner` varchar(250) DEFAULT NULL,
  `web_key` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `is_demo`, `android_server_key`, `logo`, `is_web`, `is_rtl`, `ios_server_key`, `email`, `address`, `phone_no`, `timezone`, `currency`, `facebook_id`, `twitter_id`, `instagram_id`, `google_id`, `happy_client`, `surgery_complete`, `expert_doctor`, `worldwide_branch`, `created_at`, `updated_at`, `terms_condition`, `privacy_policy`, `TWILIO_ACCOUNT_SID`, `TWILIO_API_KEY`, `TWILIO_API_SECRET`, `TWILIO_CHAT_SERVICE_SID`, `TWILIO_AUTH_TOKEN`, `APNCredentialSid`, `GCM_or_FCM_Credential_Sid`, `working_day`, `main_banner`, `web_key`) VALUES
(1, '1', 'fdsgdsgdf', '5ff92ce9b7706.png', '2', '1', 'gfdgfdgfd', 'inquiry@clinic.com', '343 Business Place, Suite 314,\r\nSeattle, WA 98112', '(+555) 555-1234', '326', 'BND - $', 'https://www.facebook.com/', 'https://twitter.com/explore', 'https://www.instagram.com/?hl=en', 'https://www.google.com/', '1000', '625', '125', '2', '2020-06-05 15:08:34', '2022-05-23 19:36:13', '<p>Use of this site is provided by Demos subject to the following Terms and Conditions:<br>\r\n1. Your use constitutes acceptance of these Terms and Conditions as at the date of your first use of the site.<br>\r\n2. Demos reserves the rights to change these Terms and Conditions at any time by posting changes online. Your continued use of this site after changes are posted constitutes your acceptance of this agreement as modified.<br>\r\n3. You agree to use this site only for lawful purposes, and in a manner which does not infringe the rights, or restrict, or inhibit the use and enjoyment of the site by any third party.<br>\r\n4. This site and the information, names, images, pictures, logos regarding or relating to Demos are provided “as is” without any representation or endorsement made and without warranty of any kind whether express or implied. In no event will Demos be liable for any damages including, without limitation, indirect or consequential damages, or any damages whatsoever arising from the use or in connection with such use or loss of use of the site, whether in contract or in negligence.<br>\r\n5. Demos does not warrant that the functions contained in the material contained in this site will be uninterrupted or error free, that defects will be corrected, or that this site or the server that makes it available are free of viruses or bugs or represents the full functionality, accuracy and reliability of the materials.<br>\r\n6. Copyright restrictions: please refer to our Creative Commons license terms governing the use of material on this site.<br>\r\n7. Demos takes no responsibility for the content of external Internet Sites.<br>\r\n8. Any communication or material that you transmit to, or post on, any public area of the site including any data, questions, comments, suggestions, or the like, is, and will be treated as, non-confidential and non-proprietary information.<br>\r\n9. If there is any conflict between these Terms and Conditions and rules and/or specific terms of use appearing on this site relating to specific material then the latter shall prevail.<br>\r\n10. These terms and conditions shall be governed and construed in accordance with the laws of England and Wales. Any disputes shall be subject to the exclusive jurisdiction of the Courts of England and Wales.<br>\r\n11. If these Terms and Conditions are not accepted in full, the use of this site must be terminated immediately.</p>', '<p>Use of this site is provided by Demos subject to the following Terms and Conditions:<br>\r\n1. Your use constitutes acceptance of these Terms and Conditions as at the date of your first use of the site.<br>\r\n2. Demos reserves the rights to change these Terms and Conditions at any time by posting changes online. Your continued use of this site after changes are posted constitutes your acceptance of this agreement as modified.<br>\r\n3. You agree to use this site only for lawful purposes, and in a manner which does not infringe the rights, or restrict, or inhibit the use and enjoyment of the site by any third party.<br>\r\n4. This site and the information, names, images, pictures, logos regarding or relating to Demos are provided “as is” without any representation or endorsement made and without warranty of any kind whether express or implied. In no event will Demos be liable for any damages including, without limitation, indirect or consequential damages, or any damages whatsoever arising from the use or in connection with such use or loss of use of the site, whether in contract or in negligence.<br>\r\n5. Demos does not warrant that the functions contained in the material contained in this site will be uninterrupted or error free, that defects will be corrected, or that this site or the server that makes it available are free of viruses or bugs or represents the full functionality, accuracy and reliability of the materials.<br>\r\n6. Copyright restrictions: please refer to our Creative Commons license terms governing the use of material on this site.<br>\r\n7. Demos takes no responsibility for the content of external Internet Sites.<br>\r\n8. Any communication or material that you transmit to, or post on, any public area of the site including any data, questions, comments, suggestions, or the like, is, and will be treated as, non-confidential and non-proprietary information.<br>\r\n9. If there is any conflict between these Terms and Conditions and rules and/or specific terms of use appearing on this site relating to specific material then the latter shall prevail.<br>\r\n10. These terms and conditions shall be governed and construed in accordance with the laws of England and Wales. Any disputes shall be subject to the exclusive jurisdiction of the Courts of England and Wales.<br>\r\n11. If these Terms and Conditions are not accepted in full, the use of this site must be terminated immediately.</p>', 'AC6c81eacd31b421cd19ab57c35e26e52f', 'SKefd6c096e583fe2593ca8fbd8ab99119', 'QzMcRvBCRykyyVcZDnR83yBpDggpv5gS', 'ISfd4b5706ee5c47038bca8e5501f6b2f8', '8df28588d290e4bbac6e05129e3ad868', 'CR2b174e9c91a48b551ed0d58eba596a44', 'CRff3771829f9cb9a5b6e875fd85c441d8', 'Monday - Saturday,8am to 10pm', '1599559630.png', 'AAAAO2Co7iU:APA91bHzp5j7Do_A_LAFUpwLzqNESEYUUC_At6nLZoB6yH1wmWFsfsvKjOplY9cYH-pJzpVfYTZl68oFkip9F-VlXqr4oB-NA9QuJ1ZMBLPLfXh_mn4taaQR7cXEtw1j2Ryqka2kAlqy');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'redixbit.user10@gmail.com', '2020-06-30 23:45:22', '2020-06-30 23:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(250) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `time` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=>receive,2=>accept,3=>cancel,4=>inprogress,5=>complete,6=>refund	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `user_id`, `package_id`, `transaction_id`, `name`, `payment_type`, `created_at`, `updated_at`, `amount`, `date`, `time`, `status`) VALUES
(1, 29, 1, '2hzkp3rr', 'Freaktemplate', 2, '2021-10-25 11:01:23', '2021-10-25 11:01:23', '25', '2022-04-08', '09:00', 1),
(2, 10, 1, 'dp4m1jx4', 'Dr Chris Wogan', 2, '2021-12-03 04:36:06', '2021-12-03 04:36:06', '25', '03-12-2021', '10:04 Am', 1),
(3, 29, 2, 'k17x7dqc', 'Freaktemplate', 2, '2021-12-07 09:43:50', '2021-12-07 09:43:50', '99', '2021-12-09', '15:13', 1),
(4, 42, 2, 'h12mxn7e', 'testing', 2, '2021-12-09 17:57:25', '2021-12-09 17:57:25', '99', '09-12-2021', '11:26 Pm', 1),
(5, 42, 3, '1sr9ke3y', 'testing', 2, '2021-12-09 17:58:03', '2021-12-15 15:55:51', '149', '09-12-2021', '11:27 Pm', 5),
(6, 54, 1, '8ge8rzdb', 'pary', 2, '2021-12-15 16:38:53', '2021-12-29 02:44:18', '25', '15-12-2021', '10:08 Pm', 2),
(7, 58, 3, 'ds38bsm6', 'walid', 2, '2021-12-18 14:42:37', '2021-12-18 14:43:26', '149', '18-12-2021', '05:41 Pm', 5),
(8, 66, 1, 'q6f0b7nb', 'abc', 2, '2021-12-23 22:30:08', '2021-12-23 22:36:33', '25', '24-12-2021', '03:59 Am', 5),
(9, 67, 1, '5n536qvn', 'OWBE WEST', 2, '2021-12-26 18:35:28', '2022-02-28 16:55:25', '25', '26-12-2021', '09:35 Pm', 6),
(10, 51, 1, 'qmg2rpmf', 'Cnu', 2, '2022-01-06 09:38:09', '2022-01-29 16:20:10', '25', '06-01-2022', '03:07 Pm', 4),
(11, 51, 2, 'gysr6zr0', 'Cnu', 2, '2022-01-06 09:39:21', '2022-02-24 08:06:03', '99', '06-01-2022', '03:08 Pm', 4),
(12, 74, 1, '14rp26ne', 'Rashi', 2, '2022-01-10 12:02:34', '2022-02-21 08:16:04', '25', '10-01-2022', '05:32 Pm', 4),
(13, 80, 1, 'j201ph5x', 'Jasmine', 2, '2022-01-12 04:10:22', '2022-02-06 17:16:30', '25', '12-01-2022', '09:39 Am', 5),
(14, 80, 3, 'aqq1bbz1', 'Jasmine', 2, '2022-01-12 04:10:43', '2022-02-24 15:38:17', '149', '12-01-2022', '09:40 Am', 5),
(15, 80, 4, 'p3g9xtgn', 'Jasmine', 2, '2022-01-12 04:11:33', '2022-01-28 23:33:31', '99', '12-01-2022', '09:41 Am', 4),
(16, 80, 2, '4vbxrk3s', 'Jasmine', 2, '2022-01-12 04:12:07', '2022-01-29 01:29:01', '99', '12-01-2022', '09:41 Am', 5),
(17, 80, 1, '7391mvwg', 'Jasmine', 2, '2022-01-12 04:12:55', '2022-01-20 16:04:51', '25', '12-01-2022', '09:42 Am', 5),
(18, 107, 1, '43dk970s', 'ahmad', 2, '2022-02-10 10:44:51', '2022-02-10 10:45:26', '25', '10-02-2022', '01:44 Pm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `from` varchar(250) DEFAULT NULL,
  `to` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `doctor_id`, `day`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(2, 2, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(3, 2, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(4, 2, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(5, 2, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(6, 2, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(7, 2, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(8, 3, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(9, 3, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(10, 3, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(11, 3, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(12, 3, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(13, 3, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(14, 3, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(15, 4, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(16, 4, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(17, 4, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(18, 4, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(19, 4, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(20, 4, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(21, 4, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(22, 5, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(23, 5, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(24, 5, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(25, 5, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(26, 5, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(27, 5, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(28, 5, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(29, 6, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(30, 6, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(31, 6, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(32, 6, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(33, 6, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(34, 6, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(35, 6, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(36, 7, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(37, 7, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(38, 7, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(39, 7, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(40, 7, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(41, 7, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(42, 7, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(43, 8, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(44, 8, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(45, 8, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(46, 8, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(47, 8, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(48, 8, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(49, 8, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(50, 9, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(51, 9, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(52, 9, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(53, 9, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(54, 9, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(55, 9, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(56, 9, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(57, 10, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(58, 10, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(59, 10, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(60, 10, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(61, 10, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(62, 10, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(63, 10, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(64, 11, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(65, 11, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(66, 11, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(67, 11, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(68, 11, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(69, 11, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(70, 11, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(71, 12, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(72, 12, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(73, 12, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(74, 12, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(75, 12, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(76, 12, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(77, 12, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(78, 13, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(79, 13, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(80, 13, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(81, 13, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(82, 13, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(83, 13, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(84, 13, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(85, 14, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(86, 14, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(87, 14, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(88, 14, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(89, 14, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(90, 14, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(91, 14, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(92, 15, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(93, 15, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(94, 15, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(95, 15, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(96, 15, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(97, 15, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(98, 15, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(99, 16, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(100, 16, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(101, 16, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(102, 16, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(103, 16, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(104, 16, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(105, 16, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(106, 17, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(107, 17, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(108, 17, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(109, 17, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(110, 17, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(111, 17, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(112, 17, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(113, 18, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(114, 18, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(115, 18, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(116, 18, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(117, 18, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(118, 18, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(119, 18, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(120, 19, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(121, 19, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(122, 19, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(123, 19, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(124, 19, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(125, 19, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(126, 19, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(127, 20, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(128, 20, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(129, 20, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(130, 20, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(131, 20, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(132, 20, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(133, 20, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(134, 21, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(135, 21, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(136, 21, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(137, 21, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(138, 21, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(139, 21, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(140, 21, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(141, 22, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(142, 22, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(143, 22, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(144, 22, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(145, 22, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(146, 22, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(147, 22, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(148, 23, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(149, 23, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(150, 23, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(151, 23, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(152, 23, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(153, 23, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(154, 23, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(155, 24, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(156, 24, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(157, 24, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(158, 24, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(159, 24, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(160, 24, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(161, 24, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(176, 27, 1, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(177, 27, 2, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(178, 27, 3, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(179, 27, 4, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(180, 27, 5, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(181, 27, 6, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(182, 27, 7, '09:00', '22:00', '2021-10-20 04:18:50', '2021-10-20 04:18:50'),
(183, 29, 1, '06:30', '17:30', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(184, 29, 2, '06:00', '17:30', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(185, 29, 3, '05:31', '17:31', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(186, 29, 4, '05:31', '17:31', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(187, 29, 5, '05:31', '17:31', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(188, 29, 6, '05:32', '17:32', '2021-12-18 14:32:42', '2021-12-18 14:32:42'),
(189, 29, 7, '05:32', '17:32', '2021-12-18 14:32:42', '2021-12-18 14:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(5000) DEFAULT NULL,
  `type` enum('1','2') NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `type`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'abc', '1', NULL, NULL, '2020-06-09 04:15:55', '2020-06-09 04:15:55'),
(2, 'abc', '1', 2, NULL, '2020-06-09 04:25:04', '2020-06-09 04:25:04'),
(3, 'abc', '1', 9, NULL, '2020-06-30 08:49:36', '2020-06-30 08:49:36'),
(4, 'abc', '1', 10, NULL, '2020-06-30 08:50:35', '2020-06-30 08:50:35'),
(5, 'dsfdsfdsfdfdg', '1', 77, NULL, '2020-07-16 04:06:03', '2021-02-12 12:40:06'),
(6, 'DeviceToken', '2', 14, NULL, '2020-08-08 02:02:31', '2020-10-24 14:26:52'),
(7, '05e9da9258ffaf27f71f8d13518090a2d13b56e92844ea71236269089c7662f6', '2', 14, NULL, '2020-08-14 15:06:37', '2020-08-14 15:06:37'),
(8, '3ffd4b8a2e74c61bb0d295df84c338b00306c8091c564b35385193b4c4d72e16', '2', 14, NULL, '2020-08-14 15:33:18', '2020-08-14 15:33:18'),
(9, 'c95a3f9dab37cfde1d929895964d1f78a9cf1b9e01228789b8bd9ce92bbe30d9', '2', 6, NULL, '2020-08-14 15:44:18', '2020-08-14 15:44:18'),
(10, 'bcb05a8e54ea9717bbe860712279870b272c2508cf1a20563874b52317855dc1', '2', 6, NULL, '2020-08-14 18:21:10', '2020-08-14 18:21:10'),
(11, 'dd5fd21bc6cf7a5472402a09d02dfedc392a4962ff813091d0c92d9ca6c99429', '2', 6, NULL, '2020-08-14 19:25:35', '2020-08-14 19:25:35'),
(12, 'test', '2', 14, NULL, '2020-08-14 21:28:41', '2020-08-14 21:28:41'),
(13, 'gsgsdgdgdfgdfgdf', '2', 14, NULL, '2020-08-14 21:28:48', '2020-08-14 21:28:48'),
(14, 'abc', '1', 23, NULL, '2020-08-25 06:03:31', '2020-08-25 06:03:31'),
(15, 'abc', '1', 24, NULL, '2020-08-25 06:05:52', '2020-08-25 06:05:52'),
(16, 'abc', '1', 25, NULL, '2020-08-25 06:07:33', '2020-08-25 06:07:33'),
(17, 'abc', '1', 26, NULL, '2020-09-24 05:46:46', '2020-09-24 05:46:46'),
(18, 'abc', '1', 27, NULL, '2020-09-24 06:03:38', '2020-09-24 06:03:38'),
(19, '9e9270dddd505184', '1', 28, NULL, '2020-09-24 06:25:32', '2020-09-24 11:37:32'),
(20, '9e9270dddd505184', '1', 28, NULL, '2020-09-24 09:53:56', '2020-09-24 09:53:56'),
(21, '9e9270dddd505184', '1', 29, NULL, '2020-09-24 09:59:36', '2020-09-24 09:59:36'),
(22, 'abc', '1', 30, NULL, '2020-09-24 10:07:15', '2020-09-24 10:07:15'),
(23, 'abc', '1', 31, NULL, '2020-09-24 10:07:29', '2020-09-24 10:07:29'),
(24, '9e9270dddd505184', '1', 32, NULL, '2020-09-24 10:08:17', '2020-09-24 10:08:17'),
(25, '9e9270dddd505184', '1', 33, NULL, '2020-09-24 10:10:33', '2020-09-24 10:10:33'),
(26, 'abc', '1', 34, NULL, '2020-09-24 10:10:39', '2020-09-24 10:10:39'),
(27, '9e9270dddd505184', '1', 35, NULL, '2020-09-24 10:16:56', '2020-09-24 10:16:56'),
(28, '9e9270dddd505184', '1', 36, NULL, '2020-09-24 10:21:02', '2020-09-24 10:21:02'),
(29, '9e9270dddd505184', '1', 37, NULL, '2020-09-24 10:26:13', '2020-09-24 10:26:13'),
(30, '7NB9GRE', '1', 38, NULL, '2020-09-24 10:28:27', '2020-09-24 10:28:27'),
(31, '166516165', '1', 39, NULL, '2020-09-24 10:31:22', '2020-09-24 10:31:22'),
(32, 'WR0ZA17', '1', 40, NULL, '2020-09-24 10:33:14', '2020-09-24 10:33:14'),
(33, '7NZWMIL', '1', 41, NULL, '2020-09-24 10:36:05', '2020-09-24 10:36:05'),
(34, '43c0ac744330b320', '1', 51, NULL, '2020-10-22 09:03:05', '2020-12-14 06:26:29'),
(35, 'skfdj;gfjgfjd', '1', 49, NULL, '2020-10-26 11:50:47', '2020-10-26 11:50:47'),
(36, 'abc', '1', 50, NULL, '2020-10-27 07:22:58', '2020-10-27 07:22:58'),
(37, '359092050465370', '1', 51, NULL, '2020-10-30 04:51:51', '2020-10-30 04:51:51'),
(38, '43c0ac744330b320', '1', 52, NULL, '2020-10-30 06:08:59', '2020-10-30 06:08:59'),
(39, '43c0ac744330b320', '1', 53, NULL, '2020-10-30 06:11:08', '2020-10-30 06:11:08'),
(40, '43c0ac744330b320', '1', 54, NULL, '2020-10-30 06:12:51', '2020-10-30 06:12:51'),
(41, '43c0ac744330b320', '1', 55, NULL, '2020-10-30 06:14:29', '2020-10-30 06:14:29'),
(42, '43c0ac744330b320', '1', 56, NULL, '2020-10-30 07:02:42', '2020-10-30 07:02:42'),
(43, '43c0ac744330b320', '1', 57, NULL, '2020-10-30 07:03:36', '2020-10-30 07:03:36'),
(44, '359092050465370', '1', 58, NULL, '2020-10-30 07:09:16', '2020-10-30 07:09:16'),
(45, '43c0ac744330b320', '1', 59, NULL, '2020-10-30 07:15:24', '2020-10-30 07:15:24'),
(46, '43c0ac744330b320', '1', 60, NULL, '2020-10-30 07:20:53', '2020-10-30 07:20:53'),
(47, '43c0ac744330b320', '1', 61, NULL, '2020-10-30 07:36:03', '2020-10-30 07:36:03'),
(48, '43c0ac744330b320', '1', 62, NULL, '2020-10-30 08:41:17', '2020-10-30 08:41:17'),
(49, '43c0ac744330b320', '1', 63, NULL, '2020-10-30 08:45:53', '2020-10-30 08:45:53'),
(50, '359092050465370', '1', 64, NULL, '2020-10-30 08:47:19', '2020-10-30 08:47:19'),
(51, '43c0ac744330b320', '1', 65, NULL, '2020-10-30 08:57:06', '2020-10-30 08:57:06'),
(52, '43c0ac744330b320', '1', 66, NULL, '2020-10-30 09:08:59', '2020-10-30 09:08:59'),
(53, '43c0ac744330b320', '1', 67, NULL, '2020-10-30 09:18:47', '2020-10-30 09:18:47'),
(54, '43c0ac744330b320', '1', 68, NULL, '2020-11-02 08:27:39', '2020-11-02 08:27:39'),
(55, '4b2fcd1d5af27e7a', '1', 51, NULL, '2020-11-04 08:26:14', '2020-11-04 08:26:14'),
(56, '43c0ac744330b320', '1', 69, NULL, '2020-11-09 09:40:19', '2020-11-09 09:40:19'),
(57, 'e903dbf776b620f110200f1a0355de978e817cf6a94c93234b9de0a8649c24fa', '2', 14, NULL, '2020-11-24 18:28:11', '2020-11-24 18:28:11'),
(58, '182fc400108c0b3959fab37199f3d1c3ae1aced384e52cd6b5bb7c9ce0a02732', '2', 14, NULL, '2020-11-25 13:33:34', '2020-11-25 13:33:34'),
(59, 'e883a391f67451de9a4c0767d2f474c09f8a56bd3bd4fb4fa68ddaf5944101ab', '2', 14, NULL, '2020-11-25 13:45:29', '2020-11-25 13:45:29'),
(60, '394dcf55efcf4379d5af599ace5f7b6d3812f51c1986878b6cd41342c8a427eb', '2', 6, NULL, '2020-11-26 04:18:56', '2020-11-26 04:29:28'),
(61, '51a2be8bbd7ea8968e1c9e04957fd0d4b6a94342b3d0bc79aad5c2e8c4bb5e5b', '2', 14, NULL, '2020-11-26 04:19:08', '2020-11-26 04:19:08'),
(62, 'bd7cb6daa67bafd22c0c295bacc255c3943ed3dbb6a997bc41f8380557af94e7', '2', 14, NULL, '2020-11-26 04:43:29', '2020-11-26 04:43:29'),
(63, '593c3bc36cdd6a0403724319a4df929f6923c354e2aa9079875b9c7c6c356a6a', '2', 6, NULL, '2020-11-26 04:44:00', '2020-11-26 04:44:00'),
(64, 'abbc', '1', 6, NULL, '2020-11-26 05:13:50', '2020-11-26 05:13:50'),
(65, '85963aba856c0269a27106d41150c7a101102c8716638d0eb7cd16e20e6f656d', '2', 14, NULL, '2020-11-26 05:40:41', '2020-11-26 05:40:41'),
(66, '9dca279e898d997103d522359da012b901429bcb4a28fadbf4139a6a02a0d966', '2', 6, NULL, '2020-11-26 05:42:44', '2020-11-26 05:42:44'),
(67, 'b1188807accd13a3ed5d512053b12048a66548a4ba661ec1fbc3544515f035e2', '2', 6, NULL, '2020-11-26 05:47:13', '2020-11-26 05:47:13'),
(68, 'ac4997522deeda7b288635d9063701a5368e3dc00dd933059a552bbf642f7282', '2', 14, NULL, '2020-11-26 05:47:40', '2020-11-26 05:47:40'),
(69, '641112fd0033c26fc6ba0c7c203177ca3a68d795b0705936a344209c45a9a3c5', '2', 14, NULL, '2020-12-01 16:44:05', '2020-12-01 16:44:05'),
(70, '7723f4a0a0766ec753a21f93dec7dbac655e6e8d34614d2afecafa216b5437a7', '2', 14, NULL, '2020-12-01 17:06:19', '2020-12-01 17:06:19'),
(71, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', 75, NULL, '2021-01-11 12:04:51', '2021-01-21 18:03:25'),
(72, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', 72, NULL, '2021-01-11 12:18:37', '2021-01-11 12:18:37'),
(73, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', 73, NULL, '2021-01-11 12:32:12', '2021-01-11 12:32:12'),
(74, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', NULL, NULL, '2021-01-18 12:28:03', '2021-01-18 12:28:03'),
(75, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', 74, NULL, '2021-01-18 12:31:15', '2021-01-18 12:31:15'),
(76, 'eeeE70jQS2uCXMes9Vb4q1:APA91bHlfODN_ZUtPWjZkAH8jw4iTEZWCw4mtM2puNl3xpaRzN4s_RzVOReJKhRGDCr4A0g7Jku5jBBvxt_yVhMcs-0LtXxKEOZMWM7Bp3oDPqkNWhKbNSTOEek3MFzAX-hPgVWkMxm6', '1', 75, NULL, '2021-01-21 05:32:38', '2021-01-21 05:32:38'),
(77, 'fXhmpAMxSvys56vShPeB-Z:APA91bFXsH22O_V5N9DO_3qNyQeRPn8i9nWx6prh-lvVKx2ijAdDGV8gHBn-4ikN3mXtI2GI3z97tt0rTZoKeXaKWBYEwHAkbhwQegxdtJ0sYGXkpy-__6POghHPwvlOBsIYvsUm_emQ', '1', 71, NULL, '2021-02-10 16:43:26', '2021-02-10 17:56:48'),
(78, 'fgKDg04gTVumKDgt1jAPH7:APA91bEvybV3EYlDWr6x1oHG0vHK9eo9MfBljNNMnob2TRV_lnxfF9kLiWo-5Q-FTgwA7V6Hz2VBOnsWUUqbUvStZbU-tNpVLhT4VQ35lS4H0cN6zV1kzx7KZ-k-Cv_L-EpLVvEDa-WJ', '1', NULL, NULL, '2021-02-11 13:35:59', '2021-02-11 13:35:59'),
(79, 'cz33ob8VTB-k99jJRpeVt2:APA91bFaDtCYdD9cEjHxhwV2xO7QTFcmuAd6hi8umpXIvgltZTX2h9j6WB-qNyNWRz0ZcZaiYY8lOIDOvB31xcTwnpMNJ4egK73uXop-c_uUvONjEFrD-JsPeotlwUG3wUggkobKkTNo', '1', NULL, NULL, '2021-02-11 14:02:48', '2021-02-11 14:02:48'),
(80, 'cz33ob8VTB-k99jJRpeVt2:APA91bFaDtCYdD9cEjHxhwV2xO7QTFcmuAd6hi8umpXIvgltZTX2h9j6WB-qNyNWRz0ZcZaiYY8lOIDOvB31xcTwnpMNJ4egK73uXop-c_uUvONjEFrD-JsPeotlwUG3wUggkobKkTNo', '1', NULL, NULL, '2021-02-11 14:04:07', '2021-02-11 14:04:07'),
(81, 'cz33ob8VTB-k99jJRpeVt2:APA91bFaDtCYdD9cEjHxhwV2xO7QTFcmuAd6hi8umpXIvgltZTX2h9j6WB-qNyNWRz0ZcZaiYY8lOIDOvB31xcTwnpMNJ4egK73uXop-c_uUvONjEFrD-JsPeotlwUG3wUggkobKkTNo', '1', NULL, NULL, '2021-02-11 14:08:54', '2021-02-11 14:08:54'),
(82, 'cz33ob8VTB-k99jJRpeVt2:APA91bFaDtCYdD9cEjHxhwV2xO7QTFcmuAd6hi8umpXIvgltZTX2h9j6WB-qNyNWRz0ZcZaiYY8lOIDOvB31xcTwnpMNJ4egK73uXop-c_uUvONjEFrD-JsPeotlwUG3wUggkobKkTNo', '1', NULL, NULL, '2021-02-11 14:11:36', '2021-02-11 14:11:36'),
(83, 'djo-75LCRoWNAfbI9a1g18:APA91bErLjU1KpizEmMGA1CLjv8NZjxplMpZ0DMQDexerSdAksUakF_uc1X_dQQ0nvZzssq9fSZBy4kERb28e6E1QTXw9NA0P1vlscJlWksAxssMeHCCnjyJJaV0RPEJdnciUCydn4vn', '1', 78, NULL, '2021-02-11 16:22:24', '2021-02-13 04:06:58'),
(84, 'eEZZfUauTTaxny48apQStN:APA91bFWf4SvzJLQcOEm5Mh5V2JFafgQTwwbGF82Q75vUbND70hknu-H9BoBTI7pLtX4IYBnB9oKgT_fdOlrojJcZLvjxjcbOlq1RweQ3uRJrEMFfIUkEq19V0cL1ecjR8SNLS1wrg4U', '1', 78, NULL, '2021-02-12 10:53:58', '2021-02-12 12:53:52'),
(85, 'cr6TvAKpRAugbQiLH7B9kB:APA91bEYVQDL_YdZc49EZgg9m8SwqGwgNblFRksPTBIFAA2i-G_NGO5buAWh473pzJ_IHF5V_f7ar8QjSE4ceSYoA83FPvyTKdbggm8B1lXL6TKlDD3XUpUuO0ULkS5_ArUwMqaRy71i', '1', 80, NULL, '2021-02-13 06:53:13', '2021-02-15 06:27:09'),
(86, 'eVwys-eET3eNzHANTzWD96:APA91bEFEHBxc0joX3Ac-Ttu-lWvZ3DN2KNzJpwSIdmW8khvJg6UiVSRvkN2xenlFoz0KmLCNSPDO9tGlheZsvmuqFs9r3mK888IVK0epIkjucJ5bXDfj5z9OS5vrH8sBQhRDq8MPY47', '1', 79, NULL, '2021-02-17 04:46:58', '2021-02-17 05:29:12'),
(87, 'eVwys-eET3eNzHANTzWD96:APA91bEFEHBxc0joX3Ac-Ttu-lWvZ3DN2KNzJpwSIdmW8khvJg6UiVSRvkN2xenlFoz0KmLCNSPDO9tGlheZsvmuqFs9r3mK888IVK0epIkjucJ5bXDfj5z9OS5vrH8sBQhRDq8MPY47', '1', 81, NULL, '2021-02-17 04:49:54', '2021-02-17 04:49:54'),
(88, 'eVwys-eET3eNzHANTzWD96:APA91bEFEHBxc0joX3Ac-Ttu-lWvZ3DN2KNzJpwSIdmW8khvJg6UiVSRvkN2xenlFoz0KmLCNSPDO9tGlheZsvmuqFs9r3mK888IVK0epIkjucJ5bXDfj5z9OS5vrH8sBQhRDq8MPY47', '1', 82, NULL, '2021-02-17 04:55:37', '2021-02-17 04:55:37'),
(89, 'damf7MgfTiKPLHyFXL7jIJ:APA91bG-Ex0wyJ4kVv3qX21HCnSykO7tslRgRCY_2rJt_bJcJIqDXS6xXVycGkG-DRAK_2LBJN3QsgIwdsontXnvvfKMFjcIxPTqGABb_aB8Q6apmJbjZfbI2OXKOM6Sk-qcb2MmHLN4', '1', 83, NULL, '2021-02-17 05:38:44', '2021-02-17 06:06:21'),
(90, 'cQqsOcCzRDWT6Xt2jCaATO:APA91bEU4ZPS0rdk8QesRm8qhIMFbuDknWUgf10paDvTCDd7tOlJ1iy7PxSBAdjE9D4vtEMk2U49EkoIbMOeBabrf0ItrBlyQzrAKRqVIHPgMfDhRvtODYS_f8Zdqv2bSYgVuhjOlVaM', '1', 84, NULL, '2021-02-17 06:27:10', '2021-02-17 06:41:03'),
(91, 'fZt66rxhSiesZJFdzBEk8M:APA91bEgHanM0plTqGnbP5r8JVTU7PNPl9hOBiraiKaW5NY8NQXfXKjumXEahxeSfcAoKLyrMBr1sSiObuu979uYpR7EmsZhn-8lHvwQkPLfVR4xyL4AZPB7paFP7fr6Mzy3yaYOQAsZ', '1', 79, NULL, '2021-02-17 06:43:05', '2021-02-17 06:43:21'),
(92, 'el-Jj6X1Q22Ps8UCWMtLk2:APA91bEh54Fbm4xuIbAcw8PUF-zwgevMIt_ebh4IEhw4rSwsiNl0SXuG-jyoQ91gHMRMNqQyIENQL_6o2OgitZP6IRJkIMdEbgbAba4ZsmD44OSFSCpFzp-uo3OKtBF3MyPYMInhJW0Z', '1', 78, NULL, '2021-02-17 07:22:14', '2021-02-17 07:22:51'),
(93, 'cvmqlOzvQ528doejRgCaAB:APA91bGxOe2Zdg_qJmxq-rJDjq0yQbnDlWB-iDFyFiKekVJfsi8CeTmjOMOQ3kBZ1DmV6bgQhbNvTyOYCbAab-om-6nHTqGqgzEzTvmYt7qr3EtN1bCJKnjIokFDziLBNcRlDZXNLrxl', '1', NULL, NULL, '2021-02-17 08:16:18', '2021-02-17 08:16:18'),
(94, 'cvmqlOzvQ528doejRgCaAB:APA91bGxOe2Zdg_qJmxq-rJDjq0yQbnDlWB-iDFyFiKekVJfsi8CeTmjOMOQ3kBZ1DmV6bgQhbNvTyOYCbAab-om-6nHTqGqgzEzTvmYt7qr3EtN1bCJKnjIokFDziLBNcRlDZXNLrxl', '1', 85, NULL, '2021-02-17 08:17:52', '2021-02-17 08:17:52'),
(95, 'd392USVoS5G5ma6Xv3ncod:APA91bF3O0ZhHl9CehHiBcGnbHuArnhl2AYCPUioKy3djgJM37vkYoVWzxr_Glt6wPiN_PJysQpCyG3t509KK0hhuFGxGF1cz07LG-kNAfONcqFBrIMknnwGjzmXSBCHHN--8H2G1uWy', '1', 80, NULL, '2021-02-17 08:36:41', '2021-02-17 11:57:15'),
(96, 'd392USVoS5G5ma6Xv3ncod:APA91bF3O0ZhHl9CehHiBcGnbHuArnhl2AYCPUioKy3djgJM37vkYoVWzxr_Glt6wPiN_PJysQpCyG3t509KK0hhuFGxGF1cz07LG-kNAfONcqFBrIMknnwGjzmXSBCHHN--8H2G1uWy', '1', 86, NULL, '2021-02-17 11:31:15', '2021-02-17 11:31:15'),
(97, 'fszRisgdRROFDspRvnshaF:APA91bGMprGfQeSI1XNaHnPlzrFPQLwnSJIbf5lnk2JFQp1slmjKpInPUhJqamV_iDaEtYpGa8bUE_aE4KzX-_Ds3czQm5Hj1cflyEP9v0HjP61f1ZAEKun18POYYKebBtLAPPZH-KVU', '1', 79, NULL, '2021-02-17 12:11:55', '2021-02-17 12:55:21'),
(98, 'ecFb8mcJReWAVs1VIe4koJ:APA91bG-ZafVeyRxkC0JrOCXPhiV1RhO15cTcfxhr07-DYRQB2JhOv8aU8W-Yk6-ox77aHdVtxljMQj_FsD45Ry_ilT0A7uPHJTkRCYib2SlfazLjTjH_rT5CfHwhmk053-f6o1x6wzA', '1', 80, NULL, '2021-02-17 13:19:37', '2021-02-17 13:22:35'),
(99, 'cGKiO1OhTC-1X25AKv-ywK:APA91bFcQcc1OweNrv1QGkcCWbD7_6ao9h4wlkFmQm8D4VaJwjviB_mdIe_uL45JFsmzgnk61DykOMmtkn4DInbA7m5Ax_A41QE9zYGazJJmAyhR5xSNI83_i0ahW4dL-GNVOZ_gvpPj', '1', 5, NULL, '2021-02-17 13:32:16', '2021-02-17 13:33:50'),
(100, 'f2men5USRD2aCi6fWppTW6:APA91bEsegfl4Gn-7n19OK9WLfRShvbqeDlG4vNoMSkIISrmhQEhNHATcSK-YKSPr-Vv94dZ7emdiM4eXxML1YCOMmzy4gw2Xbe1OG2tFEBANWpyS26ePDN2fh-hCXPVBWuWtmVTyPiK', '1', 6, NULL, '2021-02-17 14:31:34', '2021-02-18 04:38:53'),
(101, 'fpXhYviIQeGl6q8ETVfLdm:APA91bEM5ml1Cf4n3PMftoqo6OaajgmnMOABD4DSwgfzyxerFZbWOdJnI5-Ebr32CsYlwGsnij5AXym7sZjEaa8b9W_valwipeZM9kmUqCKV399EvTR_Wux--P0rbn5mLSaC4zwfT2Xe', '1', 83, NULL, '2021-02-18 05:10:51', '2021-02-18 05:12:32'),
(102, 'ee9i7PqXTeikkqAGa8absU:APA91bEvvBqUxGIAx40QJ9apb7msdIucazbdP26bJQufzA7NAap6PZdtcRPt1_v1RDJWC0A85WfTLoy5nnS7OL9xsNCWVM8N0gs5kzgWLRV7UB_udTgrAh-1RRLGbc_iGdEjfsYlclzo', '1', 20, NULL, '2021-02-18 05:29:48', '2021-02-19 14:59:04'),
(103, 'ePMFjCDGSnW4xs3ueTSGXK:APA91bFeU4WASjateCx9XdRAjV1tdeQuI25KCcOrSQ5GxfPjaQ1oJod5hD_kp1_WzpT0mHyo1QGd-VIvdELbhf5M5IQLeSgm-IFjxOegBElQd_5d4dZ24ldNx1rLn_1S1T3dE9_eGZC9', '1', 20, NULL, '2021-02-18 08:38:08', '2021-02-18 08:38:57'),
(104, 'cXVaMA_hQNmUvLDsCzv8oo:APA91bEmGHbPxZC3dJlriJutUh3TgKaTZGVicKSswHUqGsnR_qiYy7ZYoywqrhie9S3sIoSVIo2neK53xvsnKHi8hKFbGsbKCAufLd-blu-GA26aGcqfYr4pRfdzEyOwB6n4DZ5f5CPx', '1', 20, NULL, '2021-02-19 07:22:50', '2021-02-19 07:24:33'),
(105, 'eSRIo_HYQsCfQQQOwBoEWu:APA91bHhxkJ0aCyyYWTeL7XMeARHzTzCJgiN_n_gRfwpApIWjCrk7EzzWIdI0nrj6FW4WMnA1N4-G3Ld9O4ss8-ta3G_4GWInVoggZQYjaY-ZU5gTCz3c8CChOjnfWdQnXwGPjN5ppKt', '1', 88, NULL, '2021-09-15 09:52:02', '2021-09-17 06:26:34'),
(106, 'eSRIo_HYQsCfQQQOwBoEWu:APA91bHhxkJ0aCyyYWTeL7XMeARHzTzCJgiN_n_gRfwpApIWjCrk7EzzWIdI0nrj6FW4WMnA1N4-G3Ld9O4ss8-ta3G_4GWInVoggZQYjaY-ZU5gTCz3c8CChOjnfWdQnXwGPjN5ppKt', '1', 87, NULL, '2021-09-15 09:53:50', '2021-09-15 09:53:50'),
(107, 'cbPWozW7SjuJy9JuNVPoOG:APA91bHZNe6Drt1_Jt-MuyIPDKDsqKvxvw6dH3oNgocb44EteVrMaQSkRrzeEooFkXtnssdy0UQuZezwA5in0qOZ48q7fFMFEWmu_ro_ZAEFtrwuKiGBb-GlrWMsZYbY4EtohFYfOJ0O', '1', NULL, NULL, '2021-09-16 07:08:03', '2021-09-16 07:08:03'),
(108, 'fGGEBseyQ-yChKpwRjggfr:APA91bHBFGIzfrX8xAn6A1Eby6XeGmmzmioyFOPStTadnMs4YDW8ryHIRxg92yrN0KsvvR1NWZnW7JKfTiv4af6YoLFA3kYzP6LCEk5nGwCAitL82P-TlBpm-8Bz9Ry0B6GyJGagLMDV', '1', 19, NULL, '2021-09-16 13:36:18', '2021-09-20 09:19:54'),
(109, 'eSRIo_HYQsCfQQQOwBoEWu:APA91bHhxkJ0aCyyYWTeL7XMeARHzTzCJgiN_n_gRfwpApIWjCrk7EzzWIdI0nrj6FW4WMnA1N4-G3Ld9O4ss8-ta3G_4GWInVoggZQYjaY-ZU5gTCz3c8CChOjnfWdQnXwGPjN5ppKt', '1', NULL, NULL, '2021-09-17 05:04:37', '2021-09-17 05:04:37'),
(110, 'eSRIo_HYQsCfQQQOwBoEWu:APA91bHhxkJ0aCyyYWTeL7XMeARHzTzCJgiN_n_gRfwpApIWjCrk7EzzWIdI0nrj6FW4WMnA1N4-G3Ld9O4ss8-ta3G_4GWInVoggZQYjaY-ZU5gTCz3c8CChOjnfWdQnXwGPjN5ppKt', '1', 88, NULL, '2021-09-17 05:06:11', '2021-09-17 05:06:11'),
(111, 'eSRIo_HYQsCfQQQOwBoEWu:APA91bHhxkJ0aCyyYWTeL7XMeARHzTzCJgiN_n_gRfwpApIWjCrk7EzzWIdI0nrj6FW4WMnA1N4-G3Ld9O4ss8-ta3G_4GWInVoggZQYjaY-ZU5gTCz3c8CChOjnfWdQnXwGPjN5ppKt', '1', NULL, NULL, '2021-09-17 06:40:59', '2021-09-17 06:40:59'),
(112, 'eje2HTURSka0zIqEtxzlqS:APA91bFRY4GuKRs_TVwzXkK7Fbmjy3BJgLMhOMs_X6opbFcqlFX-1lEbHXTqsNCi68CzvkFmkKCTvOxEaQYDxk2PHkVpTIyfhilWPd1ng58NbLOnfCFCHRt_W_zUHcqdIFHKIBXIQH_F', '1', 88, NULL, '2021-09-17 08:37:53', '2021-09-17 08:38:22'),
(113, 'czEuuQeYTcyMJER8iA5oVu:APA91bG6V4XC5qE-jBqTsdTl0cMxVUcVjkatyhzATds20TwIOm4ujleBlOH9zoyiivB-LcSzh3RV975gqWOuzIZtq-Sh_J4Oqt4xLRm4Ufkisn2krX8Iv5OZ8bpaAq4KmtU6vCmzenvt', '1', 79, NULL, '2021-09-17 08:59:49', '2021-09-21 04:03:52'),
(114, 'fGGEBseyQ-yChKpwRjggfr:APA91bHBFGIzfrX8xAn6A1Eby6XeGmmzmioyFOPStTadnMs4YDW8ryHIRxg92yrN0KsvvR1NWZnW7JKfTiv4af6YoLFA3kYzP6LCEk5nGwCAitL82P-TlBpm-8Bz9Ry0B6GyJGagLMDV', '1', 89, NULL, '2021-09-20 09:22:38', '2021-09-20 09:22:38'),
(115, 'fl_x5hHNS22mtMDO0moFGX:APA91bGruSRSHoLFTjLCTT7EFNZGjlv_SDL2xrfNVpImaM-fj4yeclCwMob9WI3nopzit_hQa9wvDDC5oh1j8687J7jRZpf4V6-55hAr9PV7Ra5vLV-YYiP6unsky71Zcp0gFxbnMB9e', '1', 89, NULL, '2021-09-20 10:01:33', '2021-09-20 10:08:18'),
(116, 'czEuuQeYTcyMJER8iA5oVu:APA91bG6V4XC5qE-jBqTsdTl0cMxVUcVjkatyhzATds20TwIOm4ujleBlOH9zoyiivB-LcSzh3RV975gqWOuzIZtq-Sh_J4Oqt4xLRm4Ufkisn2krX8Iv5OZ8bpaAq4KmtU6vCmzenvt', '1', NULL, NULL, '2021-09-21 03:53:31', '2021-09-21 03:53:31'),
(117, 'czEuuQeYTcyMJER8iA5oVu:APA91bG6V4XC5qE-jBqTsdTl0cMxVUcVjkatyhzATds20TwIOm4ujleBlOH9zoyiivB-LcSzh3RV975gqWOuzIZtq-Sh_J4Oqt4xLRm4Ufkisn2krX8Iv5OZ8bpaAq4KmtU6vCmzenvt', '1', NULL, NULL, '2021-09-21 04:03:26', '2021-09-21 04:03:26'),
(118, 'czEuuQeYTcyMJER8iA5oVu:APA91bG6V4XC5qE-jBqTsdTl0cMxVUcVjkatyhzATds20TwIOm4ujleBlOH9zoyiivB-LcSzh3RV975gqWOuzIZtq-Sh_J4Oqt4xLRm4Ufkisn2krX8Iv5OZ8bpaAq4KmtU6vCmzenvt', '1', 91, NULL, '2021-09-21 04:05:43', '2021-09-21 04:05:43'),
(119, 'czEuuQeYTcyMJER8iA5oVu:APA91bG6V4XC5qE-jBqTsdTl0cMxVUcVjkatyhzATds20TwIOm4ujleBlOH9zoyiivB-LcSzh3RV975gqWOuzIZtq-Sh_J4Oqt4xLRm4Ufkisn2krX8Iv5OZ8bpaAq4KmtU6vCmzenvt', '1', NULL, NULL, '2021-09-21 04:28:12', '2021-09-21 04:28:12'),
(120, 'cFJnX2FhRXuK4uIJr40YS3:APA91bFq9T__3xj9WBkCJs4kcwb1kbmu-Mh1_0CdiLYpsRb189T1cAGXpN4uuZMJv1LA2jaYvBOOIOPRiXjHZ4VPec-18z8YSzIruFYwINnbIr2U6oDBrzAze0wWcQX72e1YThW7jSsg', '1', 90, NULL, '2021-09-21 07:05:34', '2021-09-21 07:06:07'),
(121, 'f2DPindGRHWzCJWcOqPt6q:APA91bHcvFbrYw5ohgx-zyfSMVjG776s2fgRGsuV7ddHT4B4pyKv1nXINgnR5eRGEwCxThSelQ2eYl6r-4-x-CfHWqraBL0dXvQVO3_Qmo0jCUwj2rFiQaWbAlKidJ90hc6CuNLP8903', '1', NULL, NULL, '2021-09-23 05:18:29', '2021-09-23 05:18:29'),
(122, 'dMSWUHjOTb6oYrPayaik78:APA91bGKeBLElVNEV-axGxxRYEouqwhWbFrZCAUtnv4mpYroqSDtgcoO9T4POR5Kcl72_MAFa-MREo2VlliLm79LZsmx6pYdRJEVr72v6TS-JgBjrNLD7rty3RQKze3srCP5ExmANFyR', '1', 79, NULL, '2021-09-23 12:34:57', '2021-09-23 12:44:20'),
(123, 'dwW-2TOwRWCiLznOCi7QPf:APA91bFCZVqatjJxwQwYZqLf2ccLNWLBGBclVEY897NXjiMm4gu4baPvpfk7YphOMXg773eVegRx7_tJksTq9efO1FR3SpaFuhkGMtg-MgwhPZUuRyjK4d7u9icYzACCL2KyQ1K44Zlj', '1', 19, NULL, '2021-09-23 13:01:30', '2021-09-24 08:36:31'),
(124, 'dy-FCH-aR1O5Q8smHYrakh:APA91bFnRloAfKkRX1yFo52ElA7n7zkRGNsiju4CtzSrKP3SqCWCu2IZNf4d5sef0LmEPQCUbpkzWi3dDkHzRiac7YDyPDyxuvH9nu260uBa7DN43GAxd9oM3MAWkwx_fuqhVzUMThGo', '1', 92, NULL, '2021-09-24 07:20:39', '2021-09-24 07:43:52'),
(125, 'dy-FCH-aR1O5Q8smHYrakh:APA91bFnRloAfKkRX1yFo52ElA7n7zkRGNsiju4CtzSrKP3SqCWCu2IZNf4d5sef0LmEPQCUbpkzWi3dDkHzRiac7YDyPDyxuvH9nu260uBa7DN43GAxd9oM3MAWkwx_fuqhVzUMThGo', '1', 92, NULL, '2021-09-24 07:43:25', '2021-09-24 07:43:25'),
(126, 'dy-FCH-aR1O5Q8smHYrakh:APA91bFnRloAfKkRX1yFo52ElA7n7zkRGNsiju4CtzSrKP3SqCWCu2IZNf4d5sef0LmEPQCUbpkzWi3dDkHzRiac7YDyPDyxuvH9nu260uBa7DN43GAxd9oM3MAWkwx_fuqhVzUMThGo', '1', NULL, NULL, '2021-09-24 07:45:05', '2021-09-24 07:45:05'),
(127, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', 79, NULL, '2021-09-24 08:44:10', '2021-09-28 04:11:07'),
(128, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', NULL, NULL, '2021-09-24 09:05:10', '2021-09-24 09:05:10'),
(129, 'dvXdTZDjQvq_P_h0XH6YNv:APA91bEBoghcw32Oa53gn1rqYrP0b5M7vPqvAZPgPs7Tg4RbDMRXwqhNmxH6F5c0i2xvTlkjZDjibYtLiu6eFOM9_kdhBPxRBOEXiTPBU5LNjkTfLdv2QfHr7UCj5qgDW0pHGiKzhIc6', '1', 19, NULL, '2021-09-25 10:45:45', '2021-09-25 10:59:57'),
(130, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', NULL, NULL, '2021-09-25 11:58:53', '2021-09-25 11:58:53'),
(131, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', 93, NULL, '2021-09-25 12:22:29', '2021-09-25 12:22:29'),
(132, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', 94, NULL, '2021-09-25 12:27:52', '2021-09-25 12:27:52'),
(133, 'eiUodzi6RfurITgGbij4-t:APA91bEd6M6aH1G28y-b4ZUK3AE4bSPcuMqzHCkaNAbgjJgXjBa57DMlWL7VWMb4Fq89W-jFt0ugWmWsxyrZ855wcwbILuoCBkzhrS_n9_YhcPadAt5yJGDgZ1Q-jXQCTp4SvUEPqpB2', '1', NULL, NULL, '2021-09-25 12:36:54', '2021-09-25 12:36:54'),
(134, 'fFrZAXIHRze2062U0psMjX:APA91bFMgzDWkSws94RoLl-1cCIG-L_EVoSlknJpQ24TNZGzE7-iSqSBEZeyNGKM9q9Xjcuwe1nxkSgsbMtyzmMb8G-q8rH6x4jMha7dVPGS5UfM5efYhk7BYYPhV3ptKBDADr3Zrhep', '1', NULL, NULL, '2021-09-25 12:43:21', '2021-09-25 12:43:21'),
(135, 'dCE8bipvRp6cRTJwTOqyYs:APA91bHPAPJYjNwDA4wlnY-legq-sY3929CMRtctUC6dmip4ZRRbO4Ls50gP6nvSDjtRLkI_zNwPvnmJQEbpNxhJf79gUXwi5stMbDa0oR-6KVCZ1bVXjZyLJoUqVvnPb1QttmmWq5RJ', '1', NULL, NULL, '2021-09-25 12:44:11', '2021-09-25 12:44:11'),
(136, 'eOPxEZr8SZ6ZOnt2TKk5VD:APA91bH7UAmhVTaokT7Oc9Ld-opftm8BQ4Tw7Nx9RQ558--Cu6YQ76Q-9Tu90QyGFbAULgZudVZ0En5RCkdxzTHsJ-IoLqJW0ocVgDGAksU62IFc0d8m_qGaFg2Ao_kboRX8yfmGYGi-', '1', 79, NULL, '2021-10-02 09:29:57', '2021-10-02 09:30:18'),
(137, 'eOPxEZr8SZ6ZOnt2TKk5VD:APA91bH7UAmhVTaokT7Oc9Ld-opftm8BQ4Tw7Nx9RQ558--Cu6YQ76Q-9Tu90QyGFbAULgZudVZ0En5RCkdxzTHsJ-IoLqJW0ocVgDGAksU62IFc0d8m_qGaFg2Ao_kboRX8yfmGYGi-', '1', NULL, NULL, '2021-10-02 11:19:14', '2021-10-02 11:19:14'),
(138, 'eOPxEZr8SZ6ZOnt2TKk5VD:APA91bH7UAmhVTaokT7Oc9Ld-opftm8BQ4Tw7Nx9RQ558--Cu6YQ76Q-9Tu90QyGFbAULgZudVZ0En5RCkdxzTHsJ-IoLqJW0ocVgDGAksU62IFc0d8m_qGaFg2Ao_kboRX8yfmGYGi-', '1', 95, NULL, '2021-10-02 11:26:04', '2021-10-02 11:26:04'),
(139, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', 2, NULL, '2021-10-04 04:37:28', '2021-10-28 05:19:08'),
(140, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-04 05:16:16', '2021-10-04 05:16:16'),
(141, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-04 06:40:55', '2021-10-04 06:40:55'),
(142, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-20 04:07:00', '2021-10-20 04:07:00'),
(143, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-20 05:14:59', '2021-10-20 05:14:59'),
(144, 'ejswoQCjQBiQrcTjs3NoXz:APA91bETWs3MMkGcafxA6tXom1zKFUROKIgS0iCfHofe3ZsTuu17KpSHHmBsfFoplthk32a0hXaMGmeCKnI_GJpMO8K4mt7V7A5bvFJVfo5au_tKQSa0lFf4CsSWv-cRK3oBcEIh6XaO', '1', NULL, NULL, '2021-10-20 06:17:56', '2021-10-20 06:17:56'),
(145, 'ejswoQCjQBiQrcTjs3NoXz:APA91bETWs3MMkGcafxA6tXom1zKFUROKIgS0iCfHofe3ZsTuu17KpSHHmBsfFoplthk32a0hXaMGmeCKnI_GJpMO8K4mt7V7A5bvFJVfo5au_tKQSa0lFf4CsSWv-cRK3oBcEIh6XaO', '1', 29, NULL, '2021-10-20 06:19:18', '2021-10-20 06:19:18'),
(146, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', 2, NULL, '2021-10-20 06:43:34', '2021-10-20 09:00:58'),
(147, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 07:16:50', '2021-10-20 07:16:50'),
(148, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 07:16:54', '2021-10-20 07:16:54'),
(149, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 07:24:32', '2021-10-20 07:24:32'),
(150, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', 30, NULL, '2021-10-20 07:25:21', '2021-10-20 07:25:21'),
(151, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', 31, NULL, '2021-10-20 07:27:34', '2021-10-20 07:27:34'),
(152, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 07:30:08', '2021-10-20 07:30:08'),
(153, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 08:42:52', '2021-10-20 08:42:52'),
(154, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 08:52:22', '2021-10-20 08:52:22'),
(155, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 08:53:42', '2021-10-20 08:53:42'),
(156, 'ew-AyzYgSPWD0MBp2xWrjh:APA91bHyqknNBc2-Xly74KONNSBcbBQmKPAKqmJWIvy9JBHjZQRoj79es82HLLKLrXZEEzW0Qp7cTZU9oowvC5pZoo7P_FqcYL3UCV6fOv9ncVg8SyDc4r_bp7wHu6o3RTfvvf1I742Z', '1', NULL, NULL, '2021-10-20 08:54:36', '2021-10-20 08:54:36'),
(157, 'eh_WwmZwTKaN8qz7BH9MPr:APA91bE4zOcuTSJK-J5r1zVARwo7ITGPeLSIQzVTnC5vMElVrtgCWIVZ2VOt1jvjzW6ee4F_iNbTVH0SvpaEb1kRI5HJNbu5LUhuXR1akuYtlbalHhJ2cp1MeKInMniwddIb3oBUxAR4', '1', 2, NULL, '2021-10-20 09:08:50', '2021-10-20 09:09:45'),
(158, 'eh_WwmZwTKaN8qz7BH9MPr:APA91bE4zOcuTSJK-J5r1zVARwo7ITGPeLSIQzVTnC5vMElVrtgCWIVZ2VOt1jvjzW6ee4F_iNbTVH0SvpaEb1kRI5HJNbu5LUhuXR1akuYtlbalHhJ2cp1MeKInMniwddIb3oBUxAR4', '1', NULL, NULL, '2021-10-20 09:11:25', '2021-10-20 09:11:25'),
(159, 'eAL1p25VTdiBdLfJjQAApH:APA91bFaoCXueTb90t62SbNYXgKz_7dsE3l4a7qujt5uK12zHKU_b8-RMfokZD0CKUCSkH87vPjuqy3qXCm-WBBQs8KBtyQYPgz3qb4XzAvAw0JtTChYq4Hq3ybXCwGxJr__AtRgkaFT', '1', 2, NULL, '2021-10-20 09:15:08', '2021-10-20 09:36:58'),
(160, 'eAL1p25VTdiBdLfJjQAApH:APA91bFaoCXueTb90t62SbNYXgKz_7dsE3l4a7qujt5uK12zHKU_b8-RMfokZD0CKUCSkH87vPjuqy3qXCm-WBBQs8KBtyQYPgz3qb4XzAvAw0JtTChYq4Hq3ybXCwGxJr__AtRgkaFT', '1', NULL, NULL, '2021-10-20 09:20:54', '2021-10-20 09:20:54'),
(161, 'eAL1p25VTdiBdLfJjQAApH:APA91bFaoCXueTb90t62SbNYXgKz_7dsE3l4a7qujt5uK12zHKU_b8-RMfokZD0CKUCSkH87vPjuqy3qXCm-WBBQs8KBtyQYPgz3qb4XzAvAw0JtTChYq4Hq3ybXCwGxJr__AtRgkaFT', '1', NULL, NULL, '2021-10-20 09:35:18', '2021-10-20 09:35:18'),
(162, 'eAL1p25VTdiBdLfJjQAApH:APA91bFaoCXueTb90t62SbNYXgKz_7dsE3l4a7qujt5uK12zHKU_b8-RMfokZD0CKUCSkH87vPjuqy3qXCm-WBBQs8KBtyQYPgz3qb4XzAvAw0JtTChYq4Hq3ybXCwGxJr__AtRgkaFT', '1', NULL, NULL, '2021-10-20 09:39:36', '2021-10-20 09:39:36'),
(163, 'c8Zz0SbNSUuNoWP_U471T0:APA91bF2IqgArRpzMJ0ASo9SYjChlgx7xKramu7w6Sg66C3arpnoNc37Xv_96qY-9gim-1sJ_Fk4ukzH6GqSHe5beoqVbQEHxhHRTMdeZTY6TmPo8QAwgeg9Tt9ziniShw5IVJICfu_i', '1', 29, NULL, '2021-10-20 10:10:53', '2021-10-20 11:30:59'),
(164, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-20 10:26:09', '2021-10-20 10:26:09'),
(165, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', 32, NULL, '2021-10-20 10:30:47', '2021-10-20 10:30:47'),
(166, 'c8Zz0SbNSUuNoWP_U471T0:APA91bF2IqgArRpzMJ0ASo9SYjChlgx7xKramu7w6Sg66C3arpnoNc37Xv_96qY-9gim-1sJ_Fk4ukzH6GqSHe5beoqVbQEHxhHRTMdeZTY6TmPo8QAwgeg9Tt9ziniShw5IVJICfu_i', '1', NULL, NULL, '2021-10-20 10:31:43', '2021-10-20 10:31:43'),
(167, 'c8Zz0SbNSUuNoWP_U471T0:APA91bF2IqgArRpzMJ0ASo9SYjChlgx7xKramu7w6Sg66C3arpnoNc37Xv_96qY-9gim-1sJ_Fk4ukzH6GqSHe5beoqVbQEHxhHRTMdeZTY6TmPo8QAwgeg9Tt9ziniShw5IVJICfu_i', '1', NULL, NULL, '2021-10-20 10:43:39', '2021-10-20 10:43:39'),
(168, 'c8Zz0SbNSUuNoWP_U471T0:APA91bF2IqgArRpzMJ0ASo9SYjChlgx7xKramu7w6Sg66C3arpnoNc37Xv_96qY-9gim-1sJ_Fk4ukzH6GqSHe5beoqVbQEHxhHRTMdeZTY6TmPo8QAwgeg9Tt9ziniShw5IVJICfu_i', '1', NULL, NULL, '2021-10-20 11:30:23', '2021-10-20 11:30:23'),
(169, 'c8Zz0SbNSUuNoWP_U471T0:APA91bF2IqgArRpzMJ0ASo9SYjChlgx7xKramu7w6Sg66C3arpnoNc37Xv_96qY-9gim-1sJ_Fk4ukzH6GqSHe5beoqVbQEHxhHRTMdeZTY6TmPo8QAwgeg9Tt9ziniShw5IVJICfu_i', '1', NULL, NULL, '2021-10-20 11:39:11', '2021-10-20 11:39:11'),
(170, 'fIhpj7F4T1yEj0S1_un90l:APA91bFp2OcpAkPPkHkxnp9Pe7xANbV5KXo7-sHsvD5wZy4_4OMCwtcY0LjQitFL_apUa75ilbJwfbcbWlhsdYToTr2oKw8b0nFytF5GPcolIsv7ZPVefUDNdoEEulpRI7w8zJ_vAI8J', '1', 31, NULL, '2021-10-20 12:24:19', '2021-10-20 12:27:49'),
(171, 'f-87xH6mQr6t90IFD40Lho:APA91bFQom9zP2j6Ec0hBbrBNUbK7sFUhhDRr2YPAXemg0YRNX_gcPPDFd8bLlS223T8S95GsS4JLINpTrnCyxnFukcQqU0ZHurcKkhKo-pGqH-ZCqlHQMM1VajNGDP-lsjAps45kgMf', '1', 31, NULL, '2021-10-20 12:58:28', '2021-10-20 12:58:54'),
(172, 'f3iksMkyRaeufcdgOYoZX1:APA91bH1N8ia6jneubSb3x63Fgqr28N_bhLmNKi99PrFAG7q8hZHJdu8uXwQIUgg8s2pz2cQH8-74o1hzGg5hhJZLEJ72-sJQ8OlIvoqpeB4OaW2SvQeGh1T6KdN_0YVqkjXQ9TW1fui', '1', 31, NULL, '2021-10-21 05:55:11', '2021-10-21 06:49:28'),
(173, 'f3iksMkyRaeufcdgOYoZX1:APA91bH1N8ia6jneubSb3x63Fgqr28N_bhLmNKi99PrFAG7q8hZHJdu8uXwQIUgg8s2pz2cQH8-74o1hzGg5hhJZLEJ72-sJQ8OlIvoqpeB4OaW2SvQeGh1T6KdN_0YVqkjXQ9TW1fui', '1', NULL, NULL, '2021-10-21 06:48:19', '2021-10-21 06:48:19'),
(174, 'f3iksMkyRaeufcdgOYoZX1:APA91bH1N8ia6jneubSb3x63Fgqr28N_bhLmNKi99PrFAG7q8hZHJdu8uXwQIUgg8s2pz2cQH8-74o1hzGg5hhJZLEJ72-sJQ8OlIvoqpeB4OaW2SvQeGh1T6KdN_0YVqkjXQ9TW1fui', '1', NULL, NULL, '2021-10-22 03:57:42', '2021-10-22 03:57:42'),
(175, 'e09UmSX_TOaa4AY4h724E7:APA91bFGZzrTcjfPimyk0p27doDDPZcLdn58cxriCHQfvQhD7GcarLLgZYerwvOtodfIrY4F8nCD3MQ_vchrwbtlHnlVF_K4wr0hyGHOQo2raRGqM6O0wOfNVeYi4ThaOT0n5AZMu6sz', '1', 2, NULL, '2021-10-23 06:45:32', '2021-10-23 06:46:40'),
(176, 'dYhaPdsmTJ-0UtXXNn9Wu8:APA91bF_r9A7NYfv_jY9vVilifbIlPhtugJILUOYXip70WeyY_ehr-mqNkcuduui8DdLC-Aw7uTOhTdidH5U7OcG030fTy_m08CFjaUA4dcfj2ljRkjREt9E0w6k-VYMTmRZBy53YhXy', '1', 29, NULL, '2021-10-23 07:00:39', '2021-10-23 07:02:04'),
(177, 'e09UmSX_TOaa4AY4h724E7:APA91bFGZzrTcjfPimyk0p27doDDPZcLdn58cxriCHQfvQhD7GcarLLgZYerwvOtodfIrY4F8nCD3MQ_vchrwbtlHnlVF_K4wr0hyGHOQo2raRGqM6O0wOfNVeYi4ThaOT0n5AZMu6sz', '1', NULL, NULL, '2021-10-23 08:46:05', '2021-10-23 08:46:05'),
(178, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-25 04:27:18', '2021-10-25 04:27:18'),
(179, 'cImqVgRSReWk5qOg4V5b14:APA91bGPrsHTg1Ubtz9TZpqM655uVvT8o1_f-3Kcx_4K2A7ZAfVWallpFxgX0PAzGPLhe9q2EVBQQIoq9swpFI8RPUpc72AFr3HBHSwKm0vquy7NnnA7-6Xtk1FiHDvJYxP0zVrue2DA', '1', 31, NULL, '2021-10-25 07:21:30', '2021-10-25 07:22:07'),
(180, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', 34, NULL, '2021-10-25 09:32:11', '2021-10-25 09:32:11'),
(181, 'c86m_Es3SzOtJczioBkXeo:APA91bEmGZi3zinrXvW9bB6SugY0Pp6YZtA39xYkYLt7oJPlOJQScB9xd6qOBJquY_u4isvodJCYQrVc60nVGbcZODsDkmMB47IjZ4EDrMTzDLiAWg025hHjSS7lssmpM_7OpvGi4jie', '1', NULL, NULL, '2021-10-26 04:13:51', '2021-10-26 04:13:51'),
(182, 'cFjjmd80S-W1mP81J-wydU:APA91bHuP4e9cEkeXycKNWpqC4gC30obVOa9yCp3z_4ervt6WsXyBuPpQAvklt8ytSfxG09CqEHJ7EbFC7mMO3lHvHmO2C6jmUuUxsZZSEksnD_foiIKE0A_JO9tZGDdQMEyyTdoxME-', '1', 31, NULL, '2021-10-26 07:10:43', '2021-10-26 07:12:49'),
(183, 'cCmuXR-XSkqUVaOniYnHvu:APA91bEH35m-VtaMMEcGQVn5NWlRzdCR6TtSlWQ_IBoMJstW2f9AokBXHBfR4PRIWbbch6zBqU1O-mLCE8b7CWYsJlilHvY0Hp7i2E3RhoxE88V3RONiBpF0mjfnEceXRZzofK4YbZ8l', '1', NULL, NULL, '2021-10-27 12:57:55', '2021-10-27 12:57:55'),
(184, 'c13BjKF0hEyqn2CLwLVUOG:APA91bEvQunhkbhtVcrLQExUl_kFOI1jxsRfRs6PFL5YJ2t3G0PehuqQ35cWy6AHKMDcB4RRzvQxMlRLtygeZKKCqoOVzxkVFHOCz8XMDNyVyzflKKecb4xVuo5SNno5mIVmKLdGC11h', '1', NULL, NULL, '2021-10-28 05:01:36', '2021-10-28 05:01:36'),
(185, 'csfrhrxs5Ez0pDkYVxwC_G:APA91bGkz3rhRRbXTjC4QIQxlLZLRat05QiXXrf-P4fPP_sF7fLaTRXHKgtCBg9BXVUS7bebEZF6ie6gAdKGKpEMyM4kAHGuz2k_eFAIdO2RvC7qrWRyqf8gpkyN6jEmAXABOiV7F0x7', '1', NULL, NULL, '2021-10-28 05:11:55', '2021-10-28 05:11:55'),
(186, 'csfrhrxs5Ez0pDkYVxwC_G:APA91bGkz3rhRRbXTjC4QIQxlLZLRat05QiXXrf-P4fPP_sF7fLaTRXHKgtCBg9BXVUS7bebEZF6ie6gAdKGKpEMyM4kAHGuz2k_eFAIdO2RvC7qrWRyqf8gpkyN6jEmAXABOiV7F0x7', '1', 35, NULL, '2021-10-28 05:16:58', '2021-10-28 05:16:58'),
(187, 'cLL-443EQBueXqLMKNa7X1:APA91bEmwgtz1V4Kbl40fgewa5fxsn8RVbZyNTwqZz5z3TTvQcpl2YWyR6wgB0uGqLij-kCXhpbYwXYwDJP4g5iyxfPaSkYO_B9_7YRyTIczgI2goIOoPHdNzQq6uXqSkA3rngrSwVKa', '1', NULL, NULL, '2021-11-09 21:18:39', '2021-11-09 21:18:39'),
(188, 'eFmusI6AQo-POIoWSqPV-G:APA91bEinu7tq9DCUN6JLWsk7_SXVYmrV4FTOY5-RGhVNKoR-o4A2HIc-RU9ed2aImM7GZvz-xXPflVKThtjSfT5GnY8pkJ02GB7GondwtHFrfRF7h2AVWDA3K-eIFo-xoXplsWTz0y1', '1', NULL, NULL, '2021-11-30 11:45:13', '2021-11-30 11:45:13'),
(189, 'fGPzoZIsSwmpqV0l3Siq1j:APA91bHoKKkZyqc-wM8LxHJWrOxHpoZrISdVF0PV3ei3o6hRyrpzZ1ht0GAsrhSeo9B9qBbDwva--3wIvLA5p16m9yVo8RIFFLrkDXPiKizvqkHt-ZMZQdCyZ5ZmuJYXspRJlqrEysrP', '1', 10, NULL, '2021-12-01 09:46:01', '2021-12-01 10:11:42'),
(190, 'cPaq98R7S_WFCSrZabITmb:APA91bGHhKpwhVcaFTZMweboh6rRHfS0m-O5TlpT2JBhJmz1iM_zvbXubDNCKe_nDeTuhN03KvzFXlLVwW_WOhJtb79nSHvpd2ah0hQLP9uW2fVc2X83WkBOvtEN5n9zKoPPhfvEzaKk', '1', NULL, NULL, '2021-12-01 11:57:00', '2021-12-01 11:57:00'),
(191, 'cT-cyUW2RFezUVtYiJSWkQ:APA91bG--X5qyxaMd2qVRx6e4IgllSnDPrgTmKNXUaLKvzlAgQy33wFzLYgD-45ZtHuyT-UUko2_YRj-nTvb97yP30ybRFeWEa0PNxYjdI0hiIwLJPXhj7sAHJMxTXbKbYdTNM7y3rzl', '1', 10, NULL, '2021-12-03 04:33:24', '2021-12-03 04:33:53'),
(192, 'fvuum4gFQPK19exrlcCeyh:APA91bG8mVjL4QEGWANRicMZc3mzuCr6R4Pl3-xlKbVxwbtPcdYy9hl4FQIsTFmd_K0PSnAxGmC0G9axqK64k9oo8yfT9IN9OEQWV1m9z0tAsyJ0UegXs2vNk4J1K59aXr2hcDVKJrHR', '1', 28, NULL, '2021-12-07 04:53:45', '2021-12-07 05:10:42'),
(193, 'ek6BHdH_Sp-OoxqTrBAHUu:APA91bFqk3aKtHCJKcJTbaZwSrVsP0n_HGvK0ixMxS6FiMWyXQ4dn608TQqaCALNkltLj8NcWeH8q75TTeNDqguK52ZyMaqYR3vLoh6unnTWKR6yuqfwWSKn1XJUzzUaKQDiD8Y71_73', '1', 38, NULL, '2021-12-07 05:19:11', '2021-12-07 05:19:46'),
(194, 'e8bYVSoi8UAul_YmUvqmhe:APA91bE8M7-GWnWM_rNhs2k5GLKENf85jXIfLW15KMd5MOMQOojNQZOBJ3YgeuZjwkz8QiCA1ute431Ob80i-rvsqG-E-_PE8ycyx62-CBVoD7-EBbVM-pOoWOrNK6lQAbsges6pZNfW', '1', NULL, NULL, '2021-12-08 10:51:08', '2021-12-08 10:51:08'),
(195, 'd-fAmk-7R2qkzbDkx6VVxe:APA91bFvah97ysnu75EIzYgqc2c-KdZU9qiKBrYagPTuLaGQYwRQqv8k8zM7SzZY-lJ9yPqaKKH64kqAZuqDei7ScqeucdzVhd1jBsV4QJvi3lKs3GCMYiBnTFaNBZ5zHRP_gfd3-fcH', '1', 28, NULL, '2021-12-09 06:32:16', '2021-12-13 11:50:14'),
(196, 'd53YHRjwQ3K7MuiIP3X27w:APA91bFV584qxLwdQzwRxD95erKZCXkTYM-YIQ_07LIdoH9iIw6s3FN1WBQport4_NWaqfjHY7R4eWXUmrkcNpEEiFCtYh_KLvN-1bjZFi0MZ4z3RCPUddzXxuS1_fQ_gOgEKCdvX5OI', '1', NULL, NULL, '2021-12-09 15:50:15', '2021-12-09 15:50:15'),
(197, 'cCI0aQ6wTxW5Fw9VegK7y1:APA91bECP1JSQRSfJHI4EUc_ELKw0yQteIgmNivO0UN5DdDb7PqRXBB92lyylh7n5N2SAuy7T2Z1xxT6_2u_QVhMLRvFABHuiAs1L8LyxIY6k1OZDPykbdCZ-DHTVJwNIyl7YYpo6Dwe', '1', NULL, NULL, '2021-12-09 16:24:45', '2021-12-09 16:24:45'),
(198, 'd6BUq5-uQX2eUYq8pko03G:APA91bEi_z1OtOzNj4CjJENFopZ7MrHQBezngnKLUtmZ8I-KmnuS8azoQHSu1OgINHllOsyPXltr5xQvks9eA4uSAj_mdDGv0vJtKGwnloFVvm1-1B8KxP1V_SlQ-tdgOVhiCrmSKYNR', '1', NULL, NULL, '2021-12-09 16:33:49', '2021-12-09 16:33:49'),
(199, 'd6BUq5-uQX2eUYq8pko03G:APA91bEi_z1OtOzNj4CjJENFopZ7MrHQBezngnKLUtmZ8I-KmnuS8azoQHSu1OgINHllOsyPXltr5xQvks9eA4uSAj_mdDGv0vJtKGwnloFVvm1-1B8KxP1V_SlQ-tdgOVhiCrmSKYNR', '1', 39, NULL, '2021-12-09 16:36:18', '2021-12-09 16:36:18'),
(200, 'dNx8mRlyTQy--yY_TDBgHh:APA91bGTfeo5caLCco-hiAHZlcfaSB9_eVIVOwWtOc25UpFMDprJ6x-liimp9RRPoQrqugo3Zkb_Vg8v1Q3Zu_cO2P9RskRDWIh0bBpNi5ffPySDgXQph7cVHLYDvq5b1pfylbWjMPOh', '1', NULL, NULL, '2021-12-09 16:58:36', '2021-12-09 16:58:36'),
(201, 'dNx8mRlyTQy--yY_TDBgHh:APA91bGTfeo5caLCco-hiAHZlcfaSB9_eVIVOwWtOc25UpFMDprJ6x-liimp9RRPoQrqugo3Zkb_Vg8v1Q3Zu_cO2P9RskRDWIh0bBpNi5ffPySDgXQph7cVHLYDvq5b1pfylbWjMPOh', '1', 40, NULL, '2021-12-09 16:59:48', '2021-12-09 16:59:48'),
(202, 'dsj-VeGKSU6iJVFko82mip:APA91bHQpFbBlMc8rsIJ3ONQ5wTzeZhp6Rs2cwejrS7bFxGthJ2bMDMNPRD2pFH-Xg4HgtKx2dx_V5giXWoTGCLreyM9u9udvDpBD_17qjhlGNZ9y1wFtj5ISSpvBNk49SXG5GwhFI6i', '1', NULL, NULL, '2021-12-09 17:49:30', '2021-12-09 17:49:30'),
(203, 'dAOViabyRyqZCuHStjPr2_:APA91bHAz_ph5JIj9XtKl6IQfjzrsTuINVhMHSS2uw7ZqVkrdFU1GZVea30kO2iATZFZsGoDR9IRx9nxLfCkkvi9fvbzybhSHuOlc2AUma80LgIJCecpFnPybTP68w97sFuBAetniB1y', '1', NULL, NULL, '2021-12-09 17:52:42', '2021-12-09 17:52:42'),
(204, 'dAOViabyRyqZCuHStjPr2_:APA91bHAz_ph5JIj9XtKl6IQfjzrsTuINVhMHSS2uw7ZqVkrdFU1GZVea30kO2iATZFZsGoDR9IRx9nxLfCkkvi9fvbzybhSHuOlc2AUma80LgIJCecpFnPybTP68w97sFuBAetniB1y', '1', 41, NULL, '2021-12-09 17:55:38', '2021-12-09 17:55:38'),
(205, 'dsj-VeGKSU6iJVFko82mip:APA91bHQpFbBlMc8rsIJ3ONQ5wTzeZhp6Rs2cwejrS7bFxGthJ2bMDMNPRD2pFH-Xg4HgtKx2dx_V5giXWoTGCLreyM9u9udvDpBD_17qjhlGNZ9y1wFtj5ISSpvBNk49SXG5GwhFI6i', '1', 42, NULL, '2021-12-09 17:56:27', '2021-12-09 17:56:27'),
(206, 'dTqSJuRQROqPnMz8yPwc7t:APA91bElJzhmRJ2FyrWW6bE_Lam0OZMUgyO9xPVl_uMpzp5yysEm74vei295269Xn9TCkdmX3omb30FCeAMJVhOyhbb2mt23F0uQGjXf-_F6v0ddQPDB09BwnjMqn4lpwbQ4Z983Ak68', '1', NULL, NULL, '2021-12-10 23:53:23', '2021-12-10 23:53:23'),
(207, 'cgYiwZPgR9SmdjNA2uFpSy:APA91bG9WxcA73m1tpJf6pyVHAtyKfRp_buh16k8-PGUi8TcZ_ZsGiWAjRfN0SPCyQpc-h34mkJsXc_gywtzlNjPXRbQRUC62jiZaN-zV8AKF6gy4efJMsumT8Xo4zzJbWNbGQcByFRn', '1', NULL, NULL, '2021-12-11 09:16:00', '2021-12-11 09:16:00'),
(208, 'cgYiwZPgR9SmdjNA2uFpSy:APA91bG9WxcA73m1tpJf6pyVHAtyKfRp_buh16k8-PGUi8TcZ_ZsGiWAjRfN0SPCyQpc-h34mkJsXc_gywtzlNjPXRbQRUC62jiZaN-zV8AKF6gy4efJMsumT8Xo4zzJbWNbGQcByFRn', '1', 43, NULL, '2021-12-11 09:17:49', '2021-12-11 09:17:49'),
(209, 'eejAKT9lRYOmn1Wp94JTrN:APA91bGqj6Li7F6pSFf5go5XAnaVVCc5Wot3oRiUen2HpMGcbixuva1KkCVZuXerZF_mgYqdNWx_rxOXOtsykAr1CA7EepkoVIT1TSDvpG5pP7ydxmdBfjX1NnAdnE_3hB2ykgumUqTC', '1', NULL, NULL, '2021-12-11 10:32:44', '2021-12-11 10:32:44'),
(210, 'eejAKT9lRYOmn1Wp94JTrN:APA91bGqj6Li7F6pSFf5go5XAnaVVCc5Wot3oRiUen2HpMGcbixuva1KkCVZuXerZF_mgYqdNWx_rxOXOtsykAr1CA7EepkoVIT1TSDvpG5pP7ydxmdBfjX1NnAdnE_3hB2ykgumUqTC', '1', 44, NULL, '2021-12-11 10:37:00', '2021-12-11 10:37:00'),
(211, 'cwBS2hNIRa2TAToYebzLs6:APA91bEonssvG6UFOIiViMjLEEomLSvjdLVHbl13TpGPLxFmRKOUiwZojCMiTINGXOA4Y4X7XYGMWp7Zz7ePpOmHbXTiewx-Fa0D_JsxsNIOots8kmdfQTwfwxhN9VAoQhRsPoyFGUUx', '1', NULL, NULL, '2021-12-11 10:57:19', '2021-12-11 10:57:19'),
(212, 'dDhKSHqfQ-6milg70EaQKw:APA91bFJbVXO7VIRMwemO0wQS-1P-VGAUnwRNfLXnQ78909vLDQyFEBRt_t4t8j4IJunZxWU9oQdJVCQcg3YmpfPdDdcXlMOCKjQ-Af5hlYp0Say0pmPq1wwTnI6x8fG2cJF3rn3vj5Y', '1', NULL, NULL, '2021-12-11 11:44:48', '2021-12-11 11:44:48'),
(213, 'cwBS2hNIRa2TAToYebzLs6:APA91bEonssvG6UFOIiViMjLEEomLSvjdLVHbl13TpGPLxFmRKOUiwZojCMiTINGXOA4Y4X7XYGMWp7Zz7ePpOmHbXTiewx-Fa0D_JsxsNIOots8kmdfQTwfwxhN9VAoQhRsPoyFGUUx', '1', 45, NULL, '2021-12-11 11:49:22', '2021-12-11 11:49:22'),
(214, 'di3vp5UTQ3maeQBYznWWbq:APA91bEYtO3Jru0qxsG7x9aMy5d20AsFCmOcjKNxQTo0McbZpzZPnEflbV1LljGQxqANmlKsBAHxdxAoK4EornrBw8_h3eSIEshpaDxHP90xV_xfvLxsMd2TrkTlAjFp4thUI9k3BtTI', '1', 46, NULL, '2021-12-11 13:40:55', '2021-12-11 13:45:42'),
(215, 'di3vp5UTQ3maeQBYznWWbq:APA91bEYtO3Jru0qxsG7x9aMy5d20AsFCmOcjKNxQTo0McbZpzZPnEflbV1LljGQxqANmlKsBAHxdxAoK4EornrBw8_h3eSIEshpaDxHP90xV_xfvLxsMd2TrkTlAjFp4thUI9k3BtTI', '1', 46, NULL, '2021-12-11 13:42:30', '2021-12-11 13:42:30'),
(216, 'cD7eQ6cARmaJjjdlQ4anCQ:APA91bFufQXv1sBDxIG10XKmP1uQ2GAJeHAevETTuPUm8YZN5e0z6_QgWKaDD9paGand5FZGXST4bX9ZDhYR7C08mHAXPbb4EfrEo_REtI_J7u69-T3OQ-TXathOiOgerN_Mw_9BZvbl', '1', NULL, NULL, '2021-12-11 22:47:30', '2021-12-11 22:47:30'),
(217, 'cWcyk-jER2aWhA6Kf3s_TZ:APA91bFs9GssMnofgAJvjTzRqfJM5lWT17pXbBcLQCm1E_W2yG4Q9_VvcvYrCRJdXcNk48W97kiruXaemHCBEDsY-qge00-IQlNlhV40W01RJTgvkyYgzt_dV4yirRN18FbJvC3ziBA3', '1', NULL, NULL, '2021-12-12 03:07:27', '2021-12-12 03:07:27'),
(218, 'esa-HeJcSpmS9d2HLhgXj4:APA91bE9U2nMsTwj3NsrAEW2zrzP-5Tp1AWXwwAAT9C8furXx5THGUqVjS3AL96s4OuXPrJ9c-sz1aUVPT-U9XfPd83iYVRD4ttzRE2NW8wAW9xn9JGMR9wdsC4pM62hXglFMu3x-lQq', '1', NULL, NULL, '2021-12-12 08:22:47', '2021-12-12 08:22:47'),
(219, 'ejt_W71pSrGPXomS0-ucW5:APA91bH6Pb4oeJgaY5HAfrPTR2Nd7pa3VBzDkQS1NS-g-cBsP5SKyX0kKa99L5AbDEIwBZG0fzHOpERUrlFsQNY1MF4V9GGQo1t9EsZaZL8A5Nc1Bhx-eUrGEB8ck_wTLn0IT-1Zl88j', '1', NULL, NULL, '2021-12-12 19:00:42', '2021-12-12 19:00:42'),
(220, 'd3CyNDRST4mm2LDw1Klx5N:APA91bE11nSHk6yeZhOTz_0Z81DYx4skqPStpTQ_tPqqSu4Sow6Jm0apmdcRkOD9lFl6VS7ghMfY59Ubmsw-TjqKnBZvcdz0AIAVg74zQI8-_F85vZV0a3c4YLgf_U2fGdDf81W9GEBH', '1', NULL, NULL, '2021-12-13 10:13:40', '2021-12-13 10:13:40'),
(221, 'd3CyNDRST4mm2LDw1Klx5N:APA91bE11nSHk6yeZhOTz_0Z81DYx4skqPStpTQ_tPqqSu4Sow6Jm0apmdcRkOD9lFl6VS7ghMfY59Ubmsw-TjqKnBZvcdz0AIAVg74zQI8-_F85vZV0a3c4YLgf_U2fGdDf81W9GEBH', '1', 47, NULL, '2021-12-13 10:16:08', '2021-12-13 10:16:08'),
(222, 'eQx_kAiNTRqTHP4uHhQB_G:APA91bFz_O84nqVJMOgaYbSBJ-75ZcG845uYELkLkdHfJid6XJGXii84MRnV4r__BJ1gh4tXfuts0NBPg3inrv1Er7Y5XtBCV8MSx13sUsCHf0JcCii4pjYmgAaTLJQQxY4g-0DY-VNv', '1', 1, NULL, '2021-12-13 10:16:36', '2021-12-13 10:19:16'),
(223, 'eMxbe2BrToyvjq5Z_IWdzE:APA91bGkVVl2QkFzUQxh2zTJCHX_-dbkAuyKlSdmr_417KetsQHUz-0ZZtSqLiWfCu66P0rShsRemhT37OY2nWflKXHhIE_-1ekov9hK05r_Bqkni6ddMX6SIFazeeq0jyVPcS7lznV1', '1', NULL, NULL, '2021-12-13 11:15:58', '2021-12-13 11:15:58'),
(224, 'cYTWbegOTYye_8L6Gt42Z6:APA91bFkkl-eI4VH2NpGFkOlzKc4v2jcD81Hk49ruZG4wMLg3AYmBUr7az_sZ-cQ9iW_2jU-iWpNgj3tZ2v5snX_4XGmXyO-siaszngDb38x2AaeJqaM6Lvw39R5_Wi7krsgNzvVGecT', '1', 48, NULL, '2021-12-13 13:22:24', '2021-12-13 13:34:38'),
(225, 'cYTWbegOTYye_8L6Gt42Z6:APA91bFkkl-eI4VH2NpGFkOlzKc4v2jcD81Hk49ruZG4wMLg3AYmBUr7az_sZ-cQ9iW_2jU-iWpNgj3tZ2v5snX_4XGmXyO-siaszngDb38x2AaeJqaM6Lvw39R5_Wi7krsgNzvVGecT', '1', 48, NULL, '2021-12-13 13:23:26', '2021-12-13 13:23:26'),
(226, 'd2c-A_B1TGyoA1ojLp1jYb:APA91bEH8n-gWLguaxxmsGVE4qKpNznq42ZR5DtLpkqxm4bJEVLOlZ6nzBMKEIu0Yaq3AufVZ3iJ_oGtQSyRp1hHW-d9VZGOnX4d1C1Eoo24OKWsrSPQ0q-9EFds3DJ3GIg1NCzSBXYF', '1', 1, NULL, '2021-12-13 15:39:08', '2021-12-13 15:39:48'),
(227, 'eqQFv_PETVSvsI1ilrHtmp:APA91bFlJSkMnaXYA8ZYSpsDOyK_EL5ec_-craMZh8x5IOV_hKgw87ihfH9AVE03LSkczdHA-wvGlY5xGTWt_AWqQOCXVxi5hUY6QCNS-8ag0QduEYW01LgWIYrAJrnlN9I1ZR_g8nWa', '1', 2, NULL, '2021-12-13 16:43:58', '2021-12-16 07:10:55'),
(228, 'cYTWbegOTYye_8L6Gt42Z6:APA91bFkkl-eI4VH2NpGFkOlzKc4v2jcD81Hk49ruZG4wMLg3AYmBUr7az_sZ-cQ9iW_2jU-iWpNgj3tZ2v5snX_4XGmXyO-siaszngDb38x2AaeJqaM6Lvw39R5_Wi7krsgNzvVGecT', '1', NULL, NULL, '2021-12-13 16:45:06', '2021-12-13 16:45:06'),
(229, 'cmLv_VtwQz-lqNctGn3ldH:APA91bEXY5q70tuJWt7NN-noSnMlOgU_u-YaDuuTr4xdxdzaYPgb4OpOhJWLmcKRt8oeVUhNxwcqLuefP608SNTs789gvpM0YlwDMG-CAXWGgMjpffgk7NTAE4VSP3Z8tO1mmaamrQ_C', '1', 49, NULL, '2021-12-13 20:35:42', '2021-12-13 21:08:47'),
(230, 'cmLv_VtwQz-lqNctGn3ldH:APA91bEXY5q70tuJWt7NN-noSnMlOgU_u-YaDuuTr4xdxdzaYPgb4OpOhJWLmcKRt8oeVUhNxwcqLuefP608SNTs789gvpM0YlwDMG-CAXWGgMjpffgk7NTAE4VSP3Z8tO1mmaamrQ_C', '1', 49, NULL, '2021-12-13 20:41:09', '2021-12-13 20:41:09'),
(231, 'cmLv_VtwQz-lqNctGn3ldH:APA91bEXY5q70tuJWt7NN-noSnMlOgU_u-YaDuuTr4xdxdzaYPgb4OpOhJWLmcKRt8oeVUhNxwcqLuefP608SNTs789gvpM0YlwDMG-CAXWGgMjpffgk7NTAE4VSP3Z8tO1mmaamrQ_C', '1', 50, NULL, '2021-12-13 21:06:31', '2021-12-13 21:06:31'),
(232, 'dki6i1GDTN2x01grs_ffgR:APA91bHE1Pcg9w8n-ZWOTTZ1G7DgqUeBlSo7pCymiOlrrAuLCR6BuX43V1Fyzc8ybqy4pxGZlbZXbwYhfsSwMwA8T_aBbqIK5FSBwlKXvuY7vQTeWOC3UtB4__qe6lK6luVG3pAIZyK5', '1', NULL, NULL, '2021-12-13 23:34:52', '2021-12-13 23:34:52'),
(233, 'cmLv_VtwQz-lqNctGn3ldH:APA91bEXY5q70tuJWt7NN-noSnMlOgU_u-YaDuuTr4xdxdzaYPgb4OpOhJWLmcKRt8oeVUhNxwcqLuefP608SNTs789gvpM0YlwDMG-CAXWGgMjpffgk7NTAE4VSP3Z8tO1mmaamrQ_C', '1', NULL, NULL, '2021-12-14 13:28:59', '2021-12-14 13:28:59'),
(234, 'ccLPWPSwQWmsj4Mix8ANU-:APA91bFpVq3qQBqMQGIA4T2gPkXbIPFU7F57PW-epWe6nxuoDa0aUXnNOyORWP5cscvRffK9GXUVsaYn0JarNDilnITce_H0zaXatZieX0a3HrD_0XZH693beIJn1fLyHD9bNLJc7lF6', '1', NULL, NULL, '2021-12-14 14:27:53', '2021-12-14 14:27:53'),
(235, 'ccLPWPSwQWmsj4Mix8ANU-:APA91bFpVq3qQBqMQGIA4T2gPkXbIPFU7F57PW-epWe6nxuoDa0aUXnNOyORWP5cscvRffK9GXUVsaYn0JarNDilnITce_H0zaXatZieX0a3HrD_0XZH693beIJn1fLyHD9bNLJc7lF6', '1', 52, NULL, '2021-12-14 17:47:14', '2021-12-14 17:47:14'),
(236, 'eqQFv_PETVSvsI1ilrHtmp:APA91bFlJSkMnaXYA8ZYSpsDOyK_EL5ec_-craMZh8x5IOV_hKgw87ihfH9AVE03LSkczdHA-wvGlY5xGTWt_AWqQOCXVxi5hUY6QCNS-8ag0QduEYW01LgWIYrAJrnlN9I1ZR_g8nWa', '1', 54, NULL, '2021-12-15 09:18:36', '2021-12-15 09:18:36'),
(237, 'eBv-JnPdQ7yW_kmAFCyys5:APA91bGTaJX9eF6o-ocSwlPY691Jg65swuagsSsVcvQKWPc5_b-2Z8zP4wacxtGymDX6yEYotv4j85S_JVS9TbQR6N07uw5aqnAl6Fb3y6dXBQRbLiutUSf4JdIM2lsm0-V8mcunMwCM', '1', NULL, NULL, '2021-12-15 19:26:27', '2021-12-15 19:26:27'),
(238, 'eBv-JnPdQ7yW_kmAFCyys5:APA91bGTaJX9eF6o-ocSwlPY691Jg65swuagsSsVcvQKWPc5_b-2Z8zP4wacxtGymDX6yEYotv4j85S_JVS9TbQR6N07uw5aqnAl6Fb3y6dXBQRbLiutUSf4JdIM2lsm0-V8mcunMwCM', '1', 55, NULL, '2021-12-15 20:18:44', '2021-12-15 20:18:44'),
(239, 'fjhvzCRKSEKSkh0AUfhtlq:APA91bFf9SOklVL1yUgFlZE3E5V5dqUgcBNuxw6ai03qS7yWBLe9ATgybPoJS4MFBqTlTzkmzplR2V33nA7zTTgsuOReAvbaTqxduc8Yj7Nd6fhiwkOw7910Z_ywgEjGz_363FLb824U', '1', NULL, NULL, '2021-12-16 03:09:39', '2021-12-16 03:09:39'),
(240, 'eqQFv_PETVSvsI1ilrHtmp:APA91bFlJSkMnaXYA8ZYSpsDOyK_EL5ec_-craMZh8x5IOV_hKgw87ihfH9AVE03LSkczdHA-wvGlY5xGTWt_AWqQOCXVxi5hUY6QCNS-8ag0QduEYW01LgWIYrAJrnlN9I1ZR_g8nWa', '1', NULL, NULL, '2021-12-16 07:09:41', '2021-12-16 07:09:41'),
(241, 'eqQFv_PETVSvsI1ilrHtmp:APA91bFlJSkMnaXYA8ZYSpsDOyK_EL5ec_-craMZh8x5IOV_hKgw87ihfH9AVE03LSkczdHA-wvGlY5xGTWt_AWqQOCXVxi5hUY6QCNS-8ag0QduEYW01LgWIYrAJrnlN9I1ZR_g8nWa', '1', NULL, NULL, '2021-12-16 09:57:51', '2021-12-16 09:57:51'),
(242, 'f-xAbj1HRSKbwHrnTlSjML:APA91bE9PPKqYVWM0kyANF9ziqN9vBbWKgEbRaYBETKzvEZd2_21ZfJusHkAG2c4oPrEaMg156YcG542bST8f1IiNf2w4XcKBY0naJte28VCrlV537jDH40CWpDzvq62qaIAE1dCDxhY', '1', NULL, NULL, '2021-12-16 21:23:20', '2021-12-16 21:23:20'),
(243, 'f-xAbj1HRSKbwHrnTlSjML:APA91bE9PPKqYVWM0kyANF9ziqN9vBbWKgEbRaYBETKzvEZd2_21ZfJusHkAG2c4oPrEaMg156YcG542bST8f1IiNf2w4XcKBY0naJte28VCrlV537jDH40CWpDzvq62qaIAE1dCDxhY', '1', 57, NULL, '2021-12-17 10:03:49', '2021-12-17 10:03:49'),
(244, 'dzmQwpU9TBO2JufIETf7te:APA91bHMgH6CRDMHmvOsAqmXojBwHtSKZcRmL-OMbQLGx821qlVlrj4LOji9klJMbdMYqhKGGIKaXKXn3B2hVizx58DANSMdcn3rw3Hdgy84Zqs9-rsb1TrHJjeSHFrdL8BBTwW6oC4P', '1', NULL, NULL, '2021-12-18 00:14:51', '2021-12-18 00:14:51'),
(245, 'fIiyp3YXQtSolwtaBh9CR0:APA91bFhkGwDMux7FUM0lK23G_M-WRQdNy5m9mbH_yy2WECM61Pt_aJcVrxnMKb7b2svQLkpXxwlRjFrKOJpyasKyPcpTD_PlLcthele3BP-JW3KSpz9OmhfhWmFjS2SgJf_v5G1UJGi', '1', NULL, NULL, '2021-12-18 08:51:42', '2021-12-18 08:51:42'),
(246, 'dnDfioFWQ3KXYTS74r0kA0:APA91bEaJNKLmuE6nW44oGwcFTL5NDHLR_95iDjMeEbHWbtYGBQC7IDsmTWQqs4qfZ54kofx_cV_Iv0WqBHbS9BOt6L8HiEcZ-vEHrldukjdbe0PSRQTrTfX6S9tMziT6xBxEs5RMl1-', '1', NULL, NULL, '2021-12-18 14:22:18', '2021-12-18 14:22:18'),
(247, 'dnDfioFWQ3KXYTS74r0kA0:APA91bEaJNKLmuE6nW44oGwcFTL5NDHLR_95iDjMeEbHWbtYGBQC7IDsmTWQqs4qfZ54kofx_cV_Iv0WqBHbS9BOt6L8HiEcZ-vEHrldukjdbe0PSRQTrTfX6S9tMziT6xBxEs5RMl1-', '1', 58, NULL, '2021-12-18 14:24:37', '2021-12-18 14:24:37'),
(248, 'dgamY01RR4uqyj6gSfQpZR:APA91bHS0-Q_jyLr2ERuVfWskbdvGc_h8TNQERvkGCjGdm_94_8FzN1tKZuXRNu5-6YfLAJRDiOvWDmR-wo1m1MHnkH1bx4c_CRS2w5tndDXuzNAVNqoW5YratiVgnpBKtl67ongTzfk', '1', 60, NULL, '2021-12-19 10:17:20', '2021-12-20 09:13:14'),
(249, 'dgamY01RR4uqyj6gSfQpZR:APA91bHS0-Q_jyLr2ERuVfWskbdvGc_h8TNQERvkGCjGdm_94_8FzN1tKZuXRNu5-6YfLAJRDiOvWDmR-wo1m1MHnkH1bx4c_CRS2w5tndDXuzNAVNqoW5YratiVgnpBKtl67ongTzfk', '1', 60, NULL, '2021-12-19 10:20:29', '2021-12-19 10:20:29'),
(250, 'dgamY01RR4uqyj6gSfQpZR:APA91bHS0-Q_jyLr2ERuVfWskbdvGc_h8TNQERvkGCjGdm_94_8FzN1tKZuXRNu5-6YfLAJRDiOvWDmR-wo1m1MHnkH1bx4c_CRS2w5tndDXuzNAVNqoW5YratiVgnpBKtl67ongTzfk', '1', NULL, NULL, '2021-12-19 10:23:55', '2021-12-19 10:23:55'),
(251, 'ccSYtPwBTPiczvQ1b6tEOw:APA91bFSw0zJTqRefTmrH2mmKN41JorAXwhDqu7QJCzqRl-sIgFWLF_an8Gz7IqmCGj0evK9STbCd2LstgPdhrqnsOV5nAZ9CxPFiqXZLn7zFATh6zDaCJmFe87gWy_f_WfAP06UGnGU', '1', NULL, NULL, '2021-12-19 13:44:52', '2021-12-19 13:44:52'),
(252, 'ccSYtPwBTPiczvQ1b6tEOw:APA91bFSw0zJTqRefTmrH2mmKN41JorAXwhDqu7QJCzqRl-sIgFWLF_an8Gz7IqmCGj0evK9STbCd2LstgPdhrqnsOV5nAZ9CxPFiqXZLn7zFATh6zDaCJmFe87gWy_f_WfAP06UGnGU', '1', 61, NULL, '2021-12-19 13:46:33', '2021-12-19 13:46:33'),
(253, 'fPfRk2cPTiuZrAtFb0TFMu:APA91bG9ttaWeQ0yAci8XxQT8aMUeK25fqJWw4OqGs89VUDZ2rE_YLdtczVkbJHZkbec-eCE9dJSO8p8Pel2t011Tm0i5OgLunePn3yCCrV4ZUjOJ9T2nmGa1hmHTC_mmJ73RFpYyGFI', '1', NULL, NULL, '2021-12-20 00:12:42', '2021-12-20 00:12:42'),
(254, 'eEp1p-OBQN65-4Lv2ZoWBr:APA91bE_Rk-ILom7Zxmfkx9oNYZ03FEOMFspkfIEn0uDJ81IQ7NQuo5pfgtyVCAsjlmhydcmh6RZ6Wq7LezoUe4dn-ge1LUx_6pq_Wdxid3LVeAgeMAq0vIfIiRQ64Oa8mPYL9MKNqmi', '1', NULL, NULL, '2021-12-20 14:14:35', '2021-12-20 14:14:35'),
(255, 'eEp1p-OBQN65-4Lv2ZoWBr:APA91bE_Rk-ILom7Zxmfkx9oNYZ03FEOMFspkfIEn0uDJ81IQ7NQuo5pfgtyVCAsjlmhydcmh6RZ6Wq7LezoUe4dn-ge1LUx_6pq_Wdxid3LVeAgeMAq0vIfIiRQ64Oa8mPYL9MKNqmi', '1', 62, NULL, '2021-12-20 14:15:58', '2021-12-20 14:15:58');
INSERT INTO `token` (`id`, `token`, `type`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(256, 'cBWFW0nDTrSWVixKd84PVq:APA91bF_LdKvI65isnZYMPiGT9DN_zA1Vh0NIwqIPKMpr4urpFy8pP1NGY4MG4fAcHvJVdQzL4CuC39ecSB6WijzEHAfru7wTM-UF9okmnn3CmfopuAT_0YEgBLxipxm9mYihNN8vm3S', '1', NULL, NULL, '2021-12-20 15:02:27', '2021-12-20 15:02:27'),
(257, 'cBWFW0nDTrSWVixKd84PVq:APA91bF_LdKvI65isnZYMPiGT9DN_zA1Vh0NIwqIPKMpr4urpFy8pP1NGY4MG4fAcHvJVdQzL4CuC39ecSB6WijzEHAfru7wTM-UF9okmnn3CmfopuAT_0YEgBLxipxm9mYihNN8vm3S', '1', 63, NULL, '2021-12-20 15:04:33', '2021-12-20 15:04:33'),
(258, 'emb1M-N7Qbeoryp897iuum:APA91bGEjRB-MOBDxD0yIEK-VJHS2COE1vnL8HiSh4m9gLnZUf9X9eanR5vNOcULNctdJO-EygRV0KyreWQE8yEJyysUy_PX-NOLukOJtarnm5xKeyw-WItCZcogPp6poX2U1LSYycne', '1', NULL, NULL, '2021-12-20 15:54:35', '2021-12-20 15:54:35'),
(259, 'eCstT5tHS9K9QrOUmzWtW8:APA91bEtjJ7YETX44KiG6PvmS2vqjbLeS5zOBYCxMsz-nl1B-t_BBLHWj_ZmOXCv-4L6jReIbAr0e3i_BisBzTo_3ArDbKscH9mfBX4JPwhXduEKB02XlY--o6MxOlNqnVbLSoeX0r09', '1', NULL, NULL, '2021-12-21 05:03:12', '2021-12-21 05:03:12'),
(260, 'cqzWWk8cR_OJinNxgBTsqO:APA91bH8LUczFDM2F8LLAwISR3c-jPNApntn2ykP4sxO4sC2WBS2IXQaFUJUu7b4DZlTWF2BASmDPa1eHEcHC8rpVdwpPG-3_vuRmwGizJ21yEs0A0nyBFyRI0A8ptOdXPFtGd1-6pCP', '1', NULL, NULL, '2021-12-22 09:18:24', '2021-12-22 09:18:24'),
(261, 'cvUt5yXRQVmEKft-E7Ytzn:APA91bEt14P59FqqzkUns-EEoZhI98-SYZtrdSp4AsaQJGFi9SHwZP3N4Bx6kul8zCrzyTYIo0sueL1HT6d9yWoecfukqwQ5djgDSXuzjFbZugrbn0roDP4MxNQ2MJBFtPaesIoDEFKP', '1', NULL, NULL, '2021-12-22 11:34:38', '2021-12-22 11:34:38'),
(262, 'cvUt5yXRQVmEKft-E7Ytzn:APA91bEt14P59FqqzkUns-EEoZhI98-SYZtrdSp4AsaQJGFi9SHwZP3N4Bx6kul8zCrzyTYIo0sueL1HT6d9yWoecfukqwQ5djgDSXuzjFbZugrbn0roDP4MxNQ2MJBFtPaesIoDEFKP', '1', 64, NULL, '2021-12-22 12:49:21', '2021-12-22 12:49:21'),
(263, 'eaac_HThQf6HGxa0U-G8TR:APA91bFeH0YndMfiMaOmIvLbKA0aDfrfniDdOvOB-o0LdlBbRjma_1SbWzupG1rMS3JoI0vgnogJyQ1akRiAAfKYZQoIqQeHqzB7GFXKtcN335ZFXQv5RzBB9mdzXA_LVBlS478Wsc2m', '1', NULL, NULL, '2021-12-23 02:14:25', '2021-12-23 02:14:25'),
(264, 'e454gV5iTZSJh5MeIbCwu4:APA91bHbIe1ntnEcUVc3nDmGlGQYAftTWRuxTNgBDhuCUQKrcNI1HaifqdwMWh65JbJEs5UnY30Ao2NCIHWZoN_y66d93YX5E7XsSXPh5ZjSCQ7hYClydEESveLwUyI41TNhq6S8quTL', '1', NULL, NULL, '2021-12-23 17:07:02', '2021-12-23 17:07:02'),
(265, 'e454gV5iTZSJh5MeIbCwu4:APA91bHbIe1ntnEcUVc3nDmGlGQYAftTWRuxTNgBDhuCUQKrcNI1HaifqdwMWh65JbJEs5UnY30Ao2NCIHWZoN_y66d93YX5E7XsSXPh5ZjSCQ7hYClydEESveLwUyI41TNhq6S8quTL', '1', 65, NULL, '2021-12-23 17:10:21', '2021-12-23 17:10:21'),
(266, 'dMhemrqxR1Cp18Gubjpx-H:APA91bHMeDg_9tb6d1yW5Uv-hIUDp9rC034THPAKl1A1NlZb08OM70OsTdDqob7a9jtkl6lcwI5gmHO5dZ-y0IIIe4SmEE_1LOXfmFiZuC2GslU9UGJnGk5woOw7yJ8-GDRMf2knxG53', '1', 66, NULL, '2021-12-23 22:16:13', '2021-12-23 22:34:46'),
(267, 'dMhemrqxR1Cp18Gubjpx-H:APA91bHMeDg_9tb6d1yW5Uv-hIUDp9rC034THPAKl1A1NlZb08OM70OsTdDqob7a9jtkl6lcwI5gmHO5dZ-y0IIIe4SmEE_1LOXfmFiZuC2GslU9UGJnGk5woOw7yJ8-GDRMf2knxG53', '1', 66, NULL, '2021-12-23 22:25:49', '2021-12-23 22:25:49'),
(268, 'dMhemrqxR1Cp18Gubjpx-H:APA91bHMeDg_9tb6d1yW5Uv-hIUDp9rC034THPAKl1A1NlZb08OM70OsTdDqob7a9jtkl6lcwI5gmHO5dZ-y0IIIe4SmEE_1LOXfmFiZuC2GslU9UGJnGk5woOw7yJ8-GDRMf2knxG53', '1', NULL, NULL, '2021-12-23 22:32:17', '2021-12-23 22:32:17'),
(269, 'eh1sjglNS0SHtmDA-pZVdd:APA91bFzKsc_1rFwMGOCl93v6DJ_mCuGa1UZKfNx9hxrOGbIgWQvp-R5E95I4_2sqBh9go2n3aA3VYvis8lFfZOxW7S_1-TJuYUnEjPOuFyJUJacrcexysuPQYL-NZjG16gtbtUeBBY_', '1', NULL, NULL, '2021-12-24 14:52:15', '2021-12-24 14:52:15'),
(270, 'eojWqwmaQniI8f3DlW790i:APA91bEi3E06fY06lNpa7YLWuKJEftC7LZZtSsZ6nxjJAh3YL5ivQ35c2dz-KHhkpnQJPahzdalGJp0x_FjeGI_iSma7Z8D7-b_IasWuwX-f3qrCc5VeWJhkN-M2iIRBvhJRiQGTuzm5', '1', NULL, NULL, '2021-12-24 15:37:12', '2021-12-24 15:37:12'),
(271, 'cwD7A8F0RCi-uQHhE4QILc:APA91bFjbWLavZT6l6C6UiOsrvyBNFSUk8HFhcLg4_YxAEfZJsvwNraZbYBBQtGSU8G3KeckwDNnRlumBLdnb8VJjXHsTSp0F_embv4CKpW-0k7ziQpc-VqFY0eINvnjULZwhCYNkqtk', '1', NULL, NULL, '2021-12-25 02:12:40', '2021-12-25 02:12:40'),
(272, 'fgemAGS8TCOL08F2kQIPZ3:APA91bGrYO-lQhbxTRdnCZV7uVcv9pMJk0vql18ykuy6vsfJM_hTn_-nxLDYPPm1g-ty1OZamSKxdMwcZ_uXV1Basarqa-7fYCn4l8gBfkLhE3oc9K9CLoPM2I8v5uXNG_nHbF8N4X8u', '1', 52, NULL, '2021-12-25 04:14:32', '2021-12-25 23:02:00'),
(273, 'emuuctO9Sty7SDcks-CY3G:APA91bHQtcAWpVET7DLsLMkPMvV-vt9GzPaJHwe79RW0dSna4a4QArShD1MfiEZ5mq6hFtszihrTRlmkTTzJHRvdY0dU-L09W5PPmhpkvnpPCfvujfU0nVzRa5V76VnluQ-dAtVCfEZy', '1', NULL, NULL, '2021-12-26 18:32:27', '2021-12-26 18:32:27'),
(274, 'emuuctO9Sty7SDcks-CY3G:APA91bHQtcAWpVET7DLsLMkPMvV-vt9GzPaJHwe79RW0dSna4a4QArShD1MfiEZ5mq6hFtszihrTRlmkTTzJHRvdY0dU-L09W5PPmhpkvnpPCfvujfU0nVzRa5V76VnluQ-dAtVCfEZy', '1', 67, NULL, '2021-12-26 18:34:42', '2021-12-26 18:34:42'),
(275, 'fZTO8j1kQQyDbU1u8Bj-hY:APA91bF4gamazl7LAvogWbB_S9DJgqG2vk8mWniMf_3vHfWJ0reRp0Tm0oNDl1cUv3bylQ63jywQIXnd4WlTwlQug328aShCebqjsRtqEOpcukVVTuTnEuSVwHY7iygwpLb25JR51y7k', '1', NULL, NULL, '2021-12-27 13:11:22', '2021-12-27 13:11:22'),
(276, 'fZTO8j1kQQyDbU1u8Bj-hY:APA91bF4gamazl7LAvogWbB_S9DJgqG2vk8mWniMf_3vHfWJ0reRp0Tm0oNDl1cUv3bylQ63jywQIXnd4WlTwlQug328aShCebqjsRtqEOpcukVVTuTnEuSVwHY7iygwpLb25JR51y7k', '1', 68, NULL, '2021-12-27 13:13:10', '2021-12-27 13:13:10'),
(277, 'cgoGdmH-Q_eMWtbHpjp-Zs:APA91bEFKNQT1hW9DPt-X-0TFm8HmDzhfGD01ydsUYXVXZtJky-udUkuW0FZB0l4IDZ-hZ7z0TSPGfaHWLkLPI8VoKmE57sqpXxKRFIaeqmOstCrn1YmaeU7-mduztxKSgBY2dV3M0Py', '1', 2, NULL, '2021-12-28 01:57:52', '2021-12-28 02:35:57'),
(278, 'cgoGdmH-Q_eMWtbHpjp-Zs:APA91bEFKNQT1hW9DPt-X-0TFm8HmDzhfGD01ydsUYXVXZtJky-udUkuW0FZB0l4IDZ-hZ7z0TSPGfaHWLkLPI8VoKmE57sqpXxKRFIaeqmOstCrn1YmaeU7-mduztxKSgBY2dV3M0Py', '1', 69, NULL, '2021-12-28 01:59:34', '2021-12-28 01:59:34'),
(279, 'cgoGdmH-Q_eMWtbHpjp-Zs:APA91bEFKNQT1hW9DPt-X-0TFm8HmDzhfGD01ydsUYXVXZtJky-udUkuW0FZB0l4IDZ-hZ7z0TSPGfaHWLkLPI8VoKmE57sqpXxKRFIaeqmOstCrn1YmaeU7-mduztxKSgBY2dV3M0Py', '1', NULL, NULL, '2021-12-28 02:16:56', '2021-12-28 02:16:56'),
(280, 'fia1mshzSTu03cRqMfbAFv:APA91bGv_wcaKfTEKX_8KkrfCRJcDq-21Kf2vt5_np2ltI6o9Pe55rXwlqCMCgbsRgGZrbjGDDHmv964dtCytUTdtasuCEd-G8xXoUWGCsmwBPcfQLOjCoUEH56wrDPAlwZCrM_8DHiU', '1', NULL, NULL, '2021-12-28 02:42:25', '2021-12-28 02:42:25'),
(281, 'fia1mshzSTu03cRqMfbAFv:APA91bGv_wcaKfTEKX_8KkrfCRJcDq-21Kf2vt5_np2ltI6o9Pe55rXwlqCMCgbsRgGZrbjGDDHmv964dtCytUTdtasuCEd-G8xXoUWGCsmwBPcfQLOjCoUEH56wrDPAlwZCrM_8DHiU', '1', 70, NULL, '2021-12-28 02:44:01', '2021-12-28 02:44:01'),
(282, 'cgoGdmH-Q_eMWtbHpjp-Zs:APA91bEFKNQT1hW9DPt-X-0TFm8HmDzhfGD01ydsUYXVXZtJky-udUkuW0FZB0l4IDZ-hZ7z0TSPGfaHWLkLPI8VoKmE57sqpXxKRFIaeqmOstCrn1YmaeU7-mduztxKSgBY2dV3M0Py', '1', NULL, NULL, '2021-12-28 03:14:31', '2021-12-28 03:14:31'),
(283, 'cXCIr15NRta1wyKUeICikW:APA91bHCBfa8WGBrJsTczHfSfWJKCHlucUGwbcFP0B9qVBibg_gH33Ppdg31lzoADkUcCyWNIPK8IYOoW1BrutdRG3H2F637SHMW_eSbFNc2PxjNSRDgmLhgTKq9hqqf7t-3uNi36qnr', '1', NULL, NULL, '2021-12-30 03:19:30', '2021-12-30 03:19:30'),
(284, 'dxqXFAisRnmdlcCRmHAi_3:APA91bGP-1eyFZNAcdiO-WazlHCrcJtudZUJd6geEZB5E_rIt39F-cQFeN6twG5dpkbS-g1jwssF6FiEJD-0BNugojyf3OQh53aePy64tEAzM8qTxbY_0nhqIm2PKFh6yYMhl1ahgjH2', '1', NULL, NULL, '2021-12-30 08:29:43', '2021-12-30 08:29:43'),
(285, 'dg8quGmiTFebqiteQnV-RE:APA91bGP2flVuBIsRWeq-01dFp9SFNORjoD8oorNHcX51llS0eagvk8ObZs7BxGXo9UJpPYSzJAIA1Pk8sHlUsLhiHHwfgG4oQVLpwJ27IpyFqa9Fs4yVwIipUzM7GsZXiiiZr0nBobs', '1', 1, NULL, '2021-12-30 12:43:20', '2021-12-30 12:44:22'),
(286, 'eNiNUXF6R1WDTsmr4lhhsi:APA91bEDDSUeBk5zgeKSE7GCEVnI5iR32p20pr64IT91bUDoT4GWOftszCc8US73FSpUrcn-pPsPidj7Obr7WyALZI9ZMBrC72GROdMhWUnMRgWj9Wwb4IPEItk86kXtRm3nkV56YWk5', '1', NULL, NULL, '2021-12-30 13:18:54', '2021-12-30 13:18:54'),
(287, 'fJ_cXS1iSOqVlNEV8fmbDl:APA91bEN-H3aMo5eTaNsgb9zV1rYulCBCnXmbo_n6VtoM3IuHJVpIeUi-qdUXrngEddED4yrvjGyyLcurpvHJ3SWlXfNwFZSbR0B3uQwoLmacq5lgbpieYKkfY_YhRA0Up4b3cUl1B00', '1', 1, NULL, '2021-12-31 13:46:53', '2021-12-31 13:48:18'),
(288, 'f8y8MLckR2m2MBsz8geHA4:APA91bGpFXB_QWhv-XfTrPr8CinTRAQLwImFtSp1cwAj9eAuZxrsw5YNadxISvRJJZZQztfEml9xzz2Bnmxn7mC-LkbGcav1xpXgBFm_Eu1_Vvh0r7DRhudBBk7mlc3WlyLrkVuS1nYW', '1', 1, NULL, '2021-12-31 20:31:26', '2021-12-31 20:33:50'),
(289, 'fDsb0uWMQriCmeO3z_nMve:APA91bHfoDGOSQ_zobiNRap9UGDm9mL4k5MkYoAD0D7AiEKgADcgtS1fZZHfjFoOiuTkuoLd_0ZJQCbvR3bKCj2nURV_KGlSGzULgj5_-8mdEZ1CB1GBtfRkUTtTfOkTRh4cyhMfT_n8', '1', NULL, NULL, '2022-01-01 12:14:36', '2022-01-01 12:14:36'),
(290, 'fDsb0uWMQriCmeO3z_nMve:APA91bHfoDGOSQ_zobiNRap9UGDm9mL4k5MkYoAD0D7AiEKgADcgtS1fZZHfjFoOiuTkuoLd_0ZJQCbvR3bKCj2nURV_KGlSGzULgj5_-8mdEZ1CB1GBtfRkUTtTfOkTRh4cyhMfT_n8', '1', 71, NULL, '2022-01-01 12:16:43', '2022-01-01 12:16:43'),
(291, 'drnw6dnhTDWmdeQoADtPYV:APA91bFhtrTZ9PpZi8_sYYtUxLC1YKM4CJiqoVztFsSZrq0eKGYbvhXdyE_PEzCBo7ixmedQM2DP_-MVzRW4TKAh_LCTMzAsZ4dO0sDnvGTKU3tnH9HWeq2FufMnWEe_O_oRBD0O1TS8', '1', 2, NULL, '2022-01-02 10:59:31', '2022-01-02 11:08:35'),
(292, 'eM-6UGOJQFK42rEPoueATj:APA91bFInW6TjNpYadQAbfBhmJMplFjhF7DaH2pbFBe9pQdLOXjEQi17eLpTlgLApZjySA0HauQiQlbAyujEvUvxVf5E2WzEWEUYAgfPhao1qR-JSmJgL2_7V_u2AiSgXFNL9r8Nmk-0', '1', NULL, NULL, '2022-01-02 18:43:10', '2022-01-02 18:43:10'),
(293, 'eM-6UGOJQFK42rEPoueATj:APA91bFInW6TjNpYadQAbfBhmJMplFjhF7DaH2pbFBe9pQdLOXjEQi17eLpTlgLApZjySA0HauQiQlbAyujEvUvxVf5E2WzEWEUYAgfPhao1qR-JSmJgL2_7V_u2AiSgXFNL9r8Nmk-0', '1', 72, NULL, '2022-01-02 18:47:40', '2022-01-02 18:47:40'),
(294, 'dLjeiyn5SE2axFZi3-Gcss:APA91bFfWgC0uuBahczq82Sozp0fpyTEn0Jt8h6vgcaXowqjKdW8ey1quybyIEQPVVzY6zESJHKmzXyWqyFOx_y8xtFZ6lJlW47yNFIDucHZz0O1dGCAx0zjm1PC1LNtHozVy0ynTaMZ', '1', 1, NULL, '2022-01-03 03:38:41', '2022-01-03 03:39:34'),
(295, 'eUXsvq3xRNaxf0dp5oM7b1:APA91bEVZQNffb69Tf5Y7SiCWZJMkxJ_QBymI_bs23C3t1r2Sq21vq7wL-ztStl5kIby0cqAkZqI4VdSAM3s9m0PBXJBz4BP9aHr75KgLBJAh_5X1ulK6Ix4gje40nEyTto9vS2cWR3-', '1', 93, NULL, '2022-01-03 12:52:39', '2022-01-22 08:14:56'),
(296, 'eUXsvq3xRNaxf0dp5oM7b1:APA91bEVZQNffb69Tf5Y7SiCWZJMkxJ_QBymI_bs23C3t1r2Sq21vq7wL-ztStl5kIby0cqAkZqI4VdSAM3s9m0PBXJBz4BP9aHr75KgLBJAh_5X1ulK6Ix4gje40nEyTto9vS2cWR3-', '1', 73, NULL, '2022-01-03 12:55:10', '2022-01-03 12:55:10'),
(297, 'dOC2vzddRWKgTvi3er8AZ5:APA91bE_51K29ukcG8g9wIoHGDmY6iEWZjAvdfR0qddNavpvSqp7pogVyaNe_Kbb-j7qNGM3DJ5ujtttKdGpvdYvcSzUqmwECBY8Yu-HDX4YLOUgfMffSsL8UiaJ8bblP1DGhxu7vEhD', '1', NULL, NULL, '2022-01-04 08:38:08', '2022-01-04 08:38:08'),
(298, 'dOC2vzddRWKgTvi3er8AZ5:APA91bE_51K29ukcG8g9wIoHGDmY6iEWZjAvdfR0qddNavpvSqp7pogVyaNe_Kbb-j7qNGM3DJ5ujtttKdGpvdYvcSzUqmwECBY8Yu-HDX4YLOUgfMffSsL8UiaJ8bblP1DGhxu7vEhD', '1', NULL, NULL, '2022-01-04 08:38:21', '2022-01-04 08:38:21'),
(299, 'dOC2vzddRWKgTvi3er8AZ5:APA91bE_51K29ukcG8g9wIoHGDmY6iEWZjAvdfR0qddNavpvSqp7pogVyaNe_Kbb-j7qNGM3DJ5ujtttKdGpvdYvcSzUqmwECBY8Yu-HDX4YLOUgfMffSsL8UiaJ8bblP1DGhxu7vEhD', '1', NULL, NULL, '2022-01-04 08:38:48', '2022-01-04 08:38:48'),
(300, 'dOC2vzddRWKgTvi3er8AZ5:APA91bE_51K29ukcG8g9wIoHGDmY6iEWZjAvdfR0qddNavpvSqp7pogVyaNe_Kbb-j7qNGM3DJ5ujtttKdGpvdYvcSzUqmwECBY8Yu-HDX4YLOUgfMffSsL8UiaJ8bblP1DGhxu7vEhD', '1', NULL, NULL, '2022-01-04 08:39:28', '2022-01-04 08:39:28'),
(301, 'ctp-Xr_RR9q0VO79BUQ7-e:APA91bHnSgd1G4MG2yomtV2fuXIR6oIbxgC-LqLh8LQIBe08N8yJxYkQGuqMssHUzcQh-KDEnsrRFpXZxZAx6aFg5uQ1GPTy67FMiQ8JdLt6AM2NuDNDWx1Q-OVojYsZ5T_IaLW_IHWn', '1', NULL, NULL, '2022-01-04 13:27:50', '2022-01-04 13:27:50'),
(302, 'ctp-Xr_RR9q0VO79BUQ7-e:APA91bHnSgd1G4MG2yomtV2fuXIR6oIbxgC-LqLh8LQIBe08N8yJxYkQGuqMssHUzcQh-KDEnsrRFpXZxZAx6aFg5uQ1GPTy67FMiQ8JdLt6AM2NuDNDWx1Q-OVojYsZ5T_IaLW_IHWn', '1', NULL, NULL, '2022-01-04 13:28:45', '2022-01-04 13:28:45'),
(303, 'cW9b0drNTsy9ZrMWQLw9We:APA91bFH4YgQhjHx2088yVTm87UyoYtWFVDwh9LANQKlLD4b48LwAuVIx9RI0WmCNFaeCnGo7GBwSXm6drIuXCtxMyuf7xO-Nh8jQQYIvWNix4pzKM9aiX1MZDnzecKeVk3T70bibeeE', '1', NULL, NULL, '2022-01-04 14:11:51', '2022-01-04 14:11:51'),
(304, 'd0_vM2U1Trqka4WdS4BP63:APA91bEikPSKFEoPqwyKn66uox8hCbsnQgFxXx8g5vmEbS4qRbrkfwbRWyoM7ZNr4WOF_Q2OS9PBBEulaNnQDHi1RtXwaqgS1DpBk4xpB2-QulPeNtnZf1dAR3-5OQwD9GdFFptIm8JY', '1', NULL, NULL, '2022-01-04 15:07:38', '2022-01-04 15:07:38'),
(305, 'flb_1WGRRMCU5WAj32dAKN:APA91bEQUZNNUWoSp2BVta02km3tnypa8-O195Ne6mbCW-E4-1Bj7qlHrbidOKGFwXm2SjWwxnDzaKr6prkVPoA5TrlBiz7SmRCFs4BHJGv6WQk0US9YWWy1nV_6j1RLknufsZA2i5w-', '1', NULL, NULL, '2022-01-04 16:17:56', '2022-01-04 16:17:56'),
(306, 'flb_1WGRRMCU5WAj32dAKN:APA91bEQUZNNUWoSp2BVta02km3tnypa8-O195Ne6mbCW-E4-1Bj7qlHrbidOKGFwXm2SjWwxnDzaKr6prkVPoA5TrlBiz7SmRCFs4BHJGv6WQk0US9YWWy1nV_6j1RLknufsZA2i5w-', '1', NULL, NULL, '2022-01-04 16:21:59', '2022-01-04 16:21:59'),
(307, 'd0_vM2U1Trqka4WdS4BP63:APA91bEikPSKFEoPqwyKn66uox8hCbsnQgFxXx8g5vmEbS4qRbrkfwbRWyoM7ZNr4WOF_Q2OS9PBBEulaNnQDHi1RtXwaqgS1DpBk4xpB2-QulPeNtnZf1dAR3-5OQwD9GdFFptIm8JY', '1', NULL, NULL, '2022-01-04 20:34:38', '2022-01-04 20:34:38'),
(308, 'cty4p_6oS3uAi_OZtKqvN1:APA91bE8Pd7FxWiJtXkdMc0eEqr8fP32MIL1SDrws3AWQEJGgQcS8453hbJKBh4uc5ZXPGzgSpw6QXb4ftmpE_0HvowkXfQ_7Ll4A5M1eN1rFluilSKTyjWyveht6E0w3FzBebAaR8l6', '1', NULL, NULL, '2022-01-05 15:57:57', '2022-01-05 15:57:57'),
(309, 'cty4p_6oS3uAi_OZtKqvN1:APA91bE8Pd7FxWiJtXkdMc0eEqr8fP32MIL1SDrws3AWQEJGgQcS8453hbJKBh4uc5ZXPGzgSpw6QXb4ftmpE_0HvowkXfQ_7Ll4A5M1eN1rFluilSKTyjWyveht6E0w3FzBebAaR8l6', '1', NULL, NULL, '2022-01-05 15:58:17', '2022-01-05 15:58:17'),
(310, 'dvIuQiyuRbm3ViYko2S8rQ:APA91bFM27M1FrJe5R7vWWPDEZzgXkIfqphHX1vjB94_G8SCz-66Nd5e718-w5B3wpUb9QBfPXGFZLIjXVcWc5rbvffwFc56l-6XJj0zxsOzBgRVQmpb4I9R2dtgZpHKp96Ls6pxRxYj', '1', NULL, NULL, '2022-01-06 04:39:33', '2022-01-06 04:39:33'),
(311, 'fqnJgRxkRFyEpOFHF12Xg6:APA91bF6gNkARGMGeKsLXkvW6dak6RfsdwM8VseW2bvGDD8g6mFkNo8PC28FuxrDoPZUhSoMTp8udR-AVYyDvtXoQNVeG5ApRWs48afUAna7L7_1mcZ9Kz3ilh8mJdofJWS5tYdgdyXn', '1', 28, NULL, '2022-01-06 05:02:42', '2022-01-06 06:51:00'),
(312, 'fqnJgRxkRFyEpOFHF12Xg6:APA91bF6gNkARGMGeKsLXkvW6dak6RfsdwM8VseW2bvGDD8g6mFkNo8PC28FuxrDoPZUhSoMTp8udR-AVYyDvtXoQNVeG5ApRWs48afUAna7L7_1mcZ9Kz3ilh8mJdofJWS5tYdgdyXn', '1', NULL, NULL, '2022-01-06 06:06:35', '2022-01-06 06:06:35'),
(313, 'abc', '1', NULL, NULL, '2022-01-06 06:16:52', '2022-01-06 06:16:52'),
(314, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', 80, NULL, '2022-01-06 06:17:03', '2022-01-12 05:15:42'),
(315, 'fqnJgRxkRFyEpOFHF12Xg6:APA91bF6gNkARGMGeKsLXkvW6dak6RfsdwM8VseW2bvGDD8g6mFkNo8PC28FuxrDoPZUhSoMTp8udR-AVYyDvtXoQNVeG5ApRWs48afUAna7L7_1mcZ9Kz3ilh8mJdofJWS5tYdgdyXn', '1', NULL, NULL, '2022-01-06 06:44:22', '2022-01-06 06:44:22'),
(316, 'd2rNhd9CQMquV_IFRALjBz:APA91bEZvjIyHsovVXk_tJOi3dEAUUmlYY84jkR8Bm3uoPONH26gPN9VBm85EzuU6nQ10Yi7aHBw13zt6TQ6zRJrwhKWytUsJNVPwn8qS6sBNwutskpHuePmL_qJUOUYgxRf6rNB0WJI', '1', NULL, NULL, '2022-01-06 06:50:16', '2022-01-06 06:50:16'),
(317, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-06 07:06:04', '2022-01-06 07:06:04'),
(318, 'fqnJgRxkRFyEpOFHF12Xg6:APA91bF6gNkARGMGeKsLXkvW6dak6RfsdwM8VseW2bvGDD8g6mFkNo8PC28FuxrDoPZUhSoMTp8udR-AVYyDvtXoQNVeG5ApRWs48afUAna7L7_1mcZ9Kz3ilh8mJdofJWS5tYdgdyXn', '1', NULL, NULL, '2022-01-06 07:09:35', '2022-01-06 07:09:35'),
(319, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-06 07:27:10', '2022-01-06 07:27:10'),
(320, 'fqnJgRxkRFyEpOFHF12Xg6:APA91bF6gNkARGMGeKsLXkvW6dak6RfsdwM8VseW2bvGDD8g6mFkNo8PC28FuxrDoPZUhSoMTp8udR-AVYyDvtXoQNVeG5ApRWs48afUAna7L7_1mcZ9Kz3ilh8mJdofJWS5tYdgdyXn', '1', NULL, NULL, '2022-01-06 07:33:01', '2022-01-06 07:33:01'),
(321, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-06 07:57:08', '2022-01-06 07:57:08'),
(322, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', 75, NULL, '2022-01-06 08:01:59', '2022-01-06 08:01:59'),
(323, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-06 08:04:59', '2022-01-06 08:04:59'),
(324, 'eHI7dD88SQ-ZbhK3VRARne:APA91bHZ3fG4JTYiqokoAJ27ZTXS2g_GmLciS-DlRC9lOIQJGiRmaUlnp7nfhFQq5LP2JbtL6rBVE399QgTzLe6Vwx8XBJ0TszUeB99tNy39OS7sjjnb2Gc0lhh-CAdpdyoB-rarrPni', '1', NULL, NULL, '2022-01-06 08:32:57', '2022-01-06 08:32:57'),
(325, 'dmYfA7kaQUa3-Av-pT1wh6:APA91bGlssmYkaeP8l9bsTPSx_VDgkeBI3QISNb6iMI-k99C5rBFKD4j_TQTmDYxBed4F_lpLArvkvl6wugVeWxtdkxnJC7ir3SeEl5rxuU-8wtroGHdS9sOeuOJ7fwNYvdgie84YXvx', '1', 13, NULL, '2022-01-06 09:11:38', '2022-01-06 09:11:55'),
(326, 'dmYfA7kaQUa3-Av-pT1wh6:APA91bGlssmYkaeP8l9bsTPSx_VDgkeBI3QISNb6iMI-k99C5rBFKD4j_TQTmDYxBed4F_lpLArvkvl6wugVeWxtdkxnJC7ir3SeEl5rxuU-8wtroGHdS9sOeuOJ7fwNYvdgie84YXvx', '1', NULL, NULL, '2022-01-06 09:13:10', '2022-01-06 09:13:10'),
(327, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-06 09:26:42', '2022-01-06 09:26:42'),
(328, 'flW54j4BR3uxxKPWECCTOS:APA91bFyjnsBvI5hwMoP97i5hGIBD40XRgjHHatwRwY2J4w1omk6bGynpqQiol6caot3OKTg9hFb0lK9WgxT7ewdo-scnxmHldAK__Pp2eVv96_fZhql6ZQkgL8gv2_oD9UmFdRCuoxs', '1', 77, NULL, '2022-01-07 23:48:36', '2022-01-08 00:05:17'),
(329, 'flW54j4BR3uxxKPWECCTOS:APA91bFyjnsBvI5hwMoP97i5hGIBD40XRgjHHatwRwY2J4w1omk6bGynpqQiol6caot3OKTg9hFb0lK9WgxT7ewdo-scnxmHldAK__Pp2eVv96_fZhql6ZQkgL8gv2_oD9UmFdRCuoxs', '1', 78, NULL, '2022-01-08 00:01:00', '2022-01-08 00:01:00'),
(330, 'flW54j4BR3uxxKPWECCTOS:APA91bFyjnsBvI5hwMoP97i5hGIBD40XRgjHHatwRwY2J4w1omk6bGynpqQiol6caot3OKTg9hFb0lK9WgxT7ewdo-scnxmHldAK__Pp2eVv96_fZhql6ZQkgL8gv2_oD9UmFdRCuoxs', '1', NULL, NULL, '2022-01-08 00:06:21', '2022-01-08 00:06:21'),
(331, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-10 07:04:10', '2022-01-10 07:04:10'),
(332, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-11 12:09:10', '2022-01-11 12:09:10'),
(333, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', 80, NULL, '2022-01-12 03:54:19', '2022-01-12 03:54:19'),
(334, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-12 03:58:21', '2022-01-12 03:58:21'),
(335, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-12 05:06:23', '2022-01-12 05:06:23'),
(336, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-12 05:18:11', '2022-01-12 05:18:11'),
(337, 'flQBb_I_RtS-6DxEPSiscI:APA91bGsvHOU8TZbeNdZ8KXWab1z489COxQorGkcQ4Xaqho7qyfoESMe44YbzmofJIGkpt1_bqiucLpeoBGIrZEqjYiRUUPPWd0i1IBVfSQA8v26zwjcfk8Y_C8d5CWGF1jw7Ix2h2_i', '1', NULL, NULL, '2022-01-12 09:38:24', '2022-01-12 09:38:24'),
(338, 'eHqY_MCkQMmf8DovESM9ou:APA91bFSeJnqKSazVrZ_ugwyHF5NbmL3GHnvYYVBYGQgD85DHXTsBCDNefZyqxViQcyGJBs_Ddtn2NH7G2dwgjYtOOnlkEgx-jnlE9Znc1DD3PrNm2x7wyQL-VHC5kxUKDqZg43WwyqF', '1', NULL, NULL, '2022-01-13 05:37:47', '2022-01-13 05:37:47'),
(339, 'e3RMU-QfT_epiCvxwNd67L:APA91bETzXMgT-HL7awrddOxqjRPETM0wz8fXEK6EnSUqN7Gc2DlpZdJdYSAh7AUzFQbLrYPG5w9GRTAFLpoLd99SAvGTtfwlb4o-D4AGIdjduZmkgR7xfBUYUgjUfplL9zHMDK-QRXX', '1', NULL, NULL, '2022-01-13 05:41:06', '2022-01-13 05:41:06'),
(340, 'c1EmmjqHRJG4HOgdfGaRXg:APA91bHE1ZZA0aYURtvO39vWZdjaFqKva25GE3IS3KlmTg1t-Iwet_14mOOyOfJEQCvzInt8QMlP43RCHEmCRpH9muGjZgnFwhi4p5amO5fMirzrilhffR4d7ZeqlgmHLMc10-iAosdf', '1', NULL, NULL, '2022-01-13 05:44:34', '2022-01-13 05:44:34'),
(341, 'fXTghO8kQEezQHQrnOwSf3:APA91bGpJjosVgpxc_H0pPhA8jn2saJ2Xdl037gaF4lFDdmCVJEJ-GSbgYhZHeAqOz1txUEy3Ycqxi7BeMFvc5Wn861AAroa12A6mML6QI4NYqOJ_CThWDtXbF_Np4Fp1dWfkVvZaKAs', '1', NULL, NULL, '2022-01-13 06:34:36', '2022-01-13 06:34:36'),
(342, 'f79JKSdbRiKYaM9XrFNbIN:APA91bEMqQ9MzV1R0AgYUbd08d1vzEmw0n_jfZFdRfVyeavfHphpY7rymlz4gp9n0xA80zvJKX-cw13cAq6g9Yye8ZzYGt8EyP1dmb6VaJVW0Mme6g2QQTH1PFTGu8mNJLTOvGnhm9GK', '1', 74, NULL, '2022-01-17 09:54:00', '2022-01-17 11:47:45'),
(343, 'flb_1WGRRMCU5WAj32dAKN:APA91bEQUZNNUWoSp2BVta02km3tnypa8-O195Ne6mbCW-E4-1Bj7qlHrbidOKGFwXm2SjWwxnDzaKr6prkVPoA5TrlBiz7SmRCFs4BHJGv6WQk0US9YWWy1nV_6j1RLknufsZA2i5w-', '1', NULL, NULL, '2022-01-17 13:30:42', '2022-01-17 13:30:42'),
(344, 'fZANAQbpS--m31oZItNYHX:APA91bH5EfNDr3A7WKR1Ra-K0IjccXuyOiAKUA2IJRri5fQDurP18dt2zM5tGMS4zXZy-W2TZpK1hlHttTpN_sPiVw-9E5Ndj6-Vj6Db7tHq98KStEmkrmJH9tu_uwhvIrpV0RnxLPlh', '1', 81, NULL, '2022-01-17 19:11:01', '2022-01-17 19:11:46'),
(345, 'f3NBO6inTiu3_grmiTFhb9:APA91bEUIHUATE6Q6IogsVGb3p6f-aQzs6mF4F0CMSZgegImrhlB3BMBZxnlboEls0uGXZpoBDI2rEQfwZj6Pu9_kyyNq1yfOz9OszvYycwTtTqJ-SEoVfEPVPy3FEd-7U_2cf0AYddZ', '1', 82, NULL, '2022-01-17 19:28:51', '2022-01-17 19:29:35'),
(346, 'e383Hl9hQeSFL8iWooYQp7:APA91bE0bAzLvT0ONLapej8AElbXVg0bkkfFBvKRaLBobSC1u7ksCu77n_0FIoxJmfit7lOPwn29AKMdaZW__JRc22qZ2ItiXRi6Z0coYhSG7LEGZTQOPvP68DAGbbkYQP2UcthcKSoZ', '1', NULL, NULL, '2022-01-18 00:22:05', '2022-01-18 00:22:05'),
(347, 'fgzBJi_LTQ2ge3VTA9djqE:APA91bFtoi5BTjutR-3msQX_ts3mwb7CMwtRsl84HQMJVMWUnlgEhqiAh68MfMyLHMvyrnUlQkfjBfq5BR98BcgRBAkrB0KwuYBuz-9NNu0XLqzkwamdlSkF1hpHupGgGtfrUJiqFBSC', '1', NULL, NULL, '2022-01-18 01:47:55', '2022-01-18 01:47:55'),
(348, 'caODuiHTR0aS10lHU4sc1O:APA91bF0MU7O3uN4LF8vaBI3ka3dzkL9shlezj4Jow71ZHxhc9lqhdUJe5fOl7SY-b54T8DRxiZc_c8B8E656bRZCd4TAhCONy5_9cvhsNCwJZlKjLEd55XqR9qn6HhSYrjb2bTEX7K8', '1', 13, NULL, '2022-01-18 05:39:30', '2022-01-18 05:40:07'),
(349, 'do4XBv1VR_efqcDfX9Xx4c:APA91bHZNB59tFeKMpHHOllbHb9KJXX_TFfzQX0BMc-NsAStIRGdJjt3p9pQj-6LamdrNHLOx-Naq5jNMIpkAKaTfN5RksE3TfLp7k-p10yaFNhd7xzutjuxaoSLjavL9Sojlc5D5MoH', '1', NULL, NULL, '2022-01-18 07:06:01', '2022-01-18 07:06:01'),
(350, 'e3S5jhPsQCWYsPQlCNX_IL:APA91bHI7Cbj-H4ZNynZtl-mhNqpZO7_JaX6yp7yiUOCuHW9cmpOi-u0FMPteNWc6GKyeQvaA-bnXy9qSnvERlfOSePQ7nCzIDjpLesFy8hA8Ew1Yu2ESwU2Nibuqq6bMlA7H-pYjThL', '1', 74, NULL, '2022-01-18 09:15:25', '2022-01-18 09:16:00'),
(351, 'clj-c8MkT5-2cfech3rn2R:APA91bHcIWIh23NinzNRw33EkPTsOuDsi8ZGqJbvc7twdWKopjv753AvX4JllxBV29-Shv9shU73AduMXeBd95_bigR8cIo3uYpJQRF_xaBzb0Lt_gHO_fp7JLkImTn4UW82SFIpifXC', '1', NULL, NULL, '2022-01-18 10:47:52', '2022-01-18 10:47:52'),
(352, 'fG8DAQbLTiaPMHKXYJ-lGh:APA91bExuztfSDbhTGPQ0CP2XSspd5Z05qcE2jAVPh4h-rgDxBz9JIHT35BCgS23PiRH7dbvKydNm-xUpPLqyxgICiBPHHJG_TLgeP0Lf4BoC0Xky_Le6fR7kZYPNgAS3NEUAVpqSGuU', '1', NULL, NULL, '2022-01-18 12:19:31', '2022-01-18 12:19:31'),
(353, 'cLZfxHLTSoasxFl7dKYV89:APA91bFG_tpnfRO3GzL71nDlh9HXaqkBu8pCO7Oai9z9orYTV8-Mw2VzpfpxjhimmTU_wpl3f04mUdidVKwgG0twZiCBaotIcuUJ7FVu3L941oATkaTY9HApWwtx1jgr_mqcYaD27qoA', '1', NULL, NULL, '2022-01-18 14:42:17', '2022-01-18 14:42:17'),
(354, 'fBEUdsrlTWue1cAeO-ZU8A:APA91bGfeOGItFc4xEURW0rA8KLOd1-YsG09Z2SOd-f_mZiZUEnugluwM1r22cj8qoYrq8o_fUA0AvxBirp2fmq5-TBMTq5sBkg-KPniCXLBLFZaoeO4Y_5HrADRPGWbqKOy2GM4EJqm', '1', NULL, NULL, '2022-01-18 15:13:35', '2022-01-18 15:13:35'),
(355, 'dmAbM-PJQGaXYEr_XIwfEk:APA91bH5ZFxEd906FHYYKlJTzGTsQoTfofqK9HXkgR94HIKAWO_peIjV6776xibz01yl8cYR31ehJNA1Pe4On9G1EuVW7ZV6SsQGMjWWUmxXFXgS5dVykR2H853J3YyDSzjr_tPjw4fX', '1', 84, NULL, '2022-01-19 01:34:01', '2022-01-19 01:34:21'),
(356, 'dChndNoXTSmzAMU7irfqDM:APA91bEBfPXSXG07K3IOVL9AdqtMykW1iH4jjoYkkcYjwaHE0mvn9iRqIztV2QXZPed5HDLRtKNkj6KKmG6lXySt2PMJlYcpzclVBSGTFEBoXdfzEwwC_k4caVqkDqbkudsOKvSrsZmn', '1', NULL, NULL, '2022-01-19 02:43:28', '2022-01-19 02:43:28'),
(357, 'cP6J0eZRRUmZVLOKViafjm:APA91bEoye0qM0Pc4QBtaA9ZHcepUdZF-FWHdGY5MxK8NAkQo4bek4WvUaN-dvXB3aU35kVce8Q0s9qJSd1FlotbVeS5nznPRK7DRXOHUYH0zGq2mMphkGbsd7692HM-fqntBGoSXu5T', '1', 85, NULL, '2022-01-19 03:41:04', '2022-01-19 03:42:00'),
(358, 'cBaorwJxQlWTA40jVitlPF:APA91bFOM1KezMkFbvsu8IojQ-3Ql4hNo3QslEhtGxvx0MFnC0yQH4bDRcuGLcodPQtaNiWML7LnpGzULPKD3Hc0pjIURZJ645bk-PL53g0nUFvFtX-CUDLXMp_Td85f4D3JHiXClbM_', '1', NULL, NULL, '2022-01-19 06:06:02', '2022-01-19 06:06:02'),
(359, 'cOSNhrZeQU-N2Vj0GlQpOz:APA91bF5PSReuMp1SHt7a8bWAvV9mxwm9Y68DGZN0OgrTrBqEkRidNoZ4oABTk1tZkrPZamoH7fElyhc5SQV404TjhNQjAFOT8_lE63MOQ203bk00QC308AUdorMBovXlo-iiw3c4lpK', '1', NULL, NULL, '2022-01-19 06:23:09', '2022-01-19 06:23:09'),
(360, 'cmZB-H5lRyaCcNo2FDPj5c:APA91bFOeeQHUzyUKPQ_YGyFlKXQ9RfszwtnW_SIZcJKjK23UA6st6t37MY7Hdhmh_JdHOpRI-Z_Hu-uHRNtAMNLCJCHoAEzAXD3it_oLMtJq48qhATPyAwNyjtydWyLg-swyrNbHWdk', '1', 28, NULL, '2022-01-19 09:02:17', '2022-01-19 09:08:08'),
(361, 'cueMXpPGSGaGy4J7tLkAwb:APA91bGhGideH_bX0pbVlC_x--BWcUDfRajqDxzyHFLKHOdzvUOsizffcrR6K4uVylyUSEzpTkfdMf2emA-bGF3jdl8W6ldo0W6iSS23J5jNg5-gqwO0VO_3zK_8yVlMXni1E27kAl_G', '1', NULL, NULL, '2022-01-19 10:38:04', '2022-01-19 10:38:04'),
(362, 'csBNS_GpR7KfiO2RnJohT-:APA91bFuGMPHXDI91WRH6Ns5HAAmbvTfYOgg8x8Je4uchZzsISgFjuxavbKt4wQUTD019SCqkHUO3mY1vPtWBcNTPbrWNdP46nx_1v--E4Sg7JnzDHBn49eby2Q_biQJLH7S-BoxMcY0', '1', 86, NULL, '2022-01-19 11:07:48', '2022-01-19 11:07:48'),
(363, 'dGO0EUdoSgGkUCBASSWOrr:APA91bGdHdxr_wqvUSuTtMvIaeFz9afbc_KY-1gig1lRljXpUb4zCcUdb8Ns1tVP_4-hbqsmnkKwcPv4haJjwwnkfRRH-Gf1P8yUlm33K1IK36PSxqEQ_GCDGJFyl3PgIO0VqONcbwhu', '1', 1, NULL, '2022-01-19 11:44:46', '2022-01-19 11:47:08'),
(364, 'enQdGvsUQdCuQnwJft09VC:APA91bGiEyZmzY8DBxUGDt6BGCjNGGjj13VATgBbGmpgh6zk2uxZpEppI0TypD6XQO6sehRfhek66SZCXyl21yHbVxRk3e-g5AyccLOAFtvhLwA8vBXv1Ey-1GmlCA6Ss4rgtLTGN7NO', '1', 88, NULL, '2022-01-20 03:16:52', '2022-01-20 03:17:38'),
(365, 'dGO0EUdoSgGkUCBASSWOrr:APA91bGdHdxr_wqvUSuTtMvIaeFz9afbc_KY-1gig1lRljXpUb4zCcUdb8Ns1tVP_4-hbqsmnkKwcPv4haJjwwnkfRRH-Gf1P8yUlm33K1IK36PSxqEQ_GCDGJFyl3PgIO0VqONcbwhu', '1', NULL, NULL, '2022-01-20 05:22:18', '2022-01-20 05:22:18'),
(366, 'emYdDroJSn2VTtGrjOrz9T:APA91bEGJWADV-WX4Z7YtkVa3FHCt1JLrU0l-EqWIEU5R6Jk85rZpZLyeqjHRPN6_h_VhqpOQfzJNpMFhtziA01GXl1cBnew7awptdiH1mb4BtiOUiKz9-v0PIBwm079NdgFIVs1diqK', '1', 28, NULL, '2022-01-20 11:04:36', '2022-01-20 11:06:23'),
(367, 'dumVTfEyStOrKXxCUD3xuF:APA91bF5cv-vN7Q5WmLMBpDZf3CuN7WxvV1DVOjzXA8WU_ixE9k_HY83Ewu_7sjZ6X2hj09CAPs-pytXOn6H3wnhhTnWzbDx8VAG0s2zbtML-nde9_hbYMgE4kq8j5YNRQvWqmGl_Dh_', '1', 89, NULL, '2022-01-20 13:20:15', '2022-01-20 13:21:21'),
(368, 'd-xF7KWARcOvNuV7kLUb0r:APA91bEU3QL9j5AeCuu1KDpVmIlLBCWbVeVqhdZesk0ROeXaRvYmznMpTWAIih3Il1YfRFlCQR_YJVmdxi_JLHyiiliPnJnfAw4wI9aMRqFKJhL4nHH-Z9Uucw_gyxEd0g9DLrmXmz_U', '1', 90, NULL, '2022-01-20 14:05:42', '2022-01-20 14:06:08'),
(369, 'cSWMerqGSSS_6M2nY79tyW:APA91bE4Ha2nkKJe0i5_KV-ZApSeIFZJaqNg893vMDfReOQtJuP8FAejAL79N3C_Xha_CxvmEfBKNvsbMERIhNBzbjoVOYnG7ECZ19x0g9U0S9T1yqn9RxF1Y-EPzc4_nlTwKmH2LPk5', '1', NULL, NULL, '2022-01-20 17:29:44', '2022-01-20 17:29:44'),
(370, 'cSWMerqGSSS_6M2nY79tyW:APA91bE4Ha2nkKJe0i5_KV-ZApSeIFZJaqNg893vMDfReOQtJuP8FAejAL79N3C_Xha_CxvmEfBKNvsbMERIhNBzbjoVOYnG7ECZ19x0g9U0S9T1yqn9RxF1Y-EPzc4_nlTwKmH2LPk5', '1', 91, NULL, '2022-01-20 17:31:37', '2022-01-20 17:31:37'),
(371, 'dQffYOkfQvWnsnyf9idua_:APA91bFWIFK0_ZdhOhCYTyX6sfagJET7T64jzA8ytILPlmpFRB79xDcvMVI2_4bqru4-YZud1_jTjr8s9b-qVUFd1E7U1ScpX61gUu6MVKrRg-tIZsd7R2LJmX_Xyix05ustk4vP-vr0', '1', 77, NULL, '2022-01-20 21:53:52', '2022-01-20 21:54:18'),
(372, 'fuzl_4c8Q8mWRVbCU-Un0e:APA91bFD-21Qlm0vKMm8cSNdiHp9CP_HAUFj0MfA8z4nPfM3yM2KD0NeiEeJkjJjLdJq9AbmVwbI0Nxm5RgFZaWVCPKYrlLeVnvjElfrSjpkYLC-4TPDMDA0Txll6XG-NFwhhEAJ4d-8', '1', 92, NULL, '2022-01-20 22:36:04', '2022-01-20 22:36:49'),
(373, 'eGTwSbcsSDm3zNvsFXI-hV:APA91bGFLgC65p0rNBLuxZfpSTNILVkgaZahIzOQ53e4ekytmXNO7iZDT4rjxuFEUpKIajHSwChpDQhyWlmTZWTGGFH2rxJKf05lieHnajmr1F-JidIQOo39dDrmqurqKBVpSIyfrUko', '1', NULL, NULL, '2022-01-21 14:19:03', '2022-01-21 14:19:03'),
(374, 'eUXsvq3xRNaxf0dp5oM7b1:APA91bEVZQNffb69Tf5Y7SiCWZJMkxJ_QBymI_bs23C3t1r2Sq21vq7wL-ztStl5kIby0cqAkZqI4VdSAM3s9m0PBXJBz4BP9aHr75KgLBJAh_5X1ulK6Ix4gje40nEyTto9vS2cWR3-', '1', NULL, NULL, '2022-01-22 08:13:57', '2022-01-22 08:13:57'),
(375, 'c5uwLv1SSY-nerUJyjAn80:APA91bFnthbySFETTAAyzYX6Osbs4L4PaqO44y29q2T42FGwHn9eHbJ7bxu6XgxxAekLBzWIK6RNR8K_RBdx9OkneN9ECWsRGJXYeuQTikKU-4frwD_AzUMtAVWxVAvyp8J99DLaJ69M', '1', 94, NULL, '2022-01-22 16:30:22', '2022-01-22 16:30:57'),
(376, 'fxJxTCSYTAuU0ZauXPiDeH:APA91bHDS0glr7qP1cNgrXnZXUwyclYj2iP6L7F1AQY0HOU5u9CftRebXbnCrHyNLCEuDJcrt_ga2M4hHrj5CnZkmuClD1LAhcK11cszGpi_RSh0ebr2DASWMwe-6J3Px09rjyySAtlr', '1', NULL, NULL, '2022-01-23 16:30:10', '2022-01-23 16:30:10'),
(377, 'eLPhnkI8TcaE8KLoRFHPdw:APA91bFjrFRrsNlFHzNF83sS7KdisAp-yiPBMzCiDvQRLoKb1A8p_sSPyexPL2lu_KxQGWYJf0Fv4YR1KK_ogzmqeuCWMOTmw6ujbEup6yZ1ZrlLETpwZ7pWFna75bWETrMTSDv1DVKX', '1', NULL, NULL, '2022-01-23 22:23:43', '2022-01-23 22:23:43'),
(378, 'cwWRPM44QiOplznDsvS-ut:APA91bGnlY1zNwOFBl2Ubaxqx3twN2feQrvGDhthoR7j2z0rp0ahZV3Y2udIa3YJ1-Y1DLYsP9Yrk4_0cZb9TWOxFVaDdK73787xpzupxK2N4BdMrXFO5xCckE6iYj4DjClXK67vDYT2', '1', NULL, NULL, '2022-01-24 17:10:20', '2022-01-24 17:10:20'),
(379, 'dcKogZAhR-up5xrJDq7L6m:APA91bEnJxR2Im7XFVhGcAunjxA3G10hmVVRxMYwxzw8y6RRSNjiXPFJ3UGrHbogXF7J4nMVD7WDFpZ7A9QeYlwnkp3Sr6Dd7jpiFBJn_rAUJ2vr2qAgwiLp4rgEpQ8HYReBkocTT9jv', '1', NULL, NULL, '2022-01-24 17:48:40', '2022-01-24 17:48:40'),
(380, 'dQuFF4UWQH6avWOsOyr9Ne:APA91bGvCv7pA84-oY3CPmUoNMARb1mqhd2Kpp0-WjkTlKhYqiBQmQ1BbsZdoXH7qzg7TT5EhDmvUSW4GHhZ2wxUaUl-sd5bYG38nvNPPbMm-wI036aRvOX5xtoaEDnuyRefeyvzVN6i', '1', NULL, NULL, '2022-01-24 21:31:08', '2022-01-24 21:31:08'),
(381, 'ePMq25BfR2-IImr9VScekw:APA91bF1IJdAka8Ab17Fkrr2BusdYyKmCDxMot9EfarTwJsL8C-rz1VMuzkgczFPvFdzSuVZkLiItmpHikoV61dObARFsiRtUkKPgT8Ke-_l7pXj8bsQG7Sov2Xb1ft9FFPiYVHccr4s', '1', 63, NULL, '2022-01-25 04:09:34', '2022-01-25 04:10:22'),
(382, 'e1v60nGKR-6siOAqtqtaDf:APA91bGg3V8V6KSn16Rk_uJUqMlB6n8m1HFBkLrOLKKKuAsLb9_tATj4DhLdDbPqdjbrxJjF8uypoR0Tib3ZHlmAM0gfZFjJyvvUzFiMoPKdAYq5AHRI9kgiWk5TJMGLf2jhWywA6dkm', '1', NULL, NULL, '2022-01-25 06:38:24', '2022-01-25 06:38:24'),
(383, 'daRaUFNAQISAOVicc334vs:APA91bEQeRfWMUZV8NLxyy5Dt7sZJTKHonyAOBNaRs6Fb0rwzKEuWudvYFwu2VO8Kn8NUX_VWWeNnuaZq4YHbODH8_O9SSHFWgJA3BFGiym4LTbDfnUom_p6JEgqn9F2lpmw3TBUYAUu', '1', NULL, NULL, '2022-01-25 12:12:18', '2022-01-25 12:12:18'),
(384, 'f92U3fHITnqQUY9-LXAOK0:APA91bHMeUVj9Y9a8UDkCwkedywV_tCIHXrDhLasg3rlXBL3P7gP78eut3VuVnWMXddpKbXvGwvZm8Lqxot59iSLQ0X4GJhMaIh17dCxDploiT5uoHNLsk58XcXjKE9om0QZEGNEo8xi', '1', NULL, NULL, '2022-01-25 14:52:19', '2022-01-25 14:52:19'),
(385, 'f92U3fHITnqQUY9-LXAOK0:APA91bHMeUVj9Y9a8UDkCwkedywV_tCIHXrDhLasg3rlXBL3P7gP78eut3VuVnWMXddpKbXvGwvZm8Lqxot59iSLQ0X4GJhMaIh17dCxDploiT5uoHNLsk58XcXjKE9om0QZEGNEo8xi', '1', 95, NULL, '2022-01-25 14:54:11', '2022-01-25 14:54:11'),
(386, 'deRE1EsZTp2IyyIShLhW6f:APA91bE47k6YjbwfK5C10PEANR8DPfdJ8J5w6tMvNHa03bHECo7DWw7QT_5ErX_0C23Aj4mkxUdOt3fivTVzqAAkXWRRCa23KcU0M9myYwXbI5yx6NrdcBpeWjHV8JS-MXRHT1xVqZ7U', '1', 96, NULL, '2022-01-27 15:18:32', '2022-01-27 15:19:04'),
(387, 'cqWpKpFiTr2Q1h9DDUjUtY:APA91bFwCPrXsteBwoNEkVX-g1WLK3Cp5UOmyDcfdyvA0yD3KmVTpXimt7nA5pyuiInDWIMqtPIhy0ZDPj2Zrnw4Vv_Rzhb7L6l1BmQb1TclIqkTKK0J2fHRFYVbM4lu6Lz_dUVJVFBD', '1', 97, NULL, '2022-01-28 23:16:00', '2022-01-28 23:17:46'),
(388, 'f4qXfcJnQHOC21n0QVBnGS:APA91bHB3Nruxk-DUSbdXfJkCB6p9j0rSnSfpmiyo2AvTvtlBJ17clFlvIFzVAjVU-aeaFkguWFnaYuRLHJivMjLqI4IjjuBB3sFfHTMiv_i3YQjr2y-JXAp_3dEwCj7Xn3FbU2DVISj', '1', 98, NULL, '2022-01-29 19:56:30', '2022-01-29 19:57:32'),
(389, 'dM40lzYgRAy4NXLD1TzPih:APA91bFTOC5ft3qhs5D5qbjuEd2q8w3iMR5QJCDJY480duvPMw0jJjK4rEap6aEBz0WhXXqQTSjCbjIU_RZAGLo55JdnihHE0nafxN3wOlAoXVRssWwTyT7AZmPA1IB8akrJYtWdtpPI', '1', NULL, NULL, '2022-01-31 18:56:00', '2022-01-31 18:56:00'),
(390, 'dxBf4UdgSlaRl76wYYXTxa:APA91bGVn0BA_sQb5W07tYawJSi7CCo-Id4cAHcOKXHzaRzGFVyPgRtQ-sYB98jCcywaZRVS2cVGjSTq-svQ76dZJRJRRyfuoTdodgOM543UPx2M6CaZCN5YoGgpY0481F-FGGNDqd1o', '1', 99, NULL, '2022-01-31 20:31:07', '2022-01-31 20:36:59'),
(391, 'cnCyxOzQTZyCnW5qrIRSLZ:APA91bGio7oAbWqoM9478MMZKLPfziKHGA_vRBPw7BaXWtHBkzr3Ygr0uajqMjsBAgztj_yIBhUyk-TEG3Arnl8dMspyLoOIZGX98A7ih2ddH2OOczuhnFKEaAHmgHzZJtbyBuROGGlN', '1', 48, NULL, '2022-01-31 21:27:09', '2022-01-31 21:28:38'),
(392, 'dXokruAfST2KMZrkzMm9rm:APA91bFwyTorLBtdpWWcegxYsVl__B1eXlXv7igoA4p_mhDyDDlyRSnxFyK2UoiSlpYPdzx8xCaDza2bM9nZuDtVmyBoDlWMYwQVYU7KTiWC7Mh9n7mUHa3WyWLeYwCjW9b9l4Yv2PMe', '1', NULL, NULL, '2022-02-01 05:07:29', '2022-02-01 05:07:29'),
(393, 'd9dvHteFT9CpmFCPrP2p4v:APA91bFj_o6R5YR14R1xfXlDBKxxXUjA1gDfm5k1-bWDxbdo48iGfgrSrbLKEaUXaCqetPtNLCUpMeX8-MAhDzv0Xc3uVmB6ry5Dtj2G-MErib0_kC8h8WexoaKBEGl9-j_oilse2yqM', '1', NULL, NULL, '2022-02-01 14:11:41', '2022-02-01 14:11:41'),
(394, 'd9dvHteFT9CpmFCPrP2p4v:APA91bFj_o6R5YR14R1xfXlDBKxxXUjA1gDfm5k1-bWDxbdo48iGfgrSrbLKEaUXaCqetPtNLCUpMeX8-MAhDzv0Xc3uVmB6ry5Dtj2G-MErib0_kC8h8WexoaKBEGl9-j_oilse2yqM', '1', 100, NULL, '2022-02-01 14:13:02', '2022-02-01 14:13:02'),
(395, 'feBxrxFvS7-7CtiG9-b8kh:APA91bGeV3l-avZ5RsJqGKc4aA5uXiRo819NQuW0MfcjyscnA2KhFgy5fA6ra3TCnvFhEmHQ-XeEbu_HMwlNo8Tt-Jy22y9JdO75thOVIj58tcsLERwrM2-6ENtxW9dgs50aiQpdpJ8F', '1', NULL, NULL, '2022-02-01 15:00:45', '2022-02-01 15:00:45'),
(396, 'feBxrxFvS7-7CtiG9-b8kh:APA91bGeV3l-avZ5RsJqGKc4aA5uXiRo819NQuW0MfcjyscnA2KhFgy5fA6ra3TCnvFhEmHQ-XeEbu_HMwlNo8Tt-Jy22y9JdO75thOVIj58tcsLERwrM2-6ENtxW9dgs50aiQpdpJ8F', '1', NULL, NULL, '2022-02-01 15:01:22', '2022-02-01 15:01:22'),
(397, 'fE0W_R2OSbG-9CGBB1IX_j:APA91bHNX3vqkkvh7u1QAI6YcgtjzHHWDiZYpsudsh7eGjoW4bngSU1wAWGkQRVt4szeSA56rMNWCbL_oc1HorQHL7z1D5T87S2P3A4z1eWaxbP18OZg7ItM076eXkMhAPk5LyGIsQdK', '1', 101, NULL, '2022-02-03 00:06:40', '2022-02-03 00:17:18'),
(398, 'fE0W_R2OSbG-9CGBB1IX_j:APA91bHNX3vqkkvh7u1QAI6YcgtjzHHWDiZYpsudsh7eGjoW4bngSU1wAWGkQRVt4szeSA56rMNWCbL_oc1HorQHL7z1D5T87S2P3A4z1eWaxbP18OZg7ItM076eXkMhAPk5LyGIsQdK', '1', NULL, NULL, '2022-02-03 00:14:32', '2022-02-03 00:14:32'),
(399, 'fE0W_R2OSbG-9CGBB1IX_j:APA91bHNX3vqkkvh7u1QAI6YcgtjzHHWDiZYpsudsh7eGjoW4bngSU1wAWGkQRVt4szeSA56rMNWCbL_oc1HorQHL7z1D5T87S2P3A4z1eWaxbP18OZg7ItM076eXkMhAPk5LyGIsQdK', '1', NULL, NULL, '2022-02-03 00:18:17', '2022-02-03 00:18:17'),
(400, 'cZSEk2yaT6OMAReAt59VH7:APA91bGQ0G0NpRqpx6288Nbfp0s8RGJYeHLTESV2c1D25AAOrtLUgNYGt9Ngf7WBSj0CPw3kYWaDBXFR2Aow070GQwh5MJW2ab-40DK15O2Ni82rn6ewia9P-GJkjXM0sj4FQxvMsqMH', '1', NULL, NULL, '2022-02-03 07:49:55', '2022-02-03 07:49:55'),
(401, 'envjhf7LR7aRlW4BgZq1WO:APA91bFW5qeUzl14zaPSynBEe_QtC2zNHW3ja8jX1luNoX-6YtFaJsfzX2olo_WDwBWAjOAsduBMAR5uAnakl6D59512p8nnVWHctglcRrN5lxGZQrNIfoR5TSrv46iuzFVnfaZN5tF8', '1', NULL, NULL, '2022-02-03 08:07:07', '2022-02-03 08:07:07'),
(402, 'czr2xBIOSA-MvkHVw0dMjj:APA91bFW4eP6L8cphP5q3eaGSMKG8z69Y02bpskrvJ5fAbPj8haReYhgt3at_LChl1rZPS_SarEI3rEWhuZ9oJwNSw-0M30DscH2K1RH-mfJCOKwA8J9x4NQ7wNn6fZtYpvjNjDTtfzB', '1', 77, NULL, '2022-02-03 13:20:04', '2022-02-03 13:20:29'),
(403, 'f0APfPKCR-K7Fb3I9ZGqxt:APA91bF8pK5hVVztYWL6A1Vw16CvgnBBXg2Fid0EiHpm-4qPzOgl-yzssK4bxW2USdB464pwIK7tFQWhlO3EaQn3OzSxXwo3L4At6VIy-wRK_3VneCHZf45EX6mxxEsHAVDUy2P0-T3X', '1', NULL, NULL, '2022-02-03 21:07:58', '2022-02-03 21:07:58'),
(404, 'cZSEk2yaT6OMAReAt59VH7:APA91bGQ0G0NpRqpx6288Nbfp0s8RGJYeHLTESV2c1D25AAOrtLUgNYGt9Ngf7WBSj0CPw3kYWaDBXFR2Aow070GQwh5MJW2ab-40DK15O2Ni82rn6ewia9P-GJkjXM0sj4FQxvMsqMH', '1', 102, NULL, '2022-02-04 06:37:14', '2022-02-04 06:37:14'),
(405, 'eO5ipIvfR9eUKt5W49bpvl:APA91bGwHzlN_SR_j5wAUd0tnpg7_f-gp2nrfPC-R8XV93s0pUrNJBF7hsvWx271nVR5WqKIp0FIxGJxdFkihZvmrGmh6jahCS2ykymUEV893tvMGESFGrO0OwVrJ72RFXcB0cNU3C-Z', '1', 77, NULL, '2022-02-04 10:29:50', '2022-02-04 10:30:26'),
(406, 'dy1tYpUHQ7Oz8a9Vyg_F8E:APA91bFTgzMMeL6Z0bpT3xzmMo_-Ta1KNsTymjK3khXiW2dCyDv4uYrJQTe2AQiaKjOajCpvQ9GvqRGppxzv_QQLwVcckQz3sR8JCd7XtR8Sqtk-a95uXXynyLcN-RmJ1tHbPdhN2bTp', '1', 1, NULL, '2022-02-04 14:09:12', '2022-02-04 14:12:02'),
(407, 'dy1tYpUHQ7Oz8a9Vyg_F8E:APA91bFTgzMMeL6Z0bpT3xzmMo_-Ta1KNsTymjK3khXiW2dCyDv4uYrJQTe2AQiaKjOajCpvQ9GvqRGppxzv_QQLwVcckQz3sR8JCd7XtR8Sqtk-a95uXXynyLcN-RmJ1tHbPdhN2bTp', '1', NULL, NULL, '2022-02-04 14:14:21', '2022-02-04 14:14:21'),
(408, 'f0ftF2V0S5CQnN2tQxZFsu:APA91bFPpuMvqcQdrj_DzYAGJuvRvONhR5QnxVIhejxv6pYvo_YjCmj4Wp5rzpl00cmgD1yRX_XcviN80cWNlzSyJ0W9gRgIVKdin1MDunFKB8kYrNDYMsk1WREOU4DEYElYsBO9Kr-M', '1', 77, NULL, '2022-02-05 02:38:49', '2022-02-05 02:40:05'),
(409, 'f0ftF2V0S5CQnN2tQxZFsu:APA91bFPpuMvqcQdrj_DzYAGJuvRvONhR5QnxVIhejxv6pYvo_YjCmj4Wp5rzpl00cmgD1yRX_XcviN80cWNlzSyJ0W9gRgIVKdin1MDunFKB8kYrNDYMsk1WREOU4DEYElYsBO9Kr-M', '1', NULL, NULL, '2022-02-05 02:41:42', '2022-02-05 02:41:42'),
(410, 'f0ftF2V0S5CQnN2tQxZFsu:APA91bFPpuMvqcQdrj_DzYAGJuvRvONhR5QnxVIhejxv6pYvo_YjCmj4Wp5rzpl00cmgD1yRX_XcviN80cWNlzSyJ0W9gRgIVKdin1MDunFKB8kYrNDYMsk1WREOU4DEYElYsBO9Kr-M', '1', NULL, NULL, '2022-02-05 02:42:23', '2022-02-05 02:42:23'),
(411, 'dHrCKsUUSIqZzS6bsgfvzt:APA91bEahdLAOHWE0i00RqIewHGRU4xbec9j8wE4vCaah4xIcEdRQHvv1a6IeQus23tJ9LxvSY1PkBStwWG6kPhO0vTC5Cow7H6-8HCRTqvR8TBBP8gNwDU5mrP1Ym31XIJ6_Ghsyju0', '1', 77, NULL, '2022-02-05 03:37:02', '2022-02-05 03:41:06'),
(412, 'dkTjVFxTRQOC8V97Sx_pa3:APA91bFF7AjUk83O9Wo9UaPTD2OxYSWrlCNtKkqhPwWremfUErMvMYkuh_Z1z14umLyfOpdD6GZKYD1YwVX2G2OH0TlRE-9RhB1rCSqV-NWi-7Uc3iHSDpG0eXHupAxYMVCMiG8eq_AL', '1', 77, NULL, '2022-02-05 04:58:06', '2022-02-05 05:02:26'),
(413, 'eryXUg0eSYi0IXxN66Ar5Y:APA91bHnKwl73P7F5kvij8p5LWB6tUr6Ta6tqQRr-18tClR5x4-kAmDy-gNYeKZ4rJN8MW0GQG1fFezp2tH3Iz9M3bkWj8wJlkVTA53zE2i3bkwKTmy3LvFCHIG9gaJ-d1_DDZFqiLs2', '1', 77, NULL, '2022-02-05 05:00:51', '2022-02-05 05:01:51'),
(414, 'dkTjVFxTRQOC8V97Sx_pa3:APA91bFF7AjUk83O9Wo9UaPTD2OxYSWrlCNtKkqhPwWremfUErMvMYkuh_Z1z14umLyfOpdD6GZKYD1YwVX2G2OH0TlRE-9RhB1rCSqV-NWi-7Uc3iHSDpG0eXHupAxYMVCMiG8eq_AL', '1', NULL, NULL, '2022-02-05 05:14:31', '2022-02-05 05:14:31'),
(415, 'clhrVbEAQGKG_CZVSbW8J3:APA91bEwUkSagyu0CLs6aVOelUTuickGbWtnEmPsqH_nS74PQsU9DORV_VvMZav6C-d39is4v7-zlj__QW3pMe0kOH1R-rsbdtl-whJ_8ZiNPa6vtFihocH3eENyOfQ-_k9cL6o46ha7', '1', 77, NULL, '2022-02-05 06:19:47', '2022-02-05 06:20:36'),
(416, 'clhrVbEAQGKG_CZVSbW8J3:APA91bEwUkSagyu0CLs6aVOelUTuickGbWtnEmPsqH_nS74PQsU9DORV_VvMZav6C-d39is4v7-zlj__QW3pMe0kOH1R-rsbdtl-whJ_8ZiNPa6vtFihocH3eENyOfQ-_k9cL6o46ha7', '1', NULL, NULL, '2022-02-05 06:22:41', '2022-02-05 06:22:41'),
(417, 'feYjB3KzTROJRg4ekYYSvJ:APA91bG4RmRFfMDPnXBVkt7oWF-sahxydOAT7uguC3lIHJXqTOWcnXDLaHiSGoveJS5lTVznVV56hv_rU2FLZmLgGhOEOjaFWiPZ0vzzyoM4W89I0uVT3NFGzsN9iKfSTgApAwCDpkOy', '1', 103, NULL, '2022-02-05 06:23:50', '2022-02-05 06:26:13'),
(418, 'd1VMZMyZTfKsVfAI-s5IfH:APA91bFALFirlqYh7FpnZ30DnnuVrTkSGVEtDBB57FFAfGY6pyJvz9StM2R90SeanvUIpRSyNIw-hod1YTQ3wzB1MMQq8ZMldVSb2Rv8Ytjho_wPd5YfznB6CVBQNBIu9wW370hNJUYk', '1', NULL, NULL, '2022-02-05 13:24:48', '2022-02-05 13:24:48'),
(419, 'dkGWR8AwR-qAr3ZMtMPCtV:APA91bGFyg_2hg91RW0NWad43O7GZ1JskaJwkvSrodJ8W8cDFrC_EF5opxp3F8tbTD_JQ4scnvqNw9JOzGvI58JmyvQeB9xUcXcrIA1pktHPEzzjjjzw0yzS_EO7QVk2_PoK7q14nRP1', '1', NULL, NULL, '2022-02-05 14:47:58', '2022-02-05 14:47:58'),
(420, 'dwjnSzq6SzK4FiZA4ugbxx:APA91bFllJ_n37TZcWeqXF0qOxM5VeKjJMhXB8vl-mFBfZT-3EeqfOyZkUQ1ndArcGFo7gAbJbTyO5n3n8YqzufeOa5EMxhfQNG17dDca2XWnTTWOGkyqULZqN9kd7gA5jltCJwsv00y', '1', 1, NULL, '2022-02-06 15:10:13', '2022-02-06 15:12:00'),
(421, 'fIHcE32ISyGlatJNRZMzgj:APA91bG4nfrr5ovDx0VwvmkaFn7cplKSiRHDnIAnICut9SXfnerC_toelimqAZg_CMIuaGANThZh4U-NRGWDzQE6b5Kmp3Wpk-ly4kqXXRJ3__ro108fUerOSf9IR4PkZsM2B9Cxg6xL', '1', 104, NULL, '2022-02-07 12:25:17', '2022-02-07 12:40:13'),
(422, 'dFKWqnlsQLuKMY30r3Gy8i:APA91bFMalqmKaSvJkFP6gTlRGpaZrTNZc91tgr4rXdaEcIebDChlxvwZs9m7sonbybeEf7qtQihshCgHhLXYo6ruANnwW9Bn7fTwNuYR8-C1R6IA9kiA26hfWmDNXLrHAmIG2WeuJSw', '1', NULL, NULL, '2022-02-08 00:37:21', '2022-02-08 00:37:21'),
(423, 'dFKWqnlsQLuKMY30r3Gy8i:APA91bFMalqmKaSvJkFP6gTlRGpaZrTNZc91tgr4rXdaEcIebDChlxvwZs9m7sonbybeEf7qtQihshCgHhLXYo6ruANnwW9Bn7fTwNuYR8-C1R6IA9kiA26hfWmDNXLrHAmIG2WeuJSw', '1', 105, NULL, '2022-02-08 00:40:39', '2022-02-08 00:40:39'),
(424, 'ez5y03-6QVOakjwaoPH57q:APA91bHmZ2MGYUyv5ag6xM4Mka2LIbmQQM3dHZUIkgUAAg2OZ7Jl-Xl9QCq16BzXIGVvEkpm8RjgPCcvAbLh4hu3vxUDjISDFbuYyRho4T0TxHmeAVD9bP3-NtVEIXmZt-4bv56d8mBU', '1', NULL, NULL, '2022-02-08 01:27:01', '2022-02-08 01:27:01'),
(425, 'doH_PGrcQAabHh-XKMa63w:APA91bFJsO01mnZhI5WBLthWiEhPA6Ns-KuI6RDhQzEAjlgkEWDoRnPfrTUfRz412WQX1cc72EfcusOKdL2DJNUkzBSQKMt8IBt0NtDCrffIMK7OrtKWgtSCL6WfIPh9e96zRpCRz8gH', '1', NULL, NULL, '2022-02-09 13:34:02', '2022-02-09 13:34:02'),
(426, 'fNeSaZ4tRV-vC4X5QtT6IW:APA91bHn8FZ9GfO25u_DCoWnJT9aGPO_b6Uiq12R2_Ps_xSFw0O_UPnrzyC7zQEzwEOSwW_kkJ35XfMlqW2p3I0L9yp7-K4CuN-GBXIIijhqhfskiwgB9itEFt9QlP1H-WTpPQzywMJs', '1', 106, NULL, '2022-02-09 22:32:12', '2022-02-09 22:33:29'),
(427, 'e72z_NRJSaWDKgZ3OEM50w:APA91bESvUfzFfBWDoreJprwd9PUyMFRXvBsgHWrI7VZBOxhaH33Ph8V83jpAyCkpQ8gVANWLJ3iBcG9GkOHfPEQgwkJcfiowaisrycF28Dgj48Jl_vqvU6cfAM8F8eMDfoG9OxLxdc4', '1', NULL, NULL, '2022-02-10 08:04:38', '2022-02-10 08:04:38'),
(428, 'fQ359GpuSZqVk2TiuOeM7V:APA91bGg0BQNZxiIC8nTfFO5OlBejw-ZZ4ltZ3PWhGRMUYp_Ov6PWDDRh5WM6O77FbhaY_LaZSVKuX_-3Mi8p0C22aSlY4i0feRTXN6-Ikd60XQGUCh62Vei05oJu8-fDCBV2gSoPq5Q', '1', NULL, NULL, '2022-02-10 10:40:56', '2022-02-10 10:40:56'),
(429, 'fQ359GpuSZqVk2TiuOeM7V:APA91bGg0BQNZxiIC8nTfFO5OlBejw-ZZ4ltZ3PWhGRMUYp_Ov6PWDDRh5WM6O77FbhaY_LaZSVKuX_-3Mi8p0C22aSlY4i0feRTXN6-Ikd60XQGUCh62Vei05oJu8-fDCBV2gSoPq5Q', '1', 107, NULL, '2022-02-10 10:42:14', '2022-02-10 10:42:14'),
(430, 'f2XOezkVS7WS1WJCR-XXOE:APA91bHFL5iA0ielUshndQ7fhKEGJ33bIf6YaNWlWxOvZlhD_VbviW8pcjP19_rJK0BHwjgVNC0AU_tXUk3cVs4JyIHsu1ZVfwLp4Ym-e4LaCoYQGviELGKChwY51mcEX6SVkhC0pN_f', '1', NULL, NULL, '2022-02-11 10:28:00', '2022-02-11 10:28:00'),
(431, 'cNZNSMTdQq--gP18L5Qspg:APA91bG6AAem14YkDZbw0nR12oz9Of_CaTNVI200GOUnnvXbv-Chjl8KQbhbVoRBcEFMeugsfr-U27zZ6okxRakVb6v7dXoWqBF65E1imrMYyZcoEsr7JYdQsFxG1pPPeNuwvV0lyJMt', '1', NULL, NULL, '2022-02-11 12:41:41', '2022-02-11 12:41:41'),
(432, 'cGUtS3JsRqORhdoQaWA0sv:APA91bHmkhu06JWnDnDTmEcosrsn7khlGKK6bGv7L9e7xFJxZkVEP57nfzcWXb17NdbhjXAgjoMfQEMCdtPcyxzYuOw7DJXqp89pB-8d250HxEbaKYZhJvBJA2Y_-2isj3-hxbneu_z0', '1', 108, NULL, '2022-02-11 12:56:04', '2022-02-11 15:52:14'),
(433, 'cGUtS3JsRqORhdoQaWA0sv:APA91bHmkhu06JWnDnDTmEcosrsn7khlGKK6bGv7L9e7xFJxZkVEP57nfzcWXb17NdbhjXAgjoMfQEMCdtPcyxzYuOw7DJXqp89pB-8d250HxEbaKYZhJvBJA2Y_-2isj3-hxbneu_z0', '1', NULL, NULL, '2022-02-11 17:49:08', '2022-02-11 17:49:08'),
(434, 'exjOP23CS8mk_OftJik9Ht:APA91bEAvIt5T2ZwUx3KYyKC3j6VpH1FQmSZrR8Op1INngPwXN658-UL4QNzhTJwGD39UEM3WD5xhVbGyiPJIChqxxgvyG77OcjUcKwIU3d0EPvPkp0Fv5toG8Syh-O2zdtRJvadiVe4', '1', NULL, NULL, '2022-02-12 13:12:58', '2022-02-12 13:12:58'),
(435, 'exjOP23CS8mk_OftJik9Ht:APA91bEAvIt5T2ZwUx3KYyKC3j6VpH1FQmSZrR8Op1INngPwXN658-UL4QNzhTJwGD39UEM3WD5xhVbGyiPJIChqxxgvyG77OcjUcKwIU3d0EPvPkp0Fv5toG8Syh-O2zdtRJvadiVe4', '1', 109, NULL, '2022-02-13 05:56:30', '2022-02-13 05:56:30'),
(436, 'exjOP23CS8mk_OftJik9Ht:APA91bEAvIt5T2ZwUx3KYyKC3j6VpH1FQmSZrR8Op1INngPwXN658-UL4QNzhTJwGD39UEM3WD5xhVbGyiPJIChqxxgvyG77OcjUcKwIU3d0EPvPkp0Fv5toG8Syh-O2zdtRJvadiVe4', '1', 110, NULL, '2022-02-13 06:20:56', '2022-02-13 06:20:56'),
(437, 'exjOP23CS8mk_OftJik9Ht:APA91bEAvIt5T2ZwUx3KYyKC3j6VpH1FQmSZrR8Op1INngPwXN658-UL4QNzhTJwGD39UEM3WD5xhVbGyiPJIChqxxgvyG77OcjUcKwIU3d0EPvPkp0Fv5toG8Syh-O2zdtRJvadiVe4', '1', 111, NULL, '2022-02-13 06:23:49', '2022-02-13 06:23:49'),
(438, 'faoqhPgBQ6OAMywbz6BBnL:APA91bE9zL7ju4dNnyjtB3DKKfbl2iUk-XLIo66BKZraztN9uI3c9CuGl4Lxm8GMuu6nLS2URiFT08CuYfJF1rXenb16CTVBt3BJzdeFBJqOH_BBM2QdE_PIUPjuSGHftcDoxsHDIuVS', '1', NULL, NULL, '2022-02-13 10:06:00', '2022-02-13 10:06:00'),
(439, 'en3hHYwVQ7exTuqxA-NIBh:APA91bGCCr1_N6DF1_hf-2qaJlZGceCSZgFPOJ93sqX7JPUpHJCXs3fKoe9IFaNZConCg3JjHz3QJUvAVecHzKTxGQboVPK0PXjfrCf30C6EbJFUirkSPuhysXsjD-Vd8hs-gWogJvGv', '1', NULL, NULL, '2022-02-13 10:12:05', '2022-02-13 10:12:05'),
(440, 'en3hHYwVQ7exTuqxA-NIBh:APA91bGCCr1_N6DF1_hf-2qaJlZGceCSZgFPOJ93sqX7JPUpHJCXs3fKoe9IFaNZConCg3JjHz3QJUvAVecHzKTxGQboVPK0PXjfrCf30C6EbJFUirkSPuhysXsjD-Vd8hs-gWogJvGv', '1', 112, NULL, '2022-02-13 10:14:45', '2022-02-13 10:14:45'),
(441, 'dFnUs8TATVyiRSiICpmyzu:APA91bGu2obAu8D6bzPx9g3TgNki7YPJpVTreAxzQhUYwuCpCi0FGEXAmmF56fKz4YkLdG6t0H0LfQKKn9xDSesE3lYGSELMRr3Bc8t6bMiNr-AzsX-_eo3dcfQ9ZrK8lRJ1wx1mqCFw', '1', 113, NULL, '2022-02-13 10:26:02', '2022-02-13 10:27:08'),
(442, 'c-kCPic8Sx2OGLUMkbwrt5:APA91bF8j8Dr3Wi5QN90h-85Gw3Oy7_GKBSgVytV4gtCZ6cYoYCxcc6aabVDV37Rf0VcanP0qV8F9glxNxyoT4T9TbNwx0UbO7By-0XL9QhCTosnYHDoE23WTSCIwdtR3wOssZma5Muw', '1', NULL, NULL, '2022-02-13 10:31:19', '2022-02-13 10:31:19'),
(443, 'fjkahMkNQSSjgzHINJugKO:APA91bHWJ2UdQzqn1gQbuORH4xRkcF7DCAwFaYW2rs4jy6PmgfWX1ZI9HCxZCd2p_jq2WOZ_-TEyvxWkrv5VrAuGj0fmS9YS3ux6vkRhyjd0y0PjanbfW6gdKUqkyMfUUmjXFo7jC2tL', '1', NULL, NULL, '2022-02-13 11:08:29', '2022-02-13 11:08:29'),
(444, 'exruJ16qS66G1FTH2PYF2K:APA91bHhwE7BZP00dLah_0IPkVjcyvjJJoWj1QqrBq9f8LQMP8-M7k0xfJiRnTDTBEtu-bGavKWtXR5URJo0OobV2kBAjQiZNyzvQdQ-8pC1d-642jBD9dHzda0kSATL7cP0CGpwZFV1', '1', NULL, NULL, '2022-02-13 14:41:45', '2022-02-13 14:41:45'),
(445, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 07:51:58', '2022-02-14 07:51:58'),
(446, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 07:58:21', '2022-02-14 07:58:21'),
(447, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:02:14', '2022-02-14 08:02:14'),
(448, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:11:31', '2022-02-14 08:11:31'),
(449, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:12:14', '2022-02-14 08:12:14'),
(450, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:16:18', '2022-02-14 08:16:18'),
(451, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:21:09', '2022-02-14 08:21:09'),
(452, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:21:18', '2022-02-14 08:21:18'),
(453, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:24:29', '2022-02-14 08:24:29'),
(454, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', 114, NULL, '2022-02-14 08:27:23', '2022-02-14 08:27:23'),
(455, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:38:01', '2022-02-14 08:38:01'),
(456, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:39:01', '2022-02-14 08:39:01'),
(457, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:40:30', '2022-02-14 08:40:30'),
(458, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:40:32', '2022-02-14 08:40:32'),
(459, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:41:26', '2022-02-14 08:41:26'),
(460, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 08:49:03', '2022-02-14 08:49:03'),
(461, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 09:10:35', '2022-02-14 09:10:35'),
(462, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 09:20:20', '2022-02-14 09:20:20'),
(463, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 09:38:53', '2022-02-14 09:38:53'),
(464, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 10:08:24', '2022-02-14 10:08:24'),
(465, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 10:09:00', '2022-02-14 10:09:00'),
(466, 'e2LvYQvTTYmMtZ7HymEUlC:APA91bGCtQHqmj1XGsmLZcP2-d8vXrFxzYI10OXoBkowqH3IHasl8rUeutf75kdXkLY9o2ezeuEcGum5wHnSYUljqo228npS7MsaFVjw1bdr_0e6_X1yFhBslPquseF8MFhl7bP2JPeC', '1', NULL, NULL, '2022-02-14 10:15:50', '2022-02-14 10:15:50'),
(467, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 10:47:27', '2022-02-14 10:47:27'),
(468, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', 115, NULL, '2022-02-14 10:49:28', '2022-02-14 10:49:28');
INSERT INTO `token` (`id`, `token`, `type`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(469, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 10:50:10', '2022-02-14 10:50:10'),
(470, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 11:01:03', '2022-02-14 11:01:03'),
(471, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 11:08:15', '2022-02-14 11:08:15'),
(472, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 11:08:44', '2022-02-14 11:08:44'),
(473, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 11:22:05', '2022-02-14 11:22:05'),
(474, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-14 11:24:57', '2022-02-14 11:24:57'),
(475, 'ckmo62hVQeyon9TfAjF02U:APA91bHttP1prwF_tAh1E4_9MjlxMzOHvZckX743WWLSa6Wv2ebCGE7FULAQzUS7br32lVHQcn7WsJeo9oVvmtZ15M1EMyvfa5Oyhrco45Zjrpy920ajKfY_huTjlsuoRANrghIfaWa3', '1', 1, NULL, '2022-02-15 02:04:13', '2022-02-15 02:36:53'),
(476, 'dgrAq3IcSqaPM0H4bsP1TO:APA91bEFphEjevxATPHKq0SVwnta5xlItMRzgFkBumf90mFmuBW8_bL_i0V7dQPu0nQiJDaAX4YFfzGRfRMx1KxTkY4ZIOHm26vcHJxlDoDAx-qGYTs3uIVcUMrZf9D-TQ-ta1WXgjch', '1', NULL, NULL, '2022-02-15 06:08:28', '2022-02-15 06:08:28'),
(477, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:12:06', '2022-02-15 06:12:06'),
(478, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', 116, NULL, '2022-02-15 06:13:56', '2022-02-15 06:13:56'),
(479, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:17:15', '2022-02-15 06:17:15'),
(480, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', 117, NULL, '2022-02-15 06:19:53', '2022-02-15 06:19:53'),
(481, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:21:24', '2022-02-15 06:21:24'),
(482, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:25:10', '2022-02-15 06:25:10'),
(483, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:26:32', '2022-02-15 06:26:32'),
(484, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:27:07', '2022-02-15 06:27:07'),
(485, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:30:47', '2022-02-15 06:30:47'),
(486, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:33:09', '2022-02-15 06:33:09'),
(487, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:35:04', '2022-02-15 06:35:04'),
(488, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:36:54', '2022-02-15 06:36:54'),
(489, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:38:36', '2022-02-15 06:38:36'),
(490, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:41:44', '2022-02-15 06:41:44'),
(491, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:42:30', '2022-02-15 06:42:30'),
(492, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:43:19', '2022-02-15 06:43:19'),
(493, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:44:46', '2022-02-15 06:44:46'),
(494, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 06:46:24', '2022-02-15 06:46:24'),
(495, 'c6R4WVm4QJ-temwdLAUvgx:APA91bEz2qvn6u54QviesXaJUD_iDTTHqIVrfuTs4sMFAhZkAF1ytFZvLslplrU-hKwp4dS-rVqqm-95fa8wv8F7t18k7TqFLjGjobrNFvVHIvcD72UaDJFCYUIAWQxXRAhB96hBkkyS', '1', 110, NULL, '2022-02-15 06:50:18', '2022-02-15 06:51:35'),
(496, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:10:35', '2022-02-15 07:10:35'),
(497, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:11:17', '2022-02-15 07:11:17'),
(498, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:14:23', '2022-02-15 07:14:23'),
(499, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:15:18', '2022-02-15 07:15:18'),
(500, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:16:50', '2022-02-15 07:16:50'),
(501, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:18:17', '2022-02-15 07:18:17'),
(502, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:19:07', '2022-02-15 07:19:07'),
(503, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:22:10', '2022-02-15 07:22:10'),
(504, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:31:12', '2022-02-15 07:31:12'),
(505, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:48:18', '2022-02-15 07:48:18'),
(506, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:48:59', '2022-02-15 07:48:59'),
(507, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:50:10', '2022-02-15 07:50:10'),
(508, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:51:33', '2022-02-15 07:51:33'),
(509, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:54:02', '2022-02-15 07:54:02'),
(510, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 07:55:56', '2022-02-15 07:55:56'),
(511, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:14:23', '2022-02-15 08:14:23'),
(512, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:14:42', '2022-02-15 08:14:42'),
(513, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:15:48', '2022-02-15 08:15:48'),
(514, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:17:37', '2022-02-15 08:17:37'),
(515, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:19:31', '2022-02-15 08:19:31'),
(516, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:21:13', '2022-02-15 08:21:13'),
(517, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:25:00', '2022-02-15 08:25:00'),
(518, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:26:30', '2022-02-15 08:26:30'),
(519, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:28:11', '2022-02-15 08:28:11'),
(520, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:29:27', '2022-02-15 08:29:27'),
(521, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:29:56', '2022-02-15 08:29:56'),
(522, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:34:04', '2022-02-15 08:34:04'),
(523, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:34:24', '2022-02-15 08:34:24'),
(524, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:36:30', '2022-02-15 08:36:30'),
(525, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:39:19', '2022-02-15 08:39:19'),
(526, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:42:16', '2022-02-15 08:42:16'),
(527, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:44:59', '2022-02-15 08:44:59'),
(528, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:47:26', '2022-02-15 08:47:26'),
(529, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 08:48:10', '2022-02-15 08:48:10'),
(530, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:13:07', '2022-02-15 09:13:07'),
(531, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:14:31', '2022-02-15 09:14:31'),
(532, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:18:22', '2022-02-15 09:18:22'),
(533, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:20:48', '2022-02-15 09:20:48'),
(534, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:21:19', '2022-02-15 09:21:19'),
(535, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:22:08', '2022-02-15 09:22:08'),
(536, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:22:41', '2022-02-15 09:22:41'),
(537, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:26:34', '2022-02-15 09:26:34'),
(538, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:29:48', '2022-02-15 09:29:48'),
(539, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 09:34:37', '2022-02-15 09:34:37'),
(540, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:20:55', '2022-02-15 10:20:55'),
(541, 'c1cT0e_0RxuyF5GRzfAZ_K:APA91bGXfmeQj9yWOKsGehMCQP__HiirB9GFs2az2WQp2DmrRKvx7AKChGES9QYmTcl7u8zB-TuM3_hEmvuaYSLmSQg2u6v5jJ_tKTVv35N_7U3ePmhC3NcwM0z4xd5kqSH60sZuoGXI', '1', 104, NULL, '2022-02-15 10:22:33', '2022-02-15 10:24:13'),
(542, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:22:43', '2022-02-15 10:22:43'),
(543, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:27:50', '2022-02-15 10:27:50'),
(544, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:29:15', '2022-02-15 10:29:15'),
(545, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:29:49', '2022-02-15 10:29:49'),
(546, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:31:29', '2022-02-15 10:31:29'),
(547, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:33:28', '2022-02-15 10:33:28'),
(548, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:35:00', '2022-02-15 10:35:00'),
(549, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:37:32', '2022-02-15 10:37:32'),
(550, 'emTrpux1TK67pQVXlaIkZA:APA91bHWQRAq0aiFIRlKtzbkpacUxSFLOSl_P4DBWR0m9P2v7FqEnPc9BqDVCxl7Tq5Cg3jPEO2ych7GuqU_EYHmm08LbfUI9627p_H7E50XqZ25Ov60B9L8y4yHhvBNDpZ_OJzhzWYM', '1', NULL, NULL, '2022-02-15 10:39:55', '2022-02-15 10:39:55'),
(551, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 10:44:16', '2022-02-15 10:44:16'),
(552, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 11:11:41', '2022-02-15 11:11:41'),
(553, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 11:25:03', '2022-02-15 11:25:03'),
(554, 'fofsJp2OSA2kNi7kxdgWR7:APA91bEPIVz8RkDEPHLXbhm7iXuUIwgopSf1czDYO1TmD_uKBQ7QYlgsfmgmzrxjYZk1bXYjIei7W_fLQOcYaV3O_Iv7mHCYm53f0cPy7NXm-NmNd9N-qtq4bezeHASOuY9T0_uiPsgo', '1', NULL, NULL, '2022-02-15 11:40:20', '2022-02-15 11:40:20'),
(555, 'f5-UYpArR8Wi2hyc6uDRk_:APA91bG4BTXkk5CGus4XZKR_ACwJP2vILJMyB73ctAUN7wMIpwAULuyhQiDxmlmlw6aEqHBAF8Q8iNXBn5nH_umjb9UJptgJCmj7iY8QCERxq8mmpCbjL0g1qKrtrSuxbuJoXzMiDuHW', '1', NULL, NULL, '2022-02-15 12:27:40', '2022-02-15 12:27:40'),
(556, 'dHC5VdxjToeH_KQfDt7ZWf:APA91bFIp_UchPTcmkWDsDnx-WAlX01AYIZij15DuZeZDw85bm4bD60zJS59XlPr3_Ps-Gfuxiw0dVjzVYDuvwa1Hor4AMgKIypXKJDdXDq1sHvgHVCoaFBbzJC0UdH2pDofUvwZ0i9r', '1', 23, NULL, '2022-02-15 14:09:22', '2022-02-15 14:11:38'),
(557, 'dHC5VdxjToeH_KQfDt7ZWf:APA91bFIp_UchPTcmkWDsDnx-WAlX01AYIZij15DuZeZDw85bm4bD60zJS59XlPr3_Ps-Gfuxiw0dVjzVYDuvwa1Hor4AMgKIypXKJDdXDq1sHvgHVCoaFBbzJC0UdH2pDofUvwZ0i9r', '1', NULL, NULL, '2022-02-15 14:10:12', '2022-02-15 14:10:12'),
(558, 'e2RKwuHVS_WNVvGgozmQhJ:APA91bFtevheFWqEsi8FKVW8RoSf7KgqmnqPOBZ9CZc40Gg37AeaSwS-5wouSnq0463_SL8Zk9HZXYwq85hITn-zVnMitXmaIj_eFu_nnYwceQy4bnRTA_VkF2x6KUOE-DUWy4q9dslC', '1', 118, NULL, '2022-02-15 16:26:15', '2022-02-15 16:26:54'),
(559, 'f9nW6hT_QFCbD6b0EJ0--O:APA91bGwFNn_aRjq-Q8NkEA6FgyM1QgpzY4R5flBoWuG_vLlleofNEm7aqQi-wvwCGqP7b5c9pMFjrbwhPn5wBkJCdrU3kIMx3z9lvuCNUrraV-nSlr_UoV19I7nKgHQ5OpG81xTuRoZ', '1', NULL, NULL, '2022-02-17 19:34:31', '2022-02-17 19:34:31'),
(560, 'f7z2MiyFQb6OZWnSuErRjp:APA91bHbAFPCK7hwnySYyIjicRRIjqpQ_eBHb8yy5Rm_IQxPfmUyAjDxTt8myiYCmaHPWTAKdqnNWSJFVcy6gnstZew_wb1RG1kWohOqc5Eo4biWiwt26wpYCFnl4hJh7COskBlbgiUK', '1', NULL, NULL, '2022-02-18 18:09:15', '2022-02-18 18:09:15'),
(561, 'eVeyH9AHR7OPsiB3obBjRI:APA91bEkIvwJGlq1CmdO7i71zoktv0ybSGWHKYC1d-OUrISZRHuxRtsuAHo9ixOFf2NR8txOXHbPojDqwU7MygZ8EFnClpuMuIP6d2nn7UhmYrzHteKFe5a1tR0SswHb82BtKZSJ-fI8', '1', 119, NULL, '2022-02-20 02:15:38', '2022-02-20 02:22:53'),
(562, 'f1QQSm4pT_OFJkWb5BI3uu:APA91bFT1j43MAMesfU4jwvvmz93OwYArBn0JVzP5OCqbElbtaYA_uAp5d66b1S-mE0_A_NZVesOvI87M4dTUSGukzzUFSWHZ9hbSR87OME3-CPubpLlw4aTdF5MQqUaGdWYA-Wjfbhx', '1', NULL, NULL, '2022-02-20 02:52:32', '2022-02-20 02:52:32'),
(563, 'fWEyTJDJRB-iyEPyCd-V-J:APA91bFtlLVuCg5wKXjwHII351GjH1MY7kBAuzdDyo6vlZ2yeymE4TkNTxksC3ODX1xrmXAQDbTGMB9fQWl27X27bIPq1nixbL9DDhwxdpYiLiXS6WxmdvUxHYI0NIasL7O1LxnCs3R7', '1', NULL, NULL, '2022-02-20 10:15:28', '2022-02-20 10:15:28'),
(564, 'dzVTYyqyTgq_VCkjcM7Gwz:APA91bHe80nass6EbJORxwKxKkHj8KALRgEHx0zEXUXM0qZtgrw15SDY6NUhqXHe-Uy6XYnY0hferEi1re9CJTEqghxrUDhyXuNxh0g1QYDF08tXYpYSt-y6m8SPM3Xd9pcO4ue4k6Cc', '1', 1, NULL, '2022-02-20 10:16:01', '2022-02-20 10:16:29'),
(565, 'fWEyTJDJRB-iyEPyCd-V-J:APA91bFtlLVuCg5wKXjwHII351GjH1MY7kBAuzdDyo6vlZ2yeymE4TkNTxksC3ODX1xrmXAQDbTGMB9fQWl27X27bIPq1nixbL9DDhwxdpYiLiXS6WxmdvUxHYI0NIasL7O1LxnCs3R7', '1', NULL, NULL, '2022-02-20 10:22:38', '2022-02-20 10:22:38'),
(566, 'fWEyTJDJRB-iyEPyCd-V-J:APA91bFtlLVuCg5wKXjwHII351GjH1MY7kBAuzdDyo6vlZ2yeymE4TkNTxksC3ODX1xrmXAQDbTGMB9fQWl27X27bIPq1nixbL9DDhwxdpYiLiXS6WxmdvUxHYI0NIasL7O1LxnCs3R7', '1', NULL, NULL, '2022-02-20 10:49:52', '2022-02-20 10:49:52'),
(567, 'fWEyTJDJRB-iyEPyCd-V-J:APA91bFtlLVuCg5wKXjwHII351GjH1MY7kBAuzdDyo6vlZ2yeymE4TkNTxksC3ODX1xrmXAQDbTGMB9fQWl27X27bIPq1nixbL9DDhwxdpYiLiXS6WxmdvUxHYI0NIasL7O1LxnCs3R7', '1', NULL, NULL, '2022-02-20 11:00:01', '2022-02-20 11:00:01'),
(568, 'fWEyTJDJRB-iyEPyCd-V-J:APA91bFtlLVuCg5wKXjwHII351GjH1MY7kBAuzdDyo6vlZ2yeymE4TkNTxksC3ODX1xrmXAQDbTGMB9fQWl27X27bIPq1nixbL9DDhwxdpYiLiXS6WxmdvUxHYI0NIasL7O1LxnCs3R7', '1', NULL, NULL, '2022-02-20 11:01:24', '2022-02-20 11:01:24'),
(569, 'eFCneJ6ZTBmDW43-fZKM4W:APA91bHjAgqJZBAIn0Kyx9_-rDz-MpP6SlWq-S-q0dQNf4HKNKHb9RB3x6TuCKclP2gbfctfWOAKoEXlrcbu7FmMBJIwjVxpAD83gavfZPe65txpgTkbQ0jDHLHkgg9nfv2B9xKH4afz', '1', 120, NULL, '2022-02-20 20:04:25', '2022-02-20 20:05:45'),
(570, 'cByroNyPQciuHpjWkoEkIG:APA91bGhBw3OCeqZpoHvDMqWomN786AePrE5EkoeHwtZePX5hF1jre0jw3T9mGRY0HXWQ98s7KPts2XgTgVHhjQk0fdJ3xvDpLsOmCW0BZCw7WUGxgYDJmR0Z3XB5sGkw-5D3l5LwdP7', '1', NULL, NULL, '2022-02-21 05:49:47', '2022-02-21 05:49:47'),
(571, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', 110, NULL, '2022-02-21 06:19:49', '2022-02-21 10:16:24'),
(572, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:22:37', '2022-02-21 06:22:37'),
(573, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:23:38', '2022-02-21 06:23:38'),
(574, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:28:06', '2022-02-21 06:28:06'),
(575, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:28:55', '2022-02-21 06:28:55'),
(576, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:30:43', '2022-02-21 06:30:43'),
(577, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:31:55', '2022-02-21 06:31:55'),
(578, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:32:52', '2022-02-21 06:32:52'),
(579, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:38:50', '2022-02-21 06:38:50'),
(580, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:39:33', '2022-02-21 06:39:33'),
(581, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:39:56', '2022-02-21 06:39:56'),
(582, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:40:31', '2022-02-21 06:40:31'),
(583, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:42:20', '2022-02-21 06:42:20'),
(584, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:42:34', '2022-02-21 06:42:34'),
(585, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:45:34', '2022-02-21 06:45:34'),
(586, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:53:50', '2022-02-21 06:53:50'),
(587, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:55:55', '2022-02-21 06:55:55'),
(588, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:57:48', '2022-02-21 06:57:48'),
(589, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:58:18', '2022-02-21 06:58:18'),
(590, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 06:59:19', '2022-02-21 06:59:19'),
(591, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:00:39', '2022-02-21 07:00:39'),
(592, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:01:26', '2022-02-21 07:01:26'),
(593, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:02:28', '2022-02-21 07:02:28'),
(594, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:25:53', '2022-02-21 07:25:53'),
(595, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:26:27', '2022-02-21 07:26:27'),
(596, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:28:35', '2022-02-21 07:28:35'),
(597, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:34:23', '2022-02-21 07:34:23'),
(598, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:37:11', '2022-02-21 07:37:11'),
(599, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:37:47', '2022-02-21 07:37:47'),
(600, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:39:07', '2022-02-21 07:39:07'),
(601, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:54:17', '2022-02-21 07:54:17'),
(602, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:55:17', '2022-02-21 07:55:17'),
(603, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 07:58:50', '2022-02-21 07:58:50'),
(604, 'ex7MW--GShOkzYbb2f3d2W:APA91bGAM9v15haTJjlPN267z4VXucgdAgrz7jhYtRnNqR0faxf2QkGjEw8CyscY4FPNOjkW2Y6AUkKgdOTc-z3BHpcPju0eBZlXBfXTE3adSWYu7N3fLfa88HpvNK1MPCSvu_4XxBfK', '1', NULL, NULL, '2022-02-21 08:02:03', '2022-02-21 08:02:03'),
(605, 'fc8kraeRRuynwsXa52uJdJ:APA91bECwq1Cp7vY9ZXFUMz9UQd5FIDng4lNppqopJEIM0gNyM_82DJ8k4sexfQq3N6fmNNBz3ACNamlynTBaFj7x2YhxaH5Th-ijV-CgMetAtI97tIIxgBV8wwZHj4B6pqWDCO_qzzA', '1', 121, NULL, '2022-02-21 17:41:41', '2022-02-21 17:42:49'),
(606, 'd-6aXVmjTg6575lB4OVBUD:APA91bF8YaCi-D_F-_ry9cNcb_v2RC7hkDMo8UVrnFRTylytT3Mn_eWH5P_KEw4Dqhb6i4kVavQB6hK58f56GtjNUDN-Foei_5OKG0k-cqFABdYV0KoNADjFDKlJKy8_6B5Hq7QVemEG', '1', NULL, NULL, '2022-02-22 03:48:21', '2022-02-22 03:48:21'),
(607, 'dfzQp0iLSVaa9aEuX6ycIk:APA91bGvxZQaihq_qykyU6IX7XE2BYkIxONDTMDvezLRfy0-2y5KfkTXA-m_BGw9dxjzumlRh7wmrfRsAtZemfDHPU4kzl8__rW8znGcskYR7Fp3QmsCBxMWcden6dcLUjEYfPER0h0K', '1', NULL, NULL, '2022-02-22 04:48:29', '2022-02-22 04:48:29'),
(608, 'dfzQp0iLSVaa9aEuX6ycIk:APA91bGvxZQaihq_qykyU6IX7XE2BYkIxONDTMDvezLRfy0-2y5KfkTXA-m_BGw9dxjzumlRh7wmrfRsAtZemfDHPU4kzl8__rW8znGcskYR7Fp3QmsCBxMWcden6dcLUjEYfPER0h0K', '1', 124, NULL, '2022-02-22 04:55:40', '2022-02-22 04:55:40'),
(609, 'eXYsGHuZQvCGrjK3BWywba:APA91bF46GdVe63xQaYsMLpW8_--gRvEFmKliWS8AUAdaBGAZb1cPHpUUe5R5pmUsZ87aEsDEhJskjyff-n3eo3DNTf3TljakTwVlGVA9AKbjvLX833r2smnLJ5_feqgBv53dPy3vTN_', '1', 110, NULL, '2022-02-22 07:40:29', '2022-02-22 10:58:43'),
(610, 'eBX3b9ifQCCSGInEhhuQGl:APA91bHY3_ooQMta_Me6oJ9TlxOXdGt8-qLWGmCKlSlvKM01fLsWStI7KCvdFJ1cJbcBFE7kWqHjazOMFDKFclIY2geENQiIt8e0f1KUvrhadIX0WBt3qOpWOEqQhpOvyYwC1vqiTl7R', '1', NULL, NULL, '2022-02-22 08:04:11', '2022-02-22 08:04:11'),
(611, 'eQKVkifZSFmwuY3-CGM7uY:APA91bEI4k8cV4nG-nxjk_2XVA6q83MiRnU7kjdfBCNqr5wRQ6hgJjViY_d9xrljLfmerdNP2ee0VsR0-bEIGvmX6fW6jQMlIWFZnoz0Ueq7XCCElKv4uNk4v0AIJNsqZFUUcf48fjJH', '1', NULL, NULL, '2022-02-22 08:42:31', '2022-02-22 08:42:31'),
(612, 'cqIlcMwGR_CL4ISTQY_pl2:APA91bH8V0aSLZo7CveLIykdvLAxDxIVtzWw8GQz0gQ0EWoM4DyRIKsSSOioz-A6PdEW63kVROY9HNi0ErQZ9x9gvQl4tDpr94Xf-HPCc7ZI7cMVmiE9-wGu3LtQdq7fH7wXsDH9O_h7', '1', NULL, NULL, '2022-02-22 17:26:03', '2022-02-22 17:26:03'),
(613, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', 110, NULL, '2022-02-23 06:47:53', '2022-02-23 06:49:46'),
(614, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', NULL, NULL, '2022-02-23 06:54:34', '2022-02-23 06:54:34'),
(615, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', NULL, NULL, '2022-02-23 06:56:28', '2022-02-23 06:56:28'),
(616, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', NULL, NULL, '2022-02-23 07:03:31', '2022-02-23 07:03:31'),
(617, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', NULL, NULL, '2022-02-23 07:05:30', '2022-02-23 07:05:30'),
(618, 'e_FM9P_zT22vyi1ZGB0ZJx:APA91bGowK6zW1TFMuN9g6uwyV1TEsWC9ruEh3qPLJzeoeUxK-eZw209HwJ4BlL4FzF6boJPs53_vBvlb9-tnpxgGOuDJNO8RmynM-J26Jm3RjO4sHkYJSObf6JqHKPXu5APX--Ncf4h', '1', NULL, NULL, '2022-02-23 07:07:16', '2022-02-23 07:07:16'),
(619, 'c5LpCk4jRDOA5XCKpNPkCY:APA91bGjPAXl1JV8ijilpSEVZ-qWmBKYRdRSw5NTyK7jJhYrbjT7cdudihGqk27Y38xzpVWgbPsbMBJtTeXuqShFw3xl_fT3jsCyEjT95LekShvAcM46j-DXb8Ba71yFMxl_gxQfx2Zv', '1', 110, NULL, '2022-02-23 07:10:38', '2022-02-23 07:11:07'),
(620, 'e9zqKPimTd-HCgbM0puxR2:APA91bGVj-8TmcnqMwIz03Xh7MQ9SQDCqkuWfEEznVqEljGTiQ5vPF4-lcjbw1yZXwyon10HgQXVhT0dKn0_cHSx2WEw9aDpApZMF9CbIFaxDKEwFNwG6WT4OCemQRjp-j7FXwkuIp4L', '1', 110, NULL, '2022-02-23 07:13:11', '2022-02-23 07:13:53'),
(621, 'dFSgUzV5TPaFKWqVE_5HTb:APA91bHjTzcN5mp9nIQ9spuVc__gROfvG3SjgstakHGexPAcfgQATAVYeCZKebd5hE3DRQhJFnPXBMbL7yzCrkPbLw25EYvqgewJAZhFFdhZuDnFNWZNDfdk8ayBNvXQAc3yw0cqdQ42', '1', 110, NULL, '2022-02-23 07:15:52', '2022-02-23 07:16:19'),
(622, 'eCTtTkkVQG-2kpvLJZ1qHB:APA91bFZuY4Bb7sKzoumgVJq4mH6H5sZMdIDNvfTWFmN1sNLdVm5wEBMOyFjoHdRrLV67fM2ODmeSPQzWc1s49WpNUHr4TvRl3yMpnVf3FdHGCI9ZRB8fVaGEB7Ikkb_5Q9VJPRUPTLR', '1', 111, NULL, '2022-02-23 07:31:11', '2022-02-26 06:40:53'),
(623, 'erq1eMUEQFiBkJA9xgH1S3:APA91bHD2NCrYpCdQfTGeCFxqtOLsTq_iwMQYhvabEjB7Nf6cKr0rh0frtKGl9djZKXwgH7c-MaB5vKPS1QMSYBnF5EKe4Fy7e8zc8CIocy-kqiMOjXGWYg1jOR1GJDEJVxLy6Bzw1oL', '1', NULL, NULL, '2022-02-24 06:47:14', '2022-02-24 06:47:14'),
(624, 'edIlQmleTBu5Sp1VqJy50b:APA91bGjEHUH1qQIi-RuPtVW-tLDgYFZZA0m-Aaooxf7_wAxWTLWeRloPQLrikn6_bCfTQiblX_UpqaOjrGldDcNYvgiN2ZkV2exTcGIuJO_9SuXFDiif89TsuaKEEi_D4R2nmwqOu9p', '1', 132, NULL, '2022-02-24 16:58:07', '2022-02-24 16:59:19'),
(625, 'dlWkh9-WR16ER1Ab2vQcC1:APA91bHVPL-ZdfLdzcYE5nFovRWm6W1VDa8Q0TbWL5o3KsicbA6q80ZXocYcZPz2TCXAB3mKtg4PXF7RrhgGca-X9pOjMTprFfNGmTMC_6AKqXEljjpT2wNuoBZRhbIimo_GcTJd5Pak', '1', NULL, NULL, '2022-02-24 18:06:48', '2022-02-24 18:06:48'),
(626, 'dlWkh9-WR16ER1Ab2vQcC1:APA91bHVPL-ZdfLdzcYE5nFovRWm6W1VDa8Q0TbWL5o3KsicbA6q80ZXocYcZPz2TCXAB3mKtg4PXF7RrhgGca-X9pOjMTprFfNGmTMC_6AKqXEljjpT2wNuoBZRhbIimo_GcTJd5Pak', '1', 133, NULL, '2022-02-24 18:08:03', '2022-02-24 18:08:03'),
(627, 'e56pwQHlTJWfoiCbZPcGLM:APA91bFolLAM3K_wFhkIYixeDS5tsHAeyr_-lJ-p1CVpw8BqbJapFFqTzUz22hHorpvFVyd8cu-M6zAsRtgFnNhrT53VlpnZPJ_Uz_Xqrbx7i24IQRy0oKF-IDoD5Ly1ww4qpKWDrfth', '1', 134, NULL, '2022-02-25 06:45:44', '2022-02-25 06:46:32'),
(628, 'eLrzwE6rSBS8E9Yl9by7Y_:APA91bHcHfIL8tKR0aUBZtK2znrZljv25LddjvEQaygc527tRo3qrhn2CAZ50GrOtPEExaLJb9H2UMa1AsVWMGJ_qds6TZ1-CRj_XXYVyhF8Af_yd15xdDXUXPI5tvWCtzoU8fxY4ciy', '1', 136, NULL, '2022-02-25 16:31:45', '2022-02-25 16:32:23'),
(629, 'd6Bb85b5RMm-tuUH3Cm1DI:APA91bFWJZ7-zKSkeJKXEKjeVe7lfbsg9HQydFOe7kWhzSR9UaVRHq9FNADXmbM19ECA3dz80LYZCOM9ESE_l_s3msYnst4TXS6-0dqib6q7FLxb8u0BCYqCgNBPH9kwOhZq_X-18lDF', '1', NULL, NULL, '2022-02-25 19:09:35', '2022-02-25 19:09:35'),
(630, 'd6Bb85b5RMm-tuUH3Cm1DI:APA91bFWJZ7-zKSkeJKXEKjeVe7lfbsg9HQydFOe7kWhzSR9UaVRHq9FNADXmbM19ECA3dz80LYZCOM9ESE_l_s3msYnst4TXS6-0dqib6q7FLxb8u0BCYqCgNBPH9kwOhZq_X-18lDF', '1', 137, NULL, '2022-02-25 19:10:39', '2022-02-25 19:10:39'),
(631, 'd4Tkm4GAR1eLKPQD4aImIC:APA91bF0aUwYlBNC12iZEAWgd6_hsZ5vvGWSs1wTSOyzr2gGWVS0N9v80LvTUDIEK0iMM0c8EcnIl8pJ2VB2ckL2tlRfP9baESEu5c1qDSkSCwYlykBg6N-ckzQbyGnLyISPGm-Qo2a7', '1', NULL, NULL, '2022-02-26 04:45:40', '2022-02-26 04:45:40'),
(632, 'eCTtTkkVQG-2kpvLJZ1qHB:APA91bFZuY4Bb7sKzoumgVJq4mH6H5sZMdIDNvfTWFmN1sNLdVm5wEBMOyFjoHdRrLV67fM2ODmeSPQzWc1s49WpNUHr4TvRl3yMpnVf3FdHGCI9ZRB8fVaGEB7Ikkb_5Q9VJPRUPTLR', '1', NULL, NULL, '2022-02-26 06:40:15', '2022-02-26 06:40:15'),
(633, 'eSvCLk-qRzazHE4VJmoNVa:APA91bGXYl72QOeKMSGfS1DxDTgiGLJEwwqVkcDXLOHM3zr-PomNZKdmxfwHc-qIXeZ6bEF2cXQr1xhjyPjZ-t8csINMc9xX_7QEdlxvGhygZVUEAPtzFxyuHgb0vbNjWxzBHv8Mce9Z', '1', 1, NULL, '2022-02-27 08:50:21', '2022-02-27 08:56:15'),
(634, 'cwfk5aBfQwGUtJ9R6DsKc6:APA91bG-ZJdDj4FQXdEF95SqEazA_Ko9Q6ppd5U7c0z7wz_3FnZBpgHL03tRy8pYog-fn8Btp9LkixuB4MaScHPKM3TaH2VXHsNP3jq9M7QUO8nc2HEZ3uF4i9lgqOIOhg69hrDHwHCC', '1', NULL, NULL, '2022-02-28 13:37:48', '2022-02-28 13:37:48'),
(635, 'cwfk5aBfQwGUtJ9R6DsKc6:APA91bG-ZJdDj4FQXdEF95SqEazA_Ko9Q6ppd5U7c0z7wz_3FnZBpgHL03tRy8pYog-fn8Btp9LkixuB4MaScHPKM3TaH2VXHsNP3jq9M7QUO8nc2HEZ3uF4i9lgqOIOhg69hrDHwHCC', '1', 140, NULL, '2022-02-28 13:40:43', '2022-02-28 13:40:43'),
(636, 'dzVTYyqyTgq_VCkjcM7Gwz:APA91bHe80nass6EbJORxwKxKkHj8KALRgEHx0zEXUXM0qZtgrw15SDY6NUhqXHe-Uy6XYnY0hferEi1re9CJTEqghxrUDhyXuNxh0g1QYDF08tXYpYSt-y6m8SPM3Xd9pcO4ue4k6Cc', '1', NULL, NULL, '2022-03-01 10:22:25', '2022-03-01 10:22:25'),
(637, 'e2KD5nnHTBOSao_ENIqIH-:APA91bFP51t68IsfccXbYogpVlly5L_APLTv_vgiQaQa4k4F-VdWiXPOdosA0vANyFgmuvMX4LhvQUgryCe4prvnsOJtigknTvaKD-Gwwo0df-VbVyRe2HKDnrrGHMCh9sxo_U7GQzou', '1', NULL, NULL, '2022-03-02 06:53:17', '2022-03-02 06:53:17'),
(638, 'fvTpO0GuTeazzAS3hVswFy:APA91bHtPq1N-v7a74Y6qkvHaVAMBZeykKw4rbQGtFy9MtC34CCkuWkz7twgVSI7fTxmk_RGSBHd52dvl9ig5IXgeCs-OuofF4IkfwiGy_k9GmfMR-VligM7qiMaru-XWD6b406IRJs9', '1', NULL, NULL, '2022-03-02 09:50:03', '2022-03-02 09:50:03'),
(639, 'fDnQnwBFTkWwdDY524GH4z:APA91bHldKjQeYxlNxkhtJOS-NE7drVYOFC1q3CBRJ64Vln28yrLk7L9Gd2t4BDQm5hR-EAEBf6zRODjRepOqVZixCed_6ap_IkSCVav7z1_Zv57MCluSNgwiS7ZqX_qniBOjb1YTn5Q', '1', 143, NULL, '2022-03-03 10:01:47', '2022-03-03 10:06:08'),
(640, 'cM75biqiROa853woyik0_J:APA91bEsIntELTbVdV5IUXX_3W3BPw0fu9bVC-Df0hjOG7HpFhSYswZlrL3a8hZPP-IWlGN3NREXlwXHedin-MpUEXto3LD09rAACGtGC7TW5kw8P2Ukm9mT5_o3vsQsRe6IU3PAH4D9', '1', NULL, NULL, '2023-02-21 20:21:28', '2023-02-21 20:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_pic` varchar(500) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `login_type` int(11) NOT NULL DEFAULT '1' COMMENT '1=>email',
  `usertype` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1=>patient,2=>admin,3=>doctor',
  `status` varchar(250) DEFAULT NULL,
  `last_seen` varchar(250) DEFAULT NULL,
  `user_sid` varchar(500) DEFAULT NULL,
  `braintree_id` varchar(250) DEFAULT NULL,
  `paypal_email` varchar(500) DEFAULT NULL,
  `card_brand` varchar(250) DEFAULT NULL,
  `card_last_four` varchar(250) DEFAULT NULL,
  `trial_ends_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `profile_pic`, `phone_no`, `login_type`, `usertype`, `status`, `last_seen`, `user_sid`, `braintree_id`, `paypal_email`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Hospital Management', 'admin@gmail.com', NULL, '123', '0vIWSdIfdd0taSBBf1jxPqgTAaYvbXg7PvNK8fChNjn3sgTV8qf8oozF52E2', NULL, '2023-02-22 04:40:48', '6.png', NULL, 1, '2', 'offline', '2023-02-22 04:40:48', 'US51258fd84906491284eef4b5717591e3', NULL, NULL, NULL, NULL, NULL),
(2, 'drh. Farid Rizal', 'pol@gmail.com', NULL, '123', 'XtcAoLIQaymc29NqJ5kGhGwtOUu8kCJ6OWqpwiqo8z2bg5mtDCGk2xLL0bqY', '2021-10-20 04:18:50', '2022-01-02 11:00:48', '1.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dr. Olivier Lund', 'Olivier@gmail.com', NULL, '123', 'DwFYbwHaXbEJsWK0u40PwmaCxyi6Aohb0Rlbq4Yu67zLNZLsobuW81wwpPHk', '2021-10-20 04:18:50', '2022-02-26 19:32:39', '2.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Dr. mahajan', 'mahajan@gmail.com', NULL, '123', '5lPW7Z6WT1yOWpTvvowXy9ZZTA7hsnn3B8zDCx8TJSb37LvqMdr4OhGvCKQJ', '2021-10-20 04:18:50', '2022-01-12 04:41:51', 'profile_769181.jpg', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Dr. Julia Jhones', 'Julia@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '4.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Dr. Agnes Ayres', 'Agnes@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '5.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Dr. Edward Asner', 'Edward@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '6.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Dr. Cate Blanchett', 'Cate@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '7.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Dr. Leroy Anderson', 'Leroy@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '8.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Dr Chris Wogan', 'john@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '9.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Dr Pol Woker', 'john1@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '10.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Dr. Koureissi Carlos', 'Koureissi@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '11.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Dr Juan Konare', 'chirag.redixbit@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2022-01-18 05:40:07', '1608617888.jpg', '+1-541-754-3010', 3, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Dr Charles', 'chrles@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '1608617888.jpg', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Dr Catholina Marin', 'Catholina@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '14.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'DR Andrew Simons', 'Simonse@gmil.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '15.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Dr Amily Smith', 'Amily_smith@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '16.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Dr Joseph Martina', 'martina@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '1603175222.jpg', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Dr James Paul', 'jin_paul@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '18.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Dr Ethan Noah', 'anthony@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '19.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Dr Michel Jonson', 'michel@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '20.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Dr Carlous Smith', 'Smth_carlous@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '21.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Dr Mark Tescrothic', 'mark_tescrothic@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '22.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Dr Mark Smith', 'mark_smith@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '23.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Dr Jin Paul', 'jin_paul1@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', '24.png', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Dr Anthony gonzalise', 'anthony1@gmail.com', NULL, '123', '712OsON06P2xe778i1CunntZ8eUhW1S1qJdPBu51lvgd0Eg1bCV8TNpPlqVS', '2021-10-20 04:18:50', '2021-10-20 04:18:50', '', '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Dr Jacson Desauza', 'Jacson@gmail.com', NULL, '123', NULL, '2021-10-20 04:18:50', '2021-10-20 04:18:50', NULL, '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'John Due', 'johndue@gmail.com', NULL, '123', '62eHqZuzRdkjTEkUi3iVG4ImtXdC5nuxjcpkNIHm336mgY0bC4gKrNIhx8Ss', '2021-10-20 05:03:15', '2021-10-20 05:03:15', '11.png', '9774085430', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Dejah Ullrich\r\n', 'patient@gmail.com', NULL, '123', 'MTDyjYv81OhVjm1sTwfGfQz1gyK1jV26x6CWL4rosqQxTDCMsyFNH7N6p66Z', '2021-10-20 06:19:18', '2021-10-20 06:19:18', '1603175222.jpg', '1234567890', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Ora Skiles\r\n', 'patient2@gmail.com', NULL, '123', NULL, '2021-10-20 07:25:21', '2021-10-20 07:25:21', '1608617888.jpg', '1234567890', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Delbert Bailey\r\n', 'patient3@gmail.com', NULL, '123', 'w63jyqZQkzf4aRTYpFYfgAmJ91tGJKk9uqTh6nb4RQOAAMu9RlgxyRlMq6zZ', '2021-10-20 07:27:34', '2021-10-20 07:27:34', '11.png', '1234567890', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Saazi', 'saazi@gmail.com', NULL, '123', NULL, '2021-10-20 10:30:47', '2021-10-20 10:30:47', '15.png', '123456789000', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Iwenge', 'doonenbarnabasiwenge@gmail.com', NULL, 'iwenge', 'sj1akBSTKNlxjDYtzV0CGJjRYveS3jZ1nSo66QC3ogp68ugaMiwyC7DLuVF7', '2021-10-22 15:38:53', '2021-10-22 15:38:53', '16.png', '09025741418', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Remona', 'remona@gmail.com', NULL, '123', NULL, '2021-10-25 09:32:11', '2021-10-25 09:32:11', '1603175222.jpg', '11223345566998', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'laura', 'laura@gmail.com', NULL, '123', NULL, '2021-10-28 05:16:58', '2021-10-28 05:16:58', '14.png', '1233666666666666', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'aaaa', 'aaaa@gmail.com', NULL, 'aaaa', '3FWYiOKZPNaM0BRKz3PASgEfSSe90jPFujO00jvksEUnTexYYs37eu08W9tb', '2021-11-01 09:40:08', '2021-11-01 09:40:08', NULL, '0132314968', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'fsnlndsflk', 'fnrtnls@gdkjfk.co', NULL, '123456', 'CZ6XhU1XK1AHZbEa6ER6GAMkFS7yGZcYnPe4t6XjC2AlMh1M8mKXopnsmclj', '2021-11-23 09:17:43', '2021-11-23 09:17:43', NULL, '0349893408', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Manveer', 'manveer9915@gmail.com', NULL, NULL, NULL, '2021-12-07 05:19:42', '2021-12-07 05:19:46', '11.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'majed Saeed', 'msaeed@ysys.co', NULL, 'msaeed', NULL, '2021-12-09 16:36:18', '2021-12-09 16:36:18', 'profile_222992.jpg', '770006050', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Dan', 'dan@gmail.com', NULL, '1234567', NULL, '2021-12-09 16:59:48', '2021-12-09 16:59:48', 'profile_249314.jpg', '996559771909', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'rian', 'xdukezbr@gmail.com', NULL, '12345', NULL, '2021-12-09 17:55:38', '2021-12-09 17:55:38', 'profile_846327.jpg', '169991341647', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'testing', 'clientdemocheck@gmail.com', NULL, 'hello', NULL, '2021-12-09 17:56:27', '2021-12-09 17:56:27', 'profile_855450.jpg', '8989898989', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Nelson Mandela', 'cikabrke@gmail.com', NULL, 'wxcvbn', NULL, '2021-12-11 09:17:49', '2021-12-11 09:17:49', 'profile_530807.jpg', '0620202020', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 's', 'anujjainbatu@gmail.com', NULL, '123456', NULL, '2021-12-11 10:37:00', '2021-12-11 10:37:00', 'profile_919631.jpg', '0123456789', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Paul', 'contato@irxweb.com.br', NULL, '123456qwe', NULL, '2021-12-11 11:49:22', '2021-12-11 11:49:22', 'profile_946342.jpg', '123456789', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'harsha', 's.harsha007@gmail.com', NULL, 'harsha', NULL, '2021-12-11 13:42:30', '2022-02-04 14:09:33', 'profile-882548.png', '7845269901', 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'mohamed', 'm9hamed@mohamed.com', NULL, 'askary20', NULL, '2021-12-13 10:16:08', '2021-12-13 10:16:08', 'profile_491995.jpg', '010000000', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'test', 'tesst@tesst.com', NULL, '123456', NULL, '2021-12-13 13:23:26', '2021-12-13 13:23:26', 'profile_483440.jpg', '5555555555', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'John loan', 'john.loan@mail.com', NULL, 'architrave', NULL, '2021-12-13 20:41:09', '2021-12-13 20:41:09', 'profile_332274.jpg', '35623547896', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Jim Morrison', 'apposto.it@gmail.com', NULL, 'architrave', NULL, '2021-12-13 21:06:31', '2021-12-13 21:06:31', 'profile_446420.jpg', '36952365478', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '1', 'rashi@gmail.com', NULL, '123', NULL, '2021-12-14 17:45:14', '2022-01-06 10:23:25', '', '22334455677', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'srin', 'cnu.srini@gmail.com', NULL, 'Admin@1212', NULL, '2021-12-14 17:47:14', '2021-12-14 17:47:14', 'profile_820393.jpg', '9173317411', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'JUNAID KHAN', 'junaidgcd@gmail.com', NULL, '123', 'ewEsO7zkLSXJHumtviV8J8K7SH7cL6EI4n0gfU7LFRgg5BndgLUqkx4W00Et', '2021-12-15 00:26:18', '2021-12-15 00:26:18', NULL, '8324946925', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'pary', 'pary@gmail.com', NULL, '123456', NULL, '2021-12-15 09:18:36', '2021-12-15 09:18:36', 'profile_483940.jpg', '3636363636', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'this', 'tho@gmail.com', NULL, '123456', NULL, '2021-12-15 20:18:44', '2021-12-15 20:18:44', 'profile_996790.jpg', '9211690165', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'spalber', 'spalber@mail.com', NULL, '55555555', NULL, '2021-12-16 21:16:35', '2021-12-16 21:16:35', NULL, '8787878787', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'akhil', 'akhilsraj.88@gmail.com', NULL, '5555555555', NULL, '2021-12-17 10:03:49', '2021-12-17 10:03:49', 'profile_656947.jpg', '6969696969', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'walid', 'wibonela@ahrnfoundation.org', NULL, 'dduve12', NULL, '2021-12-18 14:24:37', '2021-12-18 14:24:37', 'profile_900450.jpg', '0736363666', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'WIBOGenius', 'wiboscience@gmail.com', NULL, 'dduve12', 'ZfNLoe5pAOIB6oQfspzrnAz3ZlyhqZSplA4b6DQI94bcUbWxzP4mQbVR24IA', '2021-12-18 14:29:37', '2021-12-18 14:29:37', NULL, '+1-541-754-3010', 1, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Kalpesh', 'abc@123.com', NULL, '1234567890', NULL, '2021-12-19 10:20:29', '2021-12-19 10:20:29', 'profile_911951.jpg', '9876543210', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'bidyot', 'bidyot.das@gmail.com', NULL, '123456', NULL, '2021-12-19 13:46:33', '2021-12-19 13:46:33', 'profile_347783.jpg', '8888888888', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'rui', 'ads@gmail.com', NULL, '93398905', NULL, '2021-12-20 14:15:58', '2021-12-20 14:15:58', 'profile_485219.jpg', '5521985632255', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'alefe', 'altdesigner.br@gmail.com', NULL, 'alt123', NULL, '2021-12-20 15:04:33', '2022-01-25 04:10:22', 'profile-592018.png', '33999316789', 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'naga kishore', 'nbhupathi@gmail.com', NULL, 'naga_1986', NULL, '2021-12-22 12:49:21', '2021-12-22 12:49:21', 'profile_158699.jpg', '9966442333', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'byzed amin', 'byzedbin3@gmail.com', NULL, '123456', NULL, '2021-12-23 17:10:21', '2021-12-23 17:10:21', 'profile_698688.jpg', '01830747554', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'abc', 'qwerty11@gmail.com', NULL, '123456', NULL, '2021-12-23 22:25:49', '2021-12-23 22:25:49', 'profile_269560.jpg', '9876543210', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'OWBE WEST', 'sajadesignstudio@gmail.com', NULL, '123456789', NULL, '2021-12-26 18:34:42', '2021-12-26 18:34:42', 'profile_110909.jpg', '05423327264', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Erkan', 'rookiesballnews@gmail.com', NULL, '159357852', NULL, '2021-12-27 13:13:10', '2021-12-27 13:13:10', 'profile_160741.jpg', '5255252525', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'tukangnyontek', 'ee@gmail.com', NULL, 'Rahasia@123', NULL, '2021-12-28 01:59:34', '2021-12-28 01:59:34', 'profile_996652.jpg', '98765432', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'jov ramos', 'xanderhdz90@gmail.com', NULL, '112233', NULL, '2021-12-28 02:44:01', '2021-12-28 02:44:01', 'profile_255899.jpg', '9511452595', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'tarik', 'web8844@gmail.com', NULL, '123456', NULL, '2022-01-01 12:16:43', '2022-01-01 12:16:43', 'profile_980720.jpg', '0708080159', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'qr', 'gabrielpatricksouza7@gmail.com', NULL, '1234567', NULL, '2022-01-02 18:47:40', '2022-01-02 18:47:40', 'profile_146416.jpg', '389999999', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'raj', 'raj@gmail.com', NULL, '123456', NULL, '2022-01-03 12:55:10', '2022-01-03 12:55:10', 'profile_525276.jpg', '3333333333', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Rashi', 'sharmarashi9719@gmail.com', NULL, NULL, NULL, '2022-01-06 07:14:54', '2022-01-18 09:16:00', 'profile-744719.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Amrinder', 'am@gmail.com', NULL, '123', NULL, '2022-01-06 08:01:59', '2022-01-06 08:01:59', 'profile_561754.jpg', '2580255025800', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Rashi', 'rashi23@gmail.com', NULL, '123', NULL, '2022-01-06 10:28:31', '2022-01-06 10:31:20', '', '2255880099663', 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'M', 'null', NULL, NULL, NULL, '2022-01-07 23:54:29', '2022-01-07 23:54:29', '', NULL, 3, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'geon', 'geogatedproject1119@gmail.com', NULL, '123456Dani', NULL, '2022-01-08 00:01:00', '2022-01-08 00:01:00', 'profile_348791.jpg', '99999999', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'geon projectine', 'geogatedproject1118@gmail.com', NULL, '123456', 'bAKZTQKi3KU3dug5WCUmPzCF5DpQqVUmMW7AjvmCbhrHIJ6mb4gj3TTHDNE8', '2022-01-08 00:11:03', '2022-01-08 00:11:03', NULL, '02552552552', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Jasmine', 'jaz@gmail.com', NULL, '123', NULL, '2022-01-12 03:54:19', '2022-01-12 03:54:19', 'profile_327549.jpg', '1122334455', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'khawar', 'khawar.exzot@gmail.com', NULL, NULL, NULL, '2022-01-17 19:11:42', '2022-01-17 19:11:46', 'profile-842449.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Ya', '222124dan@gmail.com', NULL, NULL, NULL, '2022-01-17 19:29:31', '2022-01-17 19:29:35', 'profile-696812.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Saleeh', 'saleeh.office@gmail.com', NULL, NULL, NULL, '2022-01-19 01:34:19', '2022-01-19 01:34:21', 'profile-505076.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Waqar', 'qaribhinder@gmail.com', NULL, NULL, NULL, '2022-01-19 03:41:57', '2022-01-19 03:42:00', 'profile-659156.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'kh', 'kh@gmail.com', NULL, '123456', NULL, '2022-01-19 11:07:48', '2022-01-19 11:07:48', 'profile_743871.jpg', '774731743', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Omar', 'dfactorys@gmail.com', NULL, NULL, NULL, '2022-01-19 11:46:04', '2022-01-19 11:46:06', 'profile-214976.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'samer', 'samermh390@gmail.com', NULL, NULL, NULL, '2022-01-20 03:17:34', '2022-01-20 03:17:38', 'profile-147630.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Manglo', 'manglocreative@gmail.com', NULL, NULL, NULL, '2022-01-20 13:21:19', '2022-01-20 13:21:21', 'profile-122128.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Meme', 'mmarii9800@gmail.com', NULL, NULL, NULL, '2022-01-20 14:06:05', '2022-01-20 14:06:08', 'profile-164102.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'hshahah', 'admin@gmail.com.ru', NULL, '123', NULL, '2022-01-20 17:31:37', '2022-01-20 17:31:37', 'profile_157411.jpg', '56443121581848', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '3C', 'dhan3aj@gmail.com', NULL, NULL, NULL, '2022-01-20 22:36:47', '2022-01-20 22:36:49', 'profile-120717.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'VMS19', 'vms19.info@gmail.com', NULL, NULL, NULL, '2022-01-22 08:14:52', '2022-01-22 08:14:56', 'profile-592370.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Srinivas', 'ratnamsrinivas150@gmail.com', NULL, NULL, NULL, '2022-01-22 16:30:56', '2022-01-22 16:30:57', 'profile-438536.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'chinh', 'sendtochinh@gmail.com', NULL, '123456789', NULL, '2022-01-25 14:54:11', '2022-01-25 14:54:11', 'profile_343982.jpg', '089978788497', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Mohammad', 'miichlas@gmail.com', NULL, NULL, NULL, '2022-01-27 15:19:01', '2022-01-27 15:19:04', 'profile-979155.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Kikas_', 'braylinstorres@gmail.com', NULL, NULL, NULL, '2022-01-28 23:17:43', '2022-01-28 23:17:46', 'profile-755822.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'محمود', 'izome.kon@gmail.com', NULL, NULL, NULL, '2022-01-29 19:57:29', '2022-01-29 19:57:32', 'profile-101299.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Bet', 'betestifanos@gmail.com', NULL, NULL, NULL, '2022-01-31 20:36:55', '2022-01-31 20:36:59', 'profile-416035.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'mir', 'fah@gmail.com', NULL, '12345', NULL, '2022-02-01 14:13:02', '2022-02-01 14:13:02', 'profile_880037.jpg', '148865756', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Jessie', 'jakedagohoy03@gmail.com', NULL, NULL, NULL, '2022-02-03 00:17:16', '2022-02-03 00:17:18', 'profile-839323.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'masum.ahammed', 'masum.ahammed500@gmail.com', NULL, '00001111', NULL, '2022-02-04 06:37:14', '2022-02-04 06:37:14', 'profile_265846.jpg', '9126250084', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Nipuna', 'nipunaitindia@gmail.com', NULL, NULL, NULL, '2022-02-05 06:26:10', '2022-02-05 06:26:13', 'profile-862595.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Fábio', 'binhoalvez@gmail.com', NULL, NULL, NULL, '2022-02-07 12:40:11', '2022-02-15 10:24:13', 'profile-245493.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Gonçalo', 'goncalo.holtremann@gmail.com', NULL, 'password', NULL, '2022-02-08 00:40:39', '2022-02-08 00:40:39', 'profile_435628.jpg', '212213913', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Moha', 'emohasalah@gmail.com', NULL, NULL, NULL, '2022-02-09 22:33:22', '2022-02-09 22:33:29', 'profile-951258.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'ahmad', 'ahmad@gmail.com', NULL, '111111', NULL, '2022-02-10 10:42:14', '2022-02-10 10:42:14', 'profile_813515.jpg', '123456789', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Stanley', 'stanleykiven@gmail.com', NULL, 'dkxb', NULL, '2022-02-11 15:52:11', '2022-02-11 16:00:06', 'profile-302209.png', '697448563', 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Abdullah alwajih', 'pro.abdullah.alwajih@gmail.com', NULL, '773946646', NULL, '2022-02-13 05:56:30', '2022-02-13 05:56:30', 'profile_466029.svg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Abdullah Al-Wajih', 'Abdullah.alwajih@gmail.com', NULL, '773946646', NULL, '2022-02-13 06:20:56', '2022-02-13 06:20:56', 'profile_858951.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Abdullah Al-Wajih', 'abdullah.alwajih2@gmail.com', NULL, '773946646', NULL, '2022-02-13 06:23:49', '2022-02-13 06:23:49', 'profile_529395.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'ts', 'test@gmail.com', NULL, '123456', NULL, '2022-02-13 10:14:45', '2022-02-13 10:14:45', 'profile_701733.jpg', '775775775', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '승열', 'back33333@gmail.com', NULL, NULL, NULL, '2022-02-13 10:27:07', '2022-02-13 10:27:08', 'profile-556929.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'abdullah alwajih', 'abdullah.alwajih3@gmail.com', NULL, '773946646', NULL, '2022-02-14 08:27:23', '2022-02-14 08:27:23', 'profile_246607.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Abdullah AlWajih', 'abdullah.alwajih4@gmail.com', NULL, '773946646', NULL, '2022-02-14 10:49:28', '2022-02-14 10:49:28', 'profile_315284.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Abdullah AlWajih', 'abdullah.alwajih5@gmail.com', NULL, '773946646', NULL, '2022-02-15 06:13:56', '2022-02-15 06:13:56', 'profile_127766.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'abdullah alwajih', 'abdullah.alwajih6@gmail.com', NULL, '773946646', NULL, '2022-02-15 06:19:53', '2022-02-15 06:19:53', 'profile_251890.jpg', '773946646', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'mahipal', 'mahipalyadav007@gmail.com', NULL, NULL, NULL, '2022-02-15 16:26:54', '2022-02-15 16:26:56', 'profile-190886.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Mohamed', 'mohamed.n.shiekh@gmail.com', NULL, NULL, NULL, '2022-02-20 02:22:45', '2022-02-20 02:22:53', 'profile-752373.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'blacktomy', 'zurxxtz@gmail.com', NULL, NULL, NULL, '2022-02-20 20:05:43', '2022-02-20 20:05:45', 'profile-156064.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Arslan', 'arslanfarooq104@gmail.com', NULL, NULL, NULL, '2022-02-21 17:42:46', '2022-02-21 17:42:49', 'profile-710202.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'qwdsas', 'ad@hh.com', NULL, 'hhhhh', 'ytoKLzrFIxl7WLQJ5EbxDx4nsDCD57sa4Fz7nve9oiNXvXPtvoesOrvWovDY', '2022-02-21 17:42:48', '2022-02-21 17:42:48', NULL, '7778888888', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Rehmat', 'sekhons@yahoo.com', NULL, 'kidan2223', NULL, '2022-02-22 04:55:40', '2022-02-22 04:55:40', 'profile_603823.jpg', '9888414149', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'ufuk', 'ufuk@gmail.com', NULL, '12345678', 'N0HC69OcqzC2dVHIq6Pxqfbk7mgjkToL2fou58i11wKxvUjOpW9jwU9BZUQ1', '2022-02-22 06:04:05', '2022-02-22 06:04:05', NULL, '34345345', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'hojjat bandani', 'hojjat.bandani@gmail.com', NULL, 'Hojjat1368', 'u0D6K2hq5oOzZXiYYODjGeH9qvWhanD5iAB6Ca9KneGww8UEMOHn5nX0rrwe', '2022-02-22 07:08:38', '2022-02-22 07:08:38', NULL, '05142221472', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Andro', 'mailcode0806@gmail.com', NULL, '123456', 'Uu7DXpAiUrhBxhMtNziBryQ32c1GPtIoeEeAU0rJVTha8R9NzJDR0uQNjLEp', '2022-02-22 17:13:02', '2022-02-22 17:13:28', 'profile_319452.png', '+1234567890', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'kaysar islam', 'kaysar@gmail.com', NULL, '123456', 'ptjAxDcBXRX9D8GvXeNLh1N0co5egzBO5HeQfM13wVxjEENxlkX2ITH3mqiS', '2022-02-23 06:36:17', '2022-02-23 06:36:17', NULL, '021156444', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Mohammed Al Masri', 'mohd.masri.cm@gmail.com', NULL, 'Masri123!@#', 'DGGqPpT4dfUayQlyWcEZOVNZJjmbdZabjgr2wDnoF8f0Tks3HpNYdkEOBFNt', '2022-02-23 17:47:48', '2022-02-23 17:47:48', NULL, '+966535217775', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Durrell NGOUANET', 'vallessdurrell@gmail.com', NULL, '123456', '8ydVKDixX8jvuCQsZEA0CdikmYJ5P8iTHUCZNHmPFFru2uVhEDIMu2l5Ezzj', '2022-02-24 11:44:56', '2022-02-24 11:44:56', NULL, '+237699556021', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'test123', 'test123@gmail.com', NULL, '123', '3I7h0bojcxKPiuMqNk0jI0HIyKHmoJoT6vWoo0qfoqPqt4pipTSPRrCeFux5', '2022-02-24 12:07:52', '2022-03-03 13:12:25', 'profile_342645.jpg', '123123123', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Mekki', 'mekki.ahmedi@gmail.com', NULL, NULL, NULL, '2022-02-24 16:59:18', '2022-02-24 16:59:19', 'profile-169689.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'rama krishna', 'rkchowdarysimple@gmail.com', NULL, '123456789', NULL, '2022-02-24 18:08:03', '2022-02-24 18:08:03', 'profile_854183.jpg', '9553453335', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'mohit', 'mohitsah0@gmail.com', NULL, NULL, NULL, '2022-02-25 06:46:28', '2022-02-25 06:46:32', 'profile-730784.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'pedro', 'pmlozanos19@gmail.com', NULL, NULL, NULL, '2022-02-25 16:32:22', '2022-02-25 16:32:23', 'profile-616875.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'deneme', 'rag@rag.rag', NULL, '12345', NULL, '2022-02-25 19:10:39', '2022-02-25 19:10:39', 'profile_823484.jpg', '2555555', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Mian Mujeeb', 'mianmujee@mail.com', NULL, 'password@123', 'fH9SRZ3wWp374EOIFkpBTAetSwGw4e1rOzVIcrlwGCrPmoJNslES6eh64QC4', '2022-02-26 18:46:02', '2022-02-26 18:46:02', NULL, '03117455740', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Samsung', 'tellicyprus@gmail.com', NULL, '1234', 'LNz0kq2mj9w9rVUe0xF2Jbrbyuy38tZuTZ2GGflKjNYgvyy1u1h6s44oUZNa', '2022-02-28 06:17:17', '2022-02-28 06:17:17', NULL, '23123123', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'sourav', 'souravpujharipujhari@gmail.com', NULL, 'spp31', NULL, '2022-02-28 13:40:43', '2022-02-28 13:40:43', 'profile_413157.jpg', '9348622201', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'test', 'imadelhassani@gmail.com', NULL, 'goodtime', 'tf4fL3lL9GPpfABaaKq8MsJHLwNN1fUyglmBXvxBpIAy0r9W2IsUY0qrRuE6', '2022-03-02 11:08:57', '2022-03-02 11:08:57', NULL, '060000000000', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'flroence', 'emathrix@gmail.com', NULL, 'itsmeflorence', 'oc0IDFVJROvJSjmVDLxVsQ3EO670KNCtxRHEDRHmAkzAVMJbzlGRP6Bhe13L', '2022-03-02 20:23:29', '2022-03-02 20:23:29', NULL, '+639773623849', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Phantom', 'lamechehou9@gmail.com', NULL, NULL, NULL, '2022-03-03 10:05:36', '2022-03-03 10:06:08', 'profile-247316.png', NULL, 2, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'asdf', 'admin@gmaill.com', NULL, '0000', 'EFIbvw0idGSaVcrM6aNXn6asRLqp9ojVWoJlCIJzSk3ST1AjT4pJdoBAKSjb', '2022-03-03 12:42:44', '2022-03-03 12:42:44', NULL, 'admin@gmaill.com', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'test', 'test@g.com', NULL, '000000', 'gmhYh4QzrmIYJTqIC4cTnJjwlBQOvPao4YFYzYhZuOVdViNbzIUBaUp6txIC', '2022-03-03 12:43:20', '2022-03-03 12:43:20', NULL, 'test@g.com', 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_service`
--
ALTER TABLE `department_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_package`
--
ALTER TABLE `price_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `department_service`
--
ALTER TABLE `department_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `price_package`
--
ALTER TABLE `price_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
