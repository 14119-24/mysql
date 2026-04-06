-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2026 at 01:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `log_id` int(11) NOT NULL,
  `voter_id` varchar(20) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`log_id`, `voter_id`, `action`, `details`, `ip_address`, `timestamp`) VALUES
(1, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 20:11:26'),
(2, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 20:19:29'),
(3, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 20:20:23'),
(4, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 20:32:15'),
(5, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 20:48:46'),
(6, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:08:25'),
(7, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 21:17:56'),
(8, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:18:19'),
(9, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 21:21:38'),
(10, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:22:05'),
(11, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 21:26:45'),
(12, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:28:08'),
(13, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 21:34:43'),
(14, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:34:49'),
(15, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 21:40:56'),
(16, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 21:55:21'),
(17, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 22:09:25'),
(18, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 22:09:37'),
(19, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 22:09:43'),
(20, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:04:43'),
(21, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:18:22'),
(22, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:20:52'),
(23, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:26:10'),
(24, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:26:28'),
(25, 'admin@votingsystem.l', 'START_ELECTION', 'Started election ID: 5', '::1', '2026-03-31 23:28:27'),
(26, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 23:45:39'),
(27, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: peter Kiprono to election 5', '::1', '2026-03-31 23:50:26'),
(28, 'VOTER26BB1228', 'REGISTRATION', 'New voter registered: qa.register.1775001209@example.com', NULL, '2026-03-31 23:53:29'),
(29, 'VOTERD24B9AEA', 'REGISTRATION', 'New voter registered: egh810@gmail.com', NULL, '2026-03-31 23:54:04'),
(30, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-03-31 23:54:21'),
(31, 'admin@votingsystem.l', 'VERIFY_VOTER', 'Verified voter: VOTERD24B9AEA', '::1', '2026-03-31 23:54:37'),
(32, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-03-31 23:54:41'),
(33, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-03-31 23:55:03'),
(37, 'VOTERD24B9AEA', 'VOTE_CAST', 'Vote cast in election 5', '::1', '2026-04-01 00:07:46'),
(38, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 00:08:13'),
(39, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 00:08:26'),
(40, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 00:22:09'),
(44, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 00:25:06'),
(45, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 00:36:01'),
(46, 'admin@votingsystem.l', 'SAVE_SETTINGS', 'Updated system settings', '::1', '2026-04-01 00:36:01'),
(47, 'admin@votingsystem.l', 'CREATE_SUPPORT_REQUEST', 'Created support request #1', '::1', '2026-04-01 00:36:01'),
(48, 'admin@votingsystem.l', 'UPDATE_SUPPORT_REQUEST', 'Updated support request #1 to resolved', '::1', '2026-04-01 00:36:01'),
(49, 'admin@votingsystem.l', 'SAVE_SETTINGS', 'Updated system settings', '::1', '2026-04-01 00:36:01'),
(50, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 08:28:06'),
(51, 'admin@votingsystem.l', 'START_ELECTION', 'Started election ID: 4', '::1', '2026-04-01 08:30:11'),
(52, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: Noah Kiprop to election 4', '::1', '2026-04-01 08:30:21'),
(53, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: peter Kiprono to election 4', '::1', '2026-04-01 08:30:21'),
(54, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 08:30:38'),
(55, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 08:30:50'),
(56, 'VOTERD24B9AEA', 'VOTE_CAST', 'Vote cast in election 4', '::1', '2026-04-01 08:32:15'),
(57, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 08:32:33'),
(58, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 08:32:40'),
(59, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 08:33:58'),
(60, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 09:05:09'),
(61, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 09:05:28'),
(62, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 09:05:37'),
(63, 'admin@votingsystem.l', 'CREATE_ELECTION', 'Created election: member of county assembly', '::1', '2026-04-01 09:06:28'),
(64, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: Noah Kiprop to election 6', '::1', '2026-04-01 09:06:41'),
(65, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: peter Kiprono to election 6', '::1', '2026-04-01 09:06:41'),
(66, 'admin@votingsystem.l', 'START_ELECTION', 'Started election ID: 6', '::1', '2026-04-01 09:06:57'),
(67, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 09:07:27'),
(68, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 09:07:36'),
(69, 'VOTERD24B9AEA', 'VOTE_CAST', 'Vote cast in election 6', '::1', '2026-04-01 09:08:31'),
(70, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 09:08:44'),
(71, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 09:08:51'),
(72, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 09:10:46'),
(73, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 09:11:04'),
(74, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 09:13:38'),
(75, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 10:02:11'),
(76, 'admin@votingsystem.l', 'CREATE_ELECTION', 'Created election: MP Election', '::1', '2026-04-01 10:02:47'),
(77, 'admin@votingsystem.l', 'START_ELECTION', 'Started election ID: 7', '::1', '2026-04-01 10:03:18'),
(78, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 10:08:11'),
(79, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 10:35:47'),
(80, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:06:33'),
(81, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 11:06:40'),
(82, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:07:08'),
(83, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 11:07:20'),
(84, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:08:29'),
(85, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 11:08:33'),
(86, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:35:49'),
(87, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-01 11:43:56'),
(88, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:44:07'),
(89, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 11:47:54'),
(90, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:48:26'),
(91, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 11:54:04'),
(92, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 11:54:24'),
(93, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-01 13:17:17'),
(94, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-01 18:26:47'),
(95, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-02 06:50:28'),
(96, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-02 06:50:46'),
(97, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-02 06:50:53'),
(98, 'admin@votingsystem.l', 'CREATE_ELECTION', 'Created election: kutus mca', '::1', '2026-04-02 06:51:31'),
(99, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: kipyegon to election 8', '::1', '2026-04-02 06:51:59'),
(100, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: Test Candidate to election 8', '::1', '2026-04-02 06:51:59'),
(101, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: Noah Kiprop to election 8', '::1', '2026-04-02 06:51:59'),
(102, 'admin@votingsystem.l', 'ADD_CANDIDATE', 'Added candidate: peter Kiprono to election 8', '::1', '2026-04-02 06:51:59'),
(103, 'admin@votingsystem.l', 'START_ELECTION', 'Started election ID: 8', '::1', '2026-04-02 06:52:12'),
(104, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-02 06:52:23'),
(105, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-02 06:52:29'),
(106, 'VOTERD24B9AEA', 'VOTE_CAST', 'Vote cast in election 8', '::1', '2026-04-02 06:53:00'),
(107, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-02 06:53:23'),
(108, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-02 06:53:37'),
(109, 'ADMINE4A79B71', 'LOGOUT', 'User logged out', NULL, '2026-04-02 06:54:00'),
(110, 'VOTERD24B9AEA', 'LOGIN', 'User logged in as voter', NULL, '2026-04-02 06:54:05'),
(111, 'VOTERD24B9AEA', 'LOGOUT', 'User logged out', NULL, '2026-04-02 06:57:39'),
(112, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-02 06:57:45'),
(113, 'ADMINE4A79B71', 'LOGIN', 'User logged in as admin', NULL, '2026-04-06 09:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `blockchain_blocks`
--

CREATE TABLE `blockchain_blocks` (
  `block_id` int(11) NOT NULL,
  `block_hash` varchar(255) NOT NULL,
  `previous_hash` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `nonce` int(11) DEFAULT 0,
  `difficulty` int(11) DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(11) NOT NULL,
  `block_hash` varchar(255) NOT NULL,
  `previous_hash` varchar(255) DEFAULT NULL,
  `merkle_root` varchar(255) DEFAULT NULL,
  `nonce` int(11) DEFAULT 0,
  `transactions_count` int(11) DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `block_hash`, `previous_hash`, `merkle_root`, `nonce`, `transactions_count`, `timestamp`) VALUES
(1, '9429ee724f61dfc38e7922f956e627dd66c48cf6cda348722ea8c0e00b5c1ab1', '0', 'e6d3989a2f745b2accae19d17cf9e164c851d3eb041b3b87bd9b85621d599d83', 0, 1, '2026-04-01 03:07:46'),
(3, '4ba895506b18d364e38304437dc95caa020e64d42043a5622bbdc612daab5372', '9429ee724f61dfc38e7922f956e627dd66c48cf6cda348722ea8c0e00b5c1ab1', '3c003589646608de50f35708d5bb3c5c4509cb9fc0b890a02e8465328d57adff', 0, 1, '2026-04-01 10:32:15'),
(4, '133be232bb47d9721c724df3e3912e04aba3f800f6a6cc115b825138bb5ca8bf', '0', 'b47e27311ac08735a3b877589c26763958289117d7155df2137d90a7ad054277', 0, 0, '2026-04-01 11:06:28'),
(5, '2ff8785a03e7d216c5cf07f706ed9400a4ba2488df7c9f66e394dcb207669102', '133be232bb47d9721c724df3e3912e04aba3f800f6a6cc115b825138bb5ca8bf', '4a149b984231794572ad8d8a82649f841195633a9696a6250c7a51c4a11e3c23', 0, 1, '2026-04-01 11:08:31'),
(6, 'e7411276436ad777deed2bad059beac2650f93ef1d7fc46713c3f8e57fc2e14b', '0', 'd36bf197d2335787ae4c8e1cf04f00cb8277d4d9b903aaeae1a6a99e6112dd03', 0, 0, '2026-04-01 12:02:47'),
(7, '6af3ae111e0fb0fe5e44cff701ff25f55df5d29eba90c900f36648ac4b4dcb89', '0', '5d8fb2c398da47e7c710c893fd3ebf4b41783aea968725c11b7549d513739a0e', 0, 0, '2026-04-02 08:51:31'),
(8, '7fe523bdb6fd64f5a64787edbfaded52b52e24b0f724c11128f85dbd8023e8c1', '6af3ae111e0fb0fe5e44cff701ff25f55df5d29eba90c900f36648ac4b4dcb89', 'a8f3d70c0292a1455b88b7082f4e57ad3a03aec3d345a49b467682888c942e51', 0, 1, '2026-04-02 08:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `candidate_name` varchar(255) NOT NULL,
  `party` varchar(255) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_id`, `election_id`, `candidate_name`, `party`, `symbol`, `created_at`) VALUES
(1, 5, 'peter Kiprono', 'Progress Party', 'Default', '2026-03-31 23:50:26'),
(2, 4, 'Noah Kiprop', 'Progress Party', 'Default', '2026-04-01 08:30:21'),
(3, 4, 'peter Kiprono', 'Progress Party', 'Default', '2026-04-01 08:30:21'),
(4, 6, 'Noah Kiprop', 'Progress Party', 'Default', '2026-04-01 09:06:41'),
(5, 6, 'peter Kiprono', 'Progress Party', 'Default', '2026-04-01 09:06:41'),
(6, 8, 'kipyegon', 'Future Party', 'Default', '2026-04-02 06:51:59'),
(7, 8, 'Test Candidate', 'Progress Party', 'Default', '2026-04-02 06:51:59'),
(8, 8, 'Noah Kiprop', 'Progress Party', 'Default', '2026-04-02 06:51:59'),
(9, 8, 'peter Kiprono', 'Progress Party', 'Default', '2026-04-02 06:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_activity_log`
--

CREATE TABLE `candidate_activity_log` (
  `log_id` int(11) NOT NULL,
  `candidate_id` varchar(50) NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_activity_log`
--

INSERT INTO `candidate_activity_log` (`log_id`, `candidate_id`, `action`, `description`, `ip_address`, `created_at`) VALUES
(1, 'CAN-82FE0884CB99D27F', 'registration', 'Candidate registered', NULL, '2026-03-31 19:53:50'),
(2, 'CAN-82FE0884CB99D27F', 'PAYMENT_CONFIRMED', 'Registration auto-completed after payment confirmation', '::1', '2026-03-31 20:48:04'),
(3, 'CAN-82FE0884CB99D27F', 'approval', 'Approved by admin. Notes: approved test', '::1', '2026-03-31 23:20:53'),
(4, 'CAN-97C86A5F573FE08E', 'registration', 'Candidate registered', NULL, '2026-04-01 08:27:31'),
(5, 'CAN-97C86A5F573FE08E', 'approval', 'Approved by admin. Notes: Approved by admin', '::1', '2026-04-01 08:28:29'),
(6, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 08:34:11'),
(7, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 08:50:58'),
(8, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 08:57:02'),
(9, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 09:14:40'),
(10, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 09:24:37'),
(11, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 10:08:24'),
(12, 'CAN-97C86A5F573FE08E', 'login', 'Candidate logged in', NULL, '2026-04-01 11:54:51'),
(13, 'CAN-97C86A5F573FE08E', 'PAYMENT_CONFIRMED', 'Registration auto-completed after payment confirmation', '::1', '2026-04-01 12:47:48'),
(14, 'CAN-C613A8D410C6582D', 'registration', 'Candidate registered', NULL, '2026-04-01 12:51:10'),
(15, 'CAN-943FD6D6D3037658', 'registration', 'Candidate registered', NULL, '2026-04-01 13:16:21'),
(16, 'CAN-943FD6D6D3037658', 'approval', 'Approved by admin. Notes: Approved by admin', '::1', '2026-04-01 13:17:29'),
(17, 'CAN-C613A8D410C6582D', 'approval', 'Approved by admin. Notes: Approved by admin', '::1', '2026-04-01 14:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_registrations`
--

CREATE TABLE `candidate_registrations` (
  `candidate_id` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `party` varchar(100) NOT NULL,
  `has_bsc_degree` tinyint(1) NOT NULL DEFAULT 0,
  `good_conduct` tinyint(1) NOT NULL DEFAULT 0,
  `campaign_vision` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `registration_fee` decimal(10,2) DEFAULT 5.00,
  `payment_status` enum('pending','completed','failed','cancelled') DEFAULT 'pending',
  `verification_status` enum('pending','verified','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_registrations`
--

INSERT INTO `candidate_registrations` (`candidate_id`, `full_name`, `email`, `password_hash`, `phone`, `date_of_birth`, `party`, `has_bsc_degree`, `good_conduct`, `campaign_vision`, `experience`, `registration_fee`, `payment_status`, `verification_status`, `created_at`, `updated_at`) VALUES
('CAN-82FE0884CB99D27F', 'peter Kiprono', '810egh@gmail.com', '$2y$10$SJRX9wYsqjYVbkAqxbjLveNq0pV1pGboNw4TA.A2k7s/yhEmku1DW', '0725830819', '1997-11-19', 'Progress Party', 1, 1, 'nkkn', 'nkjkmk', 5.00, 'completed', 'verified', '2026-03-31 19:53:50', '2026-03-31 23:20:53'),
('CAN-943FD6D6D3037658', 'kipyegon', 'kipyegon1229@gmail.com', '$2y$10$XgIvMdmoqsudr4ZzhanQwOWEPxN9CFOJYACWlVFbeLmdXkohrYd0y', '0746782258', '2003-02-04', 'Future Party', 1, 1, 'ghghghkj', 'gghghhg', 5.00, 'pending', 'verified', '2026-04-01 13:16:21', '2026-04-01 13:17:29'),
('CAN-97C86A5F573FE08E', 'Noah Kiprop', '38746428i@gmail.com', '$2y$10$liQGjRNlkfv4Ojg8.oNsbOxGp119XgQDJXrshvJU9Siu5u5pww.1K', '0758488543', '1998-02-03', 'Progress Party', 1, 1, 'visioanry', 'ever mp', 5.00, 'completed', 'verified', '2026-04-01 08:27:31', '2026-04-01 12:47:48'),
('CAN-C613A8D410C6582D', 'Test Candidate', 'testcandidate_04012026@example.com', '$2y$10$5/qzir6qRLVJvWFG9n07uuO/SzV9ww53d3N3fgaVFrS0LrX4pPtvK', '0712345678', '1990-01-01', 'Progress Party', 1, 1, 'Serve students', 'Leadership experience', 5.00, 'pending', 'verified', '2026-04-01 12:51:10', '2026-04-01 14:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `election_id` int(11) NOT NULL,
  `election_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('pending','ongoing','completed') DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`election_id`, `election_name`, `description`, `start_date`, `end_date`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'member of parliament', '', '2026-04-01 02:12:00', '2026-04-02 02:12:00', 'ongoing', NULL, '2026-03-31 23:17:58', '2026-04-01 08:30:11'),
(5, 'Test Election 2026', 'API sanity check', '2026-04-02 09:00:00', '2026-04-03 17:00:00', 'ongoing', NULL, '2026-03-31 23:18:22', '2026-03-31 23:28:26'),
(6, 'member of county assembly', 'ward', '2026-04-01 12:06:00', '2026-04-02 12:06:00', 'ongoing', NULL, '2026-04-01 09:06:28', '2026-04-01 09:06:57'),
(7, 'MP Election', 'Election', '2026-04-01 13:02:00', '2026-04-02 13:02:00', 'ongoing', NULL, '2026-04-01 10:02:47', '2026-04-01 10:03:18'),
(8, 'kutus mca', '2026', '2026-04-02 13:55:00', '2026-04-03 09:51:00', 'ongoing', NULL, '2026-04-02 06:51:31', '2026-04-02 06:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `transaction_id` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`response`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) DEFAULT 'KES',
  `status` varchar(20) DEFAULT 'pending' COMMENT 'pending, completed, failed, cancelled, expired',
  `mpesa_response_code` varchar(50) DEFAULT NULL,
  `mpesa_confirmation_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `transaction_id`, `phone_number`, `amount`, `currency`, `status`, `mpesa_response_code`, `mpesa_confirmation_code`, `created_at`, `expires_at`, `updated_at`) VALUES
(1, 'TXN-1774977393-36750', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc017138bb4', NULL, '2026-03-31 17:16:33', '2026-03-31 17:18:33', '2026-03-31 17:16:34'),
(2, 'TXN-1774977897-47807', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc036919e7e', NULL, '2026-03-31 17:24:57', '2026-03-31 17:26:57', '2026-03-31 17:24:58'),
(3, 'TXN-1774978126-98966', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc044e436b2', NULL, '2026-03-31 17:28:46', '2026-03-31 17:30:46', '2026-03-31 17:28:47'),
(4, 'TXN-1774978138-29753', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc045a86878', NULL, '2026-03-31 17:28:58', '2026-03-31 17:30:58', '2026-03-31 17:28:59'),
(5, 'TXN-1774979608-67939', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc0a18ef76a', NULL, '2026-03-31 17:53:28', '2026-03-31 17:55:28', '2026-03-31 17:53:30'),
(6, 'TXN-1774981017-40100', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc0f9955160', NULL, '2026-03-31 18:16:57', '2026-03-31 18:18:57', '2026-03-31 18:16:58'),
(7, 'TXN-1774985223-75406', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc20070c2d8', NULL, '2026-03-31 19:27:03', '2026-03-31 19:29:03', '2026-03-31 19:27:04'),
(8, 'TXN-1774986040-14519', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc23380c026', NULL, '2026-03-31 19:40:40', '2026-03-31 19:42:40', '2026-03-31 19:40:41'),
(9, 'TXN-1774986147-28372', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc23a38f62b', NULL, '2026-03-31 19:42:27', '2026-03-31 19:44:27', '2026-03-31 19:42:28'),
(10, 'TXN-1774986690-43739', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc25c293fd0', NULL, '2026-03-31 19:51:30', '2026-03-31 19:53:30', '2026-03-31 19:51:31'),
(11, 'TXN-1774986827-42120', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc264b64779', NULL, '2026-03-31 19:53:47', '2026-03-31 19:55:47', '2026-03-31 19:53:48'),
(12, 'TXN-1774987471-39439', '0758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cc28cf24518', NULL, '2026-03-31 20:04:31', '2026-03-31 20:06:31', '2026-03-31 20:04:32'),
(13, 'TXN-1774990083-26322', '0725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cc33037a7fb', NULL, '2026-03-31 20:48:03', '2026-03-31 20:50:03', '2026-03-31 20:48:04'),
(14, 'TXN-1775032025-59080', '0758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69ccd6d966a3e', NULL, '2026-04-01 08:27:05', '2026-04-01 08:29:05', '2026-04-01 08:27:06'),
(15, 'TXN-1775032048-69263', '0758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69ccd6f0ce922', NULL, '2026-04-01 08:27:28', '2026-04-01 08:29:28', '2026-04-01 08:27:29'),
(16, 'TXN-1775047667-77342', '254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd13f388468', NULL, '2026-04-01 12:47:47', '2026-04-01 12:49:47', '2026-04-01 12:47:48'),
(17, 'TXN-1775047676-74514', '254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd13fcda23c', NULL, '2026-04-01 12:47:56', '2026-04-01 12:49:56', '2026-04-01 12:47:57'),
(18, 'TXN-1775048146-38477', '254725830819', 5.00, 'KES', 'pending', 'SIMCHECK-69cd15d28de25', NULL, '2026-04-01 12:55:46', '2026-04-01 12:57:46', '2026-04-01 12:55:46'),
(19, 'TXN-1775048166-91808', '254725830819', 5.00, 'KES', 'pending', 'SIMCHECK-69cd15e6ad2a1', NULL, '2026-04-01 12:56:06', '2026-04-01 12:58:06', '2026-04-01 12:56:06'),
(20, 'TXN-1775048998-75748', '254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd192681bdd', NULL, '2026-04-01 13:09:58', '2026-04-01 13:11:58', '2026-04-01 13:09:59'),
(21, 'TXN-1775049001-45217', '254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd192907e68', NULL, '2026-04-01 13:10:01', '2026-04-01 13:12:01', '2026-04-01 13:10:02'),
(22, 'TXN-1775049277-70670', '+254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd1a3de79b0', NULL, '2026-04-01 13:14:37', '2026-04-01 13:16:37', '2026-04-01 13:14:38'),
(23, 'TXN-1775049301-26446', '+254725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cd1a55e2af9', NULL, '2026-04-01 13:15:01', '2026-04-01 13:17:01', '2026-04-01 13:15:02'),
(24, 'TXN-1775049329-67094', '+254725830819', 5.00, 'KES', 'completed', 'SIMCHECK-69cd1a71c6900', NULL, '2026-04-01 13:15:29', '2026-04-01 13:17:29', '2026-04-01 13:15:30'),
(25, 'TXN-1775049380-34640', '+254758488543', 5.00, 'KES', 'completed', 'SIMCHECK-69cd1aa45e6be', NULL, '2026-04-01 13:16:20', '2026-04-01 13:18:20', '2026-04-01 13:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `session_tokens`
--

CREATE TABLE `session_tokens` (
  `token_id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `request_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'general',
  `priority` varchar(50) NOT NULL DEFAULT 'medium',
  `message` text NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_key`, `setting_value`, `updated_by`, `updated_at`) VALUES
('admin_email', 'admin@votingsystem.local', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('allow_candidate_registration', '1', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('allow_voter_registration', '1', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('maintenance_mode', '0', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('notifications_enabled', '1', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('refresh_interval', '30', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('show_live_results', '1', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('support_phone', '+254 700 000 000', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('system_name', 'BlockVote Admin', 'admin@votingsystem.local', '2026-04-01 00:36:01'),
('timezone', 'Africa/Nairobi', 'admin@votingsystem.local', '2026-04-01 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tx_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `block_hash` varchar(255) NOT NULL,
  `voter_id_hash` varchar(255) DEFAULT NULL,
  `encrypted_vote` longtext DEFAULT NULL,
  `digital_signature` longtext DEFAULT NULL,
  `election_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`tx_id`, `transaction_id`, `block_hash`, `voter_id_hash`, `encrypted_vote`, `digital_signature`, `election_id`, `candidate_id`, `timestamp`) VALUES
(1, 'VTX0B04768E305D8AA508FCCDD8', '9429ee724f61dfc38e7922f956e627dd66c48cf6cda348722ea8c0e00b5c1ab1', '9719a2b15f560f912b79f3d87a529bb03d54e50c985c7299c6d6ee626c82f093', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NSwiY2FuZGlkYXRlX2lkIjoxLCJ0aW1lc3RhbXAiOjE3NzUwMDIwNjZ9', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NSwiY2FuZGlkYXRlX2lkIjoxLCJ0aW1lc3RhbXAiOjE3NzUwMDIwNjY3NzV9fFNJR05FRHwxNzc1MDAyMDY2Nzc1', 5, 1, '2026-04-01 03:07:46'),
(3, 'VTX5ABDACBC92813EB446716F69', '4ba895506b18d364e38304437dc95caa020e64d42043a5622bbdc612daab5372', '3af28c23476c26f39f1bce3742aa564bb513ecea294dfdf9f9847ced063a065a', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NCwiY2FuZGlkYXRlX2lkIjoyLCJ0aW1lc3RhbXAiOjE3NzUwMzIzMzV9', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NCwiY2FuZGlkYXRlX2lkIjoyLCJ0aW1lc3RhbXAiOjE3NzUwMzIzMzUxMzV9fFNJR05FRHwxNzc1MDMyMzM1MTM1', 4, 2, '2026-04-01 10:32:15'),
(4, 'VTX6B936CC6C5E6EE95EDC0A074', '2ff8785a03e7d216c5cf07f706ed9400a4ba2488df7c9f66e394dcb207669102', '73031c89baa494c68152e9930567c310ca91664743fd710b080d4fb42ba55066', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NiwiY2FuZGlkYXRlX2lkIjo0LCJ0aW1lc3RhbXAiOjE3NzUwMzQ1MTF9', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NiwiY2FuZGlkYXRlX2lkIjo0LCJ0aW1lc3RhbXAiOjE3NzUwMzQ1MTE3NTh9fFNJR05FRHwxNzc1MDM0NTExNzU4', 6, 4, '2026-04-01 11:08:31'),
(5, 'VTXFCC301E2DFDE7CABD86AAA6C', '7fe523bdb6fd64f5a64787edbfaded52b52e24b0f724c11128f85dbd8023e8c1', '34c29a01bc1f2eb99e08e96e7ca6449bfc3bc5789d2b1db732de7ef7af3ecc3d', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6OCwiY2FuZGlkYXRlX2lkIjo3LCJ0aW1lc3RhbXAiOjE3NzUxMTI3ODB9', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6OCwiY2FuZGlkYXRlX2lkIjo3LCJ0aW1lc3RhbXAiOjE3NzUxMTI3ODAxMTl9fFNJR05FRHwxNzc1MTEyNzgwMTE5', 8, 7, '2026-04-02 08:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `verification_queue`
--

CREATE TABLE `verification_queue` (
  `queue_id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `verified_by` int(11) DEFAULT NULL,
  `verification_date` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `national_id_hash` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `public_key` text DEFAULT NULL,
  `private_key_encrypted` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `has_voted` tinyint(1) DEFAULT 0,
  `user_type` enum('voter','admin') DEFAULT 'voter',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voter_id`, `national_id_hash`, `full_name`, `email`, `password_hash`, `public_key`, `private_key_encrypted`, `phone`, `dob`, `address`, `city`, `state`, `zip`, `is_verified`, `has_voted`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'ADMINE4A79B71', '0cb80822db50134e825fdd6c51d96c8b89d3a04cde33cebf9165db50bfbc99e0', 'Administrator', 'admin@votingsystem.local', '$2y$10$WcyQnVP5lL3CVCtO88h.ruOWxQ1DDF3FiKHzxbgldOqncG4HCNWw2', '93baaf4275114a97060de9a1f7a491631fcdfb7e9cede152f928cc2fd57c336b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'admin', '2026-02-17 21:10:57', '2026-02-17 21:10:57'),
(2, 'VOTERFB01FF19', '4d13a9d064d3758173d16b3da6229b6dac7bf075a2bdb3d7ee07f97a765d39bf', 'peter kiprono', 'eghkiprono@gmail.com', '$2y$10$jpVZxq/Qx/VmDrxlcd3y.ei7YsmmbOPR8dXzc11puJSFTzWWED.9.', 'b868268710b663868301efdc214f290558cfad20fc5e588351072d4ff0f9b75b', NULL, '0725830819', '2004-02-03', '143', 'nairobi', 'rift', '20106', 1, 0, 'voter', '2026-02-17 21:11:18', '2026-03-31 23:20:22'),
(3, 'VOTERE6638E9B', '3eaecfb2021c4b9734b384f8ffb278679429edac682c461c603be1eb27fd0461', 'peter kiprono', 'peter@gmail.com', '$2y$10$wFrUgaE8DmPQGnZ8U6QC.uifl7WMp/MAgr7tEr9kt5YjCN9Q1ep8i', 'ff0074a42716139033b2d830cb2565b41ab7bd12d40067a9a0c7305c86692229', NULL, '0725830819', '2002-02-05', '143', 'nairobi', 'rift', '20106', 1, 0, 'voter', '2026-02-17 21:13:37', '2026-03-31 23:20:16'),
(6, 'VOTERD24B9AEA', '201166cc68c27d507acf0fe05b85cb131490de0f81bb6c266b165b9f37c245bf', 'kiprono', 'egh810@gmail.com', '$2y$10$GQClOtnkNC6Yd8Y4BlTuK.KbDj5TPLg2L7xjNwN1gehrG45rAO39.', '4b031148cd24e13aaeca15652edba0ec80701b7afad82ea1fb0eec71ff1195db', 'b6bbd0b9be5283626b026072315c412f649be314f86b91fdc852bdb92ac7154dabb91ccb79109f260337eaa6ea57e30bd9ea6bbc2b4605561d64778298d44306', '0758488543', '2004-02-29', '143', 'nairobi', 'rift', '20106', 1, 1, 'voter', '2026-03-31 23:54:04', '2026-04-01 00:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `encrypted_vote` text NOT NULL,
  `vote_hash` varchar(255) NOT NULL,
  `block_hash` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `election_id`, `voter_id`, `candidate_id`, `encrypted_vote`, `vote_hash`, `block_hash`, `transaction_id`, `signature`, `timestamp`) VALUES
(2, 5, 'VOTERD24B9AEA', 1, 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NSwiY2FuZGlkYXRlX2lkIjoxLCJ0aW1lc3RhbXAiOjE3NzUwMDIwNjZ9', 'e6d3989a2f745b2accae19d17cf9e164c851d3eb041b3b87bd9b85621d599d83', '9429ee724f61dfc38e7922f956e627dd66c48cf6cda348722ea8c0e00b5c1ab1', 'VTX0B04768E305D8AA508FCCDD8', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NSwiY2FuZGlkYXRlX2lkIjoxLCJ0aW1lc3RhbXAiOjE3NzUwMDIwNjY3NzV9fFNJR05FRHwxNzc1MDAyMDY2Nzc1', '2026-04-01 00:07:46'),
(4, 4, 'VOTERD24B9AEA', 2, 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NCwiY2FuZGlkYXRlX2lkIjoyLCJ0aW1lc3RhbXAiOjE3NzUwMzIzMzV9', '3c003589646608de50f35708d5bb3c5c4509cb9fc0b890a02e8465328d57adff', '4ba895506b18d364e38304437dc95caa020e64d42043a5622bbdc612daab5372', 'VTX5ABDACBC92813EB446716F69', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NCwiY2FuZGlkYXRlX2lkIjoyLCJ0aW1lc3RhbXAiOjE3NzUwMzIzMzUxMzV9fFNJR05FRHwxNzc1MDMyMzM1MTM1', '2026-04-01 08:32:15'),
(5, 6, 'VOTERD24B9AEA', 4, 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NiwiY2FuZGlkYXRlX2lkIjo0LCJ0aW1lc3RhbXAiOjE3NzUwMzQ1MTF9', '4a149b984231794572ad8d8a82649f841195633a9696a6250c7a51c4a11e3c23', '2ff8785a03e7d216c5cf07f706ed9400a4ba2488df7c9f66e394dcb207669102', 'VTX6B936CC6C5E6EE95EDC0A074', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6NiwiY2FuZGlkYXRlX2lkIjo0LCJ0aW1lc3RhbXAiOjE3NzUwMzQ1MTE3NTh9fFNJR05FRHwxNzc1MDM0NTExNzU4', '2026-04-01 09:08:31'),
(6, 8, 'VOTERD24B9AEA', 7, 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6OCwiY2FuZGlkYXRlX2lkIjo3LCJ0aW1lc3RhbXAiOjE3NzUxMTI3ODB9', 'a8f3d70c0292a1455b88b7082f4e57ad3a03aec3d345a49b467682888c942e51', '7fe523bdb6fd64f5a64787edbfaded52b52e24b0f724c11128f85dbd8023e8c1', 'VTXFCC301E2DFDE7CABD86AAA6C', 'eyJ2b3Rlcl9pZCI6IlZPVEVSRDI0QjlBRUEiLCJlbGVjdGlvbl9pZCI6OCwiY2FuZGlkYXRlX2lkIjo3LCJ0aW1lc3RhbXAiOjE3NzUxMTI3ODAxMTl9fFNJR05FRHwxNzc1MTEyNzgwMTE5', '2026-04-02 06:53:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_voter_id` (`voter_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `blockchain_blocks`
--
ALTER TABLE `blockchain_blocks`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `block_hash` (`block_hash`),
  ADD KEY `idx_hash` (`block_hash`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `block_hash` (`block_hash`),
  ADD KEY `idx_block_hash` (`block_hash`),
  ADD KEY `idx_block_timestamp` (`timestamp`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`),
  ADD KEY `idx_election_id` (`election_id`);

--
-- Indexes for table `candidate_activity_log`
--
ALTER TABLE `candidate_activity_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_candidate_id` (`candidate_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `candidate_registrations`
--
ALTER TABLE `candidate_registrations`
  ADD PRIMARY KEY (`candidate_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_payment_status` (`payment_status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`election_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_dates` (`start_date`,`end_date`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `idx_voter_id` (`voter_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `idx_transaction_id` (`transaction_id`),
  ADD KEY `idx_phone_number` (`phone_number`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `session_tokens`
--
ALTER TABLE `session_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `voter_id` (`voter_id`),
  ADD KEY `idx_token` (`token`),
  ADD KEY `idx_expires_at` (`expires_at`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `idx_support_status` (`status`),
  ADD KEY `idx_support_created_at` (`created_at`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tx_id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `idx_transaction_id` (`transaction_id`),
  ADD KEY `idx_transaction_block_hash` (`block_hash`),
  ADD KEY `idx_transaction_timestamp` (`timestamp`),
  ADD KEY `idx_transaction_election` (`election_id`);

--
-- Indexes for table `verification_queue`
--
ALTER TABLE `verification_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD UNIQUE KEY `voter_id` (`voter_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voter_id` (`voter_id`),
  ADD UNIQUE KEY `national_id_hash` (`national_id_hash`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_voter_id` (`voter_id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_is_verified` (`is_verified`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `vote_hash` (`vote_hash`),
  ADD UNIQUE KEY `unique_voter_election` (`voter_id`,`election_id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `idx_election_id` (`election_id`),
  ADD KEY `idx_voter_id` (`voter_id`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `blockchain_blocks`
--
ALTER TABLE `blockchain_blocks`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `candidate_activity_log`
--
ALTER TABLE `candidate_activity_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `session_tokens`
--
ALTER TABLE `session_tokens`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verification_queue`
--
ALTER TABLE `verification_queue`
  MODIFY `queue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`);

--
-- Constraints for table `candidate_activity_log`
--
ALTER TABLE `candidate_activity_log`
  ADD CONSTRAINT `candidate_activity_log_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate_registrations` (`candidate_id`);

--
-- Constraints for table `session_tokens`
--
ALTER TABLE `session_tokens`
  ADD CONSTRAINT `session_tokens_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`voter_id`);

--
-- Constraints for table `verification_queue`
--
ALTER TABLE `verification_queue`
  ADD CONSTRAINT `verification_queue_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`voter_id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`election_id`) REFERENCES `elections` (`election_id`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
