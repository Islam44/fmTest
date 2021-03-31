-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2021 at 11:57 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knowledg_testing`
--

DELIMITER $$
--
-- Procedures
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `correct` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `assessment_type_id` int(11) DEFAULT NULL,
  `success_percentage` double(8,2) DEFAULT NULL,
  `number_of_attempts` int(11) DEFAULT NULL,
  `duration` double(8,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_containers`
--

CREATE TABLE `assessment_containers` (
  `id` int(10) UNSIGNED NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_container_question_details`
--

CREATE TABLE `assessment_container_question_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `question_difficulty_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `assessment_container_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_container_topics`
--

CREATE TABLE `assessment_container_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `assessment_container_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `all_topics` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_types`
--

CREATE TABLE `assessment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessment_types`
--

INSERT INTO `assessment_types` (`id`, `type`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Homework', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Quiz', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Exam', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(4, 'Level_test', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `assistants_permissions`
--

CREATE TABLE `assistants_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `assistant_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assistants_permissions`
--

INSERT INTO `assistants_permissions` (`id`, `assistant_id`, `permission_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 0, 0, NULL, NULL),
(2, 12, 3, 0, 0, NULL, NULL),
(3, 12, 5, 0, 0, NULL, NULL),
(4, 13, 2, 0, 0, NULL, NULL),
(5, 13, 4, 0, 0, NULL, NULL),
(6, 13, 6, 0, 0, NULL, NULL),
(7, 14, 1, 0, 0, NULL, NULL),
(8, 14, 2, 0, 0, NULL, NULL),
(9, 14, 3, 0, 0, NULL, NULL),
(10, 14, 4, 0, 0, NULL, NULL),
(11, 14, 5, 0, 0, NULL, NULL),
(12, 14, 6, 0, 0, NULL, NULL),
(13, 16, 1, 0, 0, NULL, NULL),
(14, 16, 2, 0, 0, NULL, NULL),
(15, 16, 3, 0, 0, NULL, NULL),
(16, 16, 4, 0, 0, NULL, NULL),
(17, 16, 5, 0, 0, NULL, NULL),
(18, 16, 6, 0, 0, NULL, NULL),
(19, 17, 1, 0, 0, NULL, NULL),
(20, 17, 3, 0, 0, NULL, NULL),
(21, 17, 4, 0, 0, NULL, NULL),
(22, 19, 2, 0, 0, NULL, NULL),
(23, 19, 4, 0, 0, NULL, NULL),
(24, 19, 6, 0, 0, NULL, NULL),
(25, 36, 1, 0, 0, NULL, NULL),
(27, 36, 3, 0, 0, NULL, NULL),
(29, 36, 5, 0, 0, NULL, NULL),
(65, 19, 5, 0, 0, NULL, NULL),
(31, 35, 1, 0, 0, NULL, NULL),
(32, 35, 2, 0, 0, NULL, NULL),
(33, 35, 3, 0, 0, NULL, NULL),
(34, 35, 4, 0, 0, NULL, NULL),
(35, 35, 5, 0, 0, NULL, NULL),
(36, 35, 6, 0, 0, NULL, NULL),
(37, 37, 1, 0, 0, NULL, NULL),
(48, 37, 5, 0, 0, NULL, NULL),
(47, 37, 4, 0, 0, NULL, NULL),
(46, 37, 3, 0, 0, NULL, NULL),
(45, 37, 2, 0, 0, NULL, NULL),
(64, 19, 3, 0, 0, NULL, NULL),
(43, 38, 1, 0, 0, NULL, NULL),
(49, 37, 6, 0, 0, NULL, NULL),
(63, 19, 1, 0, 0, NULL, NULL),
(62, 17, 6, 0, 0, NULL, NULL),
(61, 17, 5, 0, 0, NULL, NULL),
(60, 17, 2, 0, 0, NULL, NULL),
(54, 43, 1, 0, 0, NULL, NULL),
(55, 43, 2, 0, 0, NULL, NULL),
(56, 43, 3, 0, 0, NULL, NULL),
(57, 43, 4, 0, 0, NULL, NULL),
(58, 43, 5, 0, 0, NULL, NULL),
(59, 43, 6, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_status`
--

CREATE TABLE `attendance_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_status`
--

INSERT INTO `attendance_status` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Attended', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Absent', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Rescheduled', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_difficulties`
--

CREATE TABLE `cgp_difficulties` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_difficulties`
--

INSERT INTO `cgp_difficulties` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'easy', '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'meduim', '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'hard', '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_generated_quizzes`
--

CREATE TABLE `cgp_generated_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_generated_quizzes`
--

INSERT INTO `cgp_generated_quizzes` (`id`, `quiz_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, '2021-01-30 14:49:18'),
(2, 2, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL),
(5, 2, NULL, NULL, NULL),
(6, 2, NULL, NULL, NULL),
(7, 2, NULL, NULL, NULL),
(8, 2, NULL, NULL, NULL),
(53, 1, NULL, NULL, NULL),
(52, 1, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL),
(12, 1, NULL, NULL, NULL),
(13, 1, NULL, NULL, NULL),
(51, 1, NULL, NULL, NULL),
(50, 1, NULL, NULL, NULL),
(49, 1, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL),
(48, 1, NULL, NULL, NULL),
(47, 1, NULL, NULL, NULL),
(46, 1, NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL),
(22, 1, NULL, NULL, NULL),
(45, 1, NULL, NULL, NULL),
(24, 1, NULL, NULL, NULL),
(44, 1, NULL, NULL, NULL),
(26, 1, NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL),
(43, 1, NULL, NULL, NULL),
(31, 4, NULL, NULL, '2021-01-30 14:59:07'),
(32, 8, NULL, NULL, '2021-01-30 15:00:44'),
(33, 10, NULL, NULL, '2021-01-30 15:02:29'),
(34, 10, NULL, NULL, NULL),
(42, 3, NULL, NULL, NULL),
(36, 15, NULL, NULL, '2021-01-31 22:29:44'),
(37, 15, NULL, NULL, NULL),
(38, 15, NULL, NULL, NULL),
(39, 15, NULL, NULL, NULL),
(40, 16, NULL, NULL, '2021-01-31 22:30:19'),
(41, 17, NULL, NULL, '2021-02-01 06:29:00'),
(54, 1, NULL, NULL, NULL),
(55, 1, NULL, NULL, NULL),
(56, 1, NULL, NULL, NULL),
(57, 1, NULL, NULL, NULL),
(58, 1, NULL, NULL, NULL),
(59, 1, NULL, NULL, NULL),
(60, 1, NULL, NULL, NULL),
(61, 1, NULL, NULL, NULL),
(62, 1, NULL, NULL, NULL),
(63, 16, NULL, NULL, NULL),
(64, 16, NULL, NULL, NULL),
(65, 16, NULL, NULL, NULL),
(66, 16, NULL, NULL, NULL),
(67, 28, NULL, NULL, '2021-02-07 22:49:39'),
(68, 28, NULL, NULL, NULL),
(69, 28, NULL, NULL, NULL),
(70, 28, NULL, NULL, NULL),
(71, 28, NULL, NULL, NULL),
(72, 28, NULL, NULL, NULL),
(73, 15, NULL, NULL, NULL),
(74, 31, NULL, NULL, '2021-02-09 12:04:09'),
(75, 31, NULL, NULL, NULL),
(76, 31, NULL, NULL, NULL),
(77, 33, NULL, NULL, '2021-02-09 12:42:49'),
(78, 34, NULL, NULL, '2021-02-09 15:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_generated_quiz_questions`
--

CREATE TABLE `cgp_generated_quiz_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `generated_quiz_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_generated_quiz_questions`
--

INSERT INTO `cgp_generated_quiz_questions` (`id`, `generated_quiz_id`, `section_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 22, NULL, NULL),
(2, 1, 2, 26, NULL, NULL),
(3, 1, 2, 23, NULL, NULL),
(4, 2, 2, 21, NULL, NULL),
(5, 2, 2, 25, NULL, NULL),
(6, 2, 2, 23, NULL, NULL),
(7, 3, 2, 21, NULL, NULL),
(8, 3, 2, 26, NULL, NULL),
(9, 3, 2, 24, NULL, NULL),
(10, 4, 2, 21, NULL, NULL),
(11, 4, 2, 26, NULL, NULL),
(12, 4, 2, 23, NULL, NULL),
(13, 5, 2, 22, NULL, NULL),
(14, 5, 2, 25, NULL, NULL),
(15, 5, 2, 24, NULL, NULL),
(16, 6, 2, 22, NULL, NULL),
(17, 6, 2, 25, NULL, NULL),
(18, 6, 2, 23, NULL, NULL),
(19, 7, 2, 22, NULL, NULL),
(20, 7, 2, 26, NULL, NULL),
(21, 7, 2, 24, NULL, NULL),
(22, 8, 2, 21, NULL, NULL),
(23, 8, 2, 25, NULL, NULL),
(24, 8, 2, 24, NULL, NULL),
(265, 53, 1, 3, NULL, NULL),
(264, 53, 1, 20, NULL, NULL),
(263, 53, 1, 18, NULL, NULL),
(262, 52, 1, 27, NULL, NULL),
(261, 52, 1, 19, NULL, NULL),
(260, 52, 1, 15, NULL, NULL),
(259, 52, 1, 10, NULL, NULL),
(258, 52, 1, 7, NULL, NULL),
(257, 52, 1, 6, NULL, NULL),
(256, 51, 1, 20, NULL, NULL),
(255, 51, 1, 15, NULL, NULL),
(254, 51, 1, 14, NULL, NULL),
(37, 11, 1, 3, NULL, NULL),
(38, 11, 1, 4, NULL, NULL),
(39, 11, 1, 7, NULL, NULL),
(40, 11, 1, 10, NULL, NULL),
(41, 11, 1, 18, NULL, NULL),
(42, 11, 1, 19, NULL, NULL),
(43, 12, 1, 3, NULL, NULL),
(44, 12, 1, 4, NULL, NULL),
(45, 12, 1, 9, NULL, NULL),
(46, 12, 1, 14, NULL, NULL),
(47, 12, 1, 15, NULL, NULL),
(48, 12, 1, 19, NULL, NULL),
(49, 13, 1, 3, NULL, NULL),
(50, 13, 1, 6, NULL, NULL),
(51, 13, 1, 9, NULL, NULL),
(52, 13, 1, 10, NULL, NULL),
(53, 13, 1, 15, NULL, NULL),
(54, 13, 1, 19, NULL, NULL),
(253, 51, 1, 9, NULL, NULL),
(252, 51, 1, 4, NULL, NULL),
(251, 51, 1, 27, NULL, NULL),
(250, 50, 1, 19, NULL, NULL),
(249, 50, 1, 18, NULL, NULL),
(248, 50, 1, 14, NULL, NULL),
(247, 50, 1, 7, NULL, NULL),
(246, 50, 1, 6, NULL, NULL),
(245, 50, 1, 3, NULL, NULL),
(244, 49, 1, 10, NULL, NULL),
(243, 49, 1, 7, NULL, NULL),
(242, 49, 1, 6, NULL, NULL),
(241, 49, 1, 27, NULL, NULL),
(240, 49, 1, 20, NULL, NULL),
(239, 49, 1, 15, NULL, NULL),
(238, 48, 1, 4, NULL, NULL),
(237, 48, 1, 27, NULL, NULL),
(236, 48, 1, 19, NULL, NULL),
(73, 17, 1, 3, NULL, NULL),
(74, 17, 1, 6, NULL, NULL),
(75, 17, 1, 9, NULL, NULL),
(76, 17, 1, 14, NULL, NULL),
(77, 17, 1, 15, NULL, NULL),
(78, 17, 1, 20, NULL, NULL),
(235, 48, 1, 15, NULL, NULL),
(234, 48, 1, 14, NULL, NULL),
(233, 48, 1, 9, NULL, NULL),
(232, 47, 1, 4, NULL, NULL),
(231, 47, 1, 3, NULL, NULL),
(230, 47, 1, 20, NULL, NULL),
(229, 47, 1, 18, NULL, NULL),
(228, 47, 1, 14, NULL, NULL),
(227, 47, 1, 7, NULL, NULL),
(226, 46, 1, 18, NULL, NULL),
(225, 46, 1, 10, NULL, NULL),
(224, 46, 1, 9, NULL, NULL),
(223, 46, 1, 4, NULL, NULL),
(222, 46, 1, 27, NULL, NULL),
(221, 46, 1, 19, NULL, NULL),
(220, 45, 1, 3, NULL, NULL),
(219, 45, 1, 20, NULL, NULL),
(218, 45, 1, 18, NULL, NULL),
(97, 21, 1, 3, NULL, NULL),
(98, 21, 1, 4, NULL, NULL),
(99, 21, 1, 9, NULL, NULL),
(100, 21, 1, 14, NULL, NULL),
(101, 21, 1, 15, NULL, NULL),
(102, 21, 1, 20, NULL, NULL),
(103, 22, 1, 3, NULL, NULL),
(104, 22, 1, 4, NULL, NULL),
(105, 22, 1, 7, NULL, NULL),
(106, 22, 1, 14, NULL, NULL),
(107, 22, 1, 15, NULL, NULL),
(108, 22, 1, 19, NULL, NULL),
(217, 45, 1, 14, NULL, NULL),
(216, 45, 1, 9, NULL, NULL),
(215, 45, 1, 6, NULL, NULL),
(214, 44, 1, 20, NULL, NULL),
(213, 44, 1, 18, NULL, NULL),
(212, 44, 1, 10, NULL, NULL),
(115, 24, 1, 3, NULL, NULL),
(116, 24, 1, 6, NULL, NULL),
(117, 24, 1, 9, NULL, NULL),
(118, 24, 1, 14, NULL, NULL),
(119, 24, 1, 15, NULL, NULL),
(120, 24, 1, 19, NULL, NULL),
(211, 44, 1, 7, NULL, NULL),
(210, 44, 1, 6, NULL, NULL),
(209, 44, 1, 3, NULL, NULL),
(208, 43, 1, 20, NULL, NULL),
(207, 43, 1, 18, NULL, NULL),
(206, 43, 1, 10, NULL, NULL),
(127, 26, 1, 3, NULL, NULL),
(128, 26, 1, 6, NULL, NULL),
(129, 26, 1, 9, NULL, NULL),
(130, 26, 1, 10, NULL, NULL),
(131, 26, 1, 18, NULL, NULL),
(132, 26, 1, 20, NULL, NULL),
(133, 27, 1, 3, NULL, NULL),
(134, 27, 1, 6, NULL, NULL),
(135, 27, 1, 7, NULL, NULL),
(136, 27, 1, 10, NULL, NULL),
(137, 27, 1, 15, NULL, NULL),
(138, 27, 1, 20, NULL, NULL),
(139, 28, 1, 3, NULL, NULL),
(140, 28, 1, 4, NULL, NULL),
(141, 28, 1, 9, NULL, NULL),
(142, 28, 1, 10, NULL, NULL),
(143, 28, 1, 15, NULL, NULL),
(144, 28, 1, 19, NULL, NULL),
(145, 29, 1, 3, NULL, NULL),
(146, 29, 1, 4, NULL, NULL),
(147, 29, 1, 7, NULL, NULL),
(148, 29, 1, 10, NULL, NULL),
(149, 29, 1, 15, NULL, NULL),
(150, 29, 1, 19, NULL, NULL),
(205, 43, 1, 7, NULL, NULL),
(204, 43, 1, 33, NULL, NULL),
(203, 43, 1, 3, NULL, NULL),
(202, 42, 3, 6, NULL, NULL),
(155, 31, 4, 18, NULL, NULL),
(156, 31, 4, 15, NULL, NULL),
(157, 32, 8, 22, NULL, NULL),
(158, 32, 8, 21, NULL, NULL),
(159, 32, 8, 23, NULL, NULL),
(160, 32, 8, 24, NULL, NULL),
(161, 32, 8, 26, NULL, NULL),
(162, 32, 8, 25, NULL, NULL),
(163, 33, 10, 21, NULL, NULL),
(164, 33, 10, 22, NULL, NULL),
(165, 33, 10, 25, NULL, NULL),
(166, 33, 10, 26, NULL, NULL),
(167, 33, 10, 24, NULL, NULL),
(168, 34, 10, 22, NULL, NULL),
(169, 34, 10, 21, NULL, NULL),
(170, 34, 10, 23, NULL, NULL),
(171, 34, 10, 25, NULL, NULL),
(172, 34, 10, 26, NULL, NULL),
(201, 42, 3, 20, NULL, NULL),
(200, 42, 3, 7, NULL, NULL),
(199, 42, 3, 27, NULL, NULL),
(176, 36, 15, 24, NULL, NULL),
(177, 36, 15, 23, NULL, NULL),
(178, 36, 15, 21, NULL, NULL),
(179, 36, 15, 25, NULL, NULL),
(180, 37, 15, 21, NULL, NULL),
(181, 37, 15, 23, NULL, NULL),
(182, 37, 15, 24, NULL, NULL),
(183, 37, 15, 26, NULL, NULL),
(184, 38, 15, 22, NULL, NULL),
(185, 38, 15, 23, NULL, NULL),
(186, 38, 15, 24, NULL, NULL),
(187, 38, 15, 25, NULL, NULL),
(188, 39, 15, 22, NULL, NULL),
(189, 39, 15, 23, NULL, NULL),
(190, 39, 15, 24, NULL, NULL),
(191, 39, 15, 26, NULL, NULL),
(192, 40, 16, 4, NULL, NULL),
(193, 40, 16, 6, NULL, NULL),
(194, 40, 16, 7, NULL, NULL),
(195, 40, 16, 9, NULL, NULL),
(196, 41, 17, 22, NULL, NULL),
(197, 41, 17, 21, NULL, NULL),
(198, 41, 17, 26, NULL, NULL),
(266, 53, 1, 6, NULL, NULL),
(267, 53, 1, 7, NULL, NULL),
(268, 53, 1, 14, NULL, NULL),
(269, 54, 1, 19, NULL, NULL),
(270, 54, 1, 3, NULL, NULL),
(271, 54, 1, 33, NULL, NULL),
(272, 54, 1, 7, NULL, NULL),
(273, 54, 1, 10, NULL, NULL),
(274, 54, 1, 15, NULL, NULL),
(275, 55, 1, 20, NULL, NULL),
(276, 55, 1, 3, NULL, NULL),
(277, 55, 1, 33, NULL, NULL),
(278, 55, 1, 9, NULL, NULL),
(279, 55, 1, 14, NULL, NULL),
(280, 55, 1, 18, NULL, NULL),
(281, 56, 1, 7, NULL, NULL),
(282, 56, 1, 10, NULL, NULL),
(283, 56, 1, 18, NULL, NULL),
(284, 56, 1, 19, NULL, NULL),
(285, 56, 1, 3, NULL, NULL),
(286, 56, 1, 6, NULL, NULL),
(287, 57, 1, 9, NULL, NULL),
(288, 57, 1, 10, NULL, NULL),
(289, 57, 1, 15, NULL, NULL),
(290, 57, 1, 20, NULL, NULL),
(291, 57, 1, 3, NULL, NULL),
(292, 57, 1, 33, NULL, NULL),
(293, 58, 1, 9, NULL, NULL),
(294, 58, 1, 14, NULL, NULL),
(295, 58, 1, 18, NULL, NULL),
(296, 58, 1, 20, NULL, NULL),
(297, 58, 1, 27, NULL, NULL),
(298, 58, 1, 6, NULL, NULL),
(299, 59, 1, 9, NULL, NULL),
(300, 59, 1, 10, NULL, NULL),
(301, 59, 1, 18, NULL, NULL),
(302, 59, 1, 20, NULL, NULL),
(303, 59, 1, 3, NULL, NULL),
(304, 59, 1, 33, NULL, NULL),
(305, 60, 1, 9, NULL, NULL),
(306, 60, 1, 14, NULL, NULL),
(307, 60, 1, 18, NULL, NULL),
(308, 60, 1, 19, NULL, NULL),
(309, 60, 1, 3, NULL, NULL),
(310, 60, 1, 4, NULL, NULL),
(311, 61, 1, 3, NULL, NULL),
(312, 61, 1, 33, NULL, NULL),
(313, 61, 1, 7, NULL, NULL),
(314, 61, 1, 10, NULL, NULL),
(315, 61, 1, 18, NULL, NULL),
(316, 61, 1, 19, NULL, NULL),
(317, 62, 1, 3, NULL, NULL),
(318, 62, 1, 33, NULL, NULL),
(319, 62, 1, 9, NULL, NULL),
(320, 62, 1, 14, NULL, NULL),
(321, 62, 1, 18, NULL, NULL),
(322, 62, 1, 19, NULL, NULL),
(323, 63, 16, 33, NULL, NULL),
(324, 63, 16, 4, NULL, NULL),
(325, 63, 16, 9, NULL, NULL),
(326, 63, 16, 7, NULL, NULL),
(327, 64, 16, 6, NULL, NULL),
(328, 64, 16, 33, NULL, NULL),
(329, 64, 16, 7, NULL, NULL),
(330, 64, 16, 9, NULL, NULL),
(331, 65, 16, 6, NULL, NULL),
(332, 65, 16, 4, NULL, NULL),
(333, 65, 16, 9, NULL, NULL),
(334, 65, 16, 34, NULL, NULL),
(335, 66, 16, 4, NULL, NULL),
(336, 66, 16, 6, NULL, NULL),
(337, 66, 16, 7, NULL, NULL),
(338, 66, 16, 34, NULL, NULL),
(339, 67, 44, 27, NULL, NULL),
(340, 67, 44, 9, NULL, NULL),
(341, 67, 44, 7, NULL, NULL),
(342, 68, 44, 2, NULL, NULL),
(343, 68, 44, 34, NULL, NULL),
(344, 68, 44, 9, NULL, NULL),
(345, 69, 44, 2, NULL, NULL),
(346, 69, 44, 7, NULL, NULL),
(347, 69, 44, 9, NULL, NULL),
(348, 70, 44, 27, NULL, NULL),
(349, 70, 44, 34, NULL, NULL),
(350, 70, 44, 7, NULL, NULL),
(351, 71, 44, 2, NULL, NULL),
(352, 71, 44, 7, NULL, NULL),
(353, 71, 44, 34, NULL, NULL),
(354, 72, 44, 27, NULL, NULL),
(355, 72, 44, 34, NULL, NULL),
(356, 72, 44, 9, NULL, NULL),
(357, 73, 15, 21, NULL, NULL),
(358, 73, 15, 39, NULL, NULL),
(359, 73, 15, 24, NULL, NULL),
(360, 73, 15, 25, NULL, NULL),
(361, 74, 54, 24, NULL, NULL),
(362, 74, 54, 39, NULL, NULL),
(363, 75, 54, 24, NULL, NULL),
(364, 75, 54, 23, NULL, NULL),
(365, 76, 54, 39, NULL, NULL),
(366, 76, 54, 23, NULL, NULL),
(367, 77, 56, 43, NULL, NULL),
(368, 78, 57, 4, NULL, NULL),
(369, 78, 57, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_infos`
--

CREATE TABLE `cgp_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_infos`
--

INSERT INTO `cgp_infos` (`id`, `name`, `info_type`) VALUES
(1, 'multiple_answers', NULL),
(2, 'text_input', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_questions`
--

CREATE TABLE `cgp_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci,
  `weight` double(8,2) DEFAULT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `difficulty_id` int(11) DEFAULT NULL,
  `system_assesset` int(11) NOT NULL DEFAULT '1',
  `criteria_effect_quiz` longtext COLLATE utf8mb4_unicode_ci,
  `suspended_token` longtext COLLATE utf8mb4_unicode_ci,
  `original_id` int(11) DEFAULT NULL,
  `archived` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_questions`
--

INSERT INTO `cgp_questions` (`id`, `question_text`, `weight`, `question_type_id`, `difficulty_id`, `system_assesset`, `criteria_effect_quiz`, `suspended_token`, `original_id`, `archived`, `admin_show`, `created_at`, `updated_at`, `subject_id`, `teacher_id`) VALUES
(1, 'Which of the following is an example of a structural protein?', 1.00, 1, 1, 1, 'MCQ11', NULL, NULL, 1, 1, '2021-01-30 14:09:05', '2021-02-09 11:57:15', 4, 7),
(2, '1-which of the following use photosynthesis process to produce their food?', 1.00, 1, 1, 1, 'MCQNutrition1', '982f2a23f69cadd964f744f1988b7d1b', NULL, NULL, 1, '2021-01-30 14:10:37', '2021-02-09 11:32:53', 8, 11),
(3, '2-heterotrophs are characterized by all of the following, except that they', 1.00, 1, 1, 1, 'MCQ21', NULL, NULL, 1, 1, '2021-01-30 14:13:25', '2021-02-09 11:57:15', 8, 11),
(4, '3-Heterotrophic organisms can be classified into …….………….', 1.00, 1, 2, 1, 'MCQ22', NULL, NULL, NULL, 1, '2021-01-30 14:15:20', '2021-02-09 11:57:15', 8, 11),
(5, 'In the initial stages of chromosome formation, double-stranded DNA wraps around specialized proteins. What are these proteins called?', 1.00, 1, 1, 1, 'MCQ11', NULL, NULL, 1, 1, '2021-01-30 14:16:10', '2021-02-09 11:57:15', 4, 7),
(6, '4-……… can manufacture their food by themselves.', 1.00, 1, 2, 1, 'MCQ22', NULL, NULL, NULL, 1, '2021-01-30 14:16:47', '2021-02-09 11:57:15', 8, 11),
(7, '5-Bilharzia worms are from the …………..\n.   .', 1.00, 1, 3, 1, 'MCQ23', NULL, NULL, NULL, 1, '2021-01-30 14:18:19', '2021-02-09 11:57:15', 8, 11),
(8, 'What term describes how antibodies mark a pathogen to make it more detectable to phagocytes?', 1.00, 1, 1, 1, 'MCQNutrition1', NULL, NULL, 1, 1, '2021-01-30 14:18:54', '2021-02-09 11:57:15', 4, 7),
(9, '6-All the following are similar in the mode of nutrition, except ………\n .', 1.00, 1, 3, 1, 'MCQ23', NULL, NULL, NULL, 1, '2021-01-30 14:20:07', '2021-02-09 11:57:15', 8, 11),
(10, '- What is the phenomenon that explains the change in volume from figure (b) to figure (a)?', 1.00, 2, 1, 0, 'Text21', NULL, NULL, NULL, 1, '2021-01-30 14:21:25', '2021-02-09 11:57:15', 8, 11),
(11, 'What term describes how antibodies mark a pathogen to make it more detectable to phagocytes?', 1.00, 1, 1, 1, 'MCQNutrition1', NULL, 8, 1, 1, '2021-01-30 14:21:40', '2021-02-09 11:57:15', 4, 7),
(12, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-01-30 14:22:21', '2021-02-09 11:57:15', NULL, NULL),
(13, 'Which of the following is an example of a structural protein?', 1.00, 1, 1, 1, 'MCQ11', NULL, 1, 1, 1, '2021-01-30 14:22:50', '2021-02-09 11:57:15', 4, 7),
(14, '- Are two filaments in the same medium? And why?', 1.00, 2, 1, 0, 'Text21', NULL, NULL, NULL, 1, '2021-01-30 14:24:08', '2021-02-09 11:57:15', 8, 11),
(15, '- Does this phenomenon prevent the presence of vacuoles? And why?', 1.00, 2, 2, 0, 'Text22', NULL, NULL, NULL, 1, '2021-01-30 14:25:23', '2021-02-09 11:57:15', 8, 11),
(16, 'In the initial stages of chromosome formation, double-stranded DNA wraps around specialized proteins. What are these proteins called?', 1.00, 1, 1, 1, 'MCQ11', NULL, 5, 1, 1, '2021-01-30 14:25:46', '2021-02-09 11:57:15', 4, 7),
(17, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-01-30 14:26:21', '2021-02-09 11:57:15', NULL, NULL),
(18, '- Do chloroplasts play a role in the occurrence of this phenomenon? And why?', 1.00, 2, 2, 0, 'Text22', NULL, NULL, NULL, 1, '2021-01-30 14:27:27', '2021-02-09 11:57:15', 8, 11),
(19, '- What is the condition of the plant on point (X)?', 1.00, 2, 3, 0, 'Text23', '982f2a23f69cadd964f744f1988b7d1b', NULL, NULL, 1, '2021-01-30 14:28:33', '2021-02-09 11:32:53', 8, 11),
(20, '- What is the plant condition of the plant on point (Y)?', 1.00, 2, 3, 0, 'Text23', '982f2a23f69cadd964f744f1988b7d1b', NULL, NULL, 1, '2021-01-30 14:29:34', '2021-02-09 11:32:53', 8, 11),
(21, 'What term describes how antibodies mark a pathogen to make it more detectable to phagocytes?', 1.00, 1, 1, 1, 'MCQ11', NULL, NULL, NULL, 1, '2021-01-30 14:36:34', '2021-02-09 11:57:15', 4, 7),
(22, 'There are many causes of disease and death in plants. Which of the following is due to a pathogen?', 1.00, 1, 1, 1, 'MCQ11', NULL, NULL, NULL, 1, '2021-01-30 14:38:17', '2021-02-09 11:57:15', 4, 7),
(23, 'Antibodies from the specific immune system facilitate an effective immune response to infection.\nHow do the antibodies bound to a bacterial pathogen increase its chance of being destroyed?', 1.00, 1, 2, 1, 'MCQ12', NULL, NULL, NULL, 1, '2021-01-30 14:42:16', '2021-02-09 11:57:15', 4, 7),
(24, 'Complete the sentence:  are lymphocytes that remain in the circulation for very long periods of time.', 1.00, 1, 2, 1, 'MCQ12', NULL, NULL, NULL, 1, '2021-01-30 14:43:35', '2021-02-09 11:57:15', 4, 7),
(25, 'Complete the sentence: We repeatedly get some viral diseases such as influenza because the proteins on the outside of the virus  rapidly, constantly producing new  that are not recognized by memory cells in the circulation.', 1.00, 1, 3, 1, 'MCQ13', NULL, NULL, NULL, 1, '2021-01-30 14:45:00', '2021-02-09 11:57:15', 4, 7),
(26, ': What is the function of ciliated epithelial cells in the first line of defense?', 1.00, 1, 3, 1, 'MCQ13', NULL, NULL, NULL, 1, '2021-01-30 14:46:19', '2021-02-09 11:57:15', 4, 7),
(27, 'What is the net ATP at end of gly.', 2.00, 1, 1, 1, 'MCQ21', '982f2a23f69cadd964f744f1988b7d1b', NULL, NULL, 1, '2021-01-30 15:40:36', '2021-02-09 11:32:53', 8, 11),
(28, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:25:08', '2021-02-09 11:57:15', 4, 7),
(29, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-02 20:36:47', '2021-02-09 11:57:15', NULL, NULL),
(30, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-06 10:26:43', '2021-02-09 11:57:15', NULL, NULL),
(31, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-06 10:32:50', '2021-02-09 11:57:15', NULL, NULL),
(32, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-07 20:44:13', '2021-02-09 11:57:15', NULL, NULL),
(39, 'HOW DOES THE PRODUCTION of cavanine protect aplant from infection ?', 1.00, 1, 2, 1, 'MCQ12', NULL, NULL, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:57:15', 4, 7),
(34, '2-heterotrophs are characterized by all of the following, except that they', 1.00, 1, 3, 1, 'MCQ23', NULL, 3, NULL, 1, '2021-02-07 22:03:47', '2021-02-09 11:57:15', 8, 11),
(38, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:57:15', NULL, NULL),
(35, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:57:15', NULL, NULL),
(36, '6-The ratio between the number of FADH2 molecules to that of NADH2 molecules\nresulting from the complete oxidation of a molecule of glucose in an aerobic condition\nis…….. respectively', 2.00, 1, 2, 1, 'MCQ22', NULL, NULL, 1, 1, '2021-02-09 11:26:08', '2021-02-09 11:57:15', 8, 11),
(37, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:57:15', NULL, NULL),
(40, '6-The ratio between the number of FADH2 molecules to that of NADH2 molecules\nresulting from the complete oxidation of a molecule of glucose in an aerobic condition\nis…….. respectively', 2.00, 1, 2, 1, 'MCQ22', NULL, 36, NULL, 1, '2021-02-09 11:32:53', '2021-02-09 11:57:15', 8, 11),
(41, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, 0, '2021-02-09 11:33:30', '2021-02-09 11:57:15', 8, 11),
(42, 'Whats your name', 1.00, 1, 1, 1, 'MCQG1', NULL, NULL, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:57:15', 4, 7),
(43, 'jhb', 1.00, 1, 1, 1, 'MCQenzyme1', NULL, NULL, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15', 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_answers`
--

CREATE TABLE `cgp_question_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci,
  `is_correct` int(11) DEFAULT NULL,
  `question_answer_type_id` int(11) DEFAULT NULL,
  `system_assesst` int(11) NOT NULL DEFAULT '1',
  `original_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_answers`
--

INSERT INTO `cgp_question_answers` (`id`, `question_id`, `answer_text`, `is_correct`, `question_answer_type_id`, `system_assesst`, `original_id`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, 1, 'A Keratin', 1, 1, 1, NULL, 1, '2021-01-30 14:09:05', '2021-01-30 14:16:03'),
(2, 1, 'B Cytokines', 0, 1, 1, NULL, 1, '2021-01-30 14:09:05', '2021-01-30 14:16:03'),
(3, 2, 'a- Autotrophs.     .', 0, 1, 1, NULL, 1, '2021-01-30 14:10:37', '2021-01-30 14:13:18'),
(4, 2, 'b- heterotrophs', 0, 1, 1, NULL, 1, '2021-01-30 14:10:37', '2021-01-30 14:13:18'),
(5, 2, 'c- phototrophs', 0, 1, 1, NULL, 1, '2021-01-30 14:12:44', '2021-01-30 14:13:18'),
(6, 2, 'd- (A) and (C)', 1, 1, 1, NULL, 1, '2021-01-30 14:13:06', '2021-01-30 14:13:18'),
(7, 3, 'a- obtain their food in the form of organic compounds.\n\n.', 0, 1, 1, NULL, 1, '2021-01-30 14:13:25', '2021-01-30 14:15:11'),
(8, 3, 'b- obtain their food in the form of high-energy compounds.', 0, 1, 1, NULL, 1, '2021-01-30 14:13:25', '2021-01-30 14:15:11'),
(9, 1, 'C Adrenaline', 0, 1, 1, NULL, 1, '2021-01-30 14:14:04', '2021-01-30 14:16:03'),
(10, 3, 'c- obtain their food in the form of simple-structured compounds', 1, 1, 1, NULL, 1, '2021-01-30 14:14:12', '2021-01-30 14:15:11'),
(11, 1, 'D Amylase', 0, 1, 1, NULL, 1, '2021-01-30 14:14:22', '2021-01-30 14:16:03'),
(12, 3, 'd- depend on other organisms to obtain their food.', 0, 1, 1, NULL, 1, '2021-01-30 14:14:23', '2021-01-30 14:15:11'),
(15, 4, 'i. holozoic , parasite and saprophyte.', 0, 1, 1, NULL, 1, '2021-01-30 14:15:20', '2021-01-30 14:16:42'),
(14, 1, 'E Testosterone', 0, 1, 1, NULL, 1, '2021-01-30 14:14:34', '2021-01-30 14:16:03'),
(16, 4, 'ii. autotrophic, heterotrophic and saprophytic.', 0, 1, 1, NULL, 1, '2021-01-30 14:15:20', '2021-01-30 14:16:42'),
(17, 4, 'iii. herbivores, carnivores and omnivores.', 1, 1, 1, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:16:42'),
(18, 5, 'A Hormones', 0, 1, 1, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:18:19'),
(19, 5, 'B Isoforms', 0, 1, 1, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:18:19'),
(20, 4, 'iv. chemosynthetic, photosynthetic.', 0, 1, 1, NULL, 1, '2021-01-30 14:16:32', '2021-01-30 14:16:42'),
(21, 6, 'a. plants', 1, 1, 1, NULL, 1, '2021-01-30 14:16:47', '2021-01-30 14:18:14'),
(22, 6, 'b. Animals', 0, 1, 1, NULL, 1, '2021-01-30 14:16:47', '2021-01-30 14:18:14'),
(23, 5, 'C Centromeres', 0, 1, 1, NULL, 1, '2021-01-30 14:17:14', '2021-01-30 14:18:19'),
(24, 5, 'D Histones', 1, 1, 1, NULL, 1, '2021-01-30 14:17:27', '2021-01-30 14:18:19'),
(25, 5, 'E Nucleosomes', 0, 1, 1, NULL, 1, '2021-01-30 14:17:37', '2021-01-30 14:18:19'),
(26, 6, 'c. Birds', 0, 1, 1, NULL, 1, '2021-01-30 14:17:43', '2021-01-30 14:18:14'),
(27, 6, 'd. all the previous', 0, 1, 1, NULL, 1, '2021-01-30 14:17:58', '2021-01-30 14:18:14'),
(28, 7, 'a- saprophytes', 0, 1, 1, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:20:01'),
(29, 7, 'b- carnivores', 0, 1, 1, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:20:01'),
(30, 8, 'A Neutralization', 0, 1, 1, NULL, 1, '2021-01-30 14:18:54', '2021-01-30 14:21:22'),
(31, 8, 'B Denaturation', 0, 1, 1, NULL, 1, '2021-01-30 14:18:54', '2021-01-30 14:21:22'),
(32, 7, 'c- parasites.', 1, 1, 1, NULL, 1, '2021-01-30 14:19:31', '2021-01-30 14:20:01'),
(33, 7, 'd- autotrophs.', 0, 1, 1, NULL, 1, '2021-01-30 14:19:41', '2021-01-30 14:20:01'),
(34, 9, 'a- human', 0, 1, 1, NULL, 1, '2021-01-30 14:20:07', '2021-01-30 14:21:11'),
(35, 9, 'b- bread mould', 1, 1, 1, NULL, 1, '2021-01-30 14:20:07', '2021-01-30 14:21:11'),
(36, 8, 'C Precipitation', 0, 1, 1, NULL, 1, '2021-01-30 14:20:33', '2021-01-30 14:21:22'),
(37, 9, 'c- lion', 0, 1, 1, NULL, 1, '2021-01-30 14:20:42', '2021-01-30 14:21:11'),
(38, 8, 'D Opsonization', 1, 1, 1, NULL, 1, '2021-01-30 14:20:47', '2021-01-30 14:21:22'),
(39, 9, 'd- deer', 0, 1, 1, NULL, 1, '2021-01-30 14:20:55', '2021-01-30 14:21:11'),
(40, 8, 'E Agglutination', 0, 1, 1, NULL, 1, '2021-01-30 14:21:05', '2021-01-30 14:21:22'),
(56, 17, NULL, NULL, 1, 1, NULL, 0, '2021-01-30 14:26:21', '2021-01-30 14:26:21'),
(55, 17, NULL, NULL, 1, 1, NULL, 0, '2021-01-30 14:26:21', '2021-01-30 14:26:21'),
(43, 11, 'A Neutralization', 0, 1, 1, 30, 1, '2021-01-30 14:21:40', '2021-01-30 14:21:40'),
(44, 12, NULL, NULL, 1, 1, NULL, 0, '2021-01-30 14:22:21', '2021-01-30 14:22:21'),
(45, 12, NULL, NULL, 1, 1, NULL, 0, '2021-01-30 14:22:21', '2021-01-30 14:22:21'),
(46, 13, 'A Keratin', 1, 1, 1, 1, 1, '2021-01-30 14:22:50', '2021-01-30 14:22:50'),
(47, 10, 'Osmosis ,the plant (b) absorbs water by osmosis that causes its turgidity', 1, 2, 0, NULL, 1, '2021-01-30 14:23:15', '2021-01-30 14:24:01'),
(50, 14, 'No they are in a different medium bec, plant A is swell up ,but B shrink', 1, 2, 0, NULL, 1, '2021-01-30 14:24:12', '2021-01-30 14:25:16'),
(53, 15, 'Yes, bec vacuole control absorption water by differ the concentration of the solution inside it', 1, 2, 0, NULL, 1, '2021-01-30 14:25:29', '2021-01-30 14:26:14'),
(54, 16, 'A Hormones', 0, 1, 1, 18, 1, '2021-01-30 14:25:46', '2021-01-30 14:25:46'),
(67, 21, 'A Neutralization', 0, 1, 1, NULL, 1, '2021-01-30 14:36:34', '2021-01-30 14:37:41'),
(66, 21, 'B Denaturation', 0, 1, 1, NULL, 1, '2021-01-30 14:36:34', '2021-01-30 14:37:41'),
(59, 18, 'Chloroplast doesn’t effect in this phenomena bec, it doesn’t share in the absorption of water', 1, 2, 0, NULL, 1, '2021-01-30 14:28:18', '2021-01-30 14:28:27'),
(62, 19, 'The plant absorb water by osmosis to make photosynthesis', 1, 2, 0, NULL, 1, '2021-01-30 14:28:51', '2021-01-30 14:29:21'),
(65, 20, 'When water increase than the normal limit the plant loss water by transpiration\nTo lower its body temperature and help in ascent of water and salt to the leaves', 1, 2, 0, NULL, 1, '2021-01-30 14:30:11', '2021-01-30 14:30:37'),
(68, 21, 'C Precipitation', 0, 1, 1, NULL, 1, '2021-01-30 14:37:05', '2021-01-30 14:37:41'),
(69, 21, 'D Opsonization', 1, 1, 1, NULL, 1, '2021-01-30 14:37:17', '2021-01-30 14:37:41'),
(70, 21, 'E Agglutination', 0, 1, 1, NULL, 1, '2021-01-30 14:37:26', '2021-01-30 14:37:41'),
(71, 22, 'A Soil mineral deficiency, leading to limited growth', 0, 1, 1, NULL, 1, '2021-01-30 14:38:17', '2021-01-30 14:39:42'),
(72, 22, 'B Heavy metal contamination from factory effluent', 0, 1, 1, NULL, 1, '2021-01-30 14:38:17', '2021-01-30 14:39:42'),
(73, 22, 'C Herbicide spraying to control weeds', 0, 1, 1, NULL, 1, '2021-01-30 14:38:55', '2021-01-30 14:39:42'),
(74, 22, 'D Potato blight, leading to a reduction in crop yield', 1, 1, 1, NULL, 1, '2021-01-30 14:39:08', '2021-01-30 14:39:42'),
(75, 22, 'E Cattle grazing for dairy farming', 0, 1, 1, NULL, 1, '2021-01-30 14:39:26', '2021-01-30 14:39:42'),
(76, 23, 'A They have intrinsic lysozyme activity that hydrolyzes the bacterium.', 0, 1, 1, NULL, 1, '2021-01-30 14:42:16', '2021-01-30 14:43:29'),
(77, 23, 'B They activate platelets and initiate a blood clotting response.', 0, 1, 1, NULL, 1, '2021-01-30 14:42:16', '2021-01-30 14:43:29'),
(78, 23, 'C They alert phagocytes and activate complement proteins.', 1, 1, 1, NULL, 1, '2021-01-30 14:43:06', '2021-01-30 14:43:29'),
(79, 23, 'D They increase the secretion of mucus in internal membranes.', 0, 1, 1, NULL, 1, '2021-01-30 14:43:14', '2021-01-30 14:43:29'),
(80, 24, 'A Memory cells', 1, 1, 1, NULL, 1, '2021-01-30 14:43:35', '2021-01-30 14:44:54'),
(81, 24, 'B Macrophages', 0, 1, 1, NULL, 1, '2021-01-30 14:43:35', '2021-01-30 14:44:54'),
(82, 24, 'C Neutrophils', 0, 1, 1, NULL, 1, '2021-01-30 14:44:14', '2021-01-30 14:44:54'),
(83, 24, 'D Plasma cells', 0, 1, 1, NULL, 1, '2021-01-30 14:44:15', '2021-01-30 14:44:54'),
(84, 24, 'E Mast cells', 0, 1, 1, NULL, 1, '2021-01-30 14:44:16', '2021-01-30 14:44:54'),
(85, 25, 'A hydrolyze, antigens', 0, 1, 1, NULL, 1, '2021-01-30 14:45:00', '2021-01-30 14:46:10'),
(86, 25, 'B denature, antigens', 0, 1, 1, NULL, 1, '2021-01-30 14:45:00', '2021-01-30 14:46:10'),
(87, 25, 'C mutate, antibodies', 0, 1, 1, NULL, 1, '2021-01-30 14:45:38', '2021-01-30 14:46:10'),
(88, 25, 'D denature, antibodies', 0, 1, 1, NULL, 1, '2021-01-30 14:45:39', '2021-01-30 14:46:10'),
(89, 25, 'E mutate, antigens', 1, 1, 1, NULL, 1, '2021-01-30 14:45:40', '2021-01-30 14:46:10'),
(90, 26, 'A To secrete mucus to trap pathogens and protect the lungs', 0, 1, 1, NULL, 1, '2021-01-30 14:46:19', '2021-01-30 14:47:19'),
(91, 26, 'B To protect the female reproductive system from infection', 0, 1, 1, NULL, 1, '2021-01-30 14:46:19', '2021-01-30 14:47:19'),
(92, 26, 'C To move dust and pathogens away from the lungs', 1, 1, 1, NULL, 1, '2021-01-30 14:46:44', '2021-01-30 14:47:19'),
(93, 26, 'D To secrete lysozyme to destroy invading bacteria', 0, 1, 1, NULL, 1, '2021-01-30 14:46:45', '2021-01-30 14:47:19'),
(94, 26, 'E To secrete hydrochloric acid to destroy microbes', 0, 1, 1, NULL, 1, '2021-01-30 14:46:46', '2021-01-30 14:47:19'),
(95, 27, '2', 1, 1, 1, NULL, 1, '2021-01-30 15:40:36', '2021-01-30 15:49:59'),
(96, 27, '4', 0, 1, 1, NULL, 1, '2021-01-30 15:40:36', '2021-01-30 15:49:59'),
(97, 28, 'Mona', 1, 1, 1, NULL, 1, '2021-02-01 06:25:08', '2021-02-01 06:26:58'),
(98, 28, 'Hussein', 0, 1, 1, NULL, 1, '2021-02-01 06:25:08', '2021-02-01 06:26:58'),
(100, 28, 'Mai', 0, 1, 1, NULL, 1, '2021-02-01 06:25:58', '2021-02-01 06:26:58'),
(101, 28, 'Mahy', 0, 1, 1, NULL, 1, '2021-02-01 06:26:10', '2021-02-01 06:26:58'),
(102, 29, NULL, NULL, 1, 1, NULL, 0, '2021-02-02 20:36:47', '2021-02-02 20:36:47'),
(103, 29, NULL, NULL, 1, 1, NULL, 0, '2021-02-02 20:36:47', '2021-02-02 20:36:47'),
(104, 29, NULL, NULL, 1, 1, NULL, 0, '2021-02-02 20:38:42', '2021-02-02 20:38:42'),
(105, 29, NULL, NULL, 1, 1, NULL, 0, '2021-02-02 20:38:47', '2021-02-02 20:38:47'),
(106, 30, NULL, NULL, 1, 1, NULL, 0, '2021-02-06 10:26:43', '2021-02-06 10:26:43'),
(107, 30, NULL, NULL, 1, 1, NULL, 0, '2021-02-06 10:26:43', '2021-02-06 10:26:43'),
(108, 31, NULL, NULL, 1, 1, NULL, 0, '2021-02-06 10:32:50', '2021-02-06 10:32:50'),
(109, 31, NULL, NULL, 1, 1, NULL, 0, '2021-02-06 10:32:50', '2021-02-06 10:32:50'),
(110, 32, NULL, NULL, 1, 1, NULL, 0, '2021-02-07 20:44:13', '2021-02-07 20:44:13'),
(111, 32, NULL, NULL, 1, 1, NULL, 0, '2021-02-07 20:44:13', '2021-02-07 20:44:13'),
(123, 36, '1:5', 0, 1, 1, NULL, 1, '2021-02-09 11:26:08', '2021-02-09 11:31:31'),
(122, 36, '3:1', 0, 1, 1, NULL, 1, '2021-02-09 11:26:08', '2021-02-09 11:31:31'),
(121, 35, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:22:37'),
(120, 35, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:22:37'),
(116, 34, 'a- obtain their food in the form of organic compounds.\n\n.', 0, 1, 1, 7, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(117, 34, 'b- obtain their food in the form of high-energy compounds.', 0, 1, 1, 8, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(118, 34, 'c- obtain their food in the form of simple-structured compounds', 1, 1, 1, 10, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(119, 34, 'd- depend on other organisms to obtain their food.', 0, 1, 1, 12, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(124, 37, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:27:55'),
(125, 37, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:27:55'),
(126, 36, '5:1', 1, 1, 1, NULL, 1, '2021-02-09 11:28:46', '2021-02-09 11:31:31'),
(127, 36, '1:3', 0, 1, 1, NULL, 1, '2021-02-09 11:28:49', '2021-02-09 11:31:31'),
(128, 38, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:31:15'),
(129, 38, NULL, NULL, 1, 1, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:31:15'),
(130, 39, 'it prepares plant cells for future infection by the same pathogen', 0, 1, 1, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:43:17'),
(131, 39, 'it breaks down toxins that have been releasedby athogen', 0, 1, 1, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:43:17'),
(132, 40, '1:5', 0, 1, 1, 123, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(133, 40, '3:1', 0, 1, 1, 122, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(134, 40, '5:1', 1, 1, 1, 126, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(135, 40, '1:3', 0, 1, 1, 127, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(136, 41, 'a', 0, 1, 1, NULL, 1, '2021-02-09 11:33:30', '2021-02-09 11:36:24'),
(137, 41, 'b', 1, 1, 1, NULL, 1, '2021-02-09 11:33:30', '2021-02-09 11:36:24'),
(138, 39, 'It is toxic to herbivores because it is incorporated into their proteins.', 1, 1, 1, NULL, 1, '2021-02-09 11:41:12', '2021-02-09 11:43:17'),
(139, 39, 'It causes the cell walls of epidermal cells to swell, preventing pathogen entry.', 0, 1, 1, NULL, 1, '2021-02-09 11:42:13', '2021-02-09 11:43:17'),
(140, 42, 'A', 1, 1, 1, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:49:24'),
(141, 42, 'B', 0, 1, 1, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:49:24'),
(142, 43, 'jkmn', 1, 1, 1, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15'),
(143, 43, 'mnj', 0, 1, 1, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_answer_files`
--

CREATE TABLE `cgp_question_answer_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_answer_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `original_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_answer_files`
--

INSERT INTO `cgp_question_answer_files` (`id`, `question_answer_id`, `file_id`, `original_id`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, '2021-01-30 14:09:05', '2021-01-30 14:16:03'),
(2, 2, NULL, NULL, 1, '2021-01-30 14:09:05', '2021-01-30 14:16:03'),
(3, 3, NULL, NULL, 1, '2021-01-30 14:10:37', '2021-01-30 14:13:18'),
(4, 4, NULL, NULL, 1, '2021-01-30 14:10:37', '2021-01-30 14:13:18'),
(5, 5, NULL, NULL, 1, '2021-01-30 14:12:44', '2021-01-30 14:13:18'),
(6, 6, NULL, NULL, 1, '2021-01-30 14:13:06', '2021-01-30 14:13:18'),
(7, 7, NULL, NULL, 1, '2021-01-30 14:13:25', '2021-01-30 14:15:11'),
(8, 8, NULL, NULL, 1, '2021-01-30 14:13:25', '2021-01-30 14:15:11'),
(9, 9, NULL, NULL, 1, '2021-01-30 14:14:04', '2021-01-30 14:16:03'),
(10, 10, NULL, NULL, 1, '2021-01-30 14:14:12', '2021-01-30 14:15:11'),
(11, 11, NULL, NULL, 1, '2021-01-30 14:14:22', '2021-01-30 14:16:03'),
(12, 12, NULL, NULL, 1, '2021-01-30 14:14:23', '2021-01-30 14:15:11'),
(13, 13, NULL, NULL, 1, '2021-01-30 14:14:30', '2021-01-30 14:15:11'),
(14, 14, NULL, NULL, 1, '2021-01-30 14:14:34', '2021-01-30 14:16:03'),
(15, 15, NULL, NULL, 1, '2021-01-30 14:15:20', '2021-01-30 14:16:42'),
(16, 16, NULL, NULL, 1, '2021-01-30 14:15:20', '2021-01-30 14:16:42'),
(17, 17, NULL, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:16:42'),
(18, 18, NULL, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:18:19'),
(19, 19, NULL, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:18:19'),
(20, 20, NULL, NULL, 1, '2021-01-30 14:16:32', '2021-01-30 14:16:42'),
(21, 21, NULL, NULL, 1, '2021-01-30 14:16:47', '2021-01-30 14:18:14'),
(22, 22, NULL, NULL, 1, '2021-01-30 14:16:47', '2021-01-30 14:18:14'),
(23, 23, NULL, NULL, 1, '2021-01-30 14:17:14', '2021-01-30 14:18:19'),
(24, 24, NULL, NULL, 1, '2021-01-30 14:17:27', '2021-01-30 14:18:19'),
(25, 25, NULL, NULL, 1, '2021-01-30 14:17:37', '2021-01-30 14:18:19'),
(26, 26, NULL, NULL, 1, '2021-01-30 14:17:43', '2021-01-30 14:18:14'),
(27, 27, NULL, NULL, 1, '2021-01-30 14:17:58', '2021-01-30 14:18:14'),
(28, 28, NULL, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:20:01'),
(29, 29, NULL, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:20:01'),
(30, 30, NULL, NULL, 1, '2021-01-30 14:18:54', '2021-01-30 14:21:22'),
(31, 31, NULL, NULL, 1, '2021-01-30 14:18:54', '2021-01-30 14:21:22'),
(32, 32, NULL, NULL, 1, '2021-01-30 14:19:31', '2021-01-30 14:20:01'),
(33, 33, NULL, NULL, 1, '2021-01-30 14:19:41', '2021-01-30 14:20:01'),
(34, 34, NULL, NULL, 1, '2021-01-30 14:20:07', '2021-01-30 14:21:11'),
(35, 35, NULL, NULL, 1, '2021-01-30 14:20:07', '2021-01-30 14:21:11'),
(36, 36, NULL, NULL, 1, '2021-01-30 14:20:33', '2021-01-30 14:21:22'),
(37, 37, NULL, NULL, 1, '2021-01-30 14:20:42', '2021-01-30 14:21:11'),
(38, 38, NULL, NULL, 1, '2021-01-30 14:20:47', '2021-01-30 14:21:22'),
(39, 39, NULL, NULL, 1, '2021-01-30 14:20:55', '2021-01-30 14:21:11'),
(40, 40, NULL, NULL, 1, '2021-01-30 14:21:05', '2021-01-30 14:21:22'),
(41, 41, NULL, NULL, 1, '2021-01-30 14:21:25', '2021-01-30 14:24:01'),
(42, 42, NULL, NULL, 1, '2021-01-30 14:21:25', '2021-01-30 14:24:01'),
(43, 44, NULL, NULL, 0, '2021-01-30 14:22:21', '2021-01-30 14:22:21'),
(44, 45, NULL, NULL, 0, '2021-01-30 14:22:21', '2021-01-30 14:22:21'),
(45, 49, NULL, NULL, 1, '2021-01-30 14:24:08', '2021-01-30 14:25:16'),
(46, 48, NULL, NULL, 1, '2021-01-30 14:24:08', '2021-01-30 14:25:16'),
(47, 52, NULL, NULL, 1, '2021-01-30 14:25:23', '2021-01-30 14:26:14'),
(48, 51, NULL, NULL, 1, '2021-01-30 14:25:23', '2021-01-30 14:26:14'),
(49, 56, NULL, NULL, 0, '2021-01-30 14:26:21', '2021-01-30 14:26:21'),
(50, 55, NULL, NULL, 0, '2021-01-30 14:26:21', '2021-01-30 14:26:21'),
(51, 57, NULL, NULL, 1, '2021-01-30 14:27:27', '2021-01-30 14:28:27'),
(52, 58, NULL, NULL, 1, '2021-01-30 14:27:27', '2021-01-30 14:28:27'),
(53, 61, NULL, NULL, 1, '2021-01-30 14:28:34', '2021-01-30 14:29:21'),
(54, 60, NULL, NULL, 1, '2021-01-30 14:28:34', '2021-01-30 14:29:21'),
(55, 64, NULL, NULL, 1, '2021-01-30 14:29:34', '2021-01-30 14:30:37'),
(56, 63, NULL, NULL, 1, '2021-01-30 14:29:34', '2021-01-30 14:30:37'),
(57, 67, NULL, NULL, 1, '2021-01-30 14:36:34', '2021-01-30 14:37:41'),
(58, 66, NULL, NULL, 1, '2021-01-30 14:36:34', '2021-01-30 14:37:41'),
(59, 68, NULL, NULL, 1, '2021-01-30 14:37:05', '2021-01-30 14:37:41'),
(60, 69, NULL, NULL, 1, '2021-01-30 14:37:17', '2021-01-30 14:37:41'),
(61, 70, NULL, NULL, 1, '2021-01-30 14:37:26', '2021-01-30 14:37:41'),
(62, 71, NULL, NULL, 1, '2021-01-30 14:38:17', '2021-01-30 14:39:42'),
(63, 72, NULL, NULL, 1, '2021-01-30 14:38:17', '2021-01-30 14:39:42'),
(64, 73, NULL, NULL, 1, '2021-01-30 14:38:55', '2021-01-30 14:39:42'),
(65, 74, NULL, NULL, 1, '2021-01-30 14:39:08', '2021-01-30 14:39:42'),
(66, 75, NULL, NULL, 1, '2021-01-30 14:39:26', '2021-01-30 14:39:42'),
(67, 76, NULL, NULL, 1, '2021-01-30 14:42:16', '2021-01-30 14:43:29'),
(68, 77, NULL, NULL, 1, '2021-01-30 14:42:16', '2021-01-30 14:43:29'),
(69, 78, NULL, NULL, 1, '2021-01-30 14:43:06', '2021-01-30 14:43:29'),
(70, 79, NULL, NULL, 1, '2021-01-30 14:43:14', '2021-01-30 14:43:29'),
(71, 80, NULL, NULL, 1, '2021-01-30 14:43:35', '2021-01-30 14:44:54'),
(72, 81, NULL, NULL, 1, '2021-01-30 14:43:35', '2021-01-30 14:44:54'),
(73, 82, NULL, NULL, 1, '2021-01-30 14:44:14', '2021-01-30 14:44:54'),
(74, 83, NULL, NULL, 1, '2021-01-30 14:44:15', '2021-01-30 14:44:54'),
(75, 84, NULL, NULL, 1, '2021-01-30 14:44:16', '2021-01-30 14:44:54'),
(76, 85, NULL, NULL, 1, '2021-01-30 14:45:00', '2021-01-30 14:46:10'),
(77, 86, NULL, NULL, 1, '2021-01-30 14:45:00', '2021-01-30 14:46:10'),
(78, 87, NULL, NULL, 1, '2021-01-30 14:45:38', '2021-01-30 14:46:10'),
(79, 88, NULL, NULL, 1, '2021-01-30 14:45:39', '2021-01-30 14:46:10'),
(80, 89, NULL, NULL, 1, '2021-01-30 14:45:40', '2021-01-30 14:46:10'),
(81, 90, NULL, NULL, 1, '2021-01-30 14:46:19', '2021-01-30 14:47:19'),
(82, 91, NULL, NULL, 1, '2021-01-30 14:46:19', '2021-01-30 14:47:19'),
(83, 92, NULL, NULL, 1, '2021-01-30 14:46:44', '2021-01-30 14:47:19'),
(84, 93, NULL, NULL, 1, '2021-01-30 14:46:45', '2021-01-30 14:47:19'),
(85, 94, NULL, NULL, 1, '2021-01-30 14:46:46', '2021-01-30 14:47:19'),
(86, 95, NULL, NULL, 1, '2021-01-30 15:40:36', '2021-01-30 15:49:59'),
(87, 96, NULL, NULL, 1, '2021-01-30 15:40:36', '2021-01-30 15:49:59'),
(88, 97, NULL, NULL, 1, '2021-02-01 06:25:08', '2021-02-01 06:26:58'),
(89, 98, NULL, NULL, 1, '2021-02-01 06:25:08', '2021-02-01 06:26:58'),
(90, 100, NULL, NULL, 1, '2021-02-01 06:25:58', '2021-02-01 06:26:58'),
(91, 101, NULL, NULL, 1, '2021-02-01 06:26:10', '2021-02-01 06:26:58'),
(92, 102, NULL, NULL, 0, '2021-02-02 20:36:47', '2021-02-02 20:36:47'),
(93, 103, NULL, NULL, 0, '2021-02-02 20:36:47', '2021-02-02 20:36:47'),
(94, 104, NULL, NULL, 0, '2021-02-02 20:38:42', '2021-02-02 20:38:42'),
(95, 105, NULL, NULL, 0, '2021-02-02 20:38:47', '2021-02-02 20:38:47'),
(96, 106, NULL, NULL, 0, '2021-02-06 10:26:43', '2021-02-06 10:26:43'),
(97, 107, NULL, NULL, 0, '2021-02-06 10:26:43', '2021-02-06 10:26:43'),
(98, 108, NULL, NULL, 0, '2021-02-06 10:32:50', '2021-02-06 10:32:50'),
(99, 109, NULL, NULL, 0, '2021-02-06 10:32:50', '2021-02-06 10:32:50'),
(100, 110, NULL, NULL, 0, '2021-02-07 20:44:13', '2021-02-07 20:44:13'),
(101, 111, NULL, NULL, 0, '2021-02-07 20:44:13', '2021-02-07 20:44:13'),
(113, 122, NULL, NULL, 1, '2021-02-09 11:26:08', '2021-02-09 11:31:31'),
(112, 123, NULL, NULL, 1, '2021-02-09 11:26:08', '2021-02-09 11:31:31'),
(111, 120, NULL, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:22:37'),
(110, 121, NULL, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:22:37'),
(106, 116, NULL, 7, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(107, 117, NULL, 8, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(108, 118, NULL, 10, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(109, 119, NULL, 12, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(114, 124, NULL, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:27:55'),
(115, 125, NULL, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:27:55'),
(116, 126, NULL, NULL, 1, '2021-02-09 11:28:46', '2021-02-09 11:31:31'),
(117, 127, NULL, NULL, 1, '2021-02-09 11:28:49', '2021-02-09 11:31:31'),
(118, 128, NULL, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:31:15'),
(119, 129, NULL, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:31:15'),
(120, 130, NULL, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:43:17'),
(121, 131, NULL, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:43:17'),
(122, 132, NULL, 112, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(123, 133, NULL, 113, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(124, 134, NULL, 116, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(125, 135, NULL, 117, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(126, 136, NULL, NULL, 1, '2021-02-09 11:33:30', '2021-02-09 11:36:24'),
(127, 137, NULL, NULL, 1, '2021-02-09 11:33:30', '2021-02-09 11:36:24'),
(128, 138, NULL, NULL, 1, '2021-02-09 11:41:12', '2021-02-09 11:43:17'),
(129, 139, NULL, NULL, 1, '2021-02-09 11:42:13', '2021-02-09 11:43:17'),
(130, 140, NULL, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:49:24'),
(131, 141, NULL, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:49:24'),
(132, 142, NULL, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15'),
(133, 143, NULL, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_answer_types`
--

CREATE TABLE `cgp_question_answer_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_answer_types`
--

INSERT INTO `cgp_question_answer_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Question Input', '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Text Input', '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Text Correct Answers', '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_files`
--

CREATE TABLE `cgp_question_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `original_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_files`
--

INSERT INTO `cgp_question_files` (`id`, `question_id`, `file_id`, `original_id`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, '2021-01-30 14:09:05', '2021-01-30 14:16:03'),
(2, 2, NULL, NULL, 1, '2021-01-30 14:10:37', '2021-01-30 14:13:18'),
(3, 3, NULL, NULL, 1, '2021-01-30 14:13:25', '2021-01-30 14:15:11'),
(4, 4, NULL, NULL, 1, '2021-01-30 14:15:20', '2021-01-30 14:16:42'),
(5, 5, NULL, NULL, 1, '2021-01-30 14:16:10', '2021-01-30 14:18:19'),
(6, 6, NULL, NULL, 1, '2021-01-30 14:16:47', '2021-01-30 14:18:14'),
(7, 7, NULL, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:20:01'),
(8, 8, NULL, NULL, 1, '2021-01-30 14:18:54', '2021-01-30 14:21:22'),
(9, 9, NULL, NULL, 1, '2021-01-30 14:20:07', '2021-01-30 14:21:11'),
(10, 10, 19, NULL, 1, '2021-01-30 14:21:25', '2021-01-30 14:24:01'),
(11, 12, NULL, NULL, 0, '2021-01-30 14:22:21', '2021-01-30 14:22:21'),
(12, 14, 20, NULL, 1, '2021-01-30 14:24:08', '2021-01-30 14:25:16'),
(13, 15, 21, NULL, 1, '2021-01-30 14:25:23', '2021-01-30 14:26:14'),
(14, 17, NULL, NULL, 0, '2021-01-30 14:26:21', '2021-01-30 14:26:21'),
(15, 18, NULL, NULL, 1, '2021-01-30 14:27:27', '2021-01-30 14:28:27'),
(16, 19, NULL, NULL, 1, '2021-01-30 14:28:33', '2021-01-30 14:29:21'),
(17, 20, NULL, NULL, 1, '2021-01-30 14:29:34', '2021-01-30 14:30:37'),
(18, 21, NULL, NULL, 1, '2021-01-30 14:36:34', '2021-01-30 14:37:41'),
(19, 22, NULL, NULL, 1, '2021-01-30 14:38:17', '2021-01-30 14:39:42'),
(20, 23, NULL, NULL, 1, '2021-01-30 14:42:16', '2021-01-30 14:43:29'),
(21, 24, NULL, NULL, 1, '2021-01-30 14:43:35', '2021-01-30 14:44:54'),
(22, 25, NULL, NULL, 1, '2021-01-30 14:45:00', '2021-01-30 14:46:10'),
(23, 26, NULL, NULL, 1, '2021-01-30 14:46:19', '2021-01-30 14:47:19'),
(24, 27, NULL, NULL, 1, '2021-01-30 15:40:36', '2021-01-30 15:49:59'),
(25, 28, NULL, NULL, 0, '2021-02-01 06:25:08', '2021-02-01 06:25:08'),
(26, 29, NULL, NULL, 0, '2021-02-02 20:36:47', '2021-02-02 20:36:47'),
(27, 30, NULL, NULL, 0, '2021-02-06 10:26:43', '2021-02-06 10:26:43'),
(28, 31, NULL, NULL, 0, '2021-02-06 10:32:50', '2021-02-06 10:32:50'),
(29, 32, NULL, NULL, 0, '2021-02-07 20:44:13', '2021-02-07 20:44:13'),
(32, 35, NULL, NULL, 0, '2021-02-09 11:22:37', '2021-02-09 11:22:37'),
(31, 34, NULL, 3, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(33, 36, NULL, NULL, 1, '2021-02-09 11:26:08', '2021-02-09 11:31:31'),
(34, 37, NULL, NULL, 0, '2021-02-09 11:27:55', '2021-02-09 11:27:55'),
(35, 38, NULL, NULL, 0, '2021-02-09 11:31:15', '2021-02-09 11:31:15'),
(36, 39, NULL, NULL, 1, '2021-02-09 11:31:16', '2021-02-09 11:43:17'),
(37, 40, NULL, 33, 1, '2021-02-09 11:32:53', '2021-02-09 11:32:53'),
(38, 41, NULL, NULL, 0, '2021-02-09 11:33:30', '2021-02-09 11:33:30'),
(39, 42, NULL, NULL, 1, '2021-02-09 11:48:25', '2021-02-09 11:49:24'),
(40, 43, NULL, NULL, 1, '2021-02-09 11:56:18', '2021-02-09 11:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_infos`
--

CREATE TABLE `cgp_question_infos` (
  `question_id` int(11) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_topics`
--

CREATE TABLE `cgp_question_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `original_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_topics`
--

INSERT INTO `cgp_question_topics` (`id`, `question_id`, `topic_id`, `original_id`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, 1, '2021-01-30 14:13:18', '2021-01-30 14:13:18'),
(2, 3, 2, NULL, 1, '2021-01-30 14:15:11', '2021-01-30 14:15:11'),
(3, 1, 1, NULL, 1, '2021-01-30 14:16:03', '2021-01-30 14:16:03'),
(4, 4, 2, NULL, 1, '2021-01-30 14:16:42', '2021-01-30 14:16:42'),
(5, 6, 2, NULL, 1, '2021-01-30 14:18:14', '2021-01-30 14:18:14'),
(6, 5, 1, NULL, 1, '2021-01-30 14:18:19', '2021-01-30 14:18:19'),
(7, 7, 2, NULL, 1, '2021-01-30 14:20:01', '2021-01-30 14:20:01'),
(8, 9, 2, NULL, 1, '2021-01-30 14:21:11', '2021-01-30 14:21:11'),
(9, 8, 3, NULL, 1, '2021-01-30 14:21:22', '2021-01-30 14:21:22'),
(10, 11, 3, 9, 1, '2021-01-30 14:21:40', '2021-01-30 14:21:40'),
(11, 13, 1, 3, 1, '2021-01-30 14:22:50', '2021-01-30 14:22:50'),
(12, 10, 2, NULL, 1, '2021-01-30 14:24:01', '2021-01-30 14:24:01'),
(13, 14, 2, NULL, 1, '2021-01-30 14:25:16', '2021-01-30 14:25:16'),
(14, 16, 1, 6, 1, '2021-01-30 14:25:46', '2021-01-30 14:25:46'),
(15, 15, 2, NULL, 1, '2021-01-30 14:26:14', '2021-01-30 14:26:14'),
(16, 18, 2, NULL, 1, '2021-01-30 14:28:27', '2021-01-30 14:28:27'),
(17, 19, 2, NULL, 1, '2021-01-30 14:29:21', '2021-01-30 14:29:21'),
(18, 20, 2, NULL, 1, '2021-01-30 14:30:37', '2021-01-30 14:30:37'),
(19, 21, 1, NULL, 1, '2021-01-30 14:37:41', '2021-01-30 14:37:41'),
(20, 22, 1, NULL, 1, '2021-01-30 14:39:42', '2021-01-30 14:39:42'),
(21, 23, 1, NULL, 1, '2021-01-30 14:43:29', '2021-01-30 14:43:29'),
(22, 24, 1, NULL, 1, '2021-01-30 14:44:54', '2021-01-30 14:44:54'),
(23, 25, 1, NULL, 1, '2021-01-30 14:46:10', '2021-01-30 14:46:10'),
(24, 26, 1, NULL, 1, '2021-01-30 14:47:19', '2021-01-30 14:47:19'),
(25, 27, 2, NULL, 1, '2021-01-30 15:49:59', '2021-01-30 15:49:59'),
(30, 36, 2, NULL, 1, '2021-02-09 11:31:31', '2021-02-09 11:31:31'),
(29, 34, 2, NULL, 1, '2021-02-07 22:03:47', '2021-02-07 22:03:47'),
(32, 39, 1, NULL, 1, '2021-02-09 11:43:17', '2021-02-09 11:43:17'),
(33, 42, 4, NULL, 1, '2021-02-09 11:49:24', '2021-02-09 11:49:24'),
(34, 43, 5, NULL, 1, '2021-02-09 11:57:15', '2021-02-09 11:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_question_types`
--

CREATE TABLE `cgp_question_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_question_types`
--

INSERT INTO `cgp_question_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'MCQ', '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Text', '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_quizzes`
--

CREATE TABLE `cgp_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_percentage` int(11) DEFAULT NULL,
  `attempts_number` int(11) DEFAULT NULL,
  `show_feedback` int(11) DEFAULT NULL,
  `show_summary_feedback` int(11) DEFAULT NULL,
  `randomize_all_questions` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_request` longtext COLLATE utf8mb4_unicode_ci,
  `testing_request` longtext COLLATE utf8mb4_unicode_ci,
  `criteria_effect_quiz` longtext COLLATE utf8mb4_unicode_ci,
  `max_generated_quizzes_number` int(11) NOT NULL DEFAULT '0',
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assessment_type_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_quizzes`
--

INSERT INTO `cgp_quizzes` (`id`, `name`, `duration`, `passing_percentage`, `attempts_number`, `show_feedback`, `show_summary_feedback`, `randomize_all_questions`, `status`, `valid_request`, `testing_request`, `criteria_effect_quiz`, `max_generated_quizzes_number`, `admin_show`, `created_at`, `updated_at`, `assessment_type_id`, `subject_id`, `teacher_id`, `created_by`) VALUES
(1, 'Biology', '60', 50, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"938IS2RElhRCaOcuxLfLeHuhgNWzE2fmcXM8uiM3\",\"criteria_effect_quiz\":\"2111121131112122132\",\"quiz_id\":\"1\",\"name\":\"Biology\",\"assessment_type_id\":\"3\",\"success_percentage\":\"50\",\"duration\":\"60\",\"number_of_attempts\":null,\"quiz_section_id\":[\"1\"],\"topics_1\":[\"2\"],\"quiz_section_details\":[\"1\",\"6\",\"8\",\"10\",\"11\",\"12\"],\"number_of_questions_1\":\"1\",\"difficulty_1\":\"1\",\"question_type_1\":\"1\",\"number_of_questions_6\":\"1\",\"difficulty_6\":\"2\",\"question_type_6\":\"1\",\"number_of_questions_8\":\"1\",\"difficulty_8\":\"3\",\"question_type_8\":\"1\",\"number_of_questions_10\":\"1\",\"difficulty_10\":\"1\",\"question_type_10\":\"2\",\"number_of_questions_11\":\"1\",\"difficulty_11\":\"2\",\"question_type_11\":\"2\",\"number_of_questions_12\":\"1\",\"difficulty_12\":\"3\",\"question_type_12\":\"2\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '2111121131112122132', 0, 1, '2021-01-30 14:32:27', '2021-01-30 14:52:10', 3, 8, 11, NULL),
(2, 'Exam 1', '5', 60, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"pKnbj7QEvYbHwHaiZBxLz9LClCMOJGRA5DIF3wa5\",\"criteria_effect_quiz\":\"1111131121\",\"quiz_id\":\"2\",\"name\":\"Exam 1\",\"assessment_type_id\":\"3\",\"success_percentage\":\"60\",\"duration\":\"5\",\"number_of_attempts\":null,\"quiz_section_id\":[\"2\"],\"topics_2\":[\"1\"],\"quiz_section_details\":[\"2\",\"4\",\"5\"],\"number_of_questions_2\":\"1\",\"difficulty_2\":\"1\",\"question_type_2\":\"1\",\"number_of_questions_4\":\"1\",\"difficulty_4\":\"3\",\"question_type_4\":\"1\",\"number_of_questions_5\":\"1\",\"difficulty_5\":\"2\",\"question_type_5\":\"1\",\"new\":\"Save as new\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '1111131121', 0, 1, '2021-01-30 14:48:14', '2021-01-30 14:49:18', 3, 4, 7, NULL),
(3, 'hw 1', NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"938IS2RElhRCaOcuxLfLeHuhgNWzE2fmcXM8uiM3\",\"criteria_effect_quiz\":\"2111121131132\",\"quiz_id\":\"3\",\"name\":\"hw 1\",\"assessment_type_id\":\"1\",\"success_percentage\":null,\"duration\":null,\"number_of_attempts\":null,\"quiz_section_id\":[\"3\"],\"topics_3\":[\"2\"],\"quiz_section_details\":[\"13\",\"14\",\"15\",\"16\"],\"number_of_questions_13\":\"1\",\"difficulty_13\":\"1\",\"question_type_13\":\"1\",\"number_of_questions_14\":\"1\",\"difficulty_14\":\"2\",\"question_type_14\":\"1\",\"number_of_questions_15\":\"1\",\"difficulty_15\":\"3\",\"question_type_15\":\"1\",\"number_of_questions_16\":\"1\",\"difficulty_16\":\"3\",\"question_type_16\":\"2\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '2111121131132', 1, 1, '2021-01-30 14:57:28', '2021-02-07 22:02:24', 1, 8, 11, NULL),
(4, 'quiz1', NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"938IS2RElhRCaOcuxLfLeHuhgNWzE2fmcXM8uiM3\",\"criteria_effect_quiz\":\"2122122\",\"quiz_id\":\"4\",\"name\":\"quiz1\",\"assessment_type_id\":\"1\",\"success_percentage\":null,\"duration\":null,\"number_of_attempts\":null,\"quiz_section_id\":[\"4\"],\"topics_4\":[\"2\"],\"quiz_section_details\":[\"17\",\"18\"],\"number_of_questions_17\":\"1\",\"difficulty_17\":\"2\",\"question_type_17\":\"2\",\"number_of_questions_18\":\"1\",\"difficulty_18\":\"2\",\"question_type_18\":\"2\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '2122122', 1, 1, '2021-01-30 14:58:25', '2021-01-30 14:59:07', 1, 8, 11, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 14:59:13', '2021-01-30 14:59:13', NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 15:00:00', '2021-01-30 15:00:00', 4, 8, 11, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 15:00:07', '2021-01-30 15:00:07', NULL, NULL, NULL, NULL),
(8, 'Homework1', NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"pKnbj7QEvYbHwHaiZBxLz9LClCMOJGRA5DIF3wa5\",\"criteria_effect_quiz\":\"1211221231\",\"quiz_id\":\"8\",\"name\":\"Homework1\",\"assessment_type_id\":\"1\",\"success_percentage\":null,\"duration\":null,\"number_of_attempts\":null,\"quiz_section_id\":[\"8\"],\"topics_8\":[\"1\"],\"quiz_section_details\":[\"22\",\"25\",\"26\"],\"number_of_questions_22\":\"2\",\"difficulty_22\":\"1\",\"question_type_22\":\"1\",\"number_of_questions_25\":\"2\",\"difficulty_25\":\"2\",\"question_type_25\":\"1\",\"number_of_questions_26\":\"2\",\"difficulty_26\":\"3\",\"question_type_26\":\"1\",\"new\":\"Save as new\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '1211221231', 1, 1, '2021-01-30 15:00:09', '2021-01-30 15:01:36', 1, 4, 7, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 15:01:10', '2021-01-30 15:01:10', NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 15:37:37', '2021-01-30 15:37:37', NULL, NULL, NULL, NULL),
(12, 'Bio section', '20', 50, 2, NULL, NULL, 0, 'insufficient', NULL, '{\"_token\":\"Lvo9UXOrnWfC3amteauHRKkkr5wT0568FSROn2aU\",\"criteria_effect_quiz\":\"2111211\",\"quiz_id\":\"12\",\"name\":\"Bio section\",\"assessment_type_id\":\"2\",\"success_percentage\":\"50\",\"duration\":\"20\",\"number_of_attempts\":\"2\",\"quiz_section_id\":[\"12\"],\"topics_12\":[\"2\"],\"quiz_section_details\":[\"32\",\"33\"],\"number_of_questions_32\":\"1\",\"difficulty_32\":\"1\",\"question_type_32\":\"1\",\"number_of_questions_33\":\"2\",\"difficulty_33\":\"1\",\"question_type_33\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', '2111211', 0, 1, '2021-01-30 15:38:00', '2021-02-07 22:02:23', 2, 8, 11, NULL),
(10, 'Quiz 1', '5', 50, 1, NULL, NULL, 0, 'sufficient', '{\"_token\":\"pKnbj7QEvYbHwHaiZBxLz9LClCMOJGRA5DIF3wa5\",\"criteria_effect_quiz\":\"1211121231\",\"quiz_id\":\"10\",\"name\":\"Quiz 1\",\"assessment_type_id\":\"2\",\"success_percentage\":\"50\",\"duration\":\"5\",\"number_of_attempts\":\"1\",\"quiz_section_id\":[\"10\"],\"topics_10\":[\"1\"],\"quiz_section_details\":[\"28\",\"29\",\"30\"],\"number_of_questions_28\":\"2\",\"difficulty_28\":\"1\",\"question_type_28\":\"1\",\"number_of_questions_29\":\"1\",\"difficulty_29\":\"2\",\"question_type_29\":\"1\",\"number_of_questions_30\":\"2\",\"difficulty_30\":\"3\",\"question_type_30\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '1211121231', 0, 1, '2021-01-30 15:01:42', '2021-01-30 15:02:29', 2, 4, 7, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-31 22:27:27', '2021-01-31 22:27:27', 4, 4, 7, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-01-31 22:28:15', '2021-01-31 22:28:15', 4, 4, 7, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"ua7cGF6gwkn3ffZ4Pzn5GXv6qKQVufl1iajCWidG\",\"criteria_effect_quiz\":\"1111221131\",\"quiz_id\":\"15\",\"assessment_type_id\":\"4\",\"quiz_section_id\":[\"15\"],\"topics_15\":[\"1\"],\"quiz_section_details\":[\"36\",\"37\",\"38\"],\"number_of_questions_36\":\"1\",\"difficulty_36\":\"1\",\"question_type_36\":\"1\",\"number_of_questions_37\":\"2\",\"difficulty_37\":\"2\",\"question_type_37\":\"1\",\"number_of_questions_38\":\"1\",\"difficulty_38\":\"3\",\"question_type_38\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/LevelTestRequest\",\"undefined\":null}', NULL, '1111221131', 0, 1, '2021-01-31 22:29:10', '2021-01-31 22:29:44', 4, 4, 7, 7),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"Q6wFfaVXjsjH60RLLaXEUKgvloBf3uZeguxwCFti\",\"criteria_effect_quiz\":\"2221231\",\"quiz_id\":\"16\",\"assessment_type_id\":\"4\",\"quiz_section_id\":[\"16\"],\"topics_16\":[\"2\"],\"quiz_section_details\":[\"39\",\"40\"],\"number_of_questions_39\":\"2\",\"difficulty_39\":\"2\",\"question_type_39\":\"1\",\"number_of_questions_40\":\"2\",\"difficulty_40\":\"3\",\"question_type_40\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/LevelTestRequest\",\"undefined\":null}', NULL, '2221231', 0, 1, '2021-01-31 22:29:45', '2021-02-07 22:11:25', 4, 8, 11, 11),
(17, 'Homework2', NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"x0q1UutOZz4pZwa1pEGbngpki4tNpGrzv2YEYyDQ\",\"criteria_effect_quiz\":\"1211131\",\"quiz_id\":\"17\",\"name\":\"Homework2\",\"assessment_type_id\":\"1\",\"success_percentage\":null,\"duration\":null,\"number_of_attempts\":null,\"quiz_section_id\":[\"17\"],\"topics_17\":[\"1\"],\"quiz_section_details\":[\"41\",\"42\"],\"number_of_questions_41\":\"2\",\"difficulty_41\":\"1\",\"question_type_41\":\"1\",\"number_of_questions_42\":\"1\",\"difficulty_42\":\"3\",\"question_type_42\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '1211131', 1, 1, '2021-02-01 06:27:33', '2021-02-01 06:29:00', 1, 4, 7, NULL),
(18, 'test 1', '5', 60, 1, NULL, NULL, 0, 'insufficient', NULL, '{\"_token\":\"x0q1UutOZz4pZwa1pEGbngpki4tNpGrzv2YEYyDQ\",\"criteria_effect_quiz\":\"3111\",\"quiz_id\":\"18\",\"name\":\"test 1\",\"assessment_type_id\":\"2\",\"success_percentage\":\"60\",\"duration\":\"5\",\"number_of_attempts\":\"1\",\"quiz_section_id\":[\"18\"],\"topics_18\":[\"3\"],\"quiz_section_details\":[\"43\"],\"number_of_questions_43\":\"1\",\"difficulty_43\":\"1\",\"question_type_43\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', '3111', 0, 1, '2021-02-01 06:29:11', '2021-02-01 06:29:45', 2, 4, 7, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:35', '2021-02-02 20:33:35', NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:38', '2021-02-02 20:33:38', NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:39', '2021-02-02 20:33:39', NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:42', '2021-02-02 20:33:42', NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:43', '2021-02-02 20:33:43', NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:46', '2021-02-02 20:33:46', NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-02 20:33:50', '2021-02-02 20:33:50', NULL, NULL, NULL, NULL),
(26, 'quiz nutrition', '6', 95, 2, NULL, NULL, 0, 'insufficient', '{\"_token\":\"QjyMWCogWpNil8JB7LKxGZmR6dzyaMaN89mGZDIM\",\"criteria_effect_quiz\":\"31211111\",\"quiz_id\":\"26\",\"name\":\"quiz nutrition\",\"assessment_type_id\":\"2\",\"success_percentage\":\"95\",\"duration\":\"6\",\"number_of_attempts\":\"2\",\"quiz_section_id\":[\"27\",\"28\"],\"topics_27\":[\"3\"],\"quiz_section_details\":[\"53\",\"54\"],\"number_of_questions_53\":\"1\",\"difficulty_53\":\"2\",\"question_type_53\":\"1\",\"topics_28\":[\"1\"],\"number_of_questions_54\":\"1\",\"difficulty_54\":\"1\",\"question_type_54\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '31211111', 0, 1, '2021-02-06 10:19:25', '2021-02-06 10:24:49', 2, 4, 7, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-07 21:08:43', '2021-02-07 21:08:43', NULL, NULL, NULL, NULL),
(28, 'quiz 2', '60', 95, 3, NULL, NULL, 0, 'sufficient', '{\"_token\":\"Q6wFfaVXjsjH60RLLaXEUKgvloBf3uZeguxwCFti\",\"criteria_effect_quiz\":\"2111231\",\"quiz_id\":\"28\",\"name\":\"quiz 2\",\"assessment_type_id\":\"2\",\"success_percentage\":\"95\",\"duration\":\"60\",\"number_of_attempts\":\"3\",\"quiz_section_id\":[\"44\"],\"topics_44\":[\"2\"],\"quiz_section_details\":[\"84\",\"85\"],\"number_of_questions_84\":\"1\",\"difficulty_84\":\"1\",\"question_type_84\":\"1\",\"number_of_questions_85\":\"2\",\"difficulty_85\":\"3\",\"question_type_85\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '2111231', 0, 1, '2021-02-07 22:48:41', '2021-02-07 22:49:39', 2, 8, 11, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-09 11:28:47', '2021-02-09 11:28:47', NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-09 11:37:55', '2021-02-09 11:37:55', NULL, NULL, NULL, NULL),
(31, 'quiz immunity', '6', 95, 4, NULL, NULL, 0, 'sufficient', '{\"_token\":\"7Fr4EIQ2IAlgslId5U0orjGkET4MjmsHWfX8SksV\",\"criteria_effect_quiz\":\"1,3,4221\",\"quiz_id\":\"31\",\"name\":\"quiz immunity\",\"assessment_type_id\":\"2\",\"success_percentage\":\"95\",\"duration\":\"6\",\"number_of_attempts\":\"4\",\"quiz_section_id\":[\"54\"],\"all_topics\":\"0\",\"topics_54\":[\"1\",\"3\",\"4\"],\"quiz_section_details\":[\"95\"],\"number_of_questions_95\":\"2\",\"difficulty_95\":\"2\",\"question_type_95\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '1,3,4221', 0, 1, '2021-02-09 12:02:13', '2021-02-09 12:04:09', 2, 4, 7, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, '2021-02-09 12:40:14', '2021-02-09 12:40:14', NULL, NULL, NULL, NULL),
(33, 'nadradr', '2', 80, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"PDQCXBWJpItyzjiwzCfRXVoXi71XbclowoNh2JWZ\",\"criteria_effect_quiz\":\"5111\",\"quiz_id\":\"33\",\"name\":\"nadradr\",\"assessment_type_id\":\"3\",\"success_percentage\":\"80\",\"duration\":\"2\",\"number_of_attempts\":null,\"quiz_section_id\":[\"56\"],\"topics_56\":[\"5\"],\"quiz_section_details\":[\"97\"],\"number_of_questions_97\":\"1\",\"difficulty_97\":\"1\",\"question_type_97\":\"1\",\"update\":\"Save\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '5111', 0, 1, '2021-02-09 12:41:44', '2021-02-09 12:42:49', 3, 8, 11, NULL),
(34, 'Homework2', NULL, NULL, NULL, NULL, NULL, 0, 'sufficient', '{\"_token\":\"YX45wH6yfo5WfzQigd1a0e7H7wYJbfzkkxuiUVOe\",\"criteria_effect_quiz\":\"2221\",\"quiz_id\":\"34\",\"name\":\"Homework2\",\"assessment_type_id\":\"1\",\"success_percentage\":null,\"duration\":null,\"number_of_attempts\":null,\"quiz_section_id\":[\"57\"],\"topics_57\":[\"2\"],\"quiz_section_details\":[\"98\"],\"number_of_questions_98\":\"2\",\"difficulty_98\":\"2\",\"question_type_98\":\"1\",\"new\":\"Save as new\",\"request_file_name\":\"App\\/Http\\/Requests\\/AssessmentRequest\",\"undefined\":null}', NULL, '2221', 1, 1, '2021-02-09 15:39:24', '2021-02-09 15:43:22', 1, 8, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_quiz_sections`
--

CREATE TABLE `cgp_quiz_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_quiz_sections`
--

INSERT INTO `cgp_quiz_sections` (`id`, `quiz_id`, `order`, `admin_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2021-01-30 14:32:27', '2021-01-30 14:52:10', NULL),
(2, 2, 1, 1, '2021-01-30 14:48:14', '2021-01-30 14:49:18', NULL),
(3, 3, 1, 1, '2021-01-30 14:57:28', '2021-01-30 14:58:12', NULL),
(4, 4, 1, 1, '2021-01-30 14:58:25', '2021-01-30 14:59:07', NULL),
(5, 5, NULL, 0, '2021-01-30 14:59:13', '2021-01-30 14:59:13', NULL),
(6, 6, NULL, 0, '2021-01-30 15:00:07', '2021-01-30 15:00:07', NULL),
(7, 7, NULL, 0, '2021-01-30 15:00:07', '2021-01-30 15:00:07', NULL),
(8, 8, 1, 1, '2021-01-30 15:00:09', '2021-01-30 15:00:44', NULL),
(9, 9, NULL, 0, '2021-01-30 15:01:10', '2021-01-30 15:01:10', NULL),
(10, 10, 1, 1, '2021-01-30 15:01:42', '2021-01-30 15:02:29', NULL),
(11, 11, NULL, 0, '2021-01-30 15:37:37', '2021-01-30 15:37:37', NULL),
(12, 12, 1, 1, '2021-01-30 15:38:00', '2021-01-30 15:39:47', NULL),
(13, 13, NULL, 0, '2021-01-31 22:27:34', '2021-01-31 22:27:34', NULL),
(14, 14, NULL, 0, '2021-01-31 22:28:21', '2021-01-31 22:28:21', NULL),
(15, 15, 1, 1, '2021-01-31 22:29:14', '2021-01-31 22:29:44', NULL),
(16, 16, 1, 1, '2021-01-31 22:29:50', '2021-01-31 22:30:19', NULL),
(17, 17, 1, 1, '2021-02-01 06:27:33', '2021-02-01 06:29:00', NULL),
(18, 18, 1, 1, '2021-02-01 06:29:11', '2021-02-01 06:29:45', NULL),
(19, 19, NULL, 0, '2021-02-02 20:33:35', '2021-02-02 20:33:35', NULL),
(20, 20, NULL, 0, '2021-02-02 20:33:39', '2021-02-02 20:33:39', NULL),
(21, 21, NULL, 0, '2021-02-02 20:33:39', '2021-02-02 20:33:39', NULL),
(22, 22, NULL, 0, '2021-02-02 20:33:42', '2021-02-02 20:33:42', NULL),
(23, 23, NULL, 0, '2021-02-02 20:33:43', '2021-02-02 20:33:43', NULL),
(24, 24, NULL, 0, '2021-02-02 20:33:46', '2021-02-02 20:33:46', NULL),
(25, 25, NULL, 0, '2021-02-02 20:33:50', '2021-02-02 20:33:50', NULL),
(26, 25, NULL, 0, '2021-02-02 20:34:47', '2021-02-02 20:34:47', NULL),
(27, 26, 1, 1, '2021-02-06 10:19:26', '2021-02-06 10:24:34', NULL),
(28, 26, 2, 1, '2021-02-06 10:20:57', '2021-02-06 10:24:34', NULL),
(29, 2, NULL, 0, '2021-02-07 20:33:56', '2021-02-07 20:33:56', NULL),
(30, 2, NULL, 0, '2021-02-07 20:33:58', '2021-02-07 20:33:58', NULL),
(31, 2, NULL, 0, '2021-02-07 20:34:01', '2021-02-07 20:34:01', NULL),
(32, 2, NULL, 0, '2021-02-07 20:34:04', '2021-02-07 20:34:04', NULL),
(33, 2, NULL, 0, '2021-02-07 20:34:07', '2021-02-07 20:34:07', NULL),
(34, 2, NULL, 0, '2021-02-07 20:34:10', '2021-02-07 20:34:10', NULL),
(35, 2, NULL, 0, '2021-02-07 20:34:12', '2021-02-07 20:34:12', NULL),
(36, 2, NULL, 0, '2021-02-07 20:34:15', '2021-02-07 20:34:15', NULL),
(37, 2, NULL, 0, '2021-02-07 20:34:18', '2021-02-07 20:34:18', NULL),
(38, 2, NULL, 0, '2021-02-07 20:34:20', '2021-02-07 20:34:20', NULL),
(39, 2, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(40, 2, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(41, 2, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(42, 2, NULL, 0, '2021-02-07 20:34:22', '2021-02-07 20:34:22', NULL),
(43, 27, NULL, 0, '2021-02-07 21:08:43', '2021-02-07 21:08:43', NULL),
(44, 28, 1, 1, '2021-02-07 22:48:41', '2021-02-07 22:49:39', NULL),
(45, 29, NULL, 0, '2021-02-09 11:28:47', '2021-02-09 11:28:47', NULL),
(46, 29, NULL, 0, '2021-02-09 11:29:04', '2021-02-09 11:29:04', NULL),
(47, 30, NULL, 0, '2021-02-09 11:37:55', '2021-02-09 11:37:55', NULL),
(48, 12, NULL, 0, '2021-02-09 11:46:26', '2021-02-09 11:46:26', NULL),
(49, 12, NULL, 0, '2021-02-09 11:47:06', '2021-02-09 11:47:06', NULL),
(50, 12, NULL, 0, '2021-02-09 11:47:12', '2021-02-09 11:47:12', NULL),
(51, 12, NULL, 0, '2021-02-09 11:48:24', '2021-02-09 11:48:24', NULL),
(52, 12, NULL, 0, '2021-02-09 11:48:30', '2021-02-09 11:48:30', NULL),
(53, 12, NULL, 0, '2021-02-09 11:48:31', '2021-02-09 11:48:31', NULL),
(54, 31, 1, 1, '2021-02-09 12:02:13', '2021-02-09 12:04:08', NULL),
(55, 32, NULL, 0, '2021-02-09 12:40:14', '2021-02-09 12:40:14', NULL),
(56, 33, 1, 1, '2021-02-09 12:41:44', '2021-02-09 12:42:49', NULL),
(57, 34, 1, 1, '2021-02-09 15:39:24', '2021-02-09 15:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_quiz_section_details`
--

CREATE TABLE `cgp_quiz_section_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_section_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `difficulty_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_quiz_section_details`
--

INSERT INTO `cgp_quiz_section_details` (`id`, `quiz_section_id`, `number`, `question_type_id`, `difficulty_id`, `admin_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 1, '2021-01-30 14:32:27', '2021-01-30 14:52:10', NULL),
(2, 2, 1, 1, 1, 1, '2021-01-30 14:48:14', '2021-01-30 14:49:18', NULL),
(3, 1, NULL, NULL, NULL, 0, '2021-01-30 14:48:57', '2021-01-30 14:52:10', '2021-01-30 14:52:10'),
(4, 2, 1, 1, 3, 1, '2021-01-30 14:48:57', '2021-01-30 14:49:18', NULL),
(5, 2, 1, 1, 2, 1, '2021-01-30 14:49:04', '2021-01-30 14:49:18', NULL),
(6, 1, 1, 1, 2, 1, '2021-01-30 14:49:04', '2021-01-30 14:52:10', NULL),
(7, 1, NULL, NULL, NULL, 0, '2021-01-30 14:49:06', '2021-01-30 14:52:10', '2021-01-30 14:52:10'),
(8, 1, 1, 1, 3, 1, '2021-01-30 14:49:17', '2021-01-30 14:52:10', NULL),
(9, 1, NULL, NULL, NULL, 0, '2021-01-30 14:49:27', '2021-01-30 14:52:10', '2021-01-30 14:52:10'),
(10, 1, 1, 2, 1, 1, '2021-01-30 14:49:36', '2021-01-30 14:52:10', NULL),
(11, 1, 1, 2, 2, 1, '2021-01-30 14:50:33', '2021-01-30 14:52:10', NULL),
(12, 1, 1, 2, 3, 1, '2021-01-30 14:50:41', '2021-01-30 14:52:10', NULL),
(13, 3, 1, 1, 1, 1, '2021-01-30 14:57:28', '2021-01-30 14:58:12', NULL),
(14, 3, 1, 1, 2, 1, '2021-01-30 14:57:39', '2021-01-30 14:58:12', NULL),
(15, 3, 1, 1, 3, 1, '2021-01-30 14:57:44', '2021-01-30 14:58:12', NULL),
(16, 3, 1, 2, 3, 1, '2021-01-30 14:57:51', '2021-01-30 14:58:12', NULL),
(17, 4, 1, 2, 2, 1, '2021-01-30 14:58:25', '2021-01-30 14:59:07', NULL),
(18, 4, 1, 2, 2, 1, '2021-01-30 14:58:53', '2021-01-30 14:59:07', NULL),
(19, 5, NULL, NULL, NULL, 0, '2021-01-30 14:59:13', '2021-01-30 14:59:13', NULL),
(20, 6, NULL, NULL, NULL, 0, '2021-01-30 15:00:07', '2021-01-30 15:00:07', NULL),
(21, 7, NULL, NULL, NULL, 0, '2021-01-30 15:00:07', '2021-01-30 15:00:07', NULL),
(22, 8, 2, 1, 1, 1, '2021-01-30 15:00:09', '2021-01-30 15:00:44', NULL),
(23, 6, NULL, NULL, NULL, 0, '2021-01-30 15:00:16', '2021-01-30 15:00:16', NULL),
(24, 6, NULL, NULL, NULL, 0, '2021-01-30 15:00:24', '2021-01-30 15:00:24', NULL),
(25, 8, 2, 1, 2, 1, '2021-01-30 15:00:24', '2021-01-30 15:00:44', NULL),
(26, 8, 2, 1, 3, 1, '2021-01-30 15:00:32', '2021-01-30 15:00:44', NULL),
(27, 9, NULL, NULL, NULL, 0, '2021-01-30 15:01:10', '2021-01-30 15:01:10', NULL),
(28, 10, 2, 1, 1, 1, '2021-01-30 15:01:42', '2021-01-30 15:02:29', NULL),
(29, 10, 1, 1, 2, 1, '2021-01-30 15:02:11', '2021-01-30 15:02:29', NULL),
(30, 10, 2, 1, 3, 1, '2021-01-30 15:02:20', '2021-01-30 15:02:29', NULL),
(31, 11, NULL, NULL, NULL, 0, '2021-01-30 15:37:37', '2021-01-30 15:37:37', NULL),
(32, 12, 1, 1, 1, 1, '2021-01-30 15:38:00', '2021-01-30 15:39:47', NULL),
(33, 12, 2, 1, 1, 1, '2021-01-30 15:39:10', '2021-01-30 15:39:47', NULL),
(34, 13, NULL, NULL, NULL, 0, '2021-01-31 22:27:34', '2021-01-31 22:27:34', NULL),
(35, 14, NULL, NULL, NULL, 0, '2021-01-31 22:28:21', '2021-01-31 22:28:21', NULL),
(36, 15, 1, 1, 1, 1, '2021-01-31 22:29:14', '2021-01-31 22:29:44', NULL),
(37, 15, 2, 1, 2, 1, '2021-01-31 22:29:28', '2021-01-31 22:29:44', NULL),
(38, 15, 1, 1, 3, 1, '2021-01-31 22:29:36', '2021-01-31 22:29:44', NULL),
(39, 16, 2, 1, 2, 1, '2021-01-31 22:29:50', '2021-01-31 22:30:19', NULL),
(40, 16, 2, 1, 3, 1, '2021-01-31 22:30:01', '2021-01-31 22:30:19', NULL),
(41, 17, 2, 1, 1, 1, '2021-02-01 06:27:33', '2021-02-01 06:29:00', NULL),
(42, 17, 1, 1, 3, 1, '2021-02-01 06:28:35', '2021-02-01 06:29:00', NULL),
(43, 18, 1, 1, 1, 1, '2021-02-01 06:29:11', '2021-02-01 06:29:45', NULL),
(44, 19, NULL, NULL, NULL, 0, '2021-02-02 20:33:35', '2021-02-02 20:33:35', NULL),
(45, 20, NULL, NULL, NULL, 0, '2021-02-02 20:33:39', '2021-02-02 20:33:39', NULL),
(46, 21, NULL, NULL, NULL, 0, '2021-02-02 20:33:39', '2021-02-02 20:33:39', NULL),
(47, 22, NULL, NULL, NULL, 0, '2021-02-02 20:33:42', '2021-02-02 20:33:42', NULL),
(48, 23, NULL, NULL, NULL, 0, '2021-02-02 20:33:43', '2021-02-02 20:33:43', NULL),
(49, 24, NULL, NULL, NULL, 0, '2021-02-02 20:33:46', '2021-02-02 20:33:46', NULL),
(50, 25, NULL, NULL, NULL, 0, '2021-02-02 20:33:50', '2021-02-02 20:33:50', NULL),
(51, 26, NULL, NULL, NULL, 0, '2021-02-02 20:34:47', '2021-02-02 20:34:47', NULL),
(52, 25, NULL, NULL, NULL, 0, '2021-02-02 20:35:15', '2021-02-02 20:35:15', NULL),
(53, 27, 1, 1, 2, 1, '2021-02-06 10:19:26', '2021-02-06 10:24:34', NULL),
(54, 28, 1, 1, 1, 1, '2021-02-06 10:20:57', '2021-02-06 10:24:34', NULL),
(55, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:33', '2021-02-07 20:33:33', NULL),
(56, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:42', '2021-02-07 20:33:42', NULL),
(57, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:47', '2021-02-07 20:33:47', NULL),
(58, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:48', '2021-02-07 20:33:48', NULL),
(59, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:51', '2021-02-07 20:33:51', NULL),
(60, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:52', '2021-02-07 20:33:52', NULL),
(61, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:53', '2021-02-07 20:33:53', NULL),
(62, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:54', '2021-02-07 20:33:54', NULL),
(63, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:55', '2021-02-07 20:33:55', NULL),
(64, 29, NULL, NULL, NULL, 0, '2021-02-07 20:33:56', '2021-02-07 20:33:56', NULL),
(65, 2, NULL, NULL, NULL, 0, '2021-02-07 20:33:56', '2021-02-07 20:33:56', NULL),
(66, 30, NULL, NULL, NULL, 0, '2021-02-07 20:33:58', '2021-02-07 20:33:58', NULL),
(67, 2, NULL, NULL, NULL, 0, '2021-02-07 20:34:00', '2021-02-07 20:34:00', NULL),
(68, 31, NULL, NULL, NULL, 0, '2021-02-07 20:34:01', '2021-02-07 20:34:01', NULL),
(69, 2, NULL, NULL, NULL, 0, '2021-02-07 20:34:04', '2021-02-07 20:34:04', NULL),
(70, 32, NULL, NULL, NULL, 0, '2021-02-07 20:34:04', '2021-02-07 20:34:04', NULL),
(71, 2, NULL, NULL, NULL, 0, '2021-02-07 20:34:05', '2021-02-07 20:34:05', NULL),
(72, 33, NULL, NULL, NULL, 0, '2021-02-07 20:34:07', '2021-02-07 20:34:07', NULL),
(73, 2, NULL, NULL, NULL, 0, '2021-02-07 20:34:08', '2021-02-07 20:34:08', NULL),
(74, 34, NULL, NULL, NULL, 0, '2021-02-07 20:34:10', '2021-02-07 20:34:10', NULL),
(75, 35, NULL, NULL, NULL, 0, '2021-02-07 20:34:12', '2021-02-07 20:34:12', NULL),
(76, 36, NULL, NULL, NULL, 0, '2021-02-07 20:34:15', '2021-02-07 20:34:15', NULL),
(77, 37, NULL, NULL, NULL, 0, '2021-02-07 20:34:18', '2021-02-07 20:34:18', NULL),
(78, 38, NULL, NULL, NULL, 0, '2021-02-07 20:34:20', '2021-02-07 20:34:20', NULL),
(79, 39, NULL, NULL, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(80, 40, NULL, NULL, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(81, 41, NULL, NULL, NULL, 0, '2021-02-07 20:34:21', '2021-02-07 20:34:21', NULL),
(82, 42, NULL, NULL, NULL, 0, '2021-02-07 20:34:22', '2021-02-07 20:34:22', NULL),
(83, 43, NULL, NULL, NULL, 0, '2021-02-07 21:08:43', '2021-02-07 21:08:43', NULL),
(84, 44, 1, 1, 1, 1, '2021-02-07 22:48:41', '2021-02-07 22:49:39', NULL),
(85, 44, 2, 1, 3, 1, '2021-02-07 22:48:56', '2021-02-07 22:49:39', NULL),
(86, 45, NULL, NULL, NULL, 0, '2021-02-09 11:28:47', '2021-02-09 11:28:47', NULL),
(87, 46, NULL, NULL, NULL, 0, '2021-02-09 11:29:04', '2021-02-09 11:29:04', NULL),
(88, 47, NULL, NULL, NULL, 0, '2021-02-09 11:37:55', '2021-02-09 11:37:55', NULL),
(89, 48, NULL, NULL, NULL, 0, '2021-02-09 11:46:26', '2021-02-09 11:46:26', NULL),
(90, 49, NULL, NULL, NULL, 0, '2021-02-09 11:47:06', '2021-02-09 11:47:06', NULL),
(91, 50, NULL, NULL, NULL, 0, '2021-02-09 11:47:12', '2021-02-09 11:47:12', NULL),
(92, 51, NULL, NULL, NULL, 0, '2021-02-09 11:48:24', '2021-02-09 11:48:24', NULL),
(93, 52, NULL, NULL, NULL, 0, '2021-02-09 11:48:30', '2021-02-09 11:48:30', NULL),
(94, 53, NULL, NULL, NULL, 0, '2021-02-09 11:48:31', '2021-02-09 11:48:31', NULL),
(95, 54, 2, 1, 2, 1, '2021-02-09 12:02:13', '2021-02-09 12:04:08', NULL),
(96, 55, NULL, NULL, NULL, 0, '2021-02-09 12:40:14', '2021-02-09 12:40:14', NULL),
(97, 56, 1, 1, 1, 1, '2021-02-09 12:41:44', '2021-02-09 12:42:49', NULL),
(98, 57, 2, 1, 2, 1, '2021-02-09 15:39:24', '2021-02-09 15:43:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cgp_quiz_section_topics`
--

CREATE TABLE `cgp_quiz_section_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_section_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_quiz_section_topics`
--

INSERT INTO `cgp_quiz_section_topics` (`id`, `quiz_section_id`, `topic_id`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, '2021-01-30 14:49:18', '2021-01-30 14:49:18'),
(2, 1, 2, 0, '2021-01-30 14:52:10', '2021-01-30 14:52:10'),
(3, 3, 2, 0, '2021-01-30 14:58:12', '2021-01-30 14:58:12'),
(4, 4, 2, 0, '2021-01-30 14:59:07', '2021-01-30 14:59:07'),
(6, 8, 1, 0, '2021-01-30 15:01:36', '2021-01-30 15:01:36'),
(7, 10, 1, 0, '2021-01-30 15:02:29', '2021-01-30 15:02:29'),
(8, 12, 2, 0, '2021-01-30 15:39:47', '2021-01-30 15:39:47'),
(9, 15, 1, 0, '2021-01-31 22:29:44', '2021-01-31 22:29:44'),
(15, 16, 2, 0, '2021-02-07 22:11:25', '2021-02-07 22:11:25'),
(11, 17, 1, 0, '2021-02-01 06:29:00', '2021-02-01 06:29:00'),
(12, 18, 3, 0, '2021-02-01 06:29:45', '2021-02-01 06:29:45'),
(13, 27, 3, 0, '2021-02-06 10:24:34', '2021-02-06 10:24:34'),
(14, 28, 1, 0, '2021-02-06 10:24:34', '2021-02-06 10:24:34'),
(16, 44, 2, 0, '2021-02-07 22:49:39', '2021-02-07 22:49:39'),
(17, 54, 1, 0, '2021-02-09 12:04:08', '2021-02-09 12:04:08'),
(18, 54, 3, 0, '2021-02-09 12:04:08', '2021-02-09 12:04:08'),
(19, 54, 4, 0, '2021-02-09 12:04:08', '2021-02-09 12:04:08'),
(20, 56, 5, 0, '2021-02-09 12:42:49', '2021-02-09 12:42:49'),
(22, 57, 2, 0, '2021-02-09 15:43:21', '2021-02-09 15:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `cgp_text_correct_answers`
--

CREATE TABLE `cgp_text_correct_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_answer_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `original_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cgp_topics`
--

CREATE TABLE `cgp_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cgp_topics`
--

INSERT INTO `cgp_topics` (`id`, `name`, `admin_show`, `created_at`, `updated_at`, `subject_id`, `teacher_id`) VALUES
(1, 'A', 1, '2021-01-30 14:09:15', '2021-01-30 14:16:03', 4, 7),
(2, 'Nutrition', 1, '2021-01-30 14:11:19', '2021-01-30 14:13:18', 8, 11),
(3, 'Nutrition', 1, '2021-01-30 14:19:24', '2021-01-30 14:21:22', 4, 7),
(4, 'G', 1, '2021-02-09 11:48:56', '2021-02-09 11:49:24', 4, 7),
(5, 'enzyme', 1, '2021-02-09 11:56:40', '2021-02-09 11:57:15', 8, 11);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cgp_view_1st_quiz_section_detail_questions`
-- (See below for the actual view)
--
CREATE TABLE `cgp_view_1st_quiz_section_detail_questions` (
`question_id` int(10) unsigned
,`quiz_section_detail_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cgp_view_2nd_available_requested_question_difference`
-- (See below for the actual view)
--
CREATE TABLE `cgp_view_2nd_available_requested_question_difference` (
`difference` bigint(22)
,`quiz_section_detail_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `datatable_column_invisibles`
--

CREATE TABLE `datatable_column_invisibles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `datatable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `all_students` int(11) DEFAULT NULL,
  `specific_groups` int(11) DEFAULT NULL,
  `specific_students` int(11) DEFAULT NULL,
  `items_ids` json DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `date`, `from_time`, `to_time`, `assessment_id`, `all_students`, `specific_groups`, `specific_students`, `items_ids`, `school_year_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `subject_id`, `teacher_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 14:31:41', '2021-01-30 14:31:41', NULL, NULL),
(2, 'Exam63737', '2021-02-01', '08:45:00', '09:00:00', 2, 0, 0, 1, '[\"32\"]', 2, 1, 0, '2021-02-01 06:33:08', '2021-02-01 06:34:13', 4, 7),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-02-09 11:53:02', '2021-02-09 11:53:02', NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-02-09 12:03:15', '2021-02-09 12:03:15', NULL, NULL),
(5, 's3 mahy', '2021-02-10', '14:15:00', '17:15:00', 2, 1, 0, 0, NULL, 2, 1, 0, '2021-02-09 12:05:38', '2021-02-09 15:43:11', 4, 7),
(6, 'D', '2021-02-09', '14:56:00', '15:50:00', 1, 1, 0, 0, NULL, 2, 1, 0, '2021-02-09 12:33:19', '2021-02-09 12:55:16', 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `file`, `hash`, `length`, `file_type`, `encrypted`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 1, '28362878 (original).jpg', 'fc1cb7b4-8e62-45c1-9c73-e9db5dd14939', NULL, 'image/jpeg', 0, 0, 0, '2021-01-12 12:20:02', '2021-01-12 12:20:02'),
(2, 1, 'IMG_20210130_115153 (original).jpg', '8618d1c1-0ef4-4aab-8b8d-518ed23b44fd', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:52:44', '2021-01-30 09:52:44'),
(3, 1, 'IMG_20210130_115153 (original).jpg', 'f8011e84-d9ea-4f33-abb2-d226e907ccde', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:53:30', '2021-01-30 09:53:30'),
(4, 1, 'IMG_20210130_115153 (original).jpg', 'f72f9848-39a6-40ae-800e-a1f4993dba02', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:53:58', '2021-01-30 09:53:58'),
(5, 1, 'IMG_20210118_220857 (original).jpg', '1e28ecf8-b03a-4c10-b00a-df84331eb50b', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:55:01', '2021-01-30 09:55:01'),
(6, 1, 'IMG_20210104_175153 (original).jpg', 'a89fa91d-5438-421e-9e93-091b13ee9e79', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:56:59', '2021-01-30 09:56:59'),
(7, 1, 'IMG_20210104_175154 (original).jpg', 'a7f7032b-9528-4b9d-986c-8de8c02d01c5', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:57:32', '2021-01-30 09:57:32'),
(8, 1, 'IMG_20210104_175154 (original).jpg', '2e3bf486-8daa-4f5a-a8d5-98eaa6a8d84a', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 09:58:22', '2021-01-30 09:58:22'),
(9, 1, 'IMG-20210130-WA0086 (original).jpg', '23974dff-4b95-4a96-9131-b80903570ee6', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 10:23:56', '2021-01-30 10:23:56'),
(10, 1, 'IMG-20210130-WA0087 (original).jpg', '5eb7da22-4827-400c-9860-1c065275f064', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 10:28:49', '2021-01-30 10:28:49'),
(11, 1, 'IMG-20210126-WA0096 (original).jpg', 'b098a047-2f05-44ce-82d4-4d697821c005', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 10:52:11', '2021-01-30 10:52:11'),
(12, 1, 'Capture1 (original).JPG', 'f6b24133-e31b-4163-9e5b-da88518bfe8c', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 12:45:42', '2021-01-30 12:45:42'),
(19, 11, '71wIafyUE6L._AC_SL1500_ (original).jpg', '670374a2-66c6-4562-ad97-6493bd6af983', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 14:23:29', '2021-01-30 14:23:29'),
(16, 7, 'Capture (original).JPG', 'f5d68d67-9fbc-4a83-a943-04919998a8cf', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 13:49:13', '2021-01-30 13:49:13'),
(18, 11, '38324-شيرازي (original).jpg', 'cf680af1-70de-4a74-85e8-a677f4b92503', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 13:56:20', '2021-01-30 13:56:20'),
(20, 11, '38324-شيرازي (original).jpg', '775db46c-574b-43c3-aa30-2b9a0ea55f8f', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 14:24:26', '2021-01-30 14:24:26'),
(21, 11, 'a4a10cc6f2b812f7f4c4b9b1f4458fde (original).jpg', 'd3c07bff-6051-44a2-8e46-72c7e70d8bd5', NULL, 'image/jpeg', 0, 0, 0, '2021-01-30 14:26:10', '2021-01-30 14:26:10'),
(22, 32, 'FB_IMG_1610830908298 (original).jpg', '3bfcc2bf-119f-4d43-b623-f4c6d61936f5', NULL, 'image/jpeg', 0, 0, 0, '2021-01-31 22:11:00', '2021-01-31 22:11:00'),
(23, 33, 'IMG-20210130-WA0018 (original).jpg', 'd1296d07-aa8f-4867-947a-d8cc41c77046', NULL, 'image/jpeg', 0, 0, 0, '2021-01-31 22:11:43', '2021-01-31 22:11:43'),
(24, 7, '0318_Nucleus (original).jpg', 'e1b52a3e-6d51-4ae6-85d2-4e9490d52fdd', NULL, 'image/jpeg', 0, 0, 0, '2021-01-31 22:51:41', '2021-01-31 22:51:41'),
(25, 7, 'Lipids.mp4', 'aca91791-f4b2-408e-90e2-d795bae08b18', NULL, 'video/mp4', 0, 0, 0, '2021-01-31 22:53:40', '2021-01-31 22:53:40'),
(26, 11, 'FB_IMG_1612002203633 (original).jpg', 'f612e153-87fb-49a6-a36b-ed11e5abe344', NULL, 'image/jpeg', 0, 0, 0, '2021-01-31 23:26:01', '2021-01-31 23:26:01'),
(27, 37, 'FB_IMG_1611586528038 (original).jpg', '8874c921-8bbf-420e-bde2-defa5cd384b8', NULL, 'image/jpeg', 0, 0, 0, '2021-02-01 01:02:25', '2021-02-01 01:02:25'),
(28, 38, 'IMG-20210201-WA0036 (original).jpg', 'eb9b00af-ffba-49b8-8fe2-03e890f13987', NULL, 'image/jpeg', 0, 0, 0, '2021-02-01 06:24:25', '2021-02-01 06:24:25'),
(29, 1, 'Image20210118120819 (original).png', 'da5c5b11-adca-4b5b-a52e-2d54ada9c21c', NULL, 'image/png', 0, 0, 0, '2021-02-01 10:43:48', '2021-02-01 10:43:48'),
(30, 17, '1612729705065-1839250418 (original).jpg', '3b221283-9fd6-4ee0-9912-ce33a411ff15', NULL, 'image/jpeg', 0, 0, 0, '2021-02-07 20:29:05', '2021-02-07 20:29:05'),
(31, 46, 'Screenshot_2021-02-03-20-02-20-63_78dd88300ed9e5606823a617693d1608 (original).jpg', 'bd29125f-0d42-4b6f-8f05-6dd8a2a37e05', NULL, 'image/jpeg', 0, 0, 0, '2021-02-07 20:58:12', '2021-02-07 20:58:12'),
(38, 55, 'Screenshot_20210209_135200_com.android.documentsui (original).jpg', '6b2d76dd-933b-446e-9144-dde0e18cd3d7', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 11:52:16', '2021-02-09 11:52:16'),
(33, 50, '109494423_279054100094075_8401995356354551854_o (original).jpg', '4003abaa-c97e-47ad-84a5-f2742f263230', NULL, 'image/jpeg', 0, 0, 0, '2021-02-07 21:29:25', '2021-02-07 21:29:25'),
(37, 7, '1 - Copy (original).png', 'aecb34eb-f129-46d3-bd03-b6bcd29f95eb', NULL, 'image/png', 0, 0, 0, '2021-02-07 22:32:53', '2021-02-07 22:32:53'),
(35, 11, 'Capture6 (original).JPG', 'bdccced9-3a3f-473f-9ea9-9576eef58ba2', NULL, 'image/jpeg', 0, 0, 0, '2021-02-07 22:05:27', '2021-02-07 22:05:27'),
(36, 11, 'Capture1 (original).JPG', '53715339-09e9-4f8f-b18e-cb1751d9ec2e', NULL, 'image/jpeg', 0, 0, 0, '2021-02-07 22:05:55', '2021-02-07 22:05:55'),
(39, 61, 'FB_IMG_1612816279088 (original).jpg', '67171f23-6ab1-4a70-9061-25e22210d6cc', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 12:08:37', '2021-02-09 12:08:37'),
(40, 43, '10441472_733085746748573_8223240050199308287_n (original).jpg', 'bc5be4eb-8f29-4488-89fa-ddc2cd2ae81c', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 12:14:46', '2021-02-09 12:14:46'),
(41, 66, 'Screenshot_20210209_141845_android (original).jpg', 'e909dfb3-f1bc-4220-b23f-02d0546c0160', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 12:18:57', '2021-02-09 12:18:57'),
(42, 67, '10441472_733085746748573_8223240050199308287_n (original).jpg', '82ca640b-ff7f-47cf-8bda-13b82973fd38', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 12:37:46', '2021-02-09 12:37:46'),
(43, 11, 'Capture1 (original).JPG', 'aea98f12-17fb-4435-a336-9bfb19049f41', NULL, 'image/jpeg', 0, 0, 0, '2021-02-09 13:28:03', '2021-02-09 13:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(2, 'Female', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Senior 1', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Senior 2', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Senior 3', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `max_students` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `teacher_id`, `subject_id`, `school_year_id`, `grade_id`, `max_students`, `description`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, NULL, 3, 2, NULL, 1, NULL, NULL, 0, 0, '2021-01-30 14:09:02', '2021-01-30 14:09:02'),
(2, 'A', 11, 8, 2, 3, 15, 'math for senior 3', 1, 0, '2021-01-30 14:52:33', '2021-02-02 18:59:06'),
(3, 'A', 7, 4, 2, 3, 50, NULL, 1, 0, '2021-01-30 14:52:50', '2021-01-30 14:53:06'),
(4, 'B', 11, 8, 2, 3, 10, 'math for senior 3', 1, 0, '2021-01-30 14:53:08', '2021-01-30 14:53:29'),
(5, 'B', 7, 4, 2, 3, 50, NULL, 1, 0, '2021-01-31 22:20:47', '2021-01-31 22:20:59'),
(6, 'C', 7, 4, 2, 3, 50, NULL, 1, 0, '2021-01-31 22:21:42', '2021-01-31 22:21:59'),
(7, 'D', 7, 4, 1, 3, 50, NULL, 1, 0, '2021-01-31 22:22:13', '2021-01-31 22:22:30'),
(8, 'C', 11, 8, 2, 3, 5, 'Mathematical', 1, 0, '2021-02-01 01:40:07', '2021-02-01 01:40:32'),
(9, 'E', 7, 4, 2, 3, 50, NULL, 1, 0, '2021-02-01 06:16:08', '2021-02-01 06:17:34'),
(10, 'D', 11, 8, 1, 3, 15, NULL, 1, 0, '2021-02-02 18:59:14', '2021-02-09 11:55:18'),
(11, 'mahy', 7, 4, 2, 3, 60, NULL, 1, 0, '2021-02-06 10:08:54', '2021-02-06 10:10:08'),
(12, 'Biology', 3, 2, 2, 1, 200, NULL, 1, 0, '2021-02-07 21:34:29', '2021-02-07 21:34:47'),
(13, NULL, 7, 4, NULL, 3, NULL, NULL, 0, 0, '2021-02-09 12:11:34', '2021-02-09 12:11:34'),
(14, 's3 mahy', 7, 4, 2, 3, 70, NULL, 1, 0, '2021-02-09 12:12:05', '2021-02-09 12:12:33'),
(15, NULL, 11, 8, NULL, 3, NULL, NULL, 0, 0, '2021-02-09 15:34:25', '2021-02-09 15:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `groups_students`
--

CREATE TABLE `groups_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups_students`
--

INSERT INTO `groups_students` (`id`, `group_id`, `student_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 2, 32, 1, 0, NULL, NULL),
(2, 3, 33, 1, 0, NULL, NULL),
(3, 3, 32, 1, 0, NULL, NULL),
(4, 2, 33, 1, 0, NULL, NULL),
(5, 3, 46, 1, 0, NULL, NULL),
(6, 2, 46, 1, 0, NULL, NULL),
(7, 12, 50, 1, 0, NULL, NULL),
(8, 3, 50, 1, 0, NULL, NULL),
(9, 3, 55, 1, 0, NULL, NULL),
(10, 10, 55, 1, 0, NULL, NULL),
(11, 2, 66, 1, 0, NULL, NULL),
(12, 2, 64, 1, 0, NULL, NULL),
(13, 2, 67, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `honor_board`
--

CREATE TABLE `honor_board` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `stuff_order` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `honor_board`
--

INSERT INTO `honor_board` (`id`, `teacher_id`, `subject_id`, `student_id`, `stuff_order`, `admin_show`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 0, '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(2, NULL, NULL, NULL, NULL, 0, '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(3, NULL, NULL, NULL, NULL, 0, '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(4, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(5, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(6, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(7, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(8, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(9, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(10, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:38:13', '2021-02-01 01:38:13'),
(11, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(12, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(13, NULL, NULL, NULL, NULL, 0, '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(14, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(15, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(16, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(17, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:32:42', '2021-02-01 06:32:42'),
(18, NULL, NULL, NULL, NULL, 0, '2021-02-01 06:32:43', '2021-02-01 06:32:43'),
(19, NULL, NULL, NULL, NULL, 0, '2021-02-02 20:40:00', '2021-02-02 20:40:00'),
(20, 11, NULL, 46, 1, 1, '2021-02-07 23:08:55', '2021-02-07 23:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `homework_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` text COLLATE utf8mb4_unicode_ci,
  `meeting_uuid` text COLLATE utf8mb4_unicode_ci,
  `start_url` text COLLATE utf8mb4_unicode_ci,
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `is_active` int(11) NOT NULL DEFAULT '-1',
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `name`, `group_id`, `topic`, `start_time`, `end_time`, `date`, `homework_id`, `quiz_id`, `payment_terms`, `teacher_id`, `link`, `meeting_id`, `meeting_uuid`, `start_url`, `video_link`, `is_active`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `subject_id`) VALUES
(1, 'lecture 2021-02-01', 3, 'test 1', '00:55:00', '02:00:00', '2021-02-01', 8, 10, 1, 7, 'https://us04web.zoom.us/j/77049028387?pwd=ZUNZUm1QRzBBamZzYU9ndkhTZWhVZz09', '77049028387', '55XLoIp3R+anf0nWTqsTHw==', 'https://us04web.zoom.us/s/77049028387?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJZeDU5eG53eFMwS0k0LXRNLUtzZjN3IiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6IlZ0d2tmU19sTnRtUG1yUG9SM3NpRDlQNk14MWdjYVpISTN2bWdyWi0yQ1EuQmdZc04xaHRWVkJhYUhZek5FZFRSRTlyVTBzeFdUUTNjMHcwY2trNVEwRlhTMjFxWm5kek1WWlFTbVZEU1QxQVlUaG1aalUzTXpnMU9HVmxZV1V4WmpBeVpXTXdORFZrT0dVM016STNNREF4TkRkaE1tUXpNMlUxWkdFM1ptWmpNREkwWXpCa1pXTXdNalJtWlRrell3QU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZDFxcHlrSUFFblVBQUFBIiwiZXhwIjoxNjEyMTQxMDEyLCJpYXQiOjE2MTIxMzM4MTIsImFpZCI6IjhiQ3hUcHBEUzhxVXdyWGktenVUckEiLCJjaWQiOiIifQ.bo1VeDkZHAQihb1yuaDw4CZoMBPL_AymlXsecd_lWQQ', '<p>https://docs.google.com/forms/d/1sO2WQzu3P7_URyY4qfM60Q3dSN8aKxLlmhOgTtNyPP0/edit</p>\n<p>&nbsp;</p>', 0, 1, 0, '2021-01-31 22:49:17', '2021-01-31 22:59:04', 4),
(2, 'lecture 2021-02-01', 2, 'Lecture 1', '01:30:00', '02:00:00', '2021-02-01', 3, 12, 1, 11, 'https://us04web.zoom.us/j/74174194124?pwd=eEV4VkhWT3FrS0xKQ3Z5dWEza0x6Zz09', '74174194124', 'dSgn9P0IRBaWCOrLAIW0KQ==', 'https://us04web.zoom.us/s/74174194124?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJ0c09XYmFObFpEMFB2Wld0NFdad3FBcmdGVGU2QTBZbFVIRWFGSkZDRmJjLkFHLmxoMW5HMlpnRU04TDZTWjNYYTNmMGhTVFRHZmlEdUlibWdnY05ISmkzNDF5UkpQOTBUYWg2eHJadWVSOUg5RnNzQlB0MVVHZXRQVlVkaWVrLlM3amFxRmxPTjBlNHJUTkFMd3VzTncuWVpUQnpDc3psd1ZKSGxWRyIsImV4cCI6MTYxMjE0Mjg2NCwiaWF0IjoxNjEyMTM1NjY0LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.nZQesVM9Z6gIQd3an4tawOe69muqiK8ZihwAWe_qQrI', NULL, 0, 1, 0, '2021-01-31 23:24:55', '2021-01-31 23:57:47', 8),
(3, 'lecture 2021-02-01', 3, 'mai', '03:15:00', '04:15:00', '2021-02-01', NULL, NULL, 1, 7, 'https://us04web.zoom.us/j/78812292528?pwd=Y051Z2J5VDFpQ2JJL1A1V0IzOUh6dz09', '78812292528', 'RNTZSVeiTu24PTIGaQpSzA==', 'https://us04web.zoom.us/s/78812292528?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJZeDU5eG53eFMwS0k0LXRNLUtzZjN3IiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDQiLCJjbHQiOjAsInN0ayI6InZyNlNLTFNPclBPTDJUaWFTZlhRNmZTNW8tc0VHcXppNkhDckRhUnVnTzQuQmdZc04xaHRWVkJhYUhZek5FZFRSRTlyVTBzeFdUUTNjMHcwY2trNVEwRlhTMjFxWm5kek1WWlFTbVZEU1QxQVlUaG1aalUzTXpnMU9HVmxZV1V4WmpBeVpXTXdORFZrT0dVM016STNNREF4TkRkaE1tUXpNMlUxWkdFM1ptWmpNREkwWXpCa1pXTXdNalJtWlRrell3QU1NME5DUVhWdmFWbFRNM005QUFSMWN6QTBBQUFCZDFza1VTTUFFblVBQUFBIiwiZXhwIjoxNjEyMTQ5MDQyLCJpYXQiOjE2MTIxNDE4NDIsImFpZCI6IjhiQ3hUcHBEUzhxVXdyWGktenVUckEiLCJjaWQiOiIifQ.aSZM1yMvgJQSjrITHHf7Q6zdCHlmp5jlxusFbOzJK3I', NULL, 0, 1, 0, '2021-02-01 01:06:29', '2021-02-01 01:11:20', 4),
(14, 'lecture 2021-02-08', 11, NULL, '12:15:00', '16:15:00', '2021-02-08', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-06 10:15:19', '2021-02-06 10:15:19', 4),
(13, 'lecture 2021-02-01', 3, 'Test 2', '08:25:00', '08:45:00', '2021-02-01', 17, 10, NULL, 7, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 06:22:57', '2021-02-01 06:32:06', 4),
(6, 'lecture 2021-02-01', 2, NULL, '03:15:00', '04:00:00', '2021-02-01', NULL, NULL, 1, 11, 'https://us04web.zoom.us/j/78658303296?pwd=U0ZwZCtuZENkSU0xaFVzc3hDckNpZz09', '78658303296', 'a0Up8vxXRZae/MiX54oeXw==', 'https://us04web.zoom.us/s/78658303296?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJkX25GRXFsWGF3VEpTRGRKWDFxTngzV2VaQ0ViWGs2TXh4WG9xVDV3LVhFLkFHLl9MWDFoUFJ4UWhOQXVkNlhYUmJUTzFnYU81YTNjNFFBeWFoWk82UlNhVm1PSDFTU2xIRTZMV2U1SHNxdkN2M19wUzBScDItbGduU2FNbFZELktUX1UtRjA3S0VVM09reFZnbUFpRXcuMnhqUURuekJGQTcyMW1KdCIsImV4cCI6MTYxMjE0OTYzMiwiaWF0IjoxNjEyMTQyNDMyLCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.9AsJSCAqjoP_xDlLAx1IXUeBZOlebH8CjSeFXubayxg', NULL, 0, 1, 0, '2021-02-01 01:07:18', '2021-02-01 01:22:26', 8),
(7, 'lecture 2021-02-02', 2, NULL, '03:15:00', '04:15:00', '2021-02-02', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:07:18', '2021-02-01 01:07:18', 8),
(8, 'lecture 2021-02-03', 2, NULL, '03:15:00', '04:15:00', '2021-02-03', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:07:18', '2021-02-01 01:07:18', 8),
(9, 'lecture 2021-02-02', 5, 'mai', '01:15:00', '02:15:00', '2021-02-02', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:09:10', '2021-02-01 01:09:26', 4),
(10, 'lecture 2021-02-06', 4, NULL, '03:15:00', '04:05:00', '2021-02-06', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:13:16', '2021-02-01 01:13:16', 8),
(11, 'lecture 2021-02-07', 4, NULL, '03:15:00', '23:05:00', '2021-02-07', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:13:16', '2021-02-01 01:13:16', 8),
(12, 'lecture 2021-02-05', 4, NULL, '03:15:00', '04:15:00', '2021-02-05', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-01 01:13:16', '2021-02-01 01:13:16', 8),
(15, 'lecture 2021-02-08', 3, 'test 2', '00:27:00', '00:35:00', '2021-02-08', 17, 10, NULL, 7, NULL, NULL, NULL, NULL, NULL, -1, 1, 0, '2021-02-07 22:25:54', '2021-02-07 22:26:33', 4),
(17, 'lecture 2021-02-08', 2, '12', '00:35:00', '00:50:00', '2021-02-08', NULL, NULL, 1, 11, 'https://us04web.zoom.us/j/78178821020?pwd=MmgzR2ZHUDNiR2NyT2NCNlluRGttQT09', '78178821020', 'GwicQqzDTSG46XfhBptU6A==', 'https://us04web.zoom.us/s/78178821020?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJoRTMzUzNWa05PRWk0UWZqUlNRVnVxN21TQjctRHJsSGpVaDJwZFFHci1FLkFHLml1dmtHNWhrZXRGcVNBUU0yWkRvN2hZaHBFd1JmOVpRdUl0SHpWeElxTDFKeDhVbG1fenM0RmVsNzNJSVZycmZQVk9BUGtQNEpyQURCb1VPLkY3YTc2SGtoTWNEV3liZTJRT0VtNGcucUZWWVpZdjMtZkUyN3A5RyIsImV4cCI6MTYxMjc0NDQ5NSwiaWF0IjoxNjEyNzM3Mjk1LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.g3dLpzrfPJhCd39X5vDq7Sftux_HbqV9AsxB9nUjVjY', NULL, 0, 1, 0, '2021-02-07 22:31:43', '2021-02-07 22:42:30', 8),
(19, 'lecture 2021-02-08', 2, '50', '00:52:00', '01:30:00', '2021-02-08', 3, 28, 1, 11, 'https://us04web.zoom.us/j/77728776085?pwd=UEVxMDRpRFIvbHdhNzhVTmJ1UDBVUT09', '77728776085', '/WYGCM5rQ+ibsl5fB6H0kA==', 'https://us04web.zoom.us/s/77728776085?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJLQlJ4YUNEVlBKck8weGxJaHNIOW51SWdJbUdZd1cyaUVPMDdMbzN5enp3LkFHLkJOenVkY3VQdnJha2hJYVJPdHpodllTMWNNVXlOZWQxNDNjaXVwd1loakZEYmgxdzlzOFBBa05BbWVVeWdvakhCblZNSjQyTWVtN0pDQzEtLl9qREozdDNKekE5bHFkVFN1a19zM3cuRk5QcFlMQXM5MGctN0w3WSIsImV4cCI6MTYxMjc0NTQ5NSwiaWF0IjoxNjEyNzM4Mjk1LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.F3pr5Lm99a3I-laxwo1xWzREMrp_jgWHxZqC2tXgxVU', NULL, 0, 1, 0, '2021-02-07 22:50:54', '2021-02-07 22:55:27', 8),
(20, 'lecture 2021-02-09', 2, 'lect one', '15:32:00', '16:30:00', '2021-02-09', 3, 28, 1, 11, 'https://us04web.zoom.us/j/77932258763?pwd=T3pCdlNXYlBRNjBTM3I0clFPKzdSdz09', '77932258763', 'emHUQ3x5RLGKMq1uf/m6SQ==', 'https://us04web.zoom.us/s/77932258763?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJoN1BFRGlCUWhEYkEwcDhZRXI3LU1YYWl1MGk4d3ZUSWJGNUUtUHc0U3o4LkFHLlBpcGVVSUtyVnpIVWJPZVF4dWZiYzZrckk4cUhjTUtTR0N6Y0VZeTdoX3oya2N1R2k4X1FDaXRaSWRMOVFraVBHemg2bEltM1JWVlNVOVgxLlF3YWRsaWZ4UkJERXZtQnh2REtVOWcuUFd6VUx6ak1uT05Jd000VyIsImV4cCI6MTYxMjg4NDU4OCwiaWF0IjoxNjEyODc3Mzg4LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.hVK_1x7wgYEYx2YzjiuhdXFY__A80InG-LERQrfvglc', NULL, 0, 1, 0, '2021-02-09 13:27:21', '2021-02-09 13:50:03', 8),
(21, 'lecture 2021-02-09', 2, 'two', '16:40:00', '17:00:00', '2021-02-09', 3, 28, 1, 11, 'https://us04web.zoom.us/j/71740937643?pwd=ZUR5YjhGaGx3cjFNMXpSMzVEbS9kZz09', '71740937643', '/VnxgJ/AT9ewNcJe81dSOQ==', 'https://us04web.zoom.us/s/71740937643?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJVbDE5LWRGNE5OVTBDSTl6LThRV1h5MUQybGtZeFk0UzA4V1Z2aGNLSUI4LkFHLjZ5WDdhQ2kwUDVJYVJCcHdGd1ZmUDBPMmZNN3B5bnNGREhsRmlqbmNuSFB5R0Z1dzFrazdubU14ZTN3RUlLeElmZ0tkV0x6Z2FVblU3STF2LlVEa2VUTjhsZmxPdGRkb2taVmpGN1EudHhwcmhwMmNsdlA2MlVJRSIsImV4cCI6MTYxMjg4ODY0MCwiaWF0IjoxNjEyODgxNDQwLCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.hej5hcM5V6PFFEQT7AMJKt6g3ppGui0jz_3XvoCo1_0', NULL, 0, 1, 0, '2021-02-09 14:32:38', '2021-02-09 15:13:37', 8),
(22, 'lecture 2021-02-09', 2, 'three', '17:45:00', '18:00:00', '2021-02-09', 34, 28, 1, 11, 'https://us04web.zoom.us/j/78530984888?pwd=OTd5MGxkanZhQUFhVkVaWUdlMko3Zz09', '78530984888', '8Q9XXZsxRE2ohT5+fNfTvw==', 'https://us04web.zoom.us/s/78530984888?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJJbk1QNkNpclBhMkNkbkV5Y0N5RkVVdTlON09LOGdsTlpSWGUtOHctZ3pvLkFHLk5wRDhIQlVPU3VIU2FpbEh2M1VqUHBLbmZBWTVGOHlNeno5X0Z1UW02TmVETDFVT3Ntc3ctcExqaTBKX2J3OHhMS0FlNFVqY2EyNzdOTnI2Llh2LUZJWmViMWszbnFfc1UtY0lGOFEuZXkwVXZPUHFUWmVXYWFabSIsImV4cCI6MTYxMjg5Mjk0NywiaWF0IjoxNjEyODg1NzQ3LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.IwY0c9ZBe01woZpKH230eFbW1xDF1FrEERsxxn2nbl4', NULL, 0, 1, 0, '2021-02-09 15:37:47', '2021-02-09 16:12:18', 8),
(23, 'lecture 2021-02-09', 2, 'four', '18:18:00', '18:40:00', '2021-02-09', 34, 28, 1, 11, 'https://us04web.zoom.us/j/78145140599?pwd=ZnZBbWxPYWN3RVR5TkpiZ2EydzdOQT09', '78145140599', 'OCaifyw7SDORWkQZxfEQgw==', 'https://us04web.zoom.us/s/78145140599?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJmY1hjZ0JxZ1ZUNkJSeEp1cWx0RE5vcUZjVEt2NHdxM3VTVmhnT3B1TGs4LkFHLnIzUFJyRkNHQXJnR1hrZ1dJR21KX3prRU5tU1BsRU5MaWN6M3VoaFR5ZEZxeU5uakk3UmZoSTlVMWxKTTRxTXBLTU5PeWZ4MmpZXy1SWkJwLlNQX0NhbkxMTTRSekxmVWJFNzc0UWcuQ2g1ME00V1QyZDlVeldiOSIsImV4cCI6MTYxMjg5NDY0MSwiaWF0IjoxNjEyODg3NDQxLCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.UAgO0FrX8sHoqMKELovmDMqr5qm_kxBaWvLwDKlxJmc', NULL, 0, 1, 0, '2021-02-09 16:15:11', '2021-02-09 16:22:10', 8);

-- --------------------------------------------------------

--
-- Table structure for table `lectures_files`
--

CREATE TABLE `lectures_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures_files`
--

INSERT INTO `lectures_files` (`id`, `lecture_id`, `file_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 1, 24, 0, 0, '2021-01-31 22:51:41', '2021-01-31 22:51:41'),
(2, 1, 25, 0, 0, '2021-01-31 22:53:40', '2021-01-31 22:53:40'),
(3, 2, 26, 0, 0, '2021-01-31 23:26:01', '2021-01-31 23:26:01'),
(4, 13, 28, 0, 0, '2021-02-01 06:24:25', '2021-02-01 06:24:25'),
(5, 15, 37, 0, 0, '2021-02-07 22:32:53', '2021-02-07 22:32:53'),
(6, 20, 43, 0, 0, '2021-02-09 13:28:03', '2021-02-09 13:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_attendance`
--

CREATE TABLE `lecture_attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `attendance_status_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by_user_id` int(11) DEFAULT NULL,
  `is_joined` int(11) NOT NULL DEFAULT '0',
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecture_attendance`
--

INSERT INTO `lecture_attendance` (`id`, `lecture_id`, `student_id`, `attendance_status_id`, `subject_id`, `teacher_id`, `note`, `created_by_user_id`, `is_joined`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 1, 33, 1, 4, 7, NULL, NULL, 0, 1, 0, '2021-01-31 22:57:03', '2021-01-31 22:59:07'),
(2, 1, 32, 1, 4, 7, NULL, NULL, 0, 1, 0, '2021-01-31 22:57:03', '2021-01-31 23:03:02'),
(3, 2, 32, 3, 8, 11, NULL, NULL, 0, 1, 0, '2021-01-31 23:27:59', '2021-02-01 01:18:51'),
(4, 2, 33, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-01-31 23:27:59', '2021-01-31 23:57:49'),
(5, 3, 33, 2, 4, 7, NULL, NULL, 0, 1, 0, '2021-02-01 01:10:26', '2021-02-01 01:11:24'),
(6, 9, 33, NULL, 4, 7, NULL, NULL, 0, 1, 0, '2021-02-01 01:10:26', '2021-02-01 01:10:26'),
(7, 3, 32, 2, 4, 7, NULL, NULL, 0, 1, 0, '2021-02-01 01:10:47', '2021-02-01 01:11:24'),
(8, 10, 32, NULL, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-01 01:18:51', '2021-02-01 01:18:51'),
(9, 6, 32, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-01 01:20:43', '2021-02-01 01:22:26'),
(10, 6, 33, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-01 01:20:43', '2021-02-01 01:22:26'),
(11, 17, 32, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-07 22:35:00', '2021-02-07 22:41:05'),
(12, 17, 33, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-07 22:35:00', '2021-02-07 22:41:05'),
(13, 17, 46, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-07 22:36:37', '2021-02-07 22:41:05'),
(14, 19, 46, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-07 22:51:40', '2021-02-07 23:00:59'),
(15, 20, 32, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:29:53', '2021-02-09 13:50:05'),
(16, 20, 33, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:29:53', '2021-02-09 13:50:05'),
(17, 20, 46, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:29:53', '2021-02-09 13:50:05'),
(18, 20, 64, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:29:53', '2021-02-09 13:50:05'),
(19, 20, 66, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:29:53', '2021-02-09 13:50:05'),
(20, 20, 67, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 13:33:25', '2021-02-09 13:52:09'),
(21, 21, 67, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:37:37', '2021-02-09 15:13:39'),
(22, 21, 32, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:48:17', '2021-02-09 15:15:06'),
(23, 21, 66, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:48:19', '2021-02-09 15:13:39'),
(24, 21, 64, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:48:21', '2021-02-09 15:13:39'),
(25, 21, 33, 2, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:48:24', '2021-02-09 15:13:39'),
(26, 21, 46, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:48:29', '2021-02-09 15:14:58'),
(27, 21, 33, NULL, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:49:04', '2021-02-09 14:49:04'),
(28, 21, 46, NULL, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 14:49:08', '2021-02-09 14:49:08'),
(29, 22, 32, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 15:49:10', '2021-02-09 16:12:30'),
(30, 22, 46, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 15:52:50', '2021-02-09 16:12:30'),
(31, 23, 46, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 16:17:27', '2021-02-09 16:22:47'),
(32, 23, 32, 1, 8, 11, NULL, NULL, 0, 1, 0, '2021-02-09 16:19:21', '2021-02-09 16:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_payments`
--

CREATE TABLE `lecture_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `students_number` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecture_payments`
--

INSERT INTO `lecture_payments` (`id`, `lecture_id`, `students_number`, `amount`, `balance`, `teacher_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 2, 7, 1, 0, '2021-01-31 22:59:04', '2021-01-31 23:03:05'),
(2, 2, 0, 0, 0, 11, 1, 0, '2021-01-31 23:57:47', '2021-01-31 23:57:47'),
(3, 3, 0, 0, 2, 7, 1, 0, '2021-02-01 01:11:20', '2021-02-01 01:11:20'),
(4, 6, 0, 0, 0, 11, 1, 0, '2021-02-01 01:22:26', '2021-02-01 01:22:26'),
(5, 17, 0, 0, 0, 11, 1, 0, '2021-02-07 22:41:04', '2021-02-07 22:41:04'),
(6, 19, 1, 1, 1, 11, 1, 0, '2021-02-07 22:55:27', '2021-02-07 23:01:00'),
(7, 20, 1, 1, 2, 11, 1, 0, '2021-02-09 13:50:03', '2021-02-09 13:52:12'),
(8, 21, 2, 2, 4, 11, 1, 0, '2021-02-09 15:13:37', '2021-02-09 15:15:08'),
(9, 22, 2, 2, 6, 11, 1, 0, '2021-02-09 16:12:18', '2021-02-09 16:12:31'),
(10, 23, 2, 2, 8, 11, 1, 0, '2021-02-09 16:22:10', '2021-02-09 16:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_reschedule_request`
--

CREATE TABLE `lecture_reschedule_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `from_lecture_id` int(11) DEFAULT NULL,
  `to_lecture_id` int(11) DEFAULT NULL,
  `request_status_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `original_lecture_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecture_reschedule_request`
--

INSERT INTO `lecture_reschedule_request` (`id`, `student_id`, `from_lecture_id`, `to_lecture_id`, `request_status_id`, `subject_id`, `teacher_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `reason`, `original_lecture_id`) VALUES
(1, 33, 3, 9, 3, 4, 7, 1, 0, '2021-02-01 01:09:34', '2021-02-06 10:35:58', NULL, NULL),
(2, 32, 2, 10, 1, 8, 11, 1, 0, '2021-02-01 01:18:19', '2021-02-01 01:18:52', 'I am sick', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_id` int(11) DEFAULT NULL,
  `model_parent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `operation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `record_before` text COLLATE utf8mb4_unicode_ci,
  `record_after` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `model_name`, `data_id`, `model_parent`, `parent_id`, `user_id`, `operation`, `description`, `record_before`, `record_after`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 1, NULL, NULL, 1, 'init', 'Super initialized Slider record', '[]', '[]', '2021-01-28 14:14:52', '2021-01-28 14:14:52'),
(2, 'Video', 1, NULL, NULL, 1, 'init', 'Super initialized Video record', '[]', '[]', '2021-01-28 14:14:52', '2021-01-28 14:14:52'),
(3, 'Video', 2, NULL, NULL, 1, 'init', 'Super initialized Video record', '[]', '[]', '2021-01-28 14:19:03', '2021-01-28 14:19:03'),
(4, 'Slider', 1, NULL, NULL, 1, 'update', 'Super updated slider record', '{\"id\":1,\"name\":null,\"file_id\":\"1\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:14:52\",\"updated_at\":\"2021-01-28 16:14:52\"}', '{\"id\":1,\"name\":null,\"file_id\":\"1\",\"description\":\"mona hussein biology\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:14:52\",\"updated_at\":\"2021-01-28 16:14:52\"}', '2021-01-28 14:19:27', '2021-01-28 14:19:27'),
(5, 'Video', 2, NULL, NULL, 1, 'save', 'Super saved video record', '[]', '{\"id\":2,\"name\":null,\"link\":\"https:\\/\\/www.youtube.com\\/watch?v=6RzUNq3WLGg\",\"description\":\"<p>mona Hussein<br \\/>No Pressure No Diamond&nbsp;&nbsp;<br \\/>senior 3 - senior 2 - senior 1<\\/p>\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:19:03\",\"updated_at\":\"2021-01-28 16:19:03\"}', '2021-01-28 14:19:27', '2021-01-28 14:19:27'),
(6, 'User', 2, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 09:49:59', '2021-01-30 09:49:59'),
(7, 'Subject', 1, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:50:59', '2021-01-30 09:50:59'),
(8, 'Subject', 2, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:51:01', '2021-01-30 09:51:01'),
(9, 'App\\Subject', 2, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210130_115153 (original).jpg in Subject at 21-01-30 11:52:44', NULL, 'Subject', '2021-01-30 09:52:44', '2021-01-30 09:52:44'),
(10, 'Subject', 2, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":2,\"name\":\"Biology\",\"grade_id\":\"1\",\"status_id\":\"2\",\"file_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:51:01\",\"updated_at\":\"2021-01-30 11:52:44\",\"subject_teachers\":[]}', '2021-01-30 09:52:47', '2021-01-30 09:52:47'),
(11, 'Subject', 3, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:53:05', '2021-01-30 09:53:05'),
(12, 'App\\Subject', 3, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210130_115153 (original).jpg in Subject at 21-01-30 11:53:30', NULL, 'Subject', '2021-01-30 09:53:30', '2021-01-30 09:53:30'),
(13, 'Subject', 3, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":3,\"name\":\"Biology\",\"grade_id\":\"2\",\"status_id\":\"2\",\"file_id\":\"3\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:53:05\",\"updated_at\":\"2021-01-30 11:53:30\",\"subject_teachers\":[]}', '2021-01-30 09:53:33', '2021-01-30 09:53:33'),
(14, 'Subject', 4, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:53:39', '2021-01-30 09:53:39'),
(15, 'App\\Subject', 4, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210130_115153 (original).jpg in Subject at 21-01-30 11:53:58', NULL, 'Subject', '2021-01-30 09:53:58', '2021-01-30 09:53:58'),
(16, 'Subject', 4, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":4,\"name\":\"Biology\",\"grade_id\":\"3\",\"status_id\":\"2\",\"file_id\":\"4\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:53:39\",\"updated_at\":\"2021-01-30 11:53:58\",\"subject_teachers\":[]}', '2021-01-30 09:54:03', '2021-01-30 09:54:03'),
(17, 'Subject', 5, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:54:11', '2021-01-30 09:54:11'),
(18, 'App\\Subject', 5, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210118_220857 (original).jpg in Subject at 21-01-30 11:55:01', NULL, 'Subject', '2021-01-30 09:55:01', '2021-01-30 09:55:01'),
(19, 'Subject', 6, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:56:30', '2021-01-30 09:56:30'),
(20, 'App\\Subject', 6, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210104_175153 (original).jpg in Subject at 21-01-30 11:56:59', NULL, 'Subject', '2021-01-30 09:56:59', '2021-01-30 09:56:59'),
(21, 'Subject', 6, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":6,\"name\":\"Math\",\"grade_id\":\"1\",\"status_id\":\"2\",\"file_id\":\"6\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:56:30\",\"updated_at\":\"2021-01-30 11:56:59\",\"subject_teachers\":[]}', '2021-01-30 09:57:02', '2021-01-30 09:57:02'),
(22, 'Subject', 7, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:57:08', '2021-01-30 09:57:08'),
(23, 'App\\Subject', 7, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210104_175154 (original).jpg in Subject at 21-01-30 11:57:32', NULL, 'Subject', '2021-01-30 09:57:32', '2021-01-30 09:57:32'),
(24, 'Subject', 7, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":7,\"name\":\"Math\",\"grade_id\":\"2\",\"status_id\":\"2\",\"file_id\":\"7\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:57:08\",\"updated_at\":\"2021-01-30 11:57:32\",\"subject_teachers\":[]}', '2021-01-30 09:57:52', '2021-01-30 09:57:52'),
(25, 'Subject', 8, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 09:57:56', '2021-01-30 09:57:56'),
(26, 'App\\Subject', 8, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG_20210104_175154 (original).jpg in Subject at 21-01-30 11:58:22', NULL, 'Subject', '2021-01-30 09:58:22', '2021-01-30 09:58:22'),
(27, 'Subject', 8, NULL, NULL, 1, 'save', 'Super saved subject record', '[]', '{\"id\":8,\"name\":\"Math\",\"grade_id\":\"3\",\"status_id\":\"2\",\"file_id\":\"8\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:57:56\",\"updated_at\":\"2021-01-30 11:58:22\",\"subject_teachers\":[]}', '2021-01-30 09:58:26', '2021-01-30 09:58:26'),
(28, 'User', 3, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:11:35', '2021-01-30 10:11:35'),
(29, 'User', 4, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:16:46', '2021-01-30 10:16:46'),
(30, 'App\\User', 3, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG-20210130-WA0086 (original).jpg in User at 21-01-30 12:23:56', NULL, 'User', '2021-01-30 10:23:56', '2021-01-30 10:23:56'),
(31, 'User', 3, NULL, NULL, 1, 'save', 'Super saved user record', '[]', '{\"id\":3,\"name\":\"Mona\",\"email\":\"monahusseinbiology@gmail.com\",\"password\":null,\"token\":\"kYOc287ev6g6goRRMftt4oK7hk3mf1yv\",\"zoom_client_key\":\"Abiaa6LvSb-DuOCzr-kOEg\",\"zoom_client_secret\":\"TvMHdio5E5aqWr3BKp2hXhhBVkd58WzBYQ7p\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01225387074\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mona.hussien.9638\",\"school\":\"Zahran\",\"alt_phone_number\":\"01225387074\",\"file_id\":\"9\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":\"Teacher\",\"zoom_account\":\"Monahusseinbiology@gmail.com\",\"zoom_password\":null,\"payment_terms\":\"1\",\"teacher_balance\":0,\"description\":\"Biology teacher for senior one\",\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"teacher_subjects\":[]}', '2021-01-30 10:24:15', '2021-01-30 10:24:15'),
(32, 'User', 5, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:24:27', '2021-01-30 10:24:27'),
(33, 'User', 6, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:24:31', '2021-01-30 10:24:31'),
(34, 'App\\User', 6, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG-20210130-WA0087 (original).jpg in User at 21-01-30 12:28:49', NULL, 'User', '2021-01-30 10:28:49', '2021-01-30 10:28:49'),
(35, 'User', 6, NULL, NULL, 1, 'save', 'Super saved user record', '[]', '{\"id\":6,\"name\":\"Mai\",\"email\":\"mai.hamdy.mohammed@gmail.com\",\"password\":null,\"token\":\"WfcN1yzoqUQSfij3q1kZ8eyTrHUKTJGa\",\"zoom_client_key\":\"mNZZQwOsT5aLwd-tE2fU2Q\",\"zoom_client_secret\":\"ecu7BTwieKBIq8plsKfdIMqhxRaz2GSGeioq\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01207622011\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mai.hamdy.16503\",\"school\":\"Zahran\",\"alt_phone_number\":\"01207622011\",\"file_id\":\"10\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":\"Teacher\",\"zoom_account\":\"Mai.hamdy.mohammed@gmail.com\",\"zoom_password\":\"Mai01207622011\",\"payment_terms\":\"1\",\"teacher_balance\":0,\"description\":\"Biology teacher for senior 2\",\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"teacher_subjects\":[]}', '2021-01-30 10:41:17', '2021-01-30 10:41:17'),
(36, 'User', 7, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:41:27', '2021-01-30 10:41:27'),
(37, 'App\\User', 7, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named IMG-20210126-WA0096 (original).jpg in User at 21-01-30 12:52:11', NULL, 'User', '2021-01-30 10:52:11', '2021-01-30 10:52:11'),
(38, 'User', 7, NULL, NULL, 1, 'save', 'Super saved user record', '[]', '{\"id\":7,\"name\":\"Ibrahim\",\"email\":\"ibrahimahmed8989@gmail.com\",\"password\":null,\"token\":\"Z05JoNrnoD5jcYw4I6ZNWGt6vxg7qa5r\",\"zoom_client_key\":\"JY39y4nHSd2UZcRuXLKHNQ\",\"zoom_client_secret\":\"O1pkquJZq71KteOFtpFJZkT0mycsvLb7K0m8\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01222509863\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/ibrahimahmed8989\",\"school\":\"Zahran\",\"alt_phone_number\":\"01222509863\",\"file_id\":\"11\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":\"Teacher\",\"zoom_account\":\"Ibrahimahmed8989@gmail.com\",\"zoom_password\":\"Ii123456789\",\"payment_terms\":\"5\",\"teacher_balance\":0,\"description\":\"Senior 3\",\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"teacher_subjects\":[]}', '2021-01-30 10:53:07', '2021-01-30 10:53:07'),
(39, 'Subject', 9, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-01-30 10:58:43', '2021-01-30 10:58:43'),
(40, 'User', 8, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 10:58:54', '2021-01-30 10:58:54'),
(41, 'User', 9, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 11:03:50', '2021-01-30 11:03:50'),
(42, 'User', 10, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 11:03:59', '2021-01-30 11:03:59'),
(43, 'User', 7, NULL, NULL, 1, 'update', 'Super updated user record', '{\"id\":7,\"name\":\"Ibrahim\",\"email\":\"ibrahimahmed8989@gmail.com\",\"password\":null,\"token\":\"Z05JoNrnoD5jcYw4I6ZNWGt6vxg7qa5r\",\"zoom_client_key\":\"JY39y4nHSd2UZcRuXLKHNQ\",\"zoom_client_secret\":\"O1pkquJZq71KteOFtpFJZkT0mycsvLb7K0m8\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01222509863\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/ibrahimahmed8989\",\"school\":\"Zahran\",\"alt_phone_number\":\"01222509863\",\"file_id\":\"11\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":\"Teacher\",\"zoom_account\":\"Ibrahimahmed8989@gmail.com\",\"zoom_password\":\"Ii123456789\",\"payment_terms\":\"5\",\"teacher_balance\":\"0\",\"description\":\"Senior 3\",\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":7,\"name\":\"Ibrahim\",\"email\":\"ibrahimahmed8989@gmail.com\",\"password\":null,\"token\":\"Z05JoNrnoD5jcYw4I6ZNWGt6vxg7qa5r\",\"zoom_client_key\":\"JY39y4nHSd2UZcRuXLKHNQ\",\"zoom_client_secret\":\"O1pkquJZq71KteOFtpFJZkT0mycsvLb7K0m8\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01222509863\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/ibrahimahmed8989\",\"school\":\"Zahran\",\"alt_phone_number\":\"01222509863\",\"file_id\":\"11\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":\"Teacher\",\"zoom_account\":\"Ibrahimahmed8989@gmail.com\",\"zoom_password\":null,\"payment_terms\":\"1\",\"teacher_balance\":\"0\",\"description\":\"Senior 3\",\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"teacher_subjects\":[{\"id\":4,\"name\":\"Biology\",\"grade_id\":\"3\",\"status_id\":\"2\",\"file_id\":\"4\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 11:53:39\",\"updated_at\":\"2021-01-30 11:54:03\",\"pivot\":{\"teacher_id\":\"7\",\"subject_id\":\"4\"}}]}', '2021-01-30 12:40:33', '2021-01-30 12:40:33'),
(44, 'User', 11, NULL, NULL, 1, 'init', 'Super initialized User record', '[]', '[]', '2021-01-30 12:40:49', '2021-01-30 12:40:49'),
(45, 'App\\User', 11, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named Capture1 (original).JPG in User at 21-01-30 14:45:42', NULL, 'User', '2021-01-30 12:45:42', '2021-01-30 12:45:42'),
(46, 'User', 11, NULL, NULL, 1, 'save', 'Super saved user record', '[]', '{\"id\":11,\"name\":\"Shady Alaa\",\"email\":\"shadyalaa785@gmail.com\",\"password\":null,\"token\":\"bHS947gDFqc70aDvAV7YR12THwXI7ZUn\",\"zoom_client_key\":\"7bXTCENkTk2WXhV5g0kslQ\",\"zoom_client_secret\":\"SBFdrO26IL9akuNo7eiVfIN3iQuD8Y3wU1EG\",\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"01017896121\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":\"https:\\/\\/www.facebook.com\\/shady.alaa.5817\",\"school\":\"MES\",\"alt_phone_number\":\"01017896122\",\"file_id\":\"12\",\"city\":\"alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"shadyalaa785@gmail.com\",\"zoom_password\":\"Shady785\",\"payment_terms\":\"1\",\"teacher_balance\":0,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"teacher_subjects\":[]}', '2021-01-30 12:46:04', '2021-01-30 12:46:04'),
(47, 'News', 1, NULL, NULL, 6, 'init', 'Mai initialized News record', '[]', '[]', '2021-01-30 13:41:46', '2021-01-30 13:41:46'),
(48, 'News', 2, NULL, NULL, 7, 'init', 'Ibrahim initialized News record', '[]', '[]', '2021-01-30 13:41:49', '2021-01-30 13:41:49'),
(49, 'App\\News', 1, NULL, NULL, 6, 'save', 'Mai Uploaded new file_id named 142487545_256742349344120_7863554755243876778_o (original).jpg in News at 21-01-30 15:44:31', NULL, 'News', '2021-01-30 13:44:31', '2021-01-30 13:44:31'),
(50, 'News', 1, NULL, NULL, 6, 'save', 'Mai saved news record', '[]', '{\"id\":1,\"teacher_id\":6,\"title\":\"\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0627\\u0627\\u0627\\u0627\\u0645\",\"description\":\"\\u0627\\u0644\\u0633\\u0644\\u0627\\u0645 \\u0639\\u0644\\u064a\\u0643\\u0645 \\u0648\\u0631\\u062d\\u0645\\u0647 \\u0627\\u0644\\u0644\\u0647 \\u0648\\u0628\\u0631\\u0643\\u0627\\u062a\\u0647 \\u2764\\ufe0f\\n\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0645 \\u26a0\\ufe0f\\u26a0\\ufe0f\\n\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\n\\u0627\\u0644\\u0627\\u062c\\u0632\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0629 \\u0641\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0648 \\u0627\\u0644\\u0644\\u064a \\u0645\\u0644\\u062d\\u0642\\u0648\\u0634 \\u064a\\u0641\\u0647\\u0645\\u0648\\u0645\\u0647\\u0627 \\u0628\\u0633\\u0628\\u0628 \\u062c\\u0627\\u0626\\u062d\\u0629 \\u0643\\u0648\\u0631\\u0648\\u0646\\u0627 \\u0631\\u0628\\u0646\\u0627 \\u064a\\u0639\\u0641\\u0648\\u0627 \\u0639\\u0646\\u0627 \\u062c\\u0645\\u064a\\u0639\\u0627 \\u0648\\u062a\\u0632\\u0648\\u0644 \\u0627\\u0644\\u063a\\u0645\\u0647 \\n\\u0648\\u0644\\u0623\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0646\\u064a \\u0645\\u0628\\u0646\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0623\\u062c\\u0632\\u0627\\u0621\\n \\u062f\\u064a \\u0647\\u064a\\u062a\\u0645 \\u0634\\u0631\\u062d\\u0647\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0641\\u0635\\u064a\\u0644 \\u0641\\u064a 3 \\u062d\\u0635\\u0635 \\u0645\\u062c\\u0627\\u0646\\u0627\\u064b  \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0646\\u0627 \\u2728\\u2728\\ud83e\\udd0d\\n3 \\u062d\\u0635\\u0635( Free )\\u0644\\u0623\\u064a \\u0637\\u0627\\u0644\\u0628 \\u062d\\u0627\\u0628\\u0628 \\u064a\\u062d\\u0636\\u0631\\u0647\\u0645 + \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c \\u0627\\u0648\\u0644\\u0649 \\u062b\\u0627\\u0646\\u0648\\u0649  \\u0643\\u0644 \\u062d\\u0635\\u0629 \\u0645\\u062a\\u0627\\u062d \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0648\\u0647\\u064a\\u0643\\u0648\\u0646 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0648 \\u0643\\u0645\\u0627\\u0646 \\ud83d\\ude0c\\ud83d\\ude0c\\n\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0647\\u062a\\u0646\\u0632\\u0644 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c public  \\u064a\\u0648\\u0645 \\u0627\\u0644\\u0633\\u0628\\u062a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629 3 \\u0648 \\u0644\\u0645\\u062f\\u0629 3 \\u0627\\u0633\\u0627\\u0628\\u064a\\u0639 \\n\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u2b07\\ufe0f\\u2b07\\ufe0f\\n\\u0644\\u0627\\u0649 \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c\",\"admin_show\":\"0\",\"file_id\":\"13\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:41:46\",\"updated_at\":\"2021-01-30 15:44:31\"}', '2021-01-30 13:44:34', '2021-01-30 13:44:34'),
(51, 'App\\News', 2, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file_id named Capture6 (original).JPG in News at 21-01-30 15:44:44', NULL, 'News', '2021-01-30 13:44:44', '2021-01-30 13:44:44'),
(52, 'News', 2, NULL, NULL, 7, 'save', 'Ibrahim saved news record', '[]', '{\"id\":2,\"teacher_id\":7,\"title\":\"Question Answer\",\"description\":\"this link is a recorded video \\nhttps:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\",\"admin_show\":\"0\",\"file_id\":\"14\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:41:49\",\"updated_at\":\"2021-01-30 15:44:44\"}', '2021-01-30 13:44:48', '2021-01-30 13:44:48'),
(53, 'News', 1, NULL, NULL, 7, 'delete', 'Ibrahim deleted News record', '{\"id\":1,\"teacher_id\":\"6\",\"title\":\"\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0627\\u0627\\u0627\\u0627\\u0645\",\"description\":\"\\u0627\\u0644\\u0633\\u0644\\u0627\\u0645 \\u0639\\u0644\\u064a\\u0643\\u0645 \\u0648\\u0631\\u062d\\u0645\\u0647 \\u0627\\u0644\\u0644\\u0647 \\u0648\\u0628\\u0631\\u0643\\u0627\\u062a\\u0647 \\u2764\\ufe0f\\n\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0645 \\u26a0\\ufe0f\\u26a0\\ufe0f\\n\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\n\\u0627\\u0644\\u0627\\u062c\\u0632\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0629 \\u0641\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0648 \\u0627\\u0644\\u0644\\u064a \\u0645\\u0644\\u062d\\u0642\\u0648\\u0634 \\u064a\\u0641\\u0647\\u0645\\u0648\\u0645\\u0647\\u0627 \\u0628\\u0633\\u0628\\u0628 \\u062c\\u0627\\u0626\\u062d\\u0629 \\u0643\\u0648\\u0631\\u0648\\u0646\\u0627 \\u0631\\u0628\\u0646\\u0627 \\u064a\\u0639\\u0641\\u0648\\u0627 \\u0639\\u0646\\u0627 \\u062c\\u0645\\u064a\\u0639\\u0627 \\u0648\\u062a\\u0632\\u0648\\u0644 \\u0627\\u0644\\u063a\\u0645\\u0647 \\n\\u0648\\u0644\\u0623\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0646\\u064a \\u0645\\u0628\\u0646\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0623\\u062c\\u0632\\u0627\\u0621\\n \\u062f\\u064a \\u0647\\u064a\\u062a\\u0645 \\u0634\\u0631\\u062d\\u0647\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0641\\u0635\\u064a\\u0644 \\u0641\\u064a 3 \\u062d\\u0635\\u0635 \\u0645\\u062c\\u0627\\u0646\\u0627\\u064b  \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0646\\u0627 \\u2728\\u2728\\ud83e\\udd0d\\n3 \\u062d\\u0635\\u0635( Free )\\u0644\\u0623\\u064a \\u0637\\u0627\\u0644\\u0628 \\u062d\\u0627\\u0628\\u0628 \\u064a\\u062d\\u0636\\u0631\\u0647\\u0645 + \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c \\u0627\\u0648\\u0644\\u0649 \\u062b\\u0627\\u0646\\u0648\\u0649  \\u0643\\u0644 \\u062d\\u0635\\u0629 \\u0645\\u062a\\u0627\\u062d \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0648\\u0647\\u064a\\u0643\\u0648\\u0646 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0648 \\u0643\\u0645\\u0627\\u0646 \\ud83d\\ude0c\\ud83d\\ude0c\\n\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0647\\u062a\\u0646\\u0632\\u0644 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c public  \\u064a\\u0648\\u0645 \\u0627\\u0644\\u0633\\u0628\\u062a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629 3 \\u0648 \\u0644\\u0645\\u062f\\u0629 3 \\u0627\\u0633\\u0627\\u0628\\u064a\\u0639 \\n\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u2b07\\ufe0f\\u2b07\\ufe0f\\n\\u0644\\u0627\\u0649 \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c\",\"admin_show\":\"1\",\"file_id\":\"13\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:41:46\",\"updated_at\":\"2021-01-30 15:44:34\"}', '[]', '2021-01-30 13:45:26', '2021-01-30 13:45:26'),
(54, 'News', 2, NULL, NULL, 11, 'delete', 'Shady Alaa deleted News record', '{\"id\":2,\"teacher_id\":\"7\",\"title\":\"Question Answer\",\"description\":\"this link is a recorded video \\nhttps:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\",\"admin_show\":\"1\",\"file_id\":\"14\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:41:49\",\"updated_at\":\"2021-01-30 15:44:48\"}', '[]', '2021-01-30 13:46:55', '2021-01-30 13:46:55'),
(55, 'News', 3, NULL, NULL, 7, 'init', 'Ibrahim initialized News record', '[]', '[]', '2021-01-30 13:48:22', '2021-01-30 13:48:22'),
(56, 'News', 4, NULL, NULL, 3, 'init', 'Mona initialized News record', '[]', '[]', '2021-01-30 13:48:35', '2021-01-30 13:48:35'),
(57, 'App\\News', 4, NULL, NULL, 3, 'save', 'Mona Uploaded new file_id named 142487545_256742349344120_7863554755243876778_o (original).jpg in News at 21-01-30 15:48:54', NULL, 'News', '2021-01-30 13:48:54', '2021-01-30 13:48:54'),
(58, 'News', 5, NULL, NULL, 11, 'init', 'Shady Alaa initialized News record', '[]', '[]', '2021-01-30 13:49:11', '2021-01-30 13:49:11'),
(59, 'App\\News', 3, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file_id named Capture (original).JPG in News at 21-01-30 15:49:13', NULL, 'News', '2021-01-30 13:49:13', '2021-01-30 13:49:13'),
(60, 'News', 3, NULL, NULL, 7, 'save', 'Ibrahim saved news record', '[]', '{\"id\":3,\"teacher_id\":7,\"title\":\"Video\",\"description\":\"https:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\\nwatch this video\",\"admin_show\":\"0\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:49:13\"}', '2021-01-30 13:49:15', '2021-01-30 13:49:15'),
(61, 'App\\News', 5, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named 0318_Nucleus (original).jpg in News at 21-01-30 15:50:02', NULL, 'News', '2021-01-30 13:50:02', '2021-01-30 13:50:02'),
(62, 'News', 5, NULL, NULL, 11, 'save', 'Shady Alaa saved news record', '[]', '{\"id\":5,\"teacher_id\":11,\"title\":\"exam\",\"description\":\"\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0644\\u062d\\u0635\\u0629 \\u0641\\u0649 \\u0627\\u0648\\u0644 \\u0643\\u0648\\u0645\\u0646\\u062a\\n+\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u0627\\u0648\\u0644\\u0649\\n+ \\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u062a\\u0627\\u0646\\u064a\\u0647\\n\\u0648\\u062f\\u0649 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0644\\u0649 \\u0647\\u062a\\u062d\\u0644\\u0648\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0645\\u0627 \\u062a\\u062a\\u0641\\u0631\\u062c\\u0648\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062d\\u0635\\u0629\\n\\u0648\\u0637\\u0628\\u0639\\u0627 \\u0644\\u0648 \\u0641\\u0649 \\u0627\\u0649 \\u062d\\u0627\\u062c\\u0629 \\u0645\\u0634 \\u0641\\u0627\\u0647\\u0645\\u064a\\u0646\\u0647\\u0627 \\u0647\\u062a\\u0628\\u0639\\u062a\\u0648\\u0644\\u0646\\u0627 \\u0639\\u0644\\u0649 \\u0631\\u0633\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u2665\\ufe0f\\u2665\\ufe0f\",\"admin_show\":\"0\",\"file_id\":\"17\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:49:11\",\"updated_at\":\"2021-01-30 15:50:02\"}', '2021-01-30 13:50:07', '2021-01-30 13:50:07'),
(63, 'News', 4, NULL, NULL, 3, 'save', 'Mona saved news record', '[]', '{\"id\":4,\"teacher_id\":3,\"title\":\"\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0627\\u0627\\u0627\\u0627\\u0645\",\"description\":\"\\u0627\\u0644\\u0633\\u0644\\u0627\\u0645 \\u0639\\u0644\\u064a\\u0643\\u0645 \\u0648\\u0631\\u062d\\u0645\\u0647 \\u0627\\u0644\\u0644\\u0647 \\u0648\\u0628\\u0631\\u0643\\u0627\\u062a\\u0647 \\u2764\\ufe0f\\n\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0645 \\u26a0\\ufe0f\\u26a0\\ufe0f\\n\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\n\\u0627\\u0644\\u0627\\u062c\\u0632\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0629 \\u0641\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0648 \\u0627\\u0644\\u0644\\u064a \\u0645\\u0644\\u062d\\u0642\\u0648\\u0634 \\u064a\\u0641\\u0647\\u0645\\u0648\\u0645\\u0647\\u0627 \\u0628\\u0633\\u0628\\u0628 \\u062c\\u0627\\u0626\\u062d\\u0629 \\u0643\\u0648\\u0631\\u0648\\u0646\\u0627 \\u0631\\u0628\\u0646\\u0627 \\u064a\\u0639\\u0641\\u0648\\u0627 \\u0639\\u0646\\u0627 \\u062c\\u0645\\u064a\\u0639\\u0627 \\u0648\\u062a\\u0632\\u0648\\u0644 \\u0627\\u0644\\u063a\\u0645\\u0647 \\n\\u0648\\u0644\\u0623\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0646\\u064a \\u0645\\u0628\\u0646\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0623\\u062c\\u0632\\u0627\\u0621\\n \\u062f\\u064a \\u0647\\u064a\\u062a\\u0645 \\u0634\\u0631\\u062d\\u0647\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0641\\u0635\\u064a\\u0644 \\u0641\\u064a 3 \\u062d\\u0635\\u0635 \\u0645\\u062c\\u0627\\u0646\\u0627\\u064b  \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0646\\u0627 \\u2728\\u2728\\ud83e\\udd0d\\n3 \\u062d\\u0635\\u0635( Free )\\u0644\\u0623\\u064a \\u0637\\u0627\\u0644\\u0628 \\u062d\\u0627\\u0628\\u0628 \\u064a\\u062d\\u0636\\u0631\\u0647\\u0645 + \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c \\u0627\\u0648\\u0644\\u0649 \\u062b\\u0627\\u0646\\u0648\\u0649  \\u0643\\u0644 \\u062d\\u0635\\u0629 \\u0645\\u062a\\u0627\\u062d \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0648\\u0647\\u064a\\u0643\\u0648\\u0646 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0648 \\u0643\\u0645\\u0627\\u0646 \\ud83d\\ude0c\\ud83d\\ude0c\\n\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0647\\u062a\\u0646\\u0632\\u0644 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c public  \\u064a\\u0648\\u0645 \\u0627\\u0644\\u0633\\u0628\\u062a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629 3 \\u0648 \\u0644\\u0645\\u062f\\u0629 3 \\u0627\\u0633\\u0627\\u0628\\u064a\\u0639 \\n\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u2b07\\ufe0f\\u2b07\\ufe0f\\n\\u0644\\u0627\\u0649 \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c\",\"admin_show\":\"0\",\"file_id\":\"15\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:35\",\"updated_at\":\"2021-01-30 15:48:54\"}', '2021-01-30 13:50:20', '2021-01-30 13:50:20'),
(64, 'News', 5, NULL, NULL, 11, 'delete', 'Shady Alaa deleted News record', '{\"id\":5,\"teacher_id\":\"11\",\"title\":\"exam\",\"description\":\"\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0644\\u062d\\u0635\\u0629 \\u0641\\u0649 \\u0627\\u0648\\u0644 \\u0643\\u0648\\u0645\\u0646\\u062a\\n+\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u0627\\u0648\\u0644\\u0649\\n+ \\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u062a\\u0627\\u0646\\u064a\\u0647\\n\\u0648\\u062f\\u0649 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0644\\u0649 \\u0647\\u062a\\u062d\\u0644\\u0648\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0645\\u0627 \\u062a\\u062a\\u0641\\u0631\\u062c\\u0648\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062d\\u0635\\u0629\\n\\u0648\\u0637\\u0628\\u0639\\u0627 \\u0644\\u0648 \\u0641\\u0649 \\u0627\\u0649 \\u062d\\u0627\\u062c\\u0629 \\u0645\\u0634 \\u0641\\u0627\\u0647\\u0645\\u064a\\u0646\\u0647\\u0627 \\u0647\\u062a\\u0628\\u0639\\u062a\\u0648\\u0644\\u0646\\u0627 \\u0639\\u0644\\u0649 \\u0631\\u0633\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u2665\\ufe0f\\u2665\\ufe0f\",\"admin_show\":\"1\",\"file_id\":\"17\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:49:11\",\"updated_at\":\"2021-01-30 15:50:07\"}', '[]', '2021-01-30 13:53:45', '2021-01-30 13:53:45'),
(65, 'News', 3, NULL, NULL, 11, 'update', 'Shady Alaa updated news record', '{\"id\":3,\"teacher_id\":\"7\",\"title\":\"Video\",\"description\":\"https:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\\nwatch this video\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:49:15\"}', '{\"id\":3,\"teacher_id\":11,\"title\":\"Video\",\"description\":\"11993wk\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:49:15\"}', '2021-01-30 13:54:04', '2021-01-30 13:54:04'),
(66, 'News', 6, NULL, NULL, 11, 'init', 'Shady Alaa initialized News record', '[]', '[]', '2021-01-30 13:55:54', '2021-01-30 13:55:54'),
(67, 'News', 3, NULL, NULL, 7, 'update', 'Ibrahim updated news record', '{\"id\":3,\"teacher_id\":\"11\",\"title\":\"Video\",\"description\":\"11993wk\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:54:04\"}', '{\"id\":3,\"teacher_id\":7,\"title\":\"Video\",\"description\":\"https:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\\nwatch this video\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:54:04\"}', '2021-01-30 13:56:03', '2021-01-30 13:56:03'),
(68, 'App\\News', 6, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named 38324-شيرازي (original).jpg in News at 21-01-30 15:56:20', NULL, 'News', '2021-01-30 13:56:20', '2021-01-30 13:56:20'),
(69, 'News', 6, NULL, NULL, 11, 'save', 'Shady Alaa saved news record', '[]', '{\"id\":6,\"teacher_id\":11,\"title\":\"exam\",\"description\":\"\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0644\\u062d\\u0635\\u0629 \\u0641\\u0649 \\u0627\\u0648\\u0644 \\u0643\\u0648\\u0645\\u0646\\u062a\\n+\\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u0627\\u0648\\u0644\\u0649\\n+ \\u0644\\u064a\\u0646\\u0643 \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0633\\u0646\\u0647 \\u062a\\u0627\\u0646\\u064a\\u0647\\n\\u0648\\u062f\\u0649 \\u0627\\u0644\\u0627\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0644\\u0649 \\u0647\\u062a\\u062d\\u0644\\u0648\\u0647\\u0627 \\u0628\\u0639\\u062f \\u0645\\u0627 \\u062a\\u062a\\u0641\\u0631\\u062c\\u0648\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062d\\u0635\\u0629\\n\\u0648\\u0637\\u0628\\u0639\\u0627 \\u0644\\u0648 \\u0641\\u0649 \\u0627\\u0649 \\u062d\\u0627\\u062c\\u0629 \\u0645\\u0634 \\u0641\\u0627\\u0647\\u0645\\u064a\\u0646\\u0647\\u0627 \\u0647\\u062a\\u0628\\u0639\\u062a\\u0648\\u0644\\u0646\\u0627 \\u0639\\u0644\\u0649 \\u0631\\u0633\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u2665\\ufe0f\\u2665\\ufe0f\",\"admin_show\":\"0\",\"file_id\":\"18\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:55:54\",\"updated_at\":\"2021-01-30 15:56:20\"}', '2021-01-30 13:56:27', '2021-01-30 13:56:27'),
(70, 'News', 3, NULL, NULL, 11, 'update', 'Shady Alaa updated news record', '{\"id\":3,\"teacher_id\":\"7\",\"title\":\"Video\",\"description\":\"https:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\\nwatch this video\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:56:03\"}', '{\"id\":3,\"teacher_id\":11,\"title\":\"biology teacher\",\"description\":\"https:\\/\\/www.youtube.com\\/watch?v=hBwiQbhjdRI\\nwatch this video\",\"admin_show\":\"1\",\"file_id\":\"16\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:22\",\"updated_at\":\"2021-01-30 15:56:03\"}', '2021-01-30 13:59:09', '2021-01-30 13:59:09'),
(71, 'News', 4, NULL, NULL, 11, 'delete', 'Shady Alaa deleted News record', '{\"id\":4,\"teacher_id\":\"3\",\"title\":\"\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0627\\u0627\\u0627\\u0627\\u0645\",\"description\":\"\\u0627\\u0644\\u0633\\u0644\\u0627\\u0645 \\u0639\\u0644\\u064a\\u0643\\u0645 \\u0648\\u0631\\u062d\\u0645\\u0647 \\u0627\\u0644\\u0644\\u0647 \\u0648\\u0628\\u0631\\u0643\\u0627\\u062a\\u0647 \\u2764\\ufe0f\\n\\u0627\\u0639\\u0644\\u0627\\u0646 \\u0647\\u0627\\u0645 \\u26a0\\ufe0f\\u26a0\\ufe0f\\n\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0644\\u0644\\u0635\\u0641 \\u0627\\u0644\\u0623\\u0648\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u0648\\u064a\\n\\u0627\\u0644\\u0627\\u062c\\u0632\\u0627\\u0621 \\u0627\\u0644\\u0645\\u0647\\u0645\\u0629 \\u0641\\u064a \\u0645\\u0646\\u0647\\u062c 3 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064a \\u0648 \\u0627\\u0644\\u0644\\u064a \\u0645\\u0644\\u062d\\u0642\\u0648\\u0634 \\u064a\\u0641\\u0647\\u0645\\u0648\\u0645\\u0647\\u0627 \\u0628\\u0633\\u0628\\u0628 \\u062c\\u0627\\u0626\\u062d\\u0629 \\u0643\\u0648\\u0631\\u0648\\u0646\\u0627 \\u0631\\u0628\\u0646\\u0627 \\u064a\\u0639\\u0641\\u0648\\u0627 \\u0639\\u0646\\u0627 \\u062c\\u0645\\u064a\\u0639\\u0627 \\u0648\\u062a\\u0632\\u0648\\u0644 \\u0627\\u0644\\u063a\\u0645\\u0647 \\n\\u0648\\u0644\\u0623\\u0646 \\u0627\\u0644\\u062a\\u0631\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0646\\u064a \\u0645\\u0628\\u0646\\u064a \\u0639\\u0644\\u064a \\u0627\\u0644\\u0623\\u062c\\u0632\\u0627\\u0621\\n \\u062f\\u064a \\u0647\\u064a\\u062a\\u0645 \\u0634\\u0631\\u062d\\u0647\\u0645 \\u0628\\u0627\\u0644\\u062a\\u0641\\u0635\\u064a\\u0644 \\u0641\\u064a 3 \\u062d\\u0635\\u0635 \\u0645\\u062c\\u0627\\u0646\\u0627\\u064b  \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0646\\u0627 \\u2728\\u2728\\ud83e\\udd0d\\n3 \\u062d\\u0635\\u0635( Free )\\u0644\\u0623\\u064a \\u0637\\u0627\\u0644\\u0628 \\u062d\\u0627\\u0628\\u0628 \\u064a\\u062d\\u0636\\u0631\\u0647\\u0645 + \\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0639\\u0644\\u064a \\u0645\\u0646\\u0647\\u062c \\u0627\\u0648\\u0644\\u0649 \\u062b\\u0627\\u0646\\u0648\\u0649  \\u0643\\u0644 \\u062d\\u0635\\u0629 \\u0645\\u062a\\u0627\\u062d \\u0644\\u0643\\u0644 \\u0627\\u0644\\u0646\\u0627\\u0633 \\u0648\\u0647\\u064a\\u0643\\u0648\\u0646 \\u0645\\u0648\\u062c\\u0648\\u062f \\u0639\\u0644\\u064a \\u0627\\u0644 page \\u0647\\u0648 \\u0643\\u0645\\u0627\\u0646 \\ud83d\\ude0c\\ud83d\\ude0c\\n\\u0627\\u0644\\u062d\\u0635\\u0635 \\u0647\\u062a\\u0646\\u0632\\u0644 \\u0639\\u0644\\u064a \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c public  \\u064a\\u0648\\u0645 \\u0627\\u0644\\u0633\\u0628\\u062a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629 3 \\u0648 \\u0644\\u0645\\u062f\\u0629 3 \\u0627\\u0633\\u0627\\u0628\\u064a\\u0639 \\n\\u0645\\u0648\\u0627\\u0639\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0635 \\u2b07\\ufe0f\\u2b07\\ufe0f\\n\\u0644\\u0627\\u0649 \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0628\\u064a\\u062f\\u062c\",\"admin_show\":\"1\",\"file_id\":\"15\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 15:48:35\",\"updated_at\":\"2021-01-30 15:50:20\"}', '[]', '2021-01-30 13:59:27', '2021-01-30 13:59:27'),
(72, 'Group', 1, NULL, NULL, 3, 'init', 'Mona initialized Group record', '[]', '{\"teacher_id\":3,\"subject_id\":2,\"grade_id\":1}', '2021-01-30 14:09:02', '2021-01-30 14:09:02'),
(73, 'mennaAbouelsaadat\\quizGenerator\\Models\\CGPQuestionFile', 10, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named 71wIafyUE6L._AC_SL1500_ (original).jpg in CGPQuestionFile at 21-01-30 16:23:29', NULL, 'CGPQuestionFile', '2021-01-30 14:23:29', '2021-01-30 14:23:29'),
(74, 'mennaAbouelsaadat\\quizGenerator\\Models\\CGPQuestionFile', 12, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named 38324-شيرازي (original).jpg in CGPQuestionFile at 21-01-30 16:24:26', NULL, 'CGPQuestionFile', '2021-01-30 14:24:26', '2021-01-30 14:24:26'),
(75, 'mennaAbouelsaadat\\quizGenerator\\Models\\CGPQuestionFile', 13, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named a4a10cc6f2b812f7f4c4b9b1f4458fde (original).jpg in CGPQuestionFile at 21-01-30 16:26:10', NULL, 'CGPQuestionFile', '2021-01-30 14:26:10', '2021-01-30 14:26:10'),
(76, 'Exam', 1, NULL, NULL, 11, 'init', 'Shady Alaa initialized Exam record', '[]', '[]', '2021-01-30 14:31:41', '2021-01-30 14:31:41'),
(77, 'Group', 2, NULL, NULL, 11, 'init', 'Shady Alaa initialized Group record', '[]', '{\"teacher_id\":11,\"subject_id\":8,\"grade_id\":3}', '2021-01-30 14:52:33', '2021-01-30 14:52:33'),
(78, 'Group', 3, NULL, NULL, 7, 'init', 'Ibrahim initialized Group record', '[]', '{\"teacher_id\":7,\"subject_id\":4,\"grade_id\":3}', '2021-01-30 14:52:50', '2021-01-30 14:52:50'),
(79, 'Group', 2, NULL, NULL, 11, 'save', 'Shady Alaa saved group record', '[]', '{\"id\":2,\"name\":\"A\",\"teacher_id\":11,\"subject_id\":\"8\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"10\",\"description\":\"math for senior 3\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 16:52:33\",\"updated_at\":\"2021-01-30 16:52:33\"}', '2021-01-30 14:53:05', '2021-01-30 14:53:05'),
(80, 'Group', 3, NULL, NULL, 7, 'save', 'Ibrahim saved group record', '[]', '{\"id\":3,\"name\":\"A\",\"teacher_id\":7,\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 16:52:50\",\"updated_at\":\"2021-01-30 16:52:50\"}', '2021-01-30 14:53:06', '2021-01-30 14:53:06'),
(81, 'Group', 4, NULL, NULL, 11, 'init', 'Shady Alaa initialized Group record', '[]', '{\"teacher_id\":11,\"subject_id\":8,\"grade_id\":3}', '2021-01-30 14:53:08', '2021-01-30 14:53:08'),
(82, 'Group', 4, NULL, NULL, 11, 'save', 'Shady Alaa saved group record', '[]', '{\"id\":4,\"name\":\"B\",\"teacher_id\":11,\"subject_id\":\"8\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"10\",\"description\":\"math for senior 3\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 16:53:08\",\"updated_at\":\"2021-01-30 16:53:08\"}', '2021-01-30 14:53:29', '2021-01-30 14:53:29'),
(83, 'User', 12, NULL, NULL, 11, 'init', 'Shady Alaa initialized User record', '[]', '[]', '2021-01-30 15:12:13', '2021-01-30 15:12:13'),
(84, 'User', 12, NULL, NULL, 11, 'save', 'Shady Alaa saved user record', '[]', '{\"id\":12,\"name\":\"maii\",\"email\":\"mairedapple5@gmail.com\",\"password\":null,\"token\":\"Icfnf2gGi4id79gk7QO985TMLJpRwawn\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"mairedapple5@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:13:20', '2021-01-30 15:13:20'),
(85, 'User', 13, NULL, NULL, 11, 'init', 'Shady Alaa initialized User record', '[]', '[]', '2021-01-30 15:13:27', '2021-01-30 15:13:27'),
(86, 'User', 13, NULL, NULL, 11, 'save', 'Shady Alaa saved user record', '[]', '{\"id\":13,\"name\":\"menna\",\"email\":\"mennahassanelfawal@gmail.com\",\"password\":null,\"token\":\"rzFlWeYvCBWFmxCAilghrVE8ieryxWkw\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"mennahassanelfawal@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:14:20', '2021-01-30 15:14:20'),
(87, 'User', 14, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-01-30 15:15:43', '2021-01-30 15:15:43'),
(88, 'User', 14, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":14,\"name\":\"mai\",\"email\":\"maiwork7@gmail.com\",\"password\":null,\"token\":\"1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:16:26', '2021-01-30 15:16:26'),
(89, 'User', 15, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-01-30 15:17:44', '2021-01-30 15:17:44'),
(90, 'User', 14, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":14,\"name\":\"mai\",\"email\":\"maiwork7@gmail.com\",\"password\":null,\"token\":\"1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":14,\"name\":\"mai\",\"email\":\"maiwork610@gmail.com\",\"password\":null,\"token\":\"1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"1\"}},{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"2\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"6\"}}]}', '2021-01-30 15:18:34', '2021-01-30 15:18:34');
INSERT INTO `logs` (`id`, `model_name`, `data_id`, `model_parent`, `parent_id`, `user_id`, `operation`, `description`, `record_before`, `record_after`, `created_at`, `updated_at`) VALUES
(91, 'User', 14, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":14,\"name\":\"mai\",\"email\":\"maiwork610@gmail.com\",\"password\":null,\"token\":\"1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":14,\"name\":\"mai\",\"email\":\"maiwork7@gmail.com\",\"password\":null,\"token\":\"1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"1\"}},{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"2\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"14\",\"permission_id\":\"6\"}}]}', '2021-01-30 15:19:16', '2021-01-30 15:19:16'),
(92, 'User', 16, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-01-30 15:19:20', '2021-01-30 15:19:20'),
(93, 'User', 16, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":16,\"name\":\"maii\",\"email\":\"maiwork610@gmail.com\",\"password\":null,\"token\":\"B0g4vX9SzHsxUQc6zkbZw953dI3pPsAn\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:19:50', '2021-01-30 15:19:50'),
(94, 'User', 12, NULL, NULL, 11, 'update', 'Shady Alaa updated user record', '{\"id\":12,\"name\":\"maii\",\"email\":\"mairedapple5@gmail.com\",\"password\":\"$2y$10$BNtvVEU9AwGUC8kN314rBOna6V6YLD38r0TwUUtviNzn81hjiGr6e\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"mairedapple5@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"11\",\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":12,\"name\":\"maii\",\"email\":\"mairedapple5@gmail.com\",\"password\":\"$2y$10$BNtvVEU9AwGUC8kN314rBOna6V6YLD38r0TwUUtviNzn81hjiGr6e\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"mairedapple5@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"12\",\"permission_id\":\"1\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"12\",\"permission_id\":\"3\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"12\",\"permission_id\":\"5\"}}]}', '2021-01-30 15:20:22', '2021-01-30 15:20:22'),
(95, 'User', 17, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-01-30 15:21:09', '2021-01-30 15:21:09'),
(96, 'User', 17, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":17,\"name\":\"kawthar\",\"email\":\"alkawther1994@gmail.com\",\"password\":null,\"token\":\"VFQhNznwKTMorjLFZ2pMgHDBm81SF5XK\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:22:24', '2021-01-30 15:22:24'),
(97, 'User', 18, NULL, NULL, 18, 'init', ' initialized User record', '[]', '{\"id\":18}', '2021-01-30 15:25:48', '2021-01-30 15:25:48'),
(98, 'User', 19, NULL, NULL, 11, 'init', 'Shady Alaa initialized User record', '[]', '[]', '2021-01-30 15:27:04', '2021-01-30 15:27:04'),
(99, 'User', 19, NULL, NULL, 11, 'save', 'Shady Alaa saved user record', '[]', '{\"id\":19,\"name\":\"menna\",\"email\":\"mennahassanelfawal.me@gmail.com\",\"password\":null,\"token\":\"BvWGJYQ1YrTh63p1qDkvikhD2oyg56Zv\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"mennahassanelfawal.me@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-01-30 15:27:49', '2021-01-30 15:27:49'),
(100, 'User', 20, NULL, NULL, 17, 'init', 'kawthar initialized User record', '[]', '{\"id\":20}', '2021-01-30 15:35:52', '2021-01-30 15:35:52'),
(101, 'HonorBoard', 1, NULL, NULL, 19, 'init', 'menna initialized HonorBoard record', '[]', '[]', '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(102, 'HonorBoard', 2, NULL, NULL, 19, 'init', 'menna initialized HonorBoard record', '[]', '[]', '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(103, 'HonorBoard', 3, NULL, NULL, 19, 'init', 'menna initialized HonorBoard record', '[]', '[]', '2021-01-30 15:36:22', '2021-01-30 15:36:22'),
(104, 'User', 21, NULL, NULL, 21, 'init', ' initialized User record', '[]', '{\"id\":21}', '2021-01-30 15:41:58', '2021-01-30 15:41:58'),
(105, 'User', 22, NULL, NULL, 22, 'init', ' initialized User record', '[]', '{\"id\":22}', '2021-01-30 15:55:05', '2021-01-30 15:55:05'),
(106, 'User', 23, NULL, NULL, 23, 'init', ' initialized User record', '[]', '{\"id\":23}', '2021-01-30 15:55:06', '2021-01-30 15:55:06'),
(107, 'User', 24, NULL, NULL, 24, 'init', ' initialized User record', '[]', '{\"id\":24}', '2021-01-30 15:55:06', '2021-01-30 15:55:06'),
(108, 'User', 25, NULL, NULL, 25, 'init', ' initialized User record', '[]', '{\"id\":25}', '2021-01-30 15:55:07', '2021-01-30 15:55:07'),
(109, 'User', 26, NULL, NULL, 26, 'init', ' initialized User record', '[]', '{\"id\":26}', '2021-01-30 15:55:11', '2021-01-30 15:55:11'),
(110, 'User', 27, NULL, NULL, 25, 'init', ' initialized User record', '[]', '{\"id\":27}', '2021-01-30 16:01:37', '2021-01-30 16:01:37'),
(111, 'User', 28, NULL, NULL, 28, 'init', ' initialized User record', '[]', '{\"id\":28}', '2021-01-31 16:01:20', '2021-01-31 16:01:20'),
(112, 'User', 29, NULL, NULL, 29, 'init', ' initialized User record', '[]', '{\"id\":29}', '2021-01-31 16:02:43', '2021-01-31 16:02:43'),
(113, 'User', 30, NULL, NULL, 30, 'init', ' initialized User record', '[]', '{\"id\":30}', '2021-01-31 16:13:48', '2021-01-31 16:13:48'),
(114, 'User', 31, NULL, NULL, 31, 'init', ' initialized User record', '[]', '{\"id\":31}', '2021-01-31 22:03:45', '2021-01-31 22:03:45'),
(115, 'User', 32, NULL, NULL, 32, 'init', ' initialized User record', '[]', '{\"id\":32}', '2021-01-31 22:06:33', '2021-01-31 22:06:33'),
(116, 'User', 33, NULL, NULL, 33, 'init', ' initialized User record', '[]', '{\"id\":33}', '2021-01-31 22:09:46', '2021-01-31 22:09:46'),
(117, 'App\\User', 32, NULL, NULL, 32, 'save', ' Uploaded new file_id named FB_IMG_1610830908298 (original).jpg in User at 21-02-01 00:11:00', NULL, 'User', '2021-01-31 22:11:00', '2021-01-31 22:11:00'),
(118, 'App\\User', 33, NULL, NULL, 33, 'save', ' Uploaded new file_id named IMG-20210130-WA0018 (original).jpg in User at 21-02-01 00:11:43', NULL, 'User', '2021-01-31 22:11:43', '2021-01-31 22:11:43'),
(119, 'User', 32, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":32,\"name\":\"Student mai\",\"email\":\"Mai_hamdy61@yahoo.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Maiwork610@gmail.com\",\"phone_number\":\"012079820029\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"012079820029\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amal.wageeh.31\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"22\",\"city\":\"Alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"Mai_hamdy61@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:13:09', '2021-01-31 22:13:09'),
(120, 'User', 33, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"23\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:16:54', '2021-01-31 22:16:54'),
(121, 'Group', 5, NULL, NULL, 7, 'init', 'Ibrahim initialized Group record', '[]', '{\"teacher_id\":7,\"subject_id\":4,\"grade_id\":3}', '2021-01-31 22:20:47', '2021-01-31 22:20:47'),
(122, 'User', 32, NULL, NULL, 32, 'update', 'Student mai Assigned to group', '{\"id\":32,\"name\":\"Student mai\",\"email\":\"Mai_hamdy61@yahoo.com\",\"password\":null,\"token\":\"OwZGKRz6F5PrAGOCavOOh2he269vP6ei\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Maiwork610@gmail.com\",\"phone_number\":\"012079820029\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"012079820029\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amal.wageeh.31\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"22\",\"city\":\"Alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"Mai_hamdy61@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":32,\"name\":\"Student mai\",\"email\":\"Mai_hamdy61@yahoo.com\",\"password\":\"$2y$10$A227Alog1Ek3AlbcXr7n7eAAyyfD91IheLVs1cTbKoSNlDANaZ13i\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Maiwork610@gmail.com\",\"phone_number\":\"012079820029\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"012079820029\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amal.wageeh.31\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"22\",\"city\":\"Alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"Mai_hamdy61@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:20:54', '2021-01-31 22:20:54'),
(123, 'Group', 5, NULL, NULL, 7, 'save', 'Ibrahim saved group record', '[]', '{\"id\":5,\"name\":\"B\",\"teacher_id\":7,\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:20:47\",\"updated_at\":\"2021-02-01 00:20:47\"}', '2021-01-31 22:20:59', '2021-01-31 22:20:59'),
(124, 'Group', 6, NULL, NULL, 7, 'init', 'Ibrahim initialized Group record', '[]', '{\"teacher_id\":7,\"subject_id\":4,\"grade_id\":3}', '2021-01-31 22:21:42', '2021-01-31 22:21:42'),
(125, 'Group', 6, NULL, NULL, 7, 'save', 'Ibrahim saved group record', '[]', '{\"id\":6,\"name\":\"C\",\"teacher_id\":7,\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:21:42\",\"updated_at\":\"2021-02-01 00:21:42\"}', '2021-01-31 22:21:59', '2021-01-31 22:21:59'),
(126, 'Group', 7, NULL, NULL, 7, 'init', 'Ibrahim initialized Group record', '[]', '{\"teacher_id\":7,\"subject_id\":4,\"grade_id\":3}', '2021-01-31 22:22:13', '2021-01-31 22:22:13'),
(127, 'Group', 7, NULL, NULL, 7, 'save', 'Ibrahim saved group record', '[]', '{\"id\":7,\"name\":\"D\",\"teacher_id\":7,\"subject_id\":\"4\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:22:13\",\"updated_at\":\"2021-02-01 00:22:13\"}', '2021-01-31 22:22:30', '2021-01-31 22:22:30'),
(128, 'User', 33, NULL, NULL, 33, 'update', 'Ebrahim Assigned to group', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":null,\"token\":\"oAKyyS5HZVgTdhnKFI7c4yw25bSyMMU0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"23\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"23\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:23:37', '2021-01-31 22:23:37'),
(129, 'User', 32, NULL, NULL, 32, 'update', 'Student mai Assigned to group', '{\"id\":32,\"name\":\"Student mai\",\"email\":\"Mai_hamdy61@yahoo.com\",\"password\":\"$2y$10$A227Alog1Ek3AlbcXr7n7eAAyyfD91IheLVs1cTbKoSNlDANaZ13i\",\"token\":\"ZPU5hmDNj2umaAvG3ghlbGaKq17UnQbI\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Maiwork610@gmail.com\",\"phone_number\":\"012079820029\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"012079820029\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amal.wageeh.31\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"22\",\"city\":\"Alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"Mai_hamdy61@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":32,\"name\":\"Student mai\",\"email\":\"Mai_hamdy61@yahoo.com\",\"password\":\"$2y$10$A227Alog1Ek3AlbcXr7n7eAAyyfD91IheLVs1cTbKoSNlDANaZ13i\",\"token\":\"ZPU5hmDNj2umaAvG3ghlbGaKq17UnQbI\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Maiwork610@gmail.com\",\"phone_number\":\"012079820029\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"012079820029\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amal.wageeh.31\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"22\",\"city\":\"Alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"Mai_hamdy61@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:32:30', '2021-01-31 22:32:30'),
(130, 'User', 33, NULL, NULL, 33, 'update', 'Ebrahim Assigned to group', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"23\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"23\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-01-31 22:42:10', '2021-01-31 22:42:10'),
(131, 'Lecture', 1, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-01-31 22:49:17', '2021-01-31 22:49:17'),
(132, 'Lecture', 1, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 00:49:17\",\"created_at\":\"2021-02-01 00:49:17\",\"id\":1,\"start_time\":\"0:55\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-01\",\"teacher_id\":7,\"subject_id\":4}', '2021-01-31 22:49:17', '2021-01-31 22:49:17'),
(133, 'StudentTransaction', 1, NULL, NULL, 7, 'init', 'Ibrahim initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-01-31 22:49:46', '2021-01-31 22:49:46'),
(134, 'StudentTransaction', 1, NULL, NULL, 7, 'save', 'Ibrahim saved student_transaction record', '[]', '{\"id\":1,\"created_by_user_id\":null,\"student_id\":\"33\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":4,\"teacher_id\":7,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:49:46\",\"updated_at\":\"2021-02-01 00:49:46\",\"balance\":5}', '2021-01-31 22:49:52', '2021-01-31 22:49:52'),
(135, 'StudentTransaction', 2, NULL, NULL, 7, 'init', 'Ibrahim initialized StudentTransaction record', '[]', '{\"student_id\":\"32\"}', '2021-01-31 22:50:12', '2021-01-31 22:50:12'),
(136, 'StudentTransaction', 2, NULL, NULL, 7, 'save', 'Ibrahim saved student_transaction record', '[]', '{\"id\":2,\"created_by_user_id\":null,\"student_id\":\"32\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":4,\"teacher_id\":7,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:50:12\",\"updated_at\":\"2021-02-01 00:50:12\",\"balance\":5}', '2021-01-31 22:50:18', '2021-01-31 22:50:18'),
(137, 'App\\LecturesFile', 1, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file named 0318_Nucleus (original).jpg in LecturesFile at 21-02-01 00:51:41', NULL, 'LecturesFile', '2021-01-31 22:51:41', '2021-01-31 22:51:41'),
(138, 'StudentTransaction', 3, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-01-31 22:51:48', '2021-01-31 22:51:48'),
(139, 'StudentTransaction', 3, NULL, NULL, 11, 'save', 'Shady Alaa saved student_transaction record', '[]', '{\"id\":3,\"created_by_user_id\":null,\"student_id\":\"33\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":8,\"teacher_id\":11,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:51:48\",\"updated_at\":\"2021-02-01 00:51:48\",\"balance\":5}', '2021-01-31 22:51:57', '2021-01-31 22:51:57'),
(140, 'StudentTransaction', 4, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-01-31 22:52:07', '2021-01-31 22:52:07'),
(141, 'StudentTransaction', 5, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-01-31 22:52:33', '2021-01-31 22:52:33'),
(142, 'StudentTransaction', 6, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-01-31 22:52:40', '2021-01-31 22:52:40'),
(143, 'StudentTransaction', 7, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"32\"}', '2021-01-31 22:53:07', '2021-01-31 22:53:07'),
(144, 'StudentTransaction', 7, NULL, NULL, 11, 'save', 'Shady Alaa saved student_transaction record', '[]', '{\"id\":7,\"created_by_user_id\":null,\"student_id\":\"32\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":8,\"teacher_id\":11,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:53:07\",\"updated_at\":\"2021-02-01 00:53:07\",\"balance\":5}', '2021-01-31 22:53:12', '2021-01-31 22:53:12'),
(145, 'App\\LecturesFile', 1, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file named Lipids.mp4 in LecturesFile at 21-02-01 00:53:40', NULL, 'LecturesFile', '2021-01-31 22:53:40', '2021-01-31 22:53:40'),
(146, 'Lecture', 1, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":1,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"00:55:00\",\"end_time\":\"02:00:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:49:17\",\"updated_at\":\"2021-02-01 00:49:17\",\"subject_id\":\"4\"}', '{\"id\":1,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"test 1\",\"start_time\":\"0:55\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":\"<p>https:\\/\\/docs.google.com\\/forms\\/d\\/1sO2WQzu3P7_URyY4qfM60Q3dSN8aKxLlmhOgTtNyPP0\\/edit<\\/p>\\n<p>&nbsp;<\\/p>\",\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:49:17\",\"updated_at\":\"2021-02-01 00:49:17\",\"subject_id\":\"4\"}', '2021-01-31 22:53:51', '2021-01-31 22:53:51'),
(147, 'Lecture', 1, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":1,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"test 1\",\"start_time\":\"00:55:00\",\"end_time\":\"02:00:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":\"<p>https:\\/\\/docs.google.com\\/forms\\/d\\/1sO2WQzu3P7_URyY4qfM60Q3dSN8aKxLlmhOgTtNyPP0\\/edit<\\/p>\\n<p>&nbsp;<\\/p>\",\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:49:17\",\"updated_at\":\"2021-02-01 00:53:51\",\"subject_id\":\"4\"}', '{\"id\":1,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"test 1\",\"start_time\":\"0:55\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"homework_id\":\"8\",\"quiz_id\":\"10\",\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":\"<p>https:\\/\\/docs.google.com\\/forms\\/d\\/1sO2WQzu3P7_URyY4qfM60Q3dSN8aKxLlmhOgTtNyPP0\\/edit<\\/p>\\n<p>&nbsp;<\\/p>\",\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 00:49:17\",\"updated_at\":\"2021-02-01 00:53:51\",\"subject_id\":\"4\"}', '2021-01-31 22:54:10', '2021-01-31 22:54:10'),
(148, 'LecturePayment', 1, NULL, NULL, 7, 'init', 'Ibrahim initialized lecturePayment record', '[]', '{\"teacher_id\":7,\"lecture_id\":1}', '2021-01-31 22:59:04', '2021-01-31 22:59:04'),
(149, 'LecturePayment', 1, NULL, NULL, 7, 'save', 'Ibrahim saved lecture payment record', '[]', '{\"teacher_id\":7,\"lecture_id\":1,\"updated_at\":\"2021-02-01 00:59:04\",\"created_at\":\"2021-02-01 00:59:04\",\"id\":1,\"students_number\":0,\"amount\":0,\"balance\":0}', '2021-01-31 22:59:04', '2021-01-31 22:59:04'),
(150, 'User', 34, NULL, NULL, 34, 'init', ' initialized User record', '[]', '{\"id\":34}', '2021-01-31 23:07:22', '2021-01-31 23:07:22'),
(151, 'Lecture', 2, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-01-31 23:24:55', '2021-01-31 23:24:55'),
(152, 'Lecture', 2, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 01:24:55\",\"created_at\":\"2021-02-01 01:24:55\",\"id\":2,\"start_time\":\"1:30\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-01\",\"teacher_id\":11,\"subject_id\":8}', '2021-01-31 23:24:55', '2021-01-31 23:24:55'),
(153, 'App\\LecturesFile', 2, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file named FB_IMG_1612002203633 (original).jpg in LecturesFile at 21-02-01 01:26:01', NULL, 'LecturesFile', '2021-01-31 23:26:01', '2021-01-31 23:26:01'),
(154, 'Lecture', 2, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":2,\"name\":\"lecture 2021-02-01\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"01:30:00\",\"end_time\":\"02:00:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 01:24:55\",\"updated_at\":\"2021-02-01 01:24:55\",\"subject_id\":\"8\"}', '{\"id\":2,\"name\":\"lecture 2021-02-01\",\"group_id\":\"2\",\"topic\":\"Lecture 1\",\"start_time\":\"1:30\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"homework_id\":\"3\",\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 01:24:55\",\"updated_at\":\"2021-02-01 01:24:55\",\"subject_id\":\"8\"}', '2021-01-31 23:26:05', '2021-01-31 23:26:05'),
(155, 'Lecture', 2, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":2,\"name\":\"lecture 2021-02-01\",\"group_id\":\"2\",\"topic\":\"Lecture 1\",\"start_time\":\"01:30:00\",\"end_time\":\"02:00:00\",\"date\":\"2021-02-01\",\"homework_id\":\"3\",\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 01:24:55\",\"updated_at\":\"2021-02-01 01:26:05\",\"subject_id\":\"8\"}', '{\"id\":2,\"name\":\"lecture 2021-02-01\",\"group_id\":\"2\",\"topic\":\"Lecture 1\",\"start_time\":\"1:30\",\"end_time\":\"2:00\",\"date\":\"2021-02-01\",\"homework_id\":\"3\",\"quiz_id\":\"12\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 01:24:55\",\"updated_at\":\"2021-02-01 01:26:05\",\"subject_id\":\"8\"}', '2021-01-31 23:26:59', '2021-01-31 23:26:59'),
(156, 'LecturePayment', 2, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":2}', '2021-01-31 23:57:47', '2021-01-31 23:57:47'),
(157, 'LecturePayment', 2, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":2,\"updated_at\":\"2021-02-01 01:57:47\",\"created_at\":\"2021-02-01 01:57:47\",\"id\":2,\"students_number\":0,\"amount\":0,\"balance\":0}', '2021-01-31 23:57:47', '2021-01-31 23:57:47'),
(158, 'User', 35, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-02-01 00:31:13', '2021-02-01 00:31:13'),
(159, 'User', 36, NULL, NULL, 11, 'init', 'Shady Alaa initialized User record', '[]', '[]', '2021-02-01 00:31:54', '2021-02-01 00:31:54'),
(160, 'User', 36, NULL, NULL, 11, 'save', 'Shady Alaa saved user record', '[]', '{\"id\":36,\"name\":\"Rewan\",\"email\":\"Rewanahmed095@gmail.com\",\"password\":null,\"token\":\"IVpifEA8KhwjqjmT0y0uUg2qEcvMtRMx\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-02-01 00:32:37', '2021-02-01 00:32:37'),
(161, 'User', 35, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":35,\"name\":\"Rewan Ahmed\",\"email\":\"rewan6632@gmail.com\",\"password\":null,\"token\":\"B92oapKRIglFeYEYhsK3E86Tu6hH0BcI\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-02-01 00:33:03', '2021-02-01 00:33:03'),
(162, 'User', 37, NULL, NULL, 11, 'init', 'Shady Alaa initialized User record', '[]', '[]', '2021-02-01 00:47:03', '2021-02-01 00:47:03'),
(163, 'User', 38, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-02-01 00:47:21', '2021-02-01 00:47:21'),
(164, 'User', 37, NULL, NULL, 11, 'save', 'Shady Alaa saved user record', '[]', '{\"id\":37,\"name\":\"Monaa\",\"email\":\"Monawork7@gmail.com\",\"password\":null,\"token\":\"8tyBJwHn6gZrg0WVQAyKkBrRPnBpL5FQ\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-02-01 00:47:34', '2021-02-01 00:47:34'),
(165, 'User', 38, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":null,\"token\":\"XYDUWUff49V3q3LvVeV8J4vbl2s0C064\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-02-01 00:48:10', '2021-02-01 00:48:10'),
(166, 'User', 39, NULL, NULL, 39, 'init', ' initialized User record', '[]', '{\"id\":39}', '2021-02-01 00:49:45', '2021-02-01 00:49:45'),
(167, 'StudentTransaction', 12, NULL, NULL, 38, 'init', 'Mona initialized StudentTransaction record', '[]', '{\"student_id\":\"33\"}', '2021-02-01 00:51:38', '2021-02-01 00:51:38'),
(168, 'StudentTransaction', 12, NULL, NULL, 38, 'save', 'Mona saved student_transaction record', '[]', '{\"id\":12,\"created_by_user_id\":null,\"student_id\":\"33\",\"amount\":null,\"number_of_lectures\":\"1\",\"subject_id\":4,\"teacher_id\":\"7\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 02:51:38\",\"updated_at\":\"2021-02-01 02:51:38\",\"balance\":5}', '2021-02-01 00:51:43', '2021-02-01 00:51:43'),
(169, 'User', 37, NULL, NULL, 11, 'update', 'Shady Alaa updated user record', '{\"id\":37,\"name\":\"Monaa\",\"email\":\"Monawork7@gmail.com\",\"password\":\"$2y$10$PmgqpLt4VJcY8ytZGc13q.xovTOv6Mp4bjd0LnQs8VMqW5mNAx3He\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"11\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":37,\"name\":\"Monaa\",\"email\":\"Monawork7@gmail.com\",\"password\":\"$2y$10$PmgqpLt4VJcY8ytZGc13q.xovTOv6Mp4bjd0LnQs8VMqW5mNAx3He\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"1\"}},{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"2\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"6\"}}]}', '2021-02-01 00:52:34', '2021-02-01 00:52:34'),
(170, 'App\\User', 33, NULL, NULL, 37, 'save', 'Monaa Uploaded new file_id named FB_IMG_1611586528038 (original).jpg in User at 21-02-01 03:02:25', NULL, 'User', '2021-02-01 01:02:25', '2021-02-01 01:02:25'),
(171, 'User', 33, NULL, NULL, 37, 'update', 'Monaa saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:02:32', '2021-02-01 01:02:32'),
(172, 'Lecture', 3, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(173, 'Lecture', 3, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:06:29\",\"created_at\":\"2021-02-01 03:06:29\",\"id\":3,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-01\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-01\",\"teacher_id\":7,\"subject_id\":4}', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(174, 'Lecture', 4, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(175, 'Lecture', 4, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:06:29\",\"created_at\":\"2021-02-01 03:06:29\",\"id\":4,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-02\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-02\",\"teacher_id\":7,\"subject_id\":4}', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(176, 'Lecture', 5, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(177, 'Lecture', 5, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:06:29\",\"created_at\":\"2021-02-01 03:06:29\",\"id\":5,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-03\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-03\",\"teacher_id\":7,\"subject_id\":4}', '2021-02-01 01:06:29', '2021-02-01 01:06:29'),
(178, 'Lecture', 3, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":3,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"03:15:00\",\"end_time\":\"04:15:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '{\"id\":3,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"mai\",\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '2021-02-01 01:06:48', '2021-02-01 01:06:48'),
(179, 'Lecture', 5, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":5,\"name\":\"lecture 2021-02-03\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"03:15:00\",\"end_time\":\"04:15:00\",\"date\":\"2021-02-03\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '{\"id\":5,\"name\":\"lecture 2021-02-03\",\"group_id\":\"3\",\"topic\":\"mai2\",\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-03\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '2021-02-01 01:07:06', '2021-02-01 01:07:06'),
(180, 'Lecture', 6, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:07:18', '2021-02-01 01:07:18'),
(181, 'Lecture', 6, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:07:18\",\"created_at\":\"2021-02-01 03:07:18\",\"id\":6,\"start_time\":\"3:15\",\"end_time\":\"4:00\",\"date\":\"2021-02-01\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-01\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:07:18', '2021-02-01 01:07:18'),
(182, 'Lecture', 7, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:07:18', '2021-02-01 01:07:18'),
(183, 'Lecture', 7, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:07:18\",\"created_at\":\"2021-02-01 03:07:18\",\"id\":7,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-02\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-02\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:07:18', '2021-02-01 01:07:18'),
(184, 'Lecture', 8, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:07:18', '2021-02-01 01:07:18'),
(185, 'Lecture', 8, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:07:18\",\"created_at\":\"2021-02-01 03:07:18\",\"id\":8,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-03\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-03\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:07:18', '2021-02-01 01:07:18');
INSERT INTO `logs` (`id`, `model_name`, `data_id`, `model_parent`, `parent_id`, `user_id`, `operation`, `description`, `record_before`, `record_after`, `created_at`, `updated_at`) VALUES
(186, 'Lecture', 4, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":4,\"name\":\"lecture 2021-02-02\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"03:15:00\",\"end_time\":\"04:15:00\",\"date\":\"2021-02-02\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '{\"id\":4,\"name\":\"lecture 2021-02-02\",\"group_id\":\"3\",\"topic\":\"mai3\",\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-02\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:06:29\",\"subject_id\":\"4\"}', '2021-02-01 01:07:21', '2021-02-01 01:07:21'),
(187, 'Lecture', 9, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-02-01 01:09:10', '2021-02-01 01:09:10'),
(188, 'Lecture', 9, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:09:10\",\"created_at\":\"2021-02-01 03:09:10\",\"id\":9,\"start_time\":\"1:15\",\"end_time\":\"2:15\",\"date\":\"2021-02-02\",\"group_id\":\"5\",\"name\":\"lecture 2021-02-02\",\"teacher_id\":7,\"subject_id\":4}', '2021-02-01 01:09:10', '2021-02-01 01:09:10'),
(189, 'Lecture', 9, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":9,\"name\":\"lecture 2021-02-02\",\"group_id\":\"5\",\"topic\":null,\"start_time\":\"01:15:00\",\"end_time\":\"02:15:00\",\"date\":\"2021-02-02\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:10\",\"updated_at\":\"2021-02-01 03:09:10\",\"subject_id\":\"4\"}', '{\"id\":9,\"name\":\"lecture 2021-02-02\",\"group_id\":\"5\",\"topic\":\"mai\",\"start_time\":\"1:15\",\"end_time\":\"2:15\",\"date\":\"2021-02-02\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:10\",\"updated_at\":\"2021-02-01 03:09:10\",\"subject_id\":\"4\"}', '2021-02-01 01:09:26', '2021-02-01 01:09:26'),
(190, 'LectureRescheduleRequest', 1, NULL, NULL, 38, 'update', 'Mona updated lecture_reschedule_request record', '{\"id\":1,\"student_id\":\"33\",\"from_lecture_id\":\"3\",\"to_lecture_id\":\"9\",\"request_status_id\":\"2\",\"subject_id\":\"4\",\"teacher_id\":\"7\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:34\",\"updated_at\":\"2021-02-01 03:09:34\",\"reason\":null,\"original_lecture_id\":null}', '{\"id\":1,\"student_id\":\"33\",\"from_lecture_id\":\"3\",\"to_lecture_id\":\"9\",\"request_status_id\":\"1\",\"subject_id\":\"4\",\"teacher_id\":\"7\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:34\",\"updated_at\":\"2021-02-01 03:09:34\",\"reason\":null,\"original_lecture_id\":null}', '2021-02-01 01:10:26', '2021-02-01 01:10:26'),
(191, 'LecturePayment', 3, NULL, NULL, 7, 'init', 'Ibrahim initialized lecturePayment record', '[]', '{\"teacher_id\":7,\"lecture_id\":3}', '2021-02-01 01:11:20', '2021-02-01 01:11:20'),
(192, 'LecturePayment', 3, NULL, NULL, 7, 'save', 'Ibrahim saved lecture payment record', '[]', '{\"teacher_id\":7,\"lecture_id\":3,\"updated_at\":\"2021-02-01 03:11:20\",\"created_at\":\"2021-02-01 03:11:20\",\"id\":3,\"students_number\":0,\"amount\":0,\"balance\":\"2\"}', '2021-02-01 01:11:20', '2021-02-01 01:11:20'),
(193, 'Lecture', 10, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(194, 'Lecture', 10, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:13:16\",\"created_at\":\"2021-02-01 03:13:16\",\"id\":10,\"start_time\":\"3:15\",\"end_time\":\"4:05\",\"date\":\"2021-02-06\",\"group_id\":\"4\",\"name\":\"lecture 2021-02-06\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(195, 'Lecture', 11, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(196, 'Lecture', 11, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:13:16\",\"created_at\":\"2021-02-01 03:13:16\",\"id\":11,\"start_time\":\"3:15\",\"end_time\":\"23:05\",\"date\":\"2021-02-07\",\"group_id\":\"4\",\"name\":\"lecture 2021-02-07\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(197, 'Lecture', 12, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(198, 'Lecture', 12, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 03:13:16\",\"created_at\":\"2021-02-01 03:13:16\",\"id\":12,\"start_time\":\"3:15\",\"end_time\":\"4:15\",\"date\":\"2021-02-05\",\"group_id\":\"4\",\"name\":\"lecture 2021-02-05\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-01 01:13:16', '2021-02-01 01:13:16'),
(199, 'LectureRescheduleRequest', 2, NULL, NULL, 37, 'update', 'Monaa updated lecture_reschedule_request record', '{\"id\":2,\"student_id\":\"32\",\"from_lecture_id\":\"2\",\"to_lecture_id\":\"10\",\"request_status_id\":\"2\",\"subject_id\":\"8\",\"teacher_id\":\"11\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:18:19\",\"updated_at\":\"2021-02-01 03:18:19\",\"reason\":\"I am sick\",\"original_lecture_id\":null}', '{\"id\":2,\"student_id\":\"32\",\"from_lecture_id\":\"2\",\"to_lecture_id\":\"10\",\"request_status_id\":\"1\",\"subject_id\":\"8\",\"teacher_id\":\"11\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:18:19\",\"updated_at\":\"2021-02-01 03:18:19\",\"reason\":\"I am sick\",\"original_lecture_id\":null}', '2021-02-01 01:18:52', '2021-02-01 01:18:52'),
(200, 'LecturePayment', 4, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":6}', '2021-02-01 01:22:26', '2021-02-01 01:22:26'),
(201, 'LecturePayment', 4, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":6,\"updated_at\":\"2021-02-01 03:22:26\",\"created_at\":\"2021-02-01 03:22:26\",\"id\":4,\"students_number\":0,\"amount\":0,\"balance\":\"0\"}', '2021-02-01 01:22:26', '2021-02-01 01:22:26'),
(202, 'Lecture', 4, NULL, NULL, 7, 'delete', 'Ibrahim deleted Lecture record', '{\"id\":4,\"name\":\"lecture 2021-02-02\",\"group_id\":\"3\",\"topic\":\"mai3\",\"start_time\":\"03:15:00\",\"end_time\":\"04:15:00\",\"date\":\"2021-02-02\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:07:21\",\"subject_id\":\"4\"}', '[]', '2021-02-01 01:28:53', '2021-02-01 01:28:53'),
(203, 'Lecture', 5, NULL, NULL, 7, 'delete', 'Ibrahim deleted Lecture record', '{\"id\":5,\"name\":\"lecture 2021-02-03\",\"group_id\":\"3\",\"topic\":\"mai2\",\"start_time\":\"03:15:00\",\"end_time\":\"04:15:00\",\"date\":\"2021-02-03\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:06:29\",\"updated_at\":\"2021-02-01 03:07:06\",\"subject_id\":\"4\"}', '[]', '2021-02-01 01:29:01', '2021-02-01 01:29:01'),
(204, 'User', 38, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"1\"}}]}', '2021-02-01 01:37:02', '2021-02-01 01:37:02'),
(205, 'User', 37, NULL, NULL, 11, 'update', 'Shady Alaa updated user record', '{\"id\":37,\"name\":\"Monaa\",\"email\":\"Monawork7@gmail.com\",\"password\":\"$2y$10$PmgqpLt4VJcY8ytZGc13q.xovTOv6Mp4bjd0LnQs8VMqW5mNAx3He\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"11\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":37,\"name\":\"Monaa\",\"email\":\"Monawork7@gmail.com\",\"password\":\"$2y$10$PmgqpLt4VJcY8ytZGc13q.xovTOv6Mp4bjd0LnQs8VMqW5mNAx3He\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"37\",\"permission_id\":\"1\"}}]}', '2021-02-01 01:37:11', '2021-02-01 01:37:11'),
(206, 'HonorBoard', 4, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(207, 'HonorBoard', 5, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(208, 'HonorBoard', 6, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:24', '2021-02-01 01:37:24'),
(209, 'HonorBoard', 7, NULL, NULL, 37, 'init', 'Monaa initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(210, 'HonorBoard', 8, NULL, NULL, 37, 'init', 'Monaa initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(211, 'HonorBoard', 9, NULL, NULL, 37, 'init', 'Monaa initialized HonorBoard record', '[]', '[]', '2021-02-01 01:37:41', '2021-02-01 01:37:41'),
(212, 'HonorBoard', 10, NULL, NULL, 37, 'init', 'Monaa initialized HonorBoard record', '[]', '[]', '2021-02-01 01:38:13', '2021-02-01 01:38:13'),
(213, 'Group', 8, NULL, NULL, 37, 'init', 'Monaa initialized Group record', '[]', '{\"teacher_id\":\"11\",\"subject_id\":8,\"grade_id\":3}', '2021-02-01 01:40:07', '2021-02-01 01:40:07'),
(214, 'HonorBoard', 11, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(215, 'HonorBoard', 12, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(216, 'HonorBoard', 13, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 01:40:11', '2021-02-01 01:40:11'),
(217, 'Group', 8, NULL, NULL, 37, 'save', 'Monaa saved group record', '[]', '{\"id\":8,\"name\":\"C\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"5\",\"description\":\"Mathematical\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:40:07\",\"updated_at\":\"2021-02-01 03:40:07\"}', '2021-02-01 01:40:32', '2021-02-01 01:40:32'),
(218, 'User', 33, NULL, NULL, 37, 'update', 'Monaa saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:41:58', '2021-02-01 01:41:58'),
(219, 'User', 33, NULL, NULL, 37, 'update', 'Monaa saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:42:41', '2021-02-01 01:42:41'),
(220, 'User', 33, NULL, NULL, 37, 'update', 'Monaa saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:43:28', '2021-02-01 01:43:28'),
(221, 'User', 33, NULL, NULL, 7, 'update', 'Ibrahim saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:43:44', '2021-02-01 01:43:44'),
(222, 'User', 33, NULL, NULL, 38, 'update', 'Mona saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:44:39', '2021-02-01 01:44:39'),
(223, 'User', 33, NULL, NULL, 7, 'update', 'Ibrahim saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:47:22', '2021-02-01 01:47:22'),
(224, 'User', 33, NULL, NULL, 38, 'update', 'Mona saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:48:20', '2021-02-01 01:48:20'),
(225, 'User', 33, NULL, NULL, 38, 'update', 'Mona saved user record', '{\"id\":33,\"name\":\"Ebrahim\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 01:48:52', '2021-02-01 01:48:52'),
(226, 'User', 40, NULL, NULL, 40, 'init', ' initialized User record', '[]', '{\"id\":40}', '2021-02-01 03:30:48', '2021-02-01 03:30:48'),
(227, 'User', 41, NULL, NULL, 41, 'init', ' initialized User record', '[]', '{\"id\":41}', '2021-02-01 03:50:36', '2021-02-01 03:50:36'),
(228, 'User', 38, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"2\"}},{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"1\"}}]}', '2021-02-01 06:08:34', '2021-02-01 06:08:34'),
(229, 'User', 33, NULL, NULL, 38, 'update', 'Mona saved user record', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"27\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-01 06:12:52', '2021-02-01 06:12:52'),
(230, 'User', 42, NULL, NULL, 38, 'init', 'Mona initialized User record', '[]', '{\"id\":42}', '2021-02-01 06:13:21', '2021-02-01 06:13:21'),
(231, 'Group', 9, NULL, NULL, 38, 'init', 'Mona initialized Group record', '[]', '{\"teacher_id\":\"7\",\"subject_id\":4,\"grade_id\":3}', '2021-02-01 06:16:08', '2021-02-01 06:16:08'),
(232, 'Group', 9, NULL, NULL, 38, 'save', 'Mona saved group record', '[]', '{\"id\":9,\"name\":\"D\",\"teacher_id\":\"7\",\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:16:08\",\"updated_at\":\"2021-02-01 08:16:08\"}', '2021-02-01 06:17:18', '2021-02-01 06:17:18'),
(233, 'Group', 9, NULL, NULL, 38, 'update', 'Mona updated group record', '{\"id\":9,\"name\":\"D\",\"teacher_id\":\"7\",\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:16:08\",\"updated_at\":\"2021-02-01 08:17:18\"}', '{\"id\":9,\"name\":\"E\",\"teacher_id\":\"7\",\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"50\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:16:08\",\"updated_at\":\"2021-02-01 08:17:18\"}', '2021-02-01 06:17:34', '2021-02-01 06:17:34'),
(234, 'Lecture', 13, NULL, NULL, 38, 'init', 'Mona initialized Lecture record', '[]', '[]', '2021-02-01 06:22:57', '2021-02-01 06:22:57'),
(235, 'Lecture', 13, NULL, NULL, 38, 'save', 'Mona saved lecture record', '[]', '{\"updated_at\":\"2021-02-01 08:22:57\",\"created_at\":\"2021-02-01 08:22:57\",\"id\":13,\"start_time\":\"8:25\",\"end_time\":\"8:45\",\"date\":\"2021-02-01\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-01\",\"teacher_id\":\"7\",\"subject_id\":4}', '2021-02-01 06:22:57', '2021-02-01 06:22:57'),
(236, 'App\\LecturesFile', 13, NULL, NULL, 38, 'save', 'Mona Uploaded new file named IMG-20210201-WA0036 (original).jpg in LecturesFile at 21-02-01 08:24:25', NULL, 'LecturesFile', '2021-02-01 06:24:25', '2021-02-01 06:24:25'),
(237, 'Lecture', 13, NULL, NULL, 38, 'update', 'Mona updated lecture record', '{\"id\":13,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"08:25:00\",\"end_time\":\"08:45:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:22:57\",\"updated_at\":\"2021-02-01 08:22:57\",\"subject_id\":\"4\"}', '{\"id\":13,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"Test 2\",\"start_time\":\"8:25\",\"end_time\":\"8:45\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:22:57\",\"updated_at\":\"2021-02-01 08:22:57\",\"subject_id\":\"4\"}', '2021-02-01 06:24:30', '2021-02-01 06:24:30'),
(238, 'Lecture', 13, NULL, NULL, 38, 'update', 'Mona updated lecture record', '{\"id\":13,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"Test 2\",\"start_time\":\"08:25:00\",\"end_time\":\"08:45:00\",\"date\":\"2021-02-01\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:22:57\",\"updated_at\":\"2021-02-01 08:24:30\",\"subject_id\":\"4\"}', '{\"id\":13,\"name\":\"lecture 2021-02-01\",\"group_id\":\"3\",\"topic\":\"Test 2\",\"start_time\":\"08:25:00\",\"end_time\":\"08:45:00\",\"date\":\"2021-02-01\",\"homework_id\":\"17\",\"quiz_id\":\"10\",\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:22:57\",\"updated_at\":\"2021-02-01 08:24:30\",\"subject_id\":\"4\"}', '2021-02-01 06:32:06', '2021-02-01 06:32:06'),
(239, 'HonorBoard', 14, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(240, 'HonorBoard', 15, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(241, 'HonorBoard', 16, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 06:32:28', '2021-02-01 06:32:28'),
(242, 'HonorBoard', 17, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 06:32:42', '2021-02-01 06:32:42'),
(243, 'HonorBoard', 18, NULL, NULL, 38, 'init', 'Mona initialized HonorBoard record', '[]', '[]', '2021-02-01 06:32:43', '2021-02-01 06:32:43'),
(244, 'Exam', 2, NULL, NULL, 38, 'init', 'Mona initialized Exam record', '[]', '[]', '2021-02-01 06:33:08', '2021-02-01 06:33:08'),
(245, 'Slider', 2, NULL, NULL, 38, 'save', 'Mona saved Exam record', '[]', '{\"id\":2,\"name\":\"Exam63737\",\"date\":\"2021-02-01\",\"from_time\":\"8:45\",\"to_time\":\"9:00\",\"assessment_id\":\"2\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":[\"32\"],\"school_year_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 08:33:08\",\"updated_at\":\"2021-02-01 08:33:08\",\"subject_id\":4,\"teacher_id\":\"7\"}', '2021-02-01 06:34:13', '2021-02-01 06:34:13'),
(246, 'Subject', 10, NULL, NULL, 1, 'init', 'Super initialized Subject record', '[]', '[]', '2021-02-01 10:43:38', '2021-02-01 10:43:38'),
(247, 'App\\Subject', 10, NULL, NULL, 1, 'save', 'Super Uploaded new file_id named Image20210118120819 (original).png in Subject at 21-02-01 12:43:48', NULL, 'Subject', '2021-02-01 10:43:48', '2021-02-01 10:43:48'),
(248, 'User', 43, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-02-02 10:21:17', '2021-02-02 10:21:17'),
(249, 'User', 43, NULL, NULL, 7, 'save', 'Ibrahim saved user record', '[]', '{\"id\":43,\"name\":\"Mahytab\",\"email\":\"crowenofmyheart81093@gmail.com\",\"password\":null,\"token\":\"HexIGzRuWurGveWazC21ah3NAQGWEWzo\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[]}', '2021-02-02 10:22:09', '2021-02-02 10:22:09'),
(250, 'Group', 2, NULL, NULL, 19, 'update', 'menna updated group record', '{\"id\":2,\"name\":\"A\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"10\",\"description\":\"math for senior 3\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 16:52:33\",\"updated_at\":\"2021-01-30 16:53:05\"}', '{\"id\":2,\"name\":\"A\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":\"math for senior 3\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-30 16:52:33\",\"updated_at\":\"2021-01-30 16:53:05\"}', '2021-02-02 18:59:06', '2021-02-02 18:59:06'),
(251, 'Group', 10, NULL, NULL, 19, 'init', 'menna initialized Group record', '[]', '{\"teacher_id\":\"11\",\"subject_id\":8,\"grade_id\":3}', '2021-02-02 18:59:14', '2021-02-02 18:59:14'),
(252, 'Group', 10, NULL, NULL, 19, 'save', 'menna saved group record', '[]', '{\"id\":10,\"name\":\"\\u062c\\u0631\\u0648\\u0628 \\u0627\\u0644\\u0641\\u0631\\u0627\\u0634\\u0627\\u062a\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-02 20:59:14\",\"updated_at\":\"2021-02-02 20:59:14\"}', '2021-02-02 19:00:24', '2021-02-02 19:00:24'),
(253, 'HonorBoard', 19, NULL, NULL, 19, 'init', 'menna initialized HonorBoard record', '[]', '[]', '2021-02-02 20:40:00', '2021-02-02 20:40:00'),
(254, 'Group', 11, NULL, NULL, 43, 'init', 'Mahytab initialized Group record', '[]', '{\"teacher_id\":\"7\",\"subject_id\":4,\"grade_id\":3}', '2021-02-06 10:08:54', '2021-02-06 10:08:54'),
(255, 'Group', 11, NULL, NULL, 43, 'save', 'Mahytab saved group record', '[]', '{\"id\":11,\"name\":\"mahy\",\"teacher_id\":\"7\",\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"60\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-06 12:08:54\",\"updated_at\":\"2021-02-06 12:08:54\"}', '2021-02-06 10:10:08', '2021-02-06 10:10:08'),
(256, 'Lecture', 14, NULL, NULL, 43, 'init', 'Mahytab initialized Lecture record', '[]', '[]', '2021-02-06 10:15:19', '2021-02-06 10:15:19'),
(257, 'Lecture', 14, NULL, NULL, 43, 'save', 'Mahytab saved lecture record', '[]', '{\"updated_at\":\"2021-02-06 12:15:19\",\"created_at\":\"2021-02-06 12:15:19\",\"id\":14,\"start_time\":\"12:15\",\"end_time\":\"16:15\",\"date\":\"2021-02-08\",\"group_id\":\"11\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":\"7\",\"subject_id\":4}', '2021-02-06 10:15:19', '2021-02-06 10:15:19'),
(258, 'LectureRescheduleRequest', 1, NULL, NULL, 43, 'update', 'Mahytab updated lecture_reschedule_request record', '{\"id\":1,\"student_id\":\"33\",\"from_lecture_id\":\"3\",\"to_lecture_id\":\"9\",\"request_status_id\":\"1\",\"subject_id\":\"4\",\"teacher_id\":\"7\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:34\",\"updated_at\":\"2021-02-01 03:10:26\",\"reason\":null,\"original_lecture_id\":null}', '{\"id\":1,\"student_id\":\"33\",\"from_lecture_id\":\"3\",\"to_lecture_id\":\"9\",\"request_status_id\":\"3\",\"subject_id\":\"4\",\"teacher_id\":\"7\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-01 03:09:34\",\"updated_at\":\"2021-02-01 03:10:26\",\"reason\":null,\"original_lecture_id\":null}', '2021-02-06 10:35:58', '2021-02-06 10:35:58'),
(259, 'User', 44, NULL, NULL, 44, 'init', ' initialized User record', '[]', '{\"id\":44}', '2021-02-07 20:11:11', '2021-02-07 20:11:11'),
(260, 'App\\User', 33, NULL, NULL, 17, 'save', 'kawthar Uploaded new file_id named 1612729705065-1839250418 (original).jpg in User at 21-02-07 22:29:05', NULL, 'User', '2021-02-07 20:29:05', '2021-02-07 20:29:05'),
(261, 'User', 45, NULL, NULL, 45, 'init', ' initialized User record', '[]', '{\"id\":45}', '2021-02-07 20:29:43', '2021-02-07 20:29:43'),
(262, 'User', 36, NULL, NULL, 11, 'update', 'Shady Alaa updated user record', '{\"id\":36,\"name\":\"Rewan\",\"email\":\"Rewanahmed095@gmail.com\",\"password\":\"$2y$10$Id9\\/JAE4Enwckfgs5cXsuuIdoJJzqLgAJNKeKzd4i.8vaKrNWQmuO\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"11\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":36,\"name\":\"Rewan\",\"email\":\"Rewanahmed095@gmail.com\",\"password\":\"$2y$10$Id9\\/JAE4Enwckfgs5cXsuuIdoJJzqLgAJNKeKzd4i.8vaKrNWQmuO\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"1\"}},{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"2\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"36\",\"permission_id\":\"6\"}}]}', '2021-02-07 20:48:07', '2021-02-07 20:48:07');
INSERT INTO `logs` (`id`, `model_name`, `data_id`, `model_parent`, `parent_id`, `user_id`, `operation`, `description`, `record_before`, `record_after`, `created_at`, `updated_at`) VALUES
(263, 'User', 38, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":38,\"name\":\"Mona\",\"email\":\"monahussein36@gmail.com\",\"password\":\"$2y$10$cK\\/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"Mai.hamdy.mohammed@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"Mai01207622011\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"2\"}},{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"1\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"38\",\"permission_id\":\"6\"}}]}', '2021-02-07 20:49:35', '2021-02-07 20:49:35'),
(264, 'User', 33, NULL, NULL, 7, 'update', 'Ibrahim saved user record', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"30\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"30\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 20:51:09', '2021-02-07 20:51:09'),
(265, 'User', 46, NULL, NULL, 46, 'init', ' initialized User record', '[]', '{\"id\":46}', '2021-02-07 20:54:32', '2021-02-07 20:54:32'),
(266, 'App\\User', 46, NULL, NULL, 46, 'save', ' Uploaded new file_id named Screenshot_2021-02-03-20-02-20-63_78dd88300ed9e5606823a617693d1608 (original).jpg in User at 21-02-07 22:58:12', NULL, 'User', '2021-02-07 20:58:12', '2021-02-07 20:58:12'),
(267, 'User', 46, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 20:58:37', '2021-02-07 20:58:37'),
(268, 'User', 46, NULL, NULL, 46, 'update', 'Engy Assigned to group', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":null,\"token\":\"kx5t9nO7JkEfuPMNJGlSm5KdbUcnUV8I\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":\"$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 21:00:10', '2021-02-07 21:00:10'),
(269, 'User', 46, NULL, NULL, 46, 'update', 'Engy Assigned to group', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":\"$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty\",\"token\":\"trq4j4KmtI20TKwype3TingGt6cfQJwV\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":\"$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty\",\"token\":\"trq4j4KmtI20TKwype3TingGt6cfQJwV\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 21:07:22', '2021-02-07 21:07:22'),
(270, 'User', 47, NULL, NULL, 38, 'init', 'Mona initialized User record', '[]', '{\"id\":47}', '2021-02-07 21:08:30', '2021-02-07 21:08:30'),
(271, 'User', 33, NULL, NULL, 38, 'update', 'Mona saved user record', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"30\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":33,\"name\":\"Ebrahim Ahmed\",\"email\":\"ebrahimahmed10@gmail.com\",\"password\":\"$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu\",\"token\":\"hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed100@gmail.com\",\"phone_number\":\"01555692979\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01555692979\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasria\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"30\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ebrahimahmed10@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 21:14:04', '2021-02-07 21:14:04'),
(272, 'News', 7, NULL, NULL, 7, 'init', 'Ibrahim initialized News record', '[]', '[]', '2021-02-07 21:16:21', '2021-02-07 21:16:21'),
(273, 'App\\News', 7, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file_id named images (11) (original).jpeg in News at 21-02-07 23:17:37', NULL, 'News', '2021-02-07 21:17:37', '2021-02-07 21:17:37'),
(274, 'News', 7, NULL, NULL, 7, 'save', 'Ibrahim saved news record', '[]', '{\"id\":7,\"teacher_id\":7,\"title\":\"Monday\",\"description\":\"call this number   01222509863\",\"admin_show\":\"0\",\"file_id\":\"32\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-07 23:17:37\"}', '2021-02-07 21:17:57', '2021-02-07 21:17:57'),
(275, 'User', 48, NULL, NULL, 48, 'init', ' initialized User record', '[]', '{\"id\":48}', '2021-02-07 21:18:49', '2021-02-07 21:18:49'),
(276, 'User', 49, NULL, NULL, 48, 'init', ' initialized User record', '[]', '{\"id\":49}', '2021-02-07 21:19:12', '2021-02-07 21:19:12'),
(277, 'User', 50, NULL, NULL, 50, 'init', ' initialized User record', '[]', '{\"id\":50}', '2021-02-07 21:21:48', '2021-02-07 21:21:48'),
(278, 'User', 51, NULL, NULL, 51, 'init', ' initialized User record', '[]', '{\"id\":51}', '2021-02-07 21:21:53', '2021-02-07 21:21:53'),
(279, 'User', 35, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":35,\"name\":\"Rewan Ahmed\",\"email\":\"rewan6632@gmail.com\",\"password\":null,\"token\":\"B92oapKRIglFeYEYhsK3E86Tu6hH0BcI\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":35,\"name\":\"Rewan Ahmed\",\"email\":\"rewan663200@gmail.com\",\"password\":null,\"token\":\"B92oapKRIglFeYEYhsK3E86Tu6hH0BcI\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"2\",\"parents_email\":null,\"phone_number\":\"Mai.hamdy.mohammed@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"Mai01207622011\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"1\"}},{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"2\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"4\"}},{\"id\":5,\"name\":\"Write Notes\",\"admin_show\":\"1\",\"short_name\":\"write_notes\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"5\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"35\",\"permission_id\":\"6\"}}]}', '2021-02-07 21:27:38', '2021-02-07 21:27:38'),
(280, 'App\\User', 50, NULL, NULL, 50, 'save', ' Uploaded new file_id named 109494423_279054100094075_8401995356354551854_o (original).jpg in User at 21-02-07 23:29:25', NULL, 'User', '2021-02-07 21:29:25', '2021-02-07 21:29:25'),
(281, 'User', 17, NULL, NULL, 7, 'update', 'Ibrahim updated user record', '{\"id\":17,\"name\":\"kawthar\",\"email\":\"alkawther1994@gmail.com\",\"password\":\"$2y$10$dct5gsfBF\\/ocCLyCCm2SA.9wM4GL9agnzIto98.euZ2v8DsDzpPxW\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":null,\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"7\",\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":17,\"name\":\"kawthar\",\"email\":\"alkawther1994@gmail.com\",\"password\":\"$2y$10$dct5gsfBF\\/ocCLyCCm2SA.9wM4GL9agnzIto98.euZ2v8DsDzpPxW\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"Mai.hamdy.mohammed@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":7,\"position\":null,\"zoom_account\":null,\"zoom_password\":\"Mai01207622011\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":1,\"name\":\"Students Management\",\"admin_show\":\"1\",\"short_name\":\"students_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"17\",\"permission_id\":\"1\"}},{\"id\":3,\"name\":\"Edit Schedules\",\"admin_show\":\"1\",\"short_name\":\"edit_schedules\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"17\",\"permission_id\":\"3\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"17\",\"permission_id\":\"4\"}}]}', '2021-02-07 21:29:52', '2021-02-07 21:29:52'),
(282, 'User', 50, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":50,\"name\":\"rewan\",\"email\":\"rewan6632@gmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"rewanahmed@gmail.com\",\"phone_number\":\"01285139853\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"01285139853\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100039684604254\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"33\",\"city\":\"alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"rewan6632@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 21:30:14', '2021-02-07 21:30:14'),
(283, 'User', 52, NULL, NULL, 52, 'init', ' initialized User record', '[]', '{\"id\":52}', '2021-02-07 21:31:04', '2021-02-07 21:31:04'),
(284, 'User', 19, NULL, NULL, 11, 'update', 'Shady Alaa updated user record', '{\"id\":19,\"name\":\"menna\",\"email\":\"mennahassanelfawal.me@gmail.com\",\"password\":\"$2y$10$fgM5AhwQCDpBAgr3cjwQXO7Nq5H9SeD60KHWLy47LYHX89ts8ZLD2\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"mennahassanelfawal.me@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":\"11\",\"position\":null,\"zoom_account\":null,\"zoom_password\":\"123456\",\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":19,\"name\":\"menna\",\"email\":\"mennahassanelfawal.me@gmail.com\",\"password\":\"$2y$10$fgM5AhwQCDpBAgr3cjwQXO7Nq5H9SeD60KHWLy47LYHX89ts8ZLD2\",\"token\":\"0\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":\"1\",\"parents_email\":null,\"phone_number\":\"mennahassanelfawal.me@gmail.com\",\"parents_phone_number\":null,\"whatsapp_number\":null,\"facebook_url\":null,\"school\":null,\"alt_phone_number\":null,\"file_id\":null,\"city\":null,\"gender_id\":null,\"teacher_id\":11,\"position\":null,\"zoom_account\":null,\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null,\"permissions\":[{\"id\":2,\"name\":\"Edit Honor Board\",\"admin_show\":\"1\",\"short_name\":\"edit_honor_board\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"19\",\"permission_id\":\"2\"}},{\"id\":4,\"name\":\"Assessment Management\",\"admin_show\":\"1\",\"short_name\":\"assessment_management\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"19\",\"permission_id\":\"4\"}},{\"id\":6,\"name\":\"Create Groups\",\"admin_show\":\"1\",\"short_name\":\"create_groups\",\"stuff_order\":\"0\",\"created_at\":\"2021-01-28 16:09:38\",\"updated_at\":\"2021-01-28 16:09:38\",\"pivot\":{\"assistant_id\":\"19\",\"permission_id\":\"6\"}}]}', '2021-02-07 21:33:11', '2021-02-07 21:33:11'),
(285, 'Group', 12, NULL, NULL, 3, 'init', 'Mona initialized Group record', '[]', '{\"teacher_id\":3,\"subject_id\":2,\"grade_id\":1}', '2021-02-07 21:34:29', '2021-02-07 21:34:29'),
(286, 'Group', 12, NULL, NULL, 3, 'save', 'Mona saved group record', '[]', '{\"id\":12,\"name\":\"Biology\",\"teacher_id\":3,\"subject_id\":\"2\",\"school_year_id\":\"2\",\"grade_id\":\"1\",\"max_students\":\"200\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:34:29\",\"updated_at\":\"2021-02-07 23:34:29\"}', '2021-02-07 21:34:47', '2021-02-07 21:34:47'),
(287, 'User', 50, NULL, NULL, 50, 'update', 'rewan Assigned to group', '{\"id\":50,\"name\":\"rewan\",\"email\":\"rewan6632@gmail.com\",\"password\":null,\"token\":\"Y3EsXxBAhV7KGwJPnAJEg0vzGkNNTpAv\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"rewanahmed@gmail.com\",\"phone_number\":\"01285139853\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"01285139853\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100039684604254\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"33\",\"city\":\"alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"rewan6632@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":50,\"name\":\"rewan\",\"email\":\"rewan6632@gmail.com\",\"password\":\"$2y$10$u1wcmyo7zIa8ljelO3z1vOMET0gDyrlk30u8j8XE7SoON8N77JRbu\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"rewanahmed@gmail.com\",\"phone_number\":\"01285139853\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"01285139853\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100039684604254\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"33\",\"city\":\"alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"rewan6632@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 21:38:25', '2021-02-07 21:38:25'),
(288, 'News', 7, NULL, NULL, 7, 'update', 'Ibrahim updated news record', '{\"id\":7,\"teacher_id\":\"7\",\"title\":\"Monday\",\"description\":\"call this number   01222509863\",\"admin_show\":\"1\",\"file_id\":\"32\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-07 23:17:57\"}', '{\"id\":7,\"teacher_id\":7,\"title\":\"Monday\",\"description\":\"call this number   01222509863\\n\\\\hv\",\"admin_show\":\"1\",\"file_id\":\"32\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-07 23:17:57\"}', '2021-02-07 21:58:13', '2021-02-07 21:58:13'),
(289, 'News', 8, NULL, NULL, 11, 'init', 'Shady Alaa initialized News record', '[]', '[]', '2021-02-07 22:05:09', '2021-02-07 22:05:09'),
(290, 'App\\News', 7, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file_id named pngtree-golden-flash-graduation-cap-invitation-letter-for-graduation-party-in-2019-image_138638 (original).png in News at 21-02-08 00:05:09', NULL, 'News', '2021-02-07 22:05:09', '2021-02-07 22:05:09'),
(291, 'App\\News', 8, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named Capture6 (original).JPG in News at 21-02-08 00:05:27', NULL, 'News', '2021-02-07 22:05:27', '2021-02-07 22:05:27'),
(292, 'News', 8, NULL, NULL, 11, 'save', 'Shady Alaa saved news record', '[]', '{\"id\":8,\"teacher_id\":11,\"title\":\"shady\",\"description\":\"shady\",\"admin_show\":\"0\",\"file_id\":\"35\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:05:09\",\"updated_at\":\"2021-02-08 00:05:27\"}', '2021-02-07 22:05:38', '2021-02-07 22:05:38'),
(293, 'App\\News', 8, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file_id named Capture1 (original).JPG in News at 21-02-08 00:05:55', NULL, 'News', '2021-02-07 22:05:55', '2021-02-07 22:05:55'),
(294, 'News', 8, NULL, NULL, 11, 'update', 'Shady Alaa updated news record', '{\"id\":8,\"teacher_id\":\"11\",\"title\":\"shady\",\"description\":\"shady\",\"admin_show\":\"1\",\"file_id\":\"36\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:05:09\",\"updated_at\":\"2021-02-08 00:05:55\"}', '{\"id\":8,\"teacher_id\":11,\"title\":\"shady\",\"description\":\"shady\",\"admin_show\":\"1\",\"file_id\":\"36\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:05:09\",\"updated_at\":\"2021-02-08 00:05:55\"}', '2021-02-07 22:05:59', '2021-02-07 22:05:59'),
(295, 'News', 7, NULL, NULL, 7, 'update', 'Ibrahim updated news record', '{\"id\":7,\"teacher_id\":\"7\",\"title\":\"Monday\",\"description\":\"call this number   01222509863\\n\\\\hv\",\"admin_show\":\"1\",\"file_id\":\"34\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-08 00:05:09\"}', '{\"id\":7,\"teacher_id\":7,\"title\":\"Monday\",\"description\":\"call this number   01222509863\\n\\\\hv\",\"admin_show\":\"1\",\"file_id\":\"34\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-08 00:05:09\"}', '2021-02-07 22:06:12', '2021-02-07 22:06:12'),
(296, 'News', 7, NULL, NULL, 7, 'delete', 'Ibrahim deleted News record', '{\"id\":7,\"teacher_id\":\"7\",\"title\":\"Monday\",\"description\":\"call this number   01222509863\\n\\\\hv\",\"admin_show\":\"1\",\"file_id\":\"34\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-07 23:16:21\",\"updated_at\":\"2021-02-08 00:05:09\"}', '[]', '2021-02-07 22:07:00', '2021-02-07 22:07:00'),
(297, 'News', 9, NULL, NULL, 7, 'init', 'Ibrahim initialized News record', '[]', '[]', '2021-02-07 22:08:15', '2021-02-07 22:08:15'),
(298, 'User', 53, NULL, NULL, 53, 'init', ' initialized User record', '[]', '{\"id\":53}', '2021-02-07 22:10:59', '2021-02-07 22:10:59'),
(299, 'Lecture', 15, NULL, NULL, 7, 'init', 'Ibrahim initialized Lecture record', '[]', '[]', '2021-02-07 22:25:54', '2021-02-07 22:25:54'),
(300, 'Lecture', 15, NULL, NULL, 7, 'save', 'Ibrahim saved lecture record', '[]', '{\"updated_at\":\"2021-02-08 00:25:54\",\"created_at\":\"2021-02-08 00:25:54\",\"id\":15,\"start_time\":\"0:27\",\"end_time\":\"0:35\",\"date\":\"2021-02-08\",\"group_id\":\"3\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":7,\"subject_id\":4}', '2021-02-07 22:25:54', '2021-02-07 22:25:54'),
(301, 'Lecture', 15, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":15,\"name\":\"lecture 2021-02-08\",\"group_id\":\"3\",\"topic\":null,\"start_time\":\"00:27:00\",\"end_time\":\"00:35:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:25:54\",\"updated_at\":\"2021-02-08 00:25:54\",\"subject_id\":\"4\"}', '{\"id\":15,\"name\":\"lecture 2021-02-08\",\"group_id\":\"3\",\"topic\":\"test 2\",\"start_time\":\"0:27\",\"end_time\":\"0:35\",\"date\":\"2021-02-08\",\"homework_id\":\"17\",\"quiz_id\":\"10\",\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:25:54\",\"updated_at\":\"2021-02-08 00:25:54\",\"subject_id\":\"4\"}', '2021-02-07 22:26:33', '2021-02-07 22:26:33'),
(302, 'Lecture', 16, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-07 22:29:37', '2021-02-07 22:29:37'),
(303, 'Lecture', 16, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-08 00:29:37\",\"created_at\":\"2021-02-08 00:29:37\",\"id\":16,\"start_time\":\"0:30\",\"end_time\":\"2:30\",\"date\":\"2021-02-08\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-07 22:29:37', '2021-02-07 22:29:37'),
(304, 'Lecture', 16, NULL, NULL, 11, 'delete', 'Shady Alaa deleted Lecture record', '{\"id\":16,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"00:30:00\",\"end_time\":\"02:30:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:29:37\",\"updated_at\":\"2021-02-08 00:29:37\",\"subject_id\":\"8\"}', '[]', '2021-02-07 22:31:25', '2021-02-07 22:31:25'),
(305, 'Lecture', 17, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-07 22:31:43', '2021-02-07 22:31:43'),
(306, 'Lecture', 17, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-08 00:31:43\",\"created_at\":\"2021-02-08 00:31:43\",\"id\":17,\"start_time\":\"0:35\",\"end_time\":\"0:50\",\"date\":\"2021-02-08\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-07 22:31:43', '2021-02-07 22:31:43'),
(307, 'Lecture', 15, NULL, NULL, 7, 'update', 'Ibrahim updated lecture record', '{\"id\":15,\"name\":\"lecture 2021-02-08\",\"group_id\":\"3\",\"topic\":\"test 2\",\"start_time\":\"00:27:00\",\"end_time\":\"00:35:00\",\"date\":\"2021-02-08\",\"homework_id\":\"17\",\"quiz_id\":\"10\",\"payment_terms\":null,\"teacher_id\":\"7\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:25:54\",\"updated_at\":\"2021-02-08 00:26:33\",\"subject_id\":\"4\"}', '{\"id\":15,\"name\":\"lecture 2021-02-08\",\"group_id\":\"3\",\"topic\":\"test 2\",\"start_time\":\"00:27:00\",\"end_time\":\"00:35:00\",\"date\":\"2021-02-08\",\"homework_id\":\"17\",\"quiz_id\":\"10\",\"payment_terms\":null,\"teacher_id\":7,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:25:54\",\"updated_at\":\"2021-02-08 00:26:33\",\"subject_id\":\"4\"}', '2021-02-07 22:32:48', '2021-02-07 22:32:48'),
(308, 'App\\LecturesFile', 15, NULL, NULL, 7, 'save', 'Ibrahim Uploaded new file named 1 - Copy (original).png in LecturesFile at 21-02-08 00:32:53', NULL, 'LecturesFile', '2021-02-07 22:32:53', '2021-02-07 22:32:53'),
(309, 'StudentTransaction', 17, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"46\"}', '2021-02-07 22:36:30', '2021-02-07 22:36:30'),
(310, 'StudentTransaction', 17, NULL, NULL, 11, 'save', 'Shady Alaa saved student_transaction record', '[]', '{\"id\":17,\"created_by_user_id\":null,\"student_id\":\"46\",\"amount\":null,\"number_of_lectures\":\"4\",\"subject_id\":8,\"teacher_id\":11,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:36:30\",\"updated_at\":\"2021-02-08 00:36:30\",\"balance\":4}', '2021-02-07 22:36:37', '2021-02-07 22:36:37'),
(311, 'LecturePayment', 5, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":17}', '2021-02-07 22:41:04', '2021-02-07 22:41:04'),
(312, 'LecturePayment', 5, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":17,\"updated_at\":\"2021-02-08 00:41:04\",\"created_at\":\"2021-02-08 00:41:04\",\"id\":5,\"students_number\":0,\"amount\":0,\"balance\":\"0\"}', '2021-02-07 22:41:04', '2021-02-07 22:41:04'),
(313, 'Lecture', 17, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":17,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"00:35:00\",\"end_time\":\"00:50:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":\"1\",\"teacher_id\":\"11\",\"link\":\"https:\\/\\/us04web.zoom.us\\/j\\/78178821020?pwd=MmgzR2ZHUDNiR2NyT2NCNlluRGttQT09\",\"meeting_id\":\"78178821020\",\"meeting_uuid\":\"GwicQqzDTSG46XfhBptU6A==\",\"start_url\":\"https:\\/\\/us04web.zoom.us\\/s\\/78178821020?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJoRTMzUzNWa05PRWk0UWZqUlNRVnVxN21TQjctRHJsSGpVaDJwZFFHci1FLkFHLml1dmtHNWhrZXRGcVNBUU0yWkRvN2hZaHBFd1JmOVpRdUl0SHpWeElxTDFKeDhVbG1fenM0RmVsNzNJSVZycmZQVk9BUGtQNEpyQURCb1VPLkY3YTc2SGtoTWNEV3liZTJRT0VtNGcucUZWWVpZdjMtZkUyN3A5RyIsImV4cCI6MTYxMjc0NDQ5NSwiaWF0IjoxNjEyNzM3Mjk1LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.g3dLpzrfPJhCd39X5vDq7Sftux_HbqV9AsxB9nUjVjY\",\"video_link\":null,\"is_active\":\"0\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:31:43\",\"updated_at\":\"2021-02-08 00:41:04\",\"subject_id\":\"8\"}', '{\"id\":17,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":\"12\",\"start_time\":\"00:35:00\",\"end_time\":\"00:50:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":\"1\",\"teacher_id\":11,\"link\":\"https:\\/\\/us04web.zoom.us\\/j\\/78178821020?pwd=MmgzR2ZHUDNiR2NyT2NCNlluRGttQT09\",\"meeting_id\":\"78178821020\",\"meeting_uuid\":\"GwicQqzDTSG46XfhBptU6A==\",\"start_url\":\"https:\\/\\/us04web.zoom.us\\/s\\/78178821020?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI5T1gwUkk1T1FLS0J3Q0ctb3dwN2t3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czA0IiwiY2x0IjowLCJzdGsiOiJoRTMzUzNWa05PRWk0UWZqUlNRVnVxN21TQjctRHJsSGpVaDJwZFFHci1FLkFHLml1dmtHNWhrZXRGcVNBUU0yWkRvN2hZaHBFd1JmOVpRdUl0SHpWeElxTDFKeDhVbG1fenM0RmVsNzNJSVZycmZQVk9BUGtQNEpyQURCb1VPLkY3YTc2SGtoTWNEV3liZTJRT0VtNGcucUZWWVpZdjMtZkUyN3A5RyIsImV4cCI6MTYxMjc0NDQ5NSwiaWF0IjoxNjEyNzM3Mjk1LCJhaWQiOiJrOUdNWEEwcVNsR2JTRHV4UGxCbjRnIiwiY2lkIjoiIn0.g3dLpzrfPJhCd39X5vDq7Sftux_HbqV9AsxB9nUjVjY\",\"video_link\":null,\"is_active\":\"0\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:31:43\",\"updated_at\":\"2021-02-08 00:41:04\",\"subject_id\":\"8\"}', '2021-02-07 22:42:30', '2021-02-07 22:42:30'),
(314, 'Lecture', 18, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-07 22:47:43', '2021-02-07 22:47:43'),
(315, 'Lecture', 18, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-08 00:47:43\",\"created_at\":\"2021-02-08 00:47:43\",\"id\":18,\"start_time\":\"0:50\",\"end_time\":\"1:10\",\"date\":\"2021-02-08\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-07 22:47:43', '2021-02-07 22:47:43'),
(316, 'Lecture', 18, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":18,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"00:50:00\",\"end_time\":\"01:10:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:47:43\",\"updated_at\":\"2021-02-08 00:47:43\",\"subject_id\":\"8\"}', '{\"id\":18,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":\"50\",\"start_time\":\"0:50\",\"end_time\":\"1:10\",\"date\":\"2021-02-08\",\"homework_id\":\"3\",\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:47:43\",\"updated_at\":\"2021-02-08 00:47:43\",\"subject_id\":\"8\"}', '2021-02-07 22:48:12', '2021-02-07 22:48:12'),
(317, 'Lecture', 18, NULL, NULL, 11, 'delete', 'Shady Alaa deleted Lecture record', '{\"id\":18,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":\"50\",\"start_time\":\"00:50:00\",\"end_time\":\"01:10:00\",\"date\":\"2021-02-08\",\"homework_id\":\"3\",\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:47:43\",\"updated_at\":\"2021-02-08 00:48:12\",\"subject_id\":\"8\"}', '[]', '2021-02-07 22:50:31', '2021-02-07 22:50:31'),
(318, 'Lecture', 19, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-07 22:50:54', '2021-02-07 22:50:54'),
(319, 'Lecture', 19, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-08 00:50:54\",\"created_at\":\"2021-02-08 00:50:54\",\"id\":19,\"start_time\":\"0:52\",\"end_time\":\"1:30\",\"date\":\"2021-02-08\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-08\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-07 22:50:54', '2021-02-07 22:50:54'),
(320, 'Lecture', 19, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":19,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"00:52:00\",\"end_time\":\"01:30:00\",\"date\":\"2021-02-08\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:50:54\",\"updated_at\":\"2021-02-08 00:50:54\",\"subject_id\":\"8\"}', '{\"id\":19,\"name\":\"lecture 2021-02-08\",\"group_id\":\"2\",\"topic\":\"50\",\"start_time\":\"0:52\",\"end_time\":\"1:30\",\"date\":\"2021-02-08\",\"homework_id\":\"3\",\"quiz_id\":\"28\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-08 00:50:54\",\"updated_at\":\"2021-02-08 00:50:54\",\"subject_id\":\"8\"}', '2021-02-07 22:51:12', '2021-02-07 22:51:12'),
(321, 'LecturePayment', 6, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":19}', '2021-02-07 22:55:27', '2021-02-07 22:55:27'),
(322, 'LecturePayment', 6, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":19,\"updated_at\":\"2021-02-08 00:55:27\",\"created_at\":\"2021-02-08 00:55:27\",\"id\":6,\"students_number\":0,\"amount\":0,\"balance\":\"0\"}', '2021-02-07 22:55:27', '2021-02-07 22:55:27'),
(323, 'HonorBoard', 20, NULL, NULL, 19, 'init', 'menna initialized HonorBoard record', '[]', '[]', '2021-02-07 23:08:55', '2021-02-07 23:08:55'),
(324, 'HonorBoard', 20, NULL, NULL, 19, 'save', 'menna saved honor_board record', '[]', '{\"id\":20,\"teacher_id\":\"11\",\"subject_id\":null,\"student_id\":46,\"stuff_order\":1,\"admin_show\":\"0\",\"created_at\":\"2021-02-08 01:08:55\",\"updated_at\":\"2021-02-08 01:08:55\"}', '2021-02-07 23:09:05', '2021-02-07 23:09:05'),
(325, 'User', 46, NULL, NULL, 19, 'update', 'menna saved user record', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":\"$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty\",\"token\":\"trq4j4KmtI20TKwype3TingGt6cfQJwV\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":46,\"name\":\"Engy\",\"email\":\"engygaber80@gmail.com\",\"password\":\"$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty\",\"token\":\"trq4j4KmtI20TKwype3TingGt6cfQJwV\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"ebrahimahmed10@gmail.com\",\"phone_number\":\"01221628771\",\"parents_phone_number\":\"01555692974\",\"whatsapp_number\":\"01221628771\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/anoga.elmasri\",\"school\":\"MES\",\"alt_phone_number\":null,\"file_id\":\"31\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"engygaber80@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-07 23:11:07', '2021-02-07 23:11:07'),
(326, 'User', 54, NULL, NULL, 7, 'init', 'Ibrahim initialized User record', '[]', '[]', '2021-02-09 11:12:42', '2021-02-09 11:12:42'),
(327, 'StudentTransaction', 22, NULL, NULL, 7, 'init', 'Ibrahim initialized StudentTransaction record', '[]', '{\"student_id\":\"46\"}', '2021-02-09 11:18:26', '2021-02-09 11:18:26'),
(328, 'StudentTransaction', 22, NULL, NULL, 7, 'save', 'Ibrahim saved student_transaction record', '[]', '{\"id\":22,\"created_by_user_id\":null,\"student_id\":\"46\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":4,\"teacher_id\":7,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 13:18:26\",\"updated_at\":\"2021-02-09 13:18:26\",\"balance\":5}', '2021-02-09 11:18:40', '2021-02-09 11:18:40'),
(329, 'Group', 10, NULL, NULL, 19, 'update', 'menna updated group record', '{\"id\":10,\"name\":\"\\u062c\\u0631\\u0648\\u0628 \\u0627\\u0644\\u0641\\u0631\\u0627\\u0634\\u0627\\u062a\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-02 20:59:14\",\"updated_at\":\"2021-02-02 21:00:24\"}', '{\"id\":10,\"name\":\"3333\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-02 20:59:14\",\"updated_at\":\"2021-02-02 21:00:24\"}', '2021-02-09 11:24:20', '2021-02-09 11:24:20'),
(330, 'User', 50, NULL, NULL, 50, 'update', 'rewan Assigned to group', '{\"id\":50,\"name\":\"rewan\",\"email\":\"rewan6632@gmail.com\",\"password\":\"$2y$10$u1wcmyo7zIa8ljelO3z1vOMET0gDyrlk30u8j8XE7SoON8N77JRbu\",\"token\":\"NfO0t7FpluSXxhkY6373a4lmKRG5E2cR\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"rewanahmed@gmail.com\",\"phone_number\":\"01285139853\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"01285139853\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100039684604254\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"33\",\"city\":\"alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"rewan6632@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":50,\"name\":\"rewan\",\"email\":\"rewan6632@gmail.com\",\"password\":\"$2y$10$u1wcmyo7zIa8ljelO3z1vOMET0gDyrlk30u8j8XE7SoON8N77JRbu\",\"token\":\"NfO0t7FpluSXxhkY6373a4lmKRG5E2cR\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"rewanahmed@gmail.com\",\"phone_number\":\"01285139853\",\"parents_phone_number\":\"01207622011\",\"whatsapp_number\":\"01285139853\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/profile.php?id=100039684604254\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"33\",\"city\":\"alex\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"rewan6632@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 11:26:39', '2021-02-09 11:26:39'),
(331, 'User', 55, NULL, NULL, 55, 'init', ' initialized User record', '[]', '{\"id\":55}', '2021-02-09 11:50:56', '2021-02-09 11:50:56'),
(332, 'User', 56, NULL, NULL, 56, 'init', ' initialized User record', '[]', '{\"id\":56}', '2021-02-09 11:51:38', '2021-02-09 11:51:38'),
(333, 'User', 57, NULL, NULL, 57, 'init', ' initialized User record', '[]', '{\"id\":57}', '2021-02-09 11:51:39', '2021-02-09 11:51:39'),
(334, 'User', 58, NULL, NULL, 58, 'init', ' initialized User record', '[]', '{\"id\":58}', '2021-02-09 11:51:39', '2021-02-09 11:51:39'),
(335, 'User', 59, NULL, NULL, 59, 'init', ' initialized User record', '[]', '{\"id\":59}', '2021-02-09 11:51:40', '2021-02-09 11:51:40'),
(336, 'User', 60, NULL, NULL, 60, 'init', ' initialized User record', '[]', '{\"id\":60}', '2021-02-09 11:51:41', '2021-02-09 11:51:41'),
(337, 'App\\User', 55, NULL, NULL, 55, 'save', ' Uploaded new file_id named Screenshot_20210209_135200_com.android.documentsui (original).jpg in User at 21-02-09 13:52:16', NULL, 'User', '2021-02-09 11:52:16', '2021-02-09 11:52:16'),
(338, 'User', 61, NULL, NULL, 61, 'init', ' initialized User record', '[]', '{\"id\":61}', '2021-02-09 11:52:26', '2021-02-09 11:52:26'),
(339, 'Exam', 3, NULL, NULL, 19, 'init', 'menna initialized Exam record', '[]', '[]', '2021-02-09 11:53:02', '2021-02-09 11:53:02'),
(340, 'User', 62, NULL, NULL, 36, 'init', 'Rewan initialized User record', '[]', '{\"id\":62}', '2021-02-09 11:53:33', '2021-02-09 11:53:33'),
(341, 'User', 63, NULL, NULL, 36, 'init', 'Rewan initialized User record', '[]', '{\"id\":63}', '2021-02-09 11:53:58', '2021-02-09 11:53:58');
INSERT INTO `logs` (`id`, `model_name`, `data_id`, `model_parent`, `parent_id`, `user_id`, `operation`, `description`, `record_before`, `record_after`, `created_at`, `updated_at`) VALUES
(342, 'Group', 10, NULL, NULL, 19, 'update', 'menna updated group record', '{\"id\":10,\"name\":\"3333\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-02 20:59:14\",\"updated_at\":\"2021-02-09 13:24:20\"}', '{\"id\":10,\"name\":\"D\",\"teacher_id\":\"11\",\"subject_id\":\"8\",\"school_year_id\":\"1\",\"grade_id\":\"3\",\"max_students\":\"15\",\"description\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-02 20:59:14\",\"updated_at\":\"2021-02-09 13:24:20\"}', '2021-02-09 11:55:18', '2021-02-09 11:55:18'),
(343, 'User', 55, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 11:56:57', '2021-02-09 11:56:57'),
(344, 'User', 55, NULL, NULL, 55, 'update', 'Ibrahim yahoo Assigned to group', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":null,\"token\":\"EfxmrtuFfG1BMaGmF2q9Lcjm6pfqLhq1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:00:54', '2021-02-09 12:00:54'),
(345, 'User', 64, NULL, NULL, 61, 'init', ' initialized User record', '[]', '{\"id\":64}', '2021-02-09 12:02:17', '2021-02-09 12:02:17'),
(346, 'Exam', 4, NULL, NULL, 19, 'init', 'menna initialized Exam record', '[]', '[]', '2021-02-09 12:03:15', '2021-02-09 12:03:15'),
(347, 'StudentTransaction', 23, NULL, NULL, 7, 'init', 'Ibrahim initialized StudentTransaction record', '[]', '{\"student_id\":\"55\"}', '2021-02-09 12:04:20', '2021-02-09 12:04:20'),
(348, 'StudentTransaction', 23, NULL, NULL, 7, 'save', 'Ibrahim saved student_transaction record', '[]', '{\"id\":23,\"created_by_user_id\":null,\"student_id\":\"55\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":4,\"teacher_id\":7,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:04:20\",\"updated_at\":\"2021-02-09 14:04:20\",\"balance\":5}', '2021-02-09 12:04:26', '2021-02-09 12:04:26'),
(349, 'Exam', 5, NULL, NULL, 43, 'init', 'Mahytab initialized Exam record', '[]', '[]', '2021-02-09 12:05:38', '2021-02-09 12:05:38'),
(350, 'StudentTransaction', 24, NULL, NULL, 7, 'init', 'Ibrahim initialized StudentTransaction record', '[]', '{\"student_id\":\"50\"}', '2021-02-09 12:05:52', '2021-02-09 12:05:52'),
(351, 'StudentTransaction', 24, NULL, NULL, 7, 'save', 'Ibrahim saved student_transaction record', '[]', '{\"id\":24,\"created_by_user_id\":null,\"student_id\":\"50\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":4,\"teacher_id\":7,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:52\",\"updated_at\":\"2021-02-09 14:05:52\",\"balance\":5}', '2021-02-09 12:06:19', '2021-02-09 12:06:19'),
(352, 'App\\User', 64, NULL, NULL, 61, 'save', ' Uploaded new file_id named FB_IMG_1612816279088 (original).jpg in User at 21-02-09 14:08:37', NULL, 'User', '2021-02-09 12:08:37', '2021-02-09 12:08:37'),
(353, 'User', 64, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":64,\"name\":\"Hanin Kamel\",\"email\":\"kamelhanin770@gmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"kamelhusain@gmail.com\",\"phone_number\":\"01286714267\",\"parents_phone_number\":\"01115660359\",\"whatsapp_number\":\"01286714267\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/hanin.kamel.79\",\"school\":\"Mohamed Zahran language school\",\"alt_phone_number\":null,\"file_id\":\"39\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"kamelhanin770@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:08:44', '2021-02-09 12:08:44'),
(354, 'Slider', 5, NULL, NULL, 43, 'save', 'Mahytab saved Exam record', '[]', '{\"id\":5,\"name\":\"s3 mahy\",\"date\":\"2021-02-10\",\"from_time\":\"14:15\",\"to_time\":\"17:15\",\"assessment_id\":\"2\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:38\",\"updated_at\":\"2021-02-09 14:05:38\",\"subject_id\":4,\"teacher_id\":\"7\"}', '2021-02-09 12:08:45', '2021-02-09 12:08:45'),
(355, 'Group', 13, NULL, NULL, 43, 'init', 'Mahytab initialized Group record', '[]', '{\"teacher_id\":\"7\",\"subject_id\":4,\"grade_id\":3}', '2021-02-09 12:11:34', '2021-02-09 12:11:34'),
(356, 'Group', 14, NULL, NULL, 43, 'init', 'Mahytab initialized Group record', '[]', '{\"teacher_id\":\"7\",\"subject_id\":4,\"grade_id\":3}', '2021-02-09 12:12:05', '2021-02-09 12:12:05'),
(357, 'Group', 14, NULL, NULL, 43, 'save', 'Mahytab saved group record', '[]', '{\"id\":14,\"name\":\"s3 mahy\",\"teacher_id\":\"7\",\"subject_id\":\"4\",\"school_year_id\":\"2\",\"grade_id\":\"3\",\"max_students\":\"70\",\"description\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:12:05\",\"updated_at\":\"2021-02-09 14:12:05\"}', '2021-02-09 12:12:33', '2021-02-09 12:12:33'),
(358, 'User', 65, NULL, NULL, 43, 'init', 'Mahytab initialized User record', '[]', '{\"id\":65}', '2021-02-09 12:13:20', '2021-02-09 12:13:20'),
(359, 'App\\User', 65, NULL, NULL, 43, 'save', 'Mahytab Uploaded new file_id named 10441472_733085746748573_8223240050199308287_n (original).jpg in User at 21-02-09 14:14:46', NULL, 'User', '2021-02-09 12:14:46', '2021-02-09 12:14:46'),
(360, 'User', 55, NULL, NULL, 11, 'update', 'Shady Alaa saved user record', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:17:10', '2021-02-09 12:17:10'),
(361, 'User', 55, NULL, NULL, 11, 'update', 'Shady Alaa saved user record', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:17:39', '2021-02-09 12:17:39'),
(362, 'User', 55, NULL, NULL, 55, 'update', 'Ibrahim yahoo Assigned to group', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":55,\"name\":\"Ibrahim yahoo\",\"email\":\"ibrahimahmed8989@yahoo.com\",\"password\":\"$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG\",\"token\":\"OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"mai@gmail.com\",\"phone_number\":\"01010158151\",\"parents_phone_number\":\"01222509863\",\"whatsapp_number\":\"01010158151\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahmoud.r.salem\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"38\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@yahoo.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:18:09', '2021-02-09 12:18:09'),
(363, 'User', 66, NULL, NULL, 66, 'init', ' initialized User record', '[]', '{\"id\":66}', '2021-02-09 12:18:38', '2021-02-09 12:18:38'),
(364, 'App\\User', 66, NULL, NULL, 66, 'save', ' Uploaded new file_id named Screenshot_20210209_141845_android (original).jpg in User at 21-02-09 14:18:57', NULL, 'User', '2021-02-09 12:18:57', '2021-02-09 12:18:57'),
(365, 'User', 67, NULL, NULL, 67, 'init', ' initialized User record', '[]', '{\"id\":67}', '2021-02-09 12:21:52', '2021-02-09 12:21:52'),
(366, 'User', 66, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":66,\"name\":\"Ibrahim Hotmail\",\"email\":\"ibrahimahmed8989@hotmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Ibrahimahmed8989@gmail.com\",\"phone_number\":\"01555692980\",\"parents_phone_number\":\"01555692978\",\"whatsapp_number\":\"01555692980\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amrelsoliaofficial\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"41\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@hotmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:22:41', '2021-02-09 12:22:41'),
(367, 'User', 66, NULL, NULL, 66, 'update', 'Ibrahim Hotmail Assigned to group', '{\"id\":66,\"name\":\"Ibrahim Hotmail\",\"email\":\"ibrahimahmed8989@hotmail.com\",\"password\":null,\"token\":\"kTIylkH5ZpvpZB6l2rD1xg6QhQF86Zb8\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Ibrahimahmed8989@gmail.com\",\"phone_number\":\"01555692980\",\"parents_phone_number\":\"01555692978\",\"whatsapp_number\":\"01555692980\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amrelsoliaofficial\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"41\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@hotmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":66,\"name\":\"Ibrahim Hotmail\",\"email\":\"ibrahimahmed8989@hotmail.com\",\"password\":\"$2y$10$AMo1wE7vb2AoIJ6RkQK0o.7KqbKAwqyGkiybWZImkdi.xU8DnAoZy\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"Ibrahimahmed8989@gmail.com\",\"phone_number\":\"01555692980\",\"parents_phone_number\":\"01555692978\",\"whatsapp_number\":\"01555692980\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/amrelsoliaofficial\",\"school\":\"Zahran\",\"alt_phone_number\":null,\"file_id\":\"41\",\"city\":\"Alexandria\",\"gender_id\":\"1\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"ibrahimahmed8989@hotmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:25:07', '2021-02-09 12:25:07'),
(368, 'StudentTransaction', 25, NULL, NULL, 19, 'init', 'menna initialized StudentTransaction record', '[]', '{\"student_id\":\"66\"}', '2021-02-09 12:26:39', '2021-02-09 12:26:39'),
(369, 'StudentTransaction', 25, NULL, NULL, 19, 'save', 'menna saved student_transaction record', '[]', '{\"id\":25,\"created_by_user_id\":null,\"student_id\":\"66\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":8,\"teacher_id\":\"11\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:26:39\",\"updated_at\":\"2021-02-09 14:26:39\",\"balance\":5}', '2021-02-09 12:26:48', '2021-02-09 12:26:48'),
(370, 'User', 64, NULL, NULL, 64, 'update', 'Hanin Kamel Assigned to group', '{\"id\":64,\"name\":\"Hanin Kamel\",\"email\":\"kamelhanin770@gmail.com\",\"password\":null,\"token\":\"uRod0ASNZkFK6smEpC7wJTI7HXmuXi8C\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"kamelhusain@gmail.com\",\"phone_number\":\"01286714267\",\"parents_phone_number\":\"01115660359\",\"whatsapp_number\":\"01286714267\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/hanin.kamel.79\",\"school\":\"Mohamed Zahran language school\",\"alt_phone_number\":null,\"file_id\":\"39\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"kamelhanin770@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":64,\"name\":\"Hanin Kamel\",\"email\":\"kamelhanin770@gmail.com\",\"password\":\"$2y$10$p1IVLssIuOEl7i0nuSronugFuSJNAbZbjFT0lhcLYFNgsC0bhTdqu\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"kamelhusain@gmail.com\",\"phone_number\":\"01286714267\",\"parents_phone_number\":\"01115660359\",\"whatsapp_number\":\"01286714267\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/hanin.kamel.79\",\"school\":\"Mohamed Zahran language school\",\"alt_phone_number\":null,\"file_id\":\"39\",\"city\":\"Alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"kamelhanin770@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:27:01', '2021-02-09 12:27:01'),
(371, 'StudentTransaction', 26, NULL, NULL, 19, 'init', 'menna initialized StudentTransaction record', '[]', '{\"student_id\":\"64\"}', '2021-02-09 12:28:12', '2021-02-09 12:28:12'),
(372, 'StudentTransaction', 26, NULL, NULL, 19, 'save', 'menna saved student_transaction record', '[]', '{\"id\":26,\"created_by_user_id\":null,\"student_id\":\"64\",\"amount\":null,\"number_of_lectures\":\"4\",\"subject_id\":8,\"teacher_id\":\"11\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:28:12\",\"updated_at\":\"2021-02-09 14:28:12\",\"balance\":4}', '2021-02-09 12:28:25', '2021-02-09 12:28:25'),
(373, 'Exam', 6, NULL, NULL, 19, 'init', 'menna initialized Exam record', '[]', '[]', '2021-02-09 12:33:19', '2021-02-09 12:33:19'),
(374, 'Slider', 6, NULL, NULL, 19, 'save', 'menna saved Exam record', '[]', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:45\",\"to_time\":\"15:45\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":[\"64\"],\"school_year_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:33:19\",\"subject_id\":8,\"teacher_id\":\"11\"}', '2021-02-09 12:34:55', '2021-02-09 12:34:55'),
(375, 'App\\User', 67, NULL, NULL, 67, 'save', ' Uploaded new file_id named 10441472_733085746748573_8223240050199308287_n (original).jpg in User at 21-02-09 14:37:46', NULL, 'User', '2021-02-09 12:37:46', '2021-02-09 12:37:46'),
(376, 'User', 67, NULL, NULL, NULL, 'save', ' saved user record', '[]', '{\"id\":67,\"name\":\"mahetab gamal gaber\",\"email\":\"mahygamal817@gmail.com\",\"password\":null,\"token\":null,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"gamalmahy2@gmail.com\",\"phone_number\":\"01288998042\",\"parents_phone_number\":\"01021474740\",\"whatsapp_number\":\"01288998042\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahy.gamal.35\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"42\",\"city\":\"alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"mahy.gamal817@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"0\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:40:26', '2021-02-09 12:40:26'),
(377, 'Slider', 6, NULL, NULL, 19, 'update', 'menna updated slider record', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:45:00\",\"to_time\":\"15:45:00\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":\"[\\\"64\\\"]\",\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:34:55\",\"subject_id\":\"8\",\"teacher_id\":\"11\"}', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:50\",\"to_time\":\"15:45\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":[\"64\"],\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:34:55\",\"subject_id\":8,\"teacher_id\":\"11\"}', '2021-02-09 12:47:44', '2021-02-09 12:47:44'),
(378, 'Slider', 6, NULL, NULL, 19, 'update', 'menna updated slider record', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:50:00\",\"to_time\":\"15:45:00\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":\"[\\\"64\\\"]\",\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:47:44\",\"subject_id\":\"8\",\"teacher_id\":\"11\"}', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:55\",\"to_time\":\"15:50\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":[\"64\"],\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:47:44\",\"subject_id\":8,\"teacher_id\":\"11\"}', '2021-02-09 12:50:55', '2021-02-09 12:50:55'),
(379, 'User', 67, NULL, NULL, 67, 'update', 'mahetab gamal gaber Assigned to group', '{\"id\":67,\"name\":\"mahetab gamal gaber\",\"email\":\"mahygamal817@gmail.com\",\"password\":null,\"token\":\"qM39Ynjr0DCBu2fhtNp9sXdQYgdab0Xv\",\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"gamalmahy2@gmail.com\",\"phone_number\":\"01288998042\",\"parents_phone_number\":\"01021474740\",\"whatsapp_number\":\"01288998042\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahy.gamal.35\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"42\",\"city\":\"alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"mahy.gamal817@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '{\"id\":67,\"name\":\"mahetab gamal gaber\",\"email\":\"mahygamal817@gmail.com\",\"password\":\"$2y$10$L1DmqV16ER.guE3F7z1KQeuSlHjvK1CNhv6iRvpaVWW5IvrZjlJa2\",\"token\":0,\"zoom_client_key\":null,\"zoom_client_secret\":null,\"status_id\":null,\"parents_email\":\"gamalmahy2@gmail.com\",\"phone_number\":\"01288998042\",\"parents_phone_number\":\"01021474740\",\"whatsapp_number\":\"01288998042\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/mahy.gamal.35\",\"school\":\"zahran\",\"alt_phone_number\":null,\"file_id\":\"42\",\"city\":\"alexandria\",\"gender_id\":\"2\",\"teacher_id\":null,\"position\":null,\"zoom_account\":\"mahy.gamal817@gmail.com\",\"zoom_password\":null,\"payment_terms\":null,\"teacher_balance\":null,\"description\":null,\"student_balance\":null,\"admin_show\":\"1\",\"stuff_order\":\"0\",\"remember_token\":null,\"created_at\":null,\"updated_at\":null}', '2021-02-09 12:55:12', '2021-02-09 12:55:12'),
(380, 'Slider', 6, NULL, NULL, 19, 'update', 'menna updated slider record', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:55:00\",\"to_time\":\"15:50:00\",\"assessment_id\":\"1\",\"all_students\":\"0\",\"specific_groups\":\"0\",\"specific_students\":\"1\",\"items_ids\":\"[\\\"64\\\"]\",\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:50:55\",\"subject_id\":\"8\",\"teacher_id\":\"11\"}', '{\"id\":6,\"name\":\"D\",\"date\":\"2021-02-09\",\"from_time\":\"14:56\",\"to_time\":\"15:50\",\"assessment_id\":\"1\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:33:19\",\"updated_at\":\"2021-02-09 14:50:55\",\"subject_id\":8,\"teacher_id\":\"11\"}', '2021-02-09 12:55:16', '2021-02-09 12:55:16'),
(381, 'Lecture', 20, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-09 13:27:21', '2021-02-09 13:27:21'),
(382, 'Lecture', 20, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-09 15:27:21\",\"created_at\":\"2021-02-09 15:27:21\",\"id\":20,\"start_time\":\"15:32\",\"end_time\":\"16:30\",\"date\":\"2021-02-09\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-09\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-09 13:27:21', '2021-02-09 13:27:21'),
(383, 'App\\LecturesFile', 20, NULL, NULL, 11, 'save', 'Shady Alaa Uploaded new file named Capture1 (original).JPG in LecturesFile at 21-02-09 15:28:03', NULL, 'LecturesFile', '2021-02-09 13:28:03', '2021-02-09 13:28:03'),
(384, 'Lecture', 20, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":20,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"15:32:00\",\"end_time\":\"16:30:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 15:27:21\",\"updated_at\":\"2021-02-09 15:27:21\",\"subject_id\":\"8\"}', '{\"id\":20,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"lect one\",\"start_time\":\"15:32\",\"end_time\":\"16:30\",\"date\":\"2021-02-09\",\"homework_id\":\"3\",\"quiz_id\":\"28\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 15:27:21\",\"updated_at\":\"2021-02-09 15:27:21\",\"subject_id\":\"8\"}', '2021-02-09 13:28:04', '2021-02-09 13:28:04'),
(385, 'StudentTransaction', 27, NULL, NULL, 19, 'init', 'menna initialized StudentTransaction record', '[]', '{\"student_id\":\"67\"}', '2021-02-09 13:33:19', '2021-02-09 13:33:19'),
(386, 'StudentTransaction', 27, NULL, NULL, 19, 'save', 'menna saved student_transaction record', '[]', '{\"id\":27,\"created_by_user_id\":null,\"student_id\":\"67\",\"amount\":null,\"number_of_lectures\":\"4\",\"subject_id\":8,\"teacher_id\":\"11\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 15:33:19\",\"updated_at\":\"2021-02-09 15:33:19\",\"balance\":4}', '2021-02-09 13:33:25', '2021-02-09 13:33:25'),
(387, 'LecturePayment', 7, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":20}', '2021-02-09 13:50:03', '2021-02-09 13:50:03'),
(388, 'LecturePayment', 7, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":20,\"updated_at\":\"2021-02-09 15:50:03\",\"created_at\":\"2021-02-09 15:50:03\",\"id\":7,\"students_number\":0,\"amount\":0,\"balance\":\"1\"}', '2021-02-09 13:50:03', '2021-02-09 13:50:03'),
(389, 'Lecture', 21, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-09 14:32:38', '2021-02-09 14:32:38'),
(390, 'Lecture', 21, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-09 16:32:38\",\"created_at\":\"2021-02-09 16:32:38\",\"id\":21,\"start_time\":\"16:40\",\"end_time\":\"17:00\",\"date\":\"2021-02-09\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-09\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-09 14:32:38', '2021-02-09 14:32:38'),
(391, 'Lecture', 21, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":21,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"16:40:00\",\"end_time\":\"17:00:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 16:32:38\",\"updated_at\":\"2021-02-09 16:32:38\",\"subject_id\":\"8\"}', '{\"id\":21,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"two\",\"start_time\":\"16:40\",\"end_time\":\"17:00\",\"date\":\"2021-02-09\",\"homework_id\":\"3\",\"quiz_id\":\"28\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 16:32:38\",\"updated_at\":\"2021-02-09 16:32:38\",\"subject_id\":\"8\"}', '2021-02-09 14:33:12', '2021-02-09 14:33:12'),
(392, 'LecturePayment', 8, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":21}', '2021-02-09 15:13:37', '2021-02-09 15:13:37'),
(393, 'LecturePayment', 8, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":21,\"updated_at\":\"2021-02-09 17:13:37\",\"created_at\":\"2021-02-09 17:13:37\",\"id\":8,\"students_number\":0,\"amount\":0,\"balance\":\"2\"}', '2021-02-09 15:13:37', '2021-02-09 15:13:37'),
(394, 'Group', 15, NULL, NULL, 11, 'init', 'Shady Alaa initialized Group record', '[]', '{\"teacher_id\":11,\"subject_id\":8,\"grade_id\":3}', '2021-02-09 15:34:25', '2021-02-09 15:34:25'),
(395, 'Lecture', 22, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-09 15:37:47', '2021-02-09 15:37:47'),
(396, 'Lecture', 22, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-09 17:37:47\",\"created_at\":\"2021-02-09 17:37:47\",\"id\":22,\"start_time\":\"17:45\",\"end_time\":\"18:00\",\"date\":\"2021-02-09\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-09\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-09 15:37:47', '2021-02-09 15:37:47'),
(397, 'Lecture', 22, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":22,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"17:45:00\",\"end_time\":\"18:00:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 17:37:47\",\"updated_at\":\"2021-02-09 17:37:47\",\"subject_id\":\"8\"}', '{\"id\":22,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"three\",\"start_time\":\"17:45\",\"end_time\":\"18:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 17:37:47\",\"updated_at\":\"2021-02-09 17:37:47\",\"subject_id\":\"8\"}', '2021-02-09 15:38:33', '2021-02-09 15:38:33'),
(398, 'Slider', 5, NULL, NULL, 7, 'update', 'Ibrahim updated slider record', '{\"id\":5,\"name\":\"s3 mahy\",\"date\":\"2021-02-10\",\"from_time\":\"14:15:00\",\"to_time\":\"17:15:00\",\"assessment_id\":\"2\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:38\",\"updated_at\":\"2021-02-09 14:08:45\",\"subject_id\":\"4\",\"teacher_id\":\"7\"}', '{\"id\":5,\"name\":\"s3 mahy\",\"date\":\"2021-02-10\",\"from_time\":\"14:15\",\"to_time\":\"17:15\",\"assessment_id\":\"2\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:38\",\"updated_at\":\"2021-02-09 14:08:45\",\"subject_id\":4,\"teacher_id\":7}', '2021-02-09 15:39:32', '2021-02-09 15:39:32'),
(399, 'Slider', 5, NULL, NULL, 7, 'update', 'Ibrahim updated slider record', '{\"id\":5,\"name\":\"s3 mahy\",\"date\":\"2021-02-10\",\"from_time\":\"14:15:00\",\"to_time\":\"17:15:00\",\"assessment_id\":\"2\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:38\",\"updated_at\":\"2021-02-09 17:39:32\",\"subject_id\":\"4\",\"teacher_id\":\"7\"}', '{\"id\":5,\"name\":\"s3 mahy\",\"date\":\"2021-02-10\",\"from_time\":\"14:15\",\"to_time\":\"17:15\",\"assessment_id\":\"2\",\"all_students\":\"1\",\"specific_groups\":\"0\",\"specific_students\":\"0\",\"items_ids\":null,\"school_year_id\":\"2\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 14:05:38\",\"updated_at\":\"2021-02-09 17:39:32\",\"subject_id\":4,\"teacher_id\":7}', '2021-02-09 15:43:11', '2021-02-09 15:43:11'),
(400, 'Lecture', 22, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":22,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"three\",\"start_time\":\"17:45:00\",\"end_time\":\"18:00:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 17:37:47\",\"updated_at\":\"2021-02-09 17:38:33\",\"subject_id\":\"8\"}', '{\"id\":22,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"three\",\"start_time\":\"17:45\",\"end_time\":\"18:00\",\"date\":\"2021-02-09\",\"homework_id\":\"34\",\"quiz_id\":\"28\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 17:37:47\",\"updated_at\":\"2021-02-09 17:38:33\",\"subject_id\":\"8\"}', '2021-02-09 15:44:51', '2021-02-09 15:44:51'),
(401, 'StudentTransaction', 40, NULL, NULL, 19, 'init', 'menna initialized StudentTransaction record', '[]', '{\"student_id\":\"46\"}', '2021-02-09 15:52:41', '2021-02-09 15:52:41'),
(402, 'StudentTransaction', 40, NULL, NULL, 19, 'save', 'menna saved student_transaction record', '[]', '{\"id\":40,\"created_by_user_id\":null,\"student_id\":\"46\",\"amount\":null,\"number_of_lectures\":\"4\",\"subject_id\":8,\"teacher_id\":\"11\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 17:52:41\",\"updated_at\":\"2021-02-09 17:52:41\",\"balance\":4}', '2021-02-09 15:52:50', '2021-02-09 15:52:50'),
(403, 'LecturePayment', 9, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":22}', '2021-02-09 16:12:18', '2021-02-09 16:12:18'),
(404, 'LecturePayment', 9, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":22,\"updated_at\":\"2021-02-09 18:12:18\",\"created_at\":\"2021-02-09 18:12:18\",\"id\":9,\"students_number\":0,\"amount\":0,\"balance\":\"4\"}', '2021-02-09 16:12:18', '2021-02-09 16:12:18'),
(405, 'Lecture', 23, NULL, NULL, 11, 'init', 'Shady Alaa initialized Lecture record', '[]', '[]', '2021-02-09 16:15:11', '2021-02-09 16:15:11'),
(406, 'Lecture', 23, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture record', '[]', '{\"updated_at\":\"2021-02-09 18:15:11\",\"created_at\":\"2021-02-09 18:15:11\",\"id\":23,\"start_time\":\"18:18\",\"end_time\":\"18:40\",\"date\":\"2021-02-09\",\"group_id\":\"2\",\"name\":\"lecture 2021-02-09\",\"teacher_id\":11,\"subject_id\":8}', '2021-02-09 16:15:11', '2021-02-09 16:15:11'),
(407, 'Lecture', 23, NULL, NULL, 11, 'update', 'Shady Alaa updated lecture record', '{\"id\":23,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":null,\"start_time\":\"18:18:00\",\"end_time\":\"18:40:00\",\"date\":\"2021-02-09\",\"homework_id\":null,\"quiz_id\":null,\"payment_terms\":null,\"teacher_id\":\"11\",\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 18:15:11\",\"updated_at\":\"2021-02-09 18:15:11\",\"subject_id\":\"8\"}', '{\"id\":23,\"name\":\"lecture 2021-02-09\",\"group_id\":\"2\",\"topic\":\"four\",\"start_time\":\"18:18\",\"end_time\":\"18:40\",\"date\":\"2021-02-09\",\"homework_id\":\"34\",\"quiz_id\":\"28\",\"payment_terms\":null,\"teacher_id\":11,\"link\":null,\"meeting_id\":null,\"meeting_uuid\":null,\"start_url\":null,\"video_link\":null,\"is_active\":\"-1\",\"admin_show\":\"1\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 18:15:11\",\"updated_at\":\"2021-02-09 18:15:11\",\"subject_id\":\"8\"}', '2021-02-09 16:15:38', '2021-02-09 16:15:38'),
(408, 'StudentTransaction', 43, NULL, NULL, 11, 'init', 'Shady Alaa initialized StudentTransaction record', '[]', '{\"student_id\":\"32\"}', '2021-02-09 16:19:14', '2021-02-09 16:19:14'),
(409, 'StudentTransaction', 43, NULL, NULL, 11, 'save', 'Shady Alaa saved student_transaction record', '[]', '{\"id\":43,\"created_by_user_id\":null,\"student_id\":\"32\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":8,\"teacher_id\":11,\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 18:19:14\",\"updated_at\":\"2021-02-09 18:19:14\",\"balance\":5}', '2021-02-09 16:19:21', '2021-02-09 16:19:21'),
(410, 'LecturePayment', 10, NULL, NULL, 11, 'init', 'Shady Alaa initialized lecturePayment record', '[]', '{\"teacher_id\":11,\"lecture_id\":23}', '2021-02-09 16:22:10', '2021-02-09 16:22:10'),
(411, 'LecturePayment', 10, NULL, NULL, 11, 'save', 'Shady Alaa saved lecture payment record', '[]', '{\"teacher_id\":11,\"lecture_id\":23,\"updated_at\":\"2021-02-09 18:22:10\",\"created_at\":\"2021-02-09 18:22:10\",\"id\":10,\"students_number\":0,\"amount\":0,\"balance\":\"6\"}', '2021-02-09 16:22:10', '2021-02-09 16:22:10'),
(412, 'StudentTransaction', 46, NULL, NULL, 19, 'init', 'menna initialized StudentTransaction record', '[]', '{\"student_id\":\"64\"}', '2021-02-09 20:00:27', '2021-02-09 20:00:27'),
(413, 'StudentTransaction', 46, NULL, NULL, 19, 'save', 'menna saved student_transaction record', '[]', '{\"id\":46,\"created_by_user_id\":null,\"student_id\":\"64\",\"amount\":null,\"number_of_lectures\":\"5\",\"subject_id\":8,\"teacher_id\":\"11\",\"lecture_id\":null,\"notes\":null,\"transaction_type_id\":\"2\",\"admin_show\":\"0\",\"stuff_order\":\"0\",\"created_at\":\"2021-02-09 22:00:27\",\"updated_at\":\"2021-02-09 22:00:27\",\"balance\":7}', '2021-02-09 20:00:35', '2021-02-09 20:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_06_14_165719_create_roles_table', 1),
(3, '2017_06_21_115312_create_files_table', 1),
(4, '2017_06_21_115312_create_logs_table', 1),
(5, '2018_02_12_0_create_notifications_table', 1),
(6, '2018_02_12_0_create_user_notifications_table', 1),
(7, '2018_07_22_135150_create_datatable_column_invisibles_table', 1),
(8, '2020_09_10_0_create_answers_table', 1),
(9, '2020_09_10_0_create_assessment_container_question_details_table', 1),
(10, '2020_09_10_0_create_assessment_container_topics_table', 1),
(11, '2020_09_10_0_create_assessment_containers_table', 1),
(12, '2020_09_10_0_create_assessment_types_table', 1),
(13, '2020_09_10_0_create_assessments_table', 1),
(14, '2020_09_10_0_create_assistants_permissions_table', 1),
(15, '2020_09_10_0_create_attendance_statuses_table', 1),
(16, '2020_09_10_0_create_genders_table', 1),
(17, '2020_09_10_0_create_grades_table', 1),
(18, '2020_09_10_0_create_groups_students_table', 1),
(19, '2020_09_10_0_create_groups_table', 1),
(20, '2020_09_10_0_create_honor_boards_table', 1),
(21, '2020_09_10_0_create_lecture_attendances_table', 1),
(22, '2020_09_10_0_create_lecture_payments_table', 1),
(23, '2020_09_10_0_create_lecture_reschedule_requests_table', 1),
(24, '2020_09_10_0_create_lectures_files_table', 1),
(25, '2020_09_10_0_create_lectures_table', 1),
(26, '2020_09_10_0_create_lessons_table', 1),
(27, '2020_09_10_0_create_news_table', 1),
(28, '2020_09_10_0_create_permissions_table', 1),
(29, '2020_09_10_0_create_question_difficulties_table', 1),
(30, '2020_09_10_0_create_question_files_table', 1),
(31, '2020_09_10_0_create_question_topics_table', 1),
(32, '2020_09_10_0_create_question_types_table', 1),
(33, '2020_09_10_0_create_questions_table', 1),
(34, '2020_09_10_0_create_request_statuses_table', 1),
(35, '2020_09_10_0_create_school_years_table', 1),
(36, '2020_09_10_0_create_sliders_table', 1),
(37, '2020_09_10_0_create_student_assessment_questions_table', 1),
(38, '2020_09_10_0_create_student_assessments_table', 1),
(39, '2020_09_10_0_create_student_transactions_table', 1),
(40, '2020_09_10_0_create_subjects_table', 1),
(41, '2020_09_10_0_create_teacher_payments_table', 1),
(42, '2020_09_10_0_create_transaction_types_table', 1),
(43, '2020_09_10_0_create_units_table', 1),
(44, '2020_09_10_0_create_users_subjects_table', 1),
(45, '2020_09_10_0_create_users_table', 1),
(46, '2020_09_10_0_create_videos_table', 1),
(47, '2020_09_24_112021_create_subject_status_table', 1),
(48, '2020_09_28_163429_create_status_table', 1),
(49, '2020_10_02_172101_create_topics_table', 1),
(50, '2020_10_12_125725_create_exams_table', 1),
(51, '2020_10_12_130258_create_student_exams_table', 1),
(52, '2020_10_12_130329_create_student_exam_questions_table', 1),
(53, '2020_10_14_111746_add_status_id_col_to_users_subjects_table', 1),
(54, '2020_10_19_140354_to_be_deleted_add_school_year_id_to_users_subjects_table', 1),
(55, '2020_10_22_145924_to_be_deleted_add_payment_terms_to_lecture', 1),
(56, '2020_10_22_150038_to_be_deleted_add_balance_and_teacher_id_to_lecture_payments', 1),
(57, '2020_10_25_203315_to_be_deleted_change_type_phone_number', 1),
(58, '2020_10_26_170517_to_be_deleted_add_teacher_id_to_lectures_table', 1),
(59, '2020_10_27_092207_to_be_deleted_add_description_to_users_table', 1),
(60, '2020_10_27_131425_to_be_delete_add_reason_col_to_lecture_reschedule_request_table', 1),
(61, '2020_10_27_132527_to_be_deleted_add_subject_id_to_lectures_table', 1),
(62, '2020_10_28_122246_to_be_deleted_add_balance_to_student_transaction', 1),
(63, '2020_10_30_125528_to_be_deleted_add_notes_to_user_subject_table', 1),
(64, '2020_11_01_213813_to_be_deleted_change_payment_terms_in_users_table', 1),
(65, '2020_11_02_120700_to_be_deleted_add_balance_to_users_subjects_table', 1),
(66, '2020_11_02_121226_to_be_deleted_add_subject_id_to_student_transactions_table', 1),
(67, '2020_11_02_194727_to_be_deleted_add_original_lec_id_to_lecture_reschedule_request_table', 1),
(68, '2020_11_03_163517_to_be_deleted_add_zoom_link_to_lecturs_table', 1),
(69, '2020_11_04_191117_to_be_deleted_add_short_name_col_to_permissions_table', 1),
(70, '2020_11_04_200606_to_be_deleted_add_created_by_to_assessments_table', 1),
(71, '2020_11_07_011423_to_be_deleted_change_parent_phone_users_table', 1),
(72, '2020_11_10_084102_to_be_deleted_add_lecture_to_student_transactions_table', 1),
(73, '2020_11_12_151531_to_be_deleted_subject_to_lecture_attendances_table', 1),
(74, '2020_11_12_151542_to_be_deleted_teacher_to_lecture_attendances_table', 1),
(75, '2020_11_15_171246_to_be_deleted_add_cred_send_to_users_subject_table', 1),
(76, '2020_11_16_164525_to_be_deleted_add_lecture_and_number_to_student_assessments_table', 1),
(77, '2020_11_18_211653_add_token_to_users_table', 1),
(78, '2020_11_20_193359_to_be_deleted_add_subject_teacher_to_exams_table', 1),
(79, '2020_11_21_232050_to_be_deleted_change_note_type', 1),
(80, '2020_11_21_232321_to_be_deleted_change_description_type', 1),
(81, '2020_11_22_182639_add_reason_to_suspend_to_users_table', 1),
(82, '2020_11_22_193749_to_be_deleted_add_is_active_to_lectures_table', 1),
(83, '2020_11_30_004946_to_be_deleted_add_teacher_id_to_student_transaction_table', 1),
(84, '2020_12_02_105255_to_be_deleted_add_video_link_to_lectures_table', 1),
(85, '2020_12_02_135337_to_be_deleted_edit_column_facebook_url_in_users_table', 1),
(86, '2020_12_04_172901_to_be_deleted_add_meeting_id_to_lectures_table', 1),
(87, '2020_12_04_185918_create_students_meetings_table', 1),
(88, '2020_12_07_133505_to_be_deleted_add_type_to_student_assessments_table', 1),
(89, '2020_12_07_174137_to_be_deleted_add_remember_token_to_users_table', 1),
(90, '2020_12_08_120018_create_jobs_table', 1),
(91, '2020_12_14_161656_to_be_deleted_add_is_joined_to_lecture_attendance_table', 1),
(92, '2020_12_15_133353_to_be_deleted_add_start_url_to_lectures_table', 1),
(93, '2020_12_16_152137_to_be_deleted_add_key_to_users_table', 1),
(94, '2020_12_22_203500_add_note_to_lecture_attendance_table', 1),
(95, '2020_12_25_115857_create_CGP_difficulties_table', 1),
(96, '2020_12_25_115857_create_CGP_generated_quiz_questions_table', 1),
(97, '2020_12_25_115857_create_CGP_generated_quizzes_table', 1),
(98, '2020_12_25_115857_create_CGP_infos_table', 1),
(99, '2020_12_25_115857_create_CGP_question_answer_files_table', 1),
(100, '2020_12_25_115857_create_CGP_question_answer_types_table', 1),
(101, '2020_12_25_115857_create_CGP_question_answers_table', 1),
(102, '2020_12_25_115857_create_CGP_question_files_table', 1),
(103, '2020_12_25_115857_create_CGP_question_infos_table', 1),
(104, '2020_12_25_115857_create_CGP_question_topics_table', 1),
(105, '2020_12_25_115857_create_CGP_question_types_table', 1),
(106, '2020_12_25_115857_create_CGP_questions_table', 1),
(107, '2020_12_25_115857_create_CGP_quiz_section_details_table', 1),
(108, '2020_12_25_115857_create_CGP_quiz_section_topics_table', 1),
(109, '2020_12_25_115857_create_CGP_quiz_sections_table', 1),
(110, '2020_12_25_115857_create_CGP_quizzes_table', 1),
(111, '2020_12_25_115857_create_CGP_text_correct_answers_table', 1),
(112, '2020_12_25_115857_create_CGP_topics_table', 1),
(113, '2020_12_25_115857_create_CGP_view_1st_quiz_section_detail_questions', 1),
(114, '2020_12_25_115857_create_CGP_view_2nd_available_requested_question_difference', 1),
(115, '2020_12_25_115857_create_CGP_zstored_procedure_generate_quiz', 1),
(116, '2020_12_28_125628_to_be_deleted_add_subject_id_and_teacher_id_to_cgp_questions_table', 1),
(117, '2020_12_28_153033_to_be_deleted_edit_column_name_diff_id_in_table_cgp_topics_table', 1),
(118, '2020_12_29_124050_to_be_deleted_add_columns_to_cgp_quiz_table', 1),
(119, '2020_12_29_210904_add_essay_model_answer_to_student_assessment_questions_table', 1),
(120, '2020_12_29_210904_add_essay_model_answer_to_student_exam_questions_table', 1),
(121, '2020_12_29_210904_add_model_answer_to_student_assessment_questions_table', 1),
(122, '2020_12_29_210904_add_model_answer_to_student_exam_questions_table', 1),
(123, '2020_12_29_211855_add_view_answers_to_student_assessments_table', 1),
(124, '2020_12_29_211857_add_view_answers_to_student_exams_table', 1),
(125, '2020_12_31_012791_add_cols_to_student_assessments_table', 1),
(126, '2020_12_31_012791_add_cols_to_student_exams_table', 1),
(127, '2021_01_04_223333_add_exam_id__to_student_assessments_table', 1),
(128, '2021_01_06_123937_add_status_to_student_assessments_table', 1),
(129, '2021_01_06_125136_create_failed_jobs_table', 1),
(130, '2021_01_07_193359_to_be_deleted_add_subject_teacher_to_lecture_reschedule_request_table', 1),
(131, '2021_01_13_110643_add_school_year_to_exams_table', 1),
(132, '2021_01_19_130827_to_be_deleted_edit_type_column_video_link', 1),
(133, '2021_01_20_164724_create_teacher_activation_email_table', 1),
(134, '2021_01_25_115752_create_nullable_free_models_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `file_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `teacher_id`, `title`, `description`, `admin_show`, `file_id`, `stuff_order`, `created_at`, `updated_at`) VALUES
(6, 11, 'exam', 'لينك الحصة فى اول كومنت\n+لينك امتحان سنه اولى\n+ لينك امتحان سنه تانيه\nودى الاسئلة اللى هتحلوها بعد ما تتفرجوا على الحصة\nوطبعا لو فى اى حاجة مش فاهمينها هتبعتولنا على رسايل الصفحة ♥️♥️', 1, '18', 0, '2021-01-30 13:55:54', '2021-01-30 13:56:27'),
(9, NULL, NULL, NULL, 0, NULL, 0, '2021-02-07 22:08:15', '2021-02-07 22:08:15'),
(8, 11, 'shady', 'shady', 1, '36', 0, '2021-02-07 22:05:09', '2021-02-07 22:05:55'),
(3, 11, 'biology teacher', 'https://www.youtube.com/watch?v=hBwiQbhjdRI\nwatch this video', 1, '16', 0, '2021-01-30 13:48:22', '2021-01-30 13:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administration_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_agency_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `subproject_id` int(11) DEFAULT NULL,
  `progress_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nullable_free_models`
--

CREATE TABLE `nullable_free_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `custom_function_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `admin_show`, `short_name`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Students Management', 1, 'students_management', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(2, 'Edit Honor Board', 1, 'edit_honor_board', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(3, 'Edit Schedules', 1, 'edit_schedules', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(4, 'Assessment Management', 1, 'assessment_management', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(5, 'Write Notes', 1, 'write_notes', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(6, 'Create Groups', 1, 'create_groups', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(7, 'Give Lectures', 1, 'give_lecture', 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_type_id` int(11) DEFAULT NULL,
  `question_difficulty_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `weight` double(8,2) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_difficulties`
--

CREATE TABLE `question_difficulties` (
  `id` int(10) UNSIGNED NOT NULL,
  `difficulty` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_files`
--

CREATE TABLE `question_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_topics`
--

CREATE TABLE `question_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_types`
--

CREATE TABLE `question_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_status`
--

CREATE TABLE `request_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_status`
--

INSERT INTO `request_status` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Approved', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Pending', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Rejected', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`, `description`, `admin_show`, `stuff_order`) VALUES
(1, '2021-01-28 14:09:38', '2021-01-28 14:09:38', 'Admin', NULL, 1, 0),
(2, '2021-01-28 14:09:38', '2021-01-28 14:09:38', 'Teacher', NULL, 1, 0),
(3, '2021-01-28 14:09:38', '2021-01-28 14:09:38', 'Assistant', NULL, 1, 0),
(4, '2021-01-28 14:09:38', '2021-01-28 14:09:38', 'Student', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, '2019/2020', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(2, '2020/2021', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(3, '2021/2022', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(4, '2022/2023', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(5, '2023/2024', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(6, '2024/2025', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(7, '2025/2026', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(8, '2026/2027', 1, 0, '2021-01-28 14:09:38', '2021-01-28 14:09:38'),
(9, '2027/2028', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(10, '2028/2029', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(11, '2029/2030', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(12, '2030/2031', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(13, '2031/2032', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(14, '2032/2033', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(15, '2033/2034', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(16, '2034/2035', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(17, '2035/2036', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(18, '2036/2037', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(19, '2037/2038', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(20, '2038/2039', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(21, '2039/2040', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(22, '2040/2041', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(23, '2041/2042', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(24, '2042/2043', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(25, '2043/2044', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(26, '2044/2045', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(27, '2045/2046', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(28, '2046/2047', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(29, '2047/2048', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(30, '2048/2049', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(31, '2049/2050', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(32, '2050/2051', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `file_id`, `description`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'mona hussein biology', 1, 0, '2021-01-28 14:14:52', '2021-01-28 14:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Active', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Pending', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(3, 'Rejected', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(4, 'Suspended', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `students_meetings`
--

CREATE TABLE `students_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_uuid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_zoom_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_meetings`
--

INSERT INTO `students_meetings` (`id`, `event`, `meeting_uuid`, `student_zoom_email`, `join_time`, `leave_time`, `created_at`, `updated_at`) VALUES
(1, 'meeting.participant_joined', '+gq5v9y5T4elHEcP+dTTJQ==', 'ibrahimahmed8989@gmail.com', '2021-01-29T19:22:23Z', NULL, '2021-01-29 19:22:27', '2021-01-29 19:22:27'),
(2, 'meeting.participant_joined', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', '2021-01-29T19:23:03Z', NULL, '2021-01-29 19:23:07', '2021-01-29 19:23:07'),
(3, 'meeting.participant_left', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', NULL, '2021-01-29T19:50:40Z', '2021-01-29 19:50:43', '2021-01-29 19:50:43'),
(4, 'meeting.participant_joined', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', '2021-01-29T19:51:15Z', NULL, '2021-01-29 19:51:18', '2021-01-29 19:51:18'),
(5, 'meeting.participant_joined', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', '2021-01-29T20:15:53Z', NULL, '2021-01-29 20:15:56', '2021-01-29 20:15:56'),
(6, 'meeting.participant_left', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', NULL, '2021-01-29T20:15:53Z', '2021-01-29 20:15:56', '2021-01-29 20:15:56'),
(7, 'meeting.participant_left', '+gq5v9y5T4elHEcP+dTTJQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-01-29T20:49:41Z', '2021-01-29 20:49:45', '2021-01-29 20:49:45'),
(8, 'meeting.participant_left', '+gq5v9y5T4elHEcP+dTTJQ==', 'safaa1mamdouh2@gmail.com', NULL, '2021-01-29T20:49:40Z', '2021-01-29 20:49:45', '2021-01-29 20:49:45'),
(9, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'ibrahimahmed8989@gmail.com', '2021-01-31T07:05:37Z', NULL, '2021-01-31 07:05:41', '2021-01-31 07:05:41'),
(10, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'alsayed2005mohamed@gmail.com', '2021-01-31T07:07:45Z', NULL, '2021-01-31 07:07:49', '2021-01-31 07:07:49'),
(11, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, '2021-01-31T07:08:55Z', NULL, '2021-01-31 07:08:58', '2021-01-31 07:08:58'),
(12, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, '2021-01-31T07:08:57Z', NULL, '2021-01-31 07:09:00', '2021-01-31 07:09:00'),
(13, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'mohamedahmed3062004@gmail.com', '2021-01-31T07:15:36Z', NULL, '2021-01-31 07:15:39', '2021-01-31 07:15:39'),
(14, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, NULL, '2021-01-31T07:24:18Z', '2021-01-31 07:24:22', '2021-01-31 07:24:22'),
(15, 'meeting.participant_joined', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, '2021-01-31T07:25:46Z', NULL, '2021-01-31 07:25:49', '2021-01-31 07:25:49'),
(16, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'mohamedahmed3062004@gmail.com', NULL, '2021-01-31T07:48:36Z', '2021-01-31 07:48:39', '2021-01-31 07:48:39'),
(17, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-01-31T07:48:36Z', '2021-01-31 07:48:39', '2021-01-31 07:48:39'),
(18, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, NULL, '2021-01-31T07:48:36Z', '2021-01-31 07:48:39', '2021-01-31 07:48:39'),
(19, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', 'alsayed2005mohamed@gmail.com', NULL, '2021-01-31T07:48:36Z', '2021-01-31 07:48:39', '2021-01-31 07:48:39'),
(20, 'meeting.participant_left', 'SP0vKg9vRWWRMlDLwDjmUQ==', NULL, NULL, '2021-01-31T07:48:36Z', '2021-01-31 07:48:39', '2021-01-31 07:48:39'),
(21, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', 'ibrahimahmed8989@gmail.com', '2021-01-31T07:48:52Z', NULL, '2021-01-31 07:49:03', '2021-01-31 07:49:03'),
(22, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', 'mohamedahmed3062004@gmail.com', '2021-01-31T07:49:23Z', NULL, '2021-01-31 07:49:27', '2021-01-31 07:49:27'),
(23, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', NULL, '2021-01-31T07:49:28Z', NULL, '2021-01-31 07:49:32', '2021-01-31 07:49:32'),
(24, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', 'alsayed2005mohamed@gmail.com', '2021-01-31T07:49:42Z', NULL, '2021-01-31 07:49:46', '2021-01-31 07:49:46'),
(25, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', NULL, '2021-01-31T07:49:43Z', NULL, '2021-01-31 07:49:48', '2021-01-31 07:49:48'),
(26, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', 'alsayed2005mohamed@gmail.com', NULL, '2021-01-31T08:26:25Z', '2021-01-31 08:26:29', '2021-01-31 08:26:29'),
(27, 'meeting.participant_joined', 'DGlKF085RpiJQy3HrQARMw==', 'alsayed2005mohamed@gmail.com', '2021-01-31T08:26:51Z', NULL, '2021-01-31 08:26:55', '2021-01-31 08:26:55'),
(28, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', NULL, NULL, '2021-01-31T08:29:17Z', '2021-01-31 08:29:21', '2021-01-31 08:29:21'),
(29, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', 'mohamedahmed3062004@gmail.com', NULL, '2021-01-31T08:29:17Z', '2021-01-31 08:29:21', '2021-01-31 08:29:21'),
(30, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-01-31T08:29:17Z', '2021-01-31 08:29:21', '2021-01-31 08:29:21'),
(31, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', 'alsayed2005mohamed@gmail.com', NULL, '2021-01-31T08:29:17Z', '2021-01-31 08:29:21', '2021-01-31 08:29:21'),
(32, 'meeting.participant_left', 'DGlKF085RpiJQy3HrQARMw==', NULL, NULL, '2021-01-31T08:29:17Z', '2021-01-31 08:29:21', '2021-01-31 08:29:21'),
(33, 'meeting.participant_joined', '+mF+lBVJTliq0bchbfF3tA==', 'ibrahimahmed8989@gmail.com', '2021-01-31T08:29:41Z', NULL, '2021-01-31 08:29:44', '2021-01-31 08:29:44'),
(34, 'meeting.participant_joined', '+mF+lBVJTliq0bchbfF3tA==', 'alsayed2005mohamed@gmail.com', '2021-01-31T08:30:47Z', NULL, '2021-01-31 08:30:51', '2021-01-31 08:30:51'),
(35, 'meeting.participant_joined', '+mF+lBVJTliq0bchbfF3tA==', 'mohamedahmed3062004@gmail.com', '2021-01-31T08:30:48Z', NULL, '2021-01-31 08:30:52', '2021-01-31 08:30:52'),
(36, 'meeting.participant_joined', '+mF+lBVJTliq0bchbfF3tA==', NULL, '2021-01-31T08:30:50Z', NULL, '2021-01-31 08:30:58', '2021-01-31 08:30:58'),
(37, 'meeting.participant_joined', '+mF+lBVJTliq0bchbfF3tA==', NULL, '2021-01-31T08:30:55Z', NULL, '2021-01-31 08:31:00', '2021-01-31 08:31:00'),
(38, 'meeting.participant_left', '+mF+lBVJTliq0bchbfF3tA==', 'alsayed2005mohamed@gmail.com', NULL, '2021-01-31T08:57:22Z', '2021-01-31 08:57:26', '2021-01-31 08:57:26'),
(39, 'meeting.participant_left', '+mF+lBVJTliq0bchbfF3tA==', NULL, NULL, '2021-01-31T08:57:21Z', '2021-01-31 08:57:26', '2021-01-31 08:57:26'),
(40, 'meeting.participant_left', '+mF+lBVJTliq0bchbfF3tA==', 'ibrahimahmed8989@gmail.com', NULL, '2021-01-31T08:57:22Z', '2021-01-31 08:57:26', '2021-01-31 08:57:26'),
(41, 'meeting.participant_left', '+mF+lBVJTliq0bchbfF3tA==', NULL, NULL, '2021-01-31T08:57:22Z', '2021-01-31 08:57:26', '2021-01-31 08:57:26'),
(42, 'meeting.participant_left', '+mF+lBVJTliq0bchbfF3tA==', 'mohamedahmed3062004@gmail.com', NULL, '2021-01-31T08:57:22Z', '2021-01-31 08:57:26', '2021-01-31 08:57:26'),
(43, 'meeting.participant_joined', '55XLoIp3R+anf0nWTqsTHw==', 'ibrahimahmed8989@gmail.com', '2021-01-31T22:57:36Z', NULL, '2021-01-31 22:57:39', '2021-01-31 22:57:39'),
(44, 'meeting.participant_joined', '55XLoIp3R+anf0nWTqsTHw==', 'ebrahimahmed10@gmail.com', '2021-01-31T22:58:09Z', NULL, '2021-01-31 22:58:12', '2021-01-31 22:58:12'),
(45, 'meeting.participant_left', '55XLoIp3R+anf0nWTqsTHw==', 'ebrahimahmed10@gmail.com', NULL, '2021-01-31T22:58:53Z', '2021-01-31 22:58:57', '2021-01-31 22:58:57'),
(46, 'meeting.participant_left', '55XLoIp3R+anf0nWTqsTHw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-01-31T22:58:53Z', '2021-01-31 22:58:57', '2021-01-31 22:58:57'),
(47, 'meeting.participant_joined', 'RNTZSVeiTu24PTIGaQpSzA==', 'ibrahimahmed8989@gmail.com', '2021-02-01T01:10:56Z', NULL, '2021-02-01 01:10:59', '2021-02-01 01:10:59'),
(48, 'meeting.participant_left', 'RNTZSVeiTu24PTIGaQpSzA==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-01T01:11:12Z', '2021-02-01 01:11:15', '2021-02-01 01:11:15'),
(49, 'meeting.participant_joined', '2raj+4sXRpGJGyOpEe9uyw==', 'ibrahimahmed8989@gmail.com', '2021-02-01T17:17:48Z', NULL, '2021-02-01 17:17:52', '2021-02-01 17:17:52'),
(50, 'meeting.participant_joined', '2raj+4sXRpGJGyOpEe9uyw==', 'mohamed2mamdouh1@gmail.com', '2021-02-01T17:21:38Z', NULL, '2021-02-01 17:21:42', '2021-02-01 17:21:42'),
(51, 'meeting.participant_left', '2raj+4sXRpGJGyOpEe9uyw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-01T18:24:45Z', '2021-02-01 18:24:48', '2021-02-01 18:24:48'),
(52, 'meeting.participant_left', '2raj+4sXRpGJGyOpEe9uyw==', 'mohamed2mamdouh1@gmail.com', NULL, '2021-02-01T18:24:45Z', '2021-02-01 18:24:48', '2021-02-01 18:24:48'),
(53, 'meeting.participant_joined', 'YIc1jwdFQG63RJPXiTZRzA==', 'ibrahimahmed8989@gmail.com', '2021-02-01T18:33:44Z', NULL, '2021-02-01 18:33:47', '2021-02-01 18:33:47'),
(54, 'meeting.participant_joined', 'YIc1jwdFQG63RJPXiTZRzA==', 'safaa1mamdouh2@gmail.com', '2021-02-01T18:34:41Z', NULL, '2021-02-01 18:34:44', '2021-02-01 18:34:44'),
(55, 'meeting.participant_left', 'YIc1jwdFQG63RJPXiTZRzA==', 'safaa1mamdouh2@gmail.com', NULL, '2021-02-01T19:21:38Z', '2021-02-01 19:21:41', '2021-02-01 19:21:41'),
(56, 'meeting.participant_left', 'YIc1jwdFQG63RJPXiTZRzA==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-01T19:21:38Z', '2021-02-01 19:21:42', '2021-02-01 19:21:42'),
(57, 'meeting.participant_joined', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'ibrahimahmed8989@gmail.com', '2021-02-02T07:09:02Z', NULL, '2021-02-02 07:09:06', '2021-02-02 07:09:06'),
(58, 'meeting.participant_joined', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'alsayed2005mohamed@gmail.com', '2021-02-02T07:09:38Z', NULL, '2021-02-02 07:09:42', '2021-02-02 07:09:42'),
(59, 'meeting.participant_joined', 'yvV+5TMfSyCkNcDKRx1Mbg==', NULL, '2021-02-02T07:09:39Z', NULL, '2021-02-02 07:10:10', '2021-02-02 07:10:10'),
(60, 'meeting.participant_joined', 'yvV+5TMfSyCkNcDKRx1Mbg==', NULL, '2021-02-02T07:09:46Z', NULL, '2021-02-02 07:10:16', '2021-02-02 07:10:16'),
(61, 'meeting.participant_left', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-02T07:13:05Z', '2021-02-02 07:13:09', '2021-02-02 07:13:09'),
(62, 'meeting.participant_joined', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'ibrahimahmed8989@gmail.com', '2021-02-02T07:15:42Z', NULL, '2021-02-02 07:15:45', '2021-02-02 07:15:45'),
(63, 'meeting.participant_left', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-02T07:49:31Z', '2021-02-02 07:49:35', '2021-02-02 07:49:35'),
(64, 'meeting.participant_left', 'yvV+5TMfSyCkNcDKRx1Mbg==', NULL, NULL, '2021-02-02T07:49:31Z', '2021-02-02 07:49:35', '2021-02-02 07:49:35'),
(65, 'meeting.participant_left', 'yvV+5TMfSyCkNcDKRx1Mbg==', NULL, NULL, '2021-02-02T07:49:31Z', '2021-02-02 07:49:35', '2021-02-02 07:49:35'),
(66, 'meeting.participant_left', 'yvV+5TMfSyCkNcDKRx1Mbg==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-02T07:49:31Z', '2021-02-02 07:49:35', '2021-02-02 07:49:35'),
(67, 'meeting.participant_joined', 'eg8K5ONcSRSwAIE0KX1+XA==', 'ibrahimahmed8989@gmail.com', '2021-02-02T07:49:48Z', NULL, '2021-02-02 07:49:54', '2021-02-02 07:49:54'),
(68, 'meeting.participant_joined', 'eg8K5ONcSRSwAIE0KX1+XA==', NULL, '2021-02-02T07:50:06Z', NULL, '2021-02-02 07:50:09', '2021-02-02 07:50:09'),
(69, 'meeting.participant_joined', 'eg8K5ONcSRSwAIE0KX1+XA==', 'alsayed2005mohamed@gmail.com', '2021-02-02T07:50:13Z', NULL, '2021-02-02 07:50:17', '2021-02-02 07:50:17'),
(70, 'meeting.participant_joined', 'eg8K5ONcSRSwAIE0KX1+XA==', NULL, '2021-02-02T07:50:54Z', NULL, '2021-02-02 07:50:58', '2021-02-02 07:50:58'),
(71, 'meeting.participant_left', 'eg8K5ONcSRSwAIE0KX1+XA==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-02T08:30:05Z', '2021-02-02 08:30:09', '2021-02-02 08:30:09'),
(72, 'meeting.participant_left', 'eg8K5ONcSRSwAIE0KX1+XA==', NULL, NULL, '2021-02-02T08:30:06Z', '2021-02-02 08:30:09', '2021-02-02 08:30:09'),
(73, 'meeting.participant_left', 'eg8K5ONcSRSwAIE0KX1+XA==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-02T08:30:06Z', '2021-02-02 08:30:09', '2021-02-02 08:30:09'),
(74, 'meeting.participant_left', 'eg8K5ONcSRSwAIE0KX1+XA==', NULL, NULL, '2021-02-02T08:30:06Z', '2021-02-02 08:30:09', '2021-02-02 08:30:09'),
(75, 'meeting.participant_joined', 'BzokFX4GTR+odX8ORWYamw==', 'ibrahimahmed8989@gmail.com', '2021-02-02T08:30:16Z', NULL, '2021-02-02 08:30:20', '2021-02-02 08:30:20'),
(76, 'meeting.participant_joined', 'BzokFX4GTR+odX8ORWYamw==', NULL, '2021-02-02T08:30:30Z', NULL, '2021-02-02 08:30:34', '2021-02-02 08:30:34'),
(77, 'meeting.participant_joined', 'BzokFX4GTR+odX8ORWYamw==', 'alsayed2005mohamed@gmail.com', '2021-02-02T08:30:47Z', NULL, '2021-02-02 08:30:50', '2021-02-02 08:30:50'),
(78, 'meeting.participant_joined', 'BzokFX4GTR+odX8ORWYamw==', NULL, '2021-02-02T08:30:48Z', NULL, '2021-02-02 08:30:54', '2021-02-02 08:30:54'),
(79, 'meeting.participant_left', 'BzokFX4GTR+odX8ORWYamw==', NULL, NULL, '2021-02-02T08:43:14Z', '2021-02-02 08:43:18', '2021-02-02 08:43:18'),
(80, 'meeting.participant_left', 'BzokFX4GTR+odX8ORWYamw==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-02T08:43:14Z', '2021-02-02 08:43:18', '2021-02-02 08:43:18'),
(81, 'meeting.participant_left', 'BzokFX4GTR+odX8ORWYamw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-02T08:43:14Z', '2021-02-02 08:43:18', '2021-02-02 08:43:18'),
(82, 'meeting.participant_left', 'BzokFX4GTR+odX8ORWYamw==', NULL, NULL, '2021-02-02T08:43:14Z', '2021-02-02 08:43:22', '2021-02-02 08:43:22'),
(83, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', 'ibrahimahmed8989@gmail.com', '2021-02-03T08:03:45Z', NULL, '2021-02-03 08:03:49', '2021-02-03 08:03:49'),
(84, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', NULL, '2021-02-03T08:05:40Z', NULL, '2021-02-03 08:05:44', '2021-02-03 08:05:44'),
(85, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', NULL, '2021-02-03T08:05:55Z', NULL, '2021-02-03 08:05:59', '2021-02-03 08:05:59'),
(86, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', NULL, '2021-02-03T08:06:32Z', NULL, '2021-02-03 08:06:36', '2021-02-03 08:06:36'),
(87, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', NULL, '2021-02-03T08:07:06Z', NULL, '2021-02-03 08:07:10', '2021-02-03 08:07:10'),
(88, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', NULL, NULL, '2021-02-03T08:41:54Z', '2021-02-03 08:41:58', '2021-02-03 08:41:58'),
(89, 'meeting.participant_joined', 'xVW2K17wQvuBYwxmImmxjg==', NULL, '2021-02-03T08:41:54Z', NULL, '2021-02-03 08:41:58', '2021-02-03 08:41:58'),
(90, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', NULL, NULL, '2021-02-03T08:45:38Z', '2021-02-03 08:45:42', '2021-02-03 08:45:42'),
(91, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', NULL, NULL, '2021-02-03T08:45:38Z', '2021-02-03 08:45:42', '2021-02-03 08:45:42'),
(92, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', NULL, NULL, '2021-02-03T08:45:38Z', '2021-02-03 08:45:42', '2021-02-03 08:45:42'),
(93, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', NULL, NULL, '2021-02-03T08:45:38Z', '2021-02-03 08:45:42', '2021-02-03 08:45:42'),
(94, 'meeting.participant_joined', 'TXNoGl8iQNWexrZDl/bwvg==', 'ibrahimahmed8989@gmail.com', '2021-02-03T08:45:47Z', NULL, '2021-02-03 08:45:51', '2021-02-03 08:45:51'),
(95, 'meeting.participant_left', 'xVW2K17wQvuBYwxmImmxjg==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-03T08:45:38Z', '2021-02-03 08:45:57', '2021-02-03 08:45:57'),
(96, 'meeting.participant_joined', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, '2021-02-03T08:46:06Z', NULL, '2021-02-03 08:46:10', '2021-02-03 08:46:10'),
(97, 'meeting.participant_joined', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, '2021-02-03T08:46:10Z', NULL, '2021-02-03 08:46:14', '2021-02-03 08:46:14'),
(98, 'meeting.participant_joined', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, '2021-02-03T08:46:31Z', NULL, '2021-02-03 08:46:35', '2021-02-03 08:46:35'),
(99, 'meeting.participant_joined', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, '2021-02-03T08:47:57Z', NULL, '2021-02-03 08:48:01', '2021-02-03 08:48:01'),
(100, 'meeting.participant_left', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, NULL, '2021-02-03T09:26:03Z', '2021-02-03 09:26:07', '2021-02-03 09:26:07'),
(101, 'meeting.participant_left', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, NULL, '2021-02-03T09:26:03Z', '2021-02-03 09:26:07', '2021-02-03 09:26:07'),
(102, 'meeting.participant_left', 'TXNoGl8iQNWexrZDl/bwvg==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-03T09:26:03Z', '2021-02-03 09:26:07', '2021-02-03 09:26:07'),
(103, 'meeting.participant_left', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, NULL, '2021-02-03T09:26:03Z', '2021-02-03 09:26:07', '2021-02-03 09:26:07'),
(104, 'meeting.participant_left', 'TXNoGl8iQNWexrZDl/bwvg==', NULL, NULL, '2021-02-03T09:26:03Z', '2021-02-03 09:26:07', '2021-02-03 09:26:07'),
(105, 'meeting.participant_joined', 'OLnREy2fQISvEMpu33RS0w==', 'ibrahimahmed8989@gmail.com', '2021-02-03T09:26:18Z', NULL, '2021-02-03 09:26:21', '2021-02-03 09:26:21'),
(106, 'meeting.participant_joined', 'OLnREy2fQISvEMpu33RS0w==', NULL, '2021-02-03T09:26:43Z', NULL, '2021-02-03 09:26:46', '2021-02-03 09:26:46'),
(107, 'meeting.participant_joined', 'OLnREy2fQISvEMpu33RS0w==', NULL, '2021-02-03T09:27:13Z', NULL, '2021-02-03 09:27:16', '2021-02-03 09:27:16'),
(108, 'meeting.participant_joined', 'OLnREy2fQISvEMpu33RS0w==', NULL, '2021-02-03T09:27:14Z', NULL, '2021-02-03 09:27:17', '2021-02-03 09:27:17'),
(109, 'meeting.participant_joined', 'OLnREy2fQISvEMpu33RS0w==', NULL, '2021-02-03T09:28:42Z', NULL, '2021-02-03 09:28:45', '2021-02-03 09:28:45'),
(110, 'meeting.participant_left', 'OLnREy2fQISvEMpu33RS0w==', NULL, NULL, '2021-02-03T09:57:14Z', '2021-02-03 09:57:18', '2021-02-03 09:57:18'),
(111, 'meeting.participant_left', 'OLnREy2fQISvEMpu33RS0w==', NULL, NULL, '2021-02-03T09:57:15Z', '2021-02-03 09:57:19', '2021-02-03 09:57:19'),
(112, 'meeting.participant_left', 'OLnREy2fQISvEMpu33RS0w==', NULL, NULL, '2021-02-03T09:57:16Z', '2021-02-03 09:57:20', '2021-02-03 09:57:20'),
(113, 'meeting.participant_left', 'OLnREy2fQISvEMpu33RS0w==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-03T09:57:17Z', '2021-02-03 09:57:21', '2021-02-03 09:57:21'),
(114, 'meeting.participant_left', 'OLnREy2fQISvEMpu33RS0w==', NULL, NULL, '2021-02-03T09:57:17Z', '2021-02-03 09:57:21', '2021-02-03 09:57:21'),
(115, 'meeting.participant_joined', 'A6QpgKfWQWGLN+GMS13gDQ==', 'ibrahimahmed8989@gmail.com', '2021-02-07T07:01:41Z', NULL, '2021-02-07 07:01:45', '2021-02-07 07:01:45'),
(116, 'meeting.participant_joined', 'A6QpgKfWQWGLN+GMS13gDQ==', NULL, '2021-02-07T07:06:04Z', NULL, '2021-02-07 07:06:08', '2021-02-07 07:06:08'),
(117, 'meeting.participant_joined', 'A6QpgKfWQWGLN+GMS13gDQ==', 'alsayed2005mohamed@gmail.com', '2021-02-07T07:06:05Z', NULL, '2021-02-07 07:06:10', '2021-02-07 07:06:10'),
(118, 'meeting.participant_joined', 'A6QpgKfWQWGLN+GMS13gDQ==', NULL, '2021-02-07T07:06:07Z', NULL, '2021-02-07 07:06:11', '2021-02-07 07:06:11'),
(119, 'meeting.participant_left', 'A6QpgKfWQWGLN+GMS13gDQ==', NULL, NULL, '2021-02-07T07:45:19Z', '2021-02-07 07:45:23', '2021-02-07 07:45:23'),
(120, 'meeting.participant_left', 'A6QpgKfWQWGLN+GMS13gDQ==', NULL, NULL, '2021-02-07T07:45:19Z', '2021-02-07 07:45:23', '2021-02-07 07:45:23'),
(121, 'meeting.participant_left', 'A6QpgKfWQWGLN+GMS13gDQ==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-07T07:45:19Z', '2021-02-07 07:45:23', '2021-02-07 07:45:23'),
(122, 'meeting.participant_left', 'A6QpgKfWQWGLN+GMS13gDQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-07T07:45:19Z', '2021-02-07 07:45:23', '2021-02-07 07:45:23'),
(123, 'meeting.participant_joined', 'YZSmiJ6uSlesB/BCkE2qTQ==', 'ibrahimahmed8989@gmail.com', '2021-02-07T07:45:31Z', NULL, '2021-02-07 07:45:35', '2021-02-07 07:45:35'),
(124, 'meeting.participant_joined', 'YZSmiJ6uSlesB/BCkE2qTQ==', NULL, '2021-02-07T07:46:22Z', NULL, '2021-02-07 07:46:27', '2021-02-07 07:46:27'),
(125, 'meeting.participant_joined', 'YZSmiJ6uSlesB/BCkE2qTQ==', NULL, '2021-02-07T07:46:25Z', NULL, '2021-02-07 07:46:30', '2021-02-07 07:46:30'),
(126, 'meeting.participant_joined', 'YZSmiJ6uSlesB/BCkE2qTQ==', 'alsayed2005mohamed@gmail.com', '2021-02-07T07:46:51Z', NULL, '2021-02-07 07:46:55', '2021-02-07 07:46:55'),
(127, 'meeting.participant_left', 'YZSmiJ6uSlesB/BCkE2qTQ==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-07T08:25:49Z', '2021-02-07 08:25:52', '2021-02-07 08:25:52'),
(128, 'meeting.participant_left', 'YZSmiJ6uSlesB/BCkE2qTQ==', NULL, NULL, '2021-02-07T08:25:49Z', '2021-02-07 08:25:53', '2021-02-07 08:25:53'),
(129, 'meeting.participant_left', 'YZSmiJ6uSlesB/BCkE2qTQ==', NULL, NULL, '2021-02-07T08:25:49Z', '2021-02-07 08:25:53', '2021-02-07 08:25:53'),
(130, 'meeting.participant_left', 'YZSmiJ6uSlesB/BCkE2qTQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-07T08:25:49Z', '2021-02-07 08:25:53', '2021-02-07 08:25:53'),
(131, 'meeting.participant_joined', 'S83lTAiYThucX0Zf5ciA9Q==', 'ibrahimahmed8989@gmail.com', '2021-02-07T08:26:10Z', NULL, '2021-02-07 08:26:13', '2021-02-07 08:26:13'),
(132, 'meeting.participant_joined', 'S83lTAiYThucX0Zf5ciA9Q==', NULL, '2021-02-07T08:26:33Z', NULL, '2021-02-07 08:26:36', '2021-02-07 08:26:36'),
(133, 'meeting.participant_joined', 'S83lTAiYThucX0Zf5ciA9Q==', NULL, '2021-02-07T08:26:48Z', NULL, '2021-02-07 08:26:51', '2021-02-07 08:26:51'),
(134, 'meeting.participant_joined', 'S83lTAiYThucX0Zf5ciA9Q==', 'alsayed2005mohamed@gmail.com', '2021-02-07T08:27:13Z', NULL, '2021-02-07 08:27:16', '2021-02-07 08:27:16'),
(135, 'meeting.participant_left', 'S83lTAiYThucX0Zf5ciA9Q==', NULL, NULL, '2021-02-07T08:35:35Z', '2021-02-07 08:35:39', '2021-02-07 08:35:39'),
(136, 'meeting.participant_left', 'S83lTAiYThucX0Zf5ciA9Q==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-07T08:35:39Z', '2021-02-07 08:35:43', '2021-02-07 08:35:43'),
(137, 'meeting.participant_left', 'S83lTAiYThucX0Zf5ciA9Q==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-07T08:35:39Z', '2021-02-07 08:35:43', '2021-02-07 08:35:43'),
(138, 'meeting.participant_left', 'S83lTAiYThucX0Zf5ciA9Q==', NULL, NULL, '2021-02-07T08:35:39Z', '2021-02-07 08:35:43', '2021-02-07 08:35:43'),
(139, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', 'ibrahimahmed8989@gmail.com', '2021-02-09T08:06:01Z', NULL, '2021-02-09 08:06:08', '2021-02-09 08:06:08'),
(140, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', 'alsayed2005mohamed@gmail.com', '2021-02-09T08:07:32Z', NULL, '2021-02-09 08:07:35', '2021-02-09 08:07:35'),
(141, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', NULL, '2021-02-09T08:07:33Z', NULL, '2021-02-09 08:07:37', '2021-02-09 08:07:37'),
(142, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', NULL, '2021-02-09T08:07:33Z', NULL, '2021-02-09 08:07:37', '2021-02-09 08:07:37'),
(143, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', NULL, '2021-02-09T08:07:35Z', NULL, '2021-02-09 08:07:39', '2021-02-09 08:07:39'),
(144, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-09T08:21:20Z', '2021-02-09 08:21:23', '2021-02-09 08:21:23'),
(145, 'meeting.participant_joined', 'F3H04S7wT6KViPIAJes5Tw==', 'ibrahimahmed8989@gmail.com', '2021-02-09T08:21:27Z', NULL, '2021-02-09 08:21:30', '2021-02-09 08:21:30'),
(146, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', NULL, NULL, '2021-02-09T08:46:23Z', '2021-02-09 08:46:26', '2021-02-09 08:46:26'),
(147, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-09T08:46:23Z', '2021-02-09 08:46:27', '2021-02-09 08:46:27'),
(148, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', NULL, NULL, '2021-02-09T08:46:23Z', '2021-02-09 08:46:27', '2021-02-09 08:46:27'),
(149, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-09T08:46:23Z', '2021-02-09 08:46:27', '2021-02-09 08:46:27'),
(150, 'meeting.participant_left', 'F3H04S7wT6KViPIAJes5Tw==', NULL, NULL, '2021-02-09T08:46:23Z', '2021-02-09 08:46:27', '2021-02-09 08:46:27'),
(151, 'meeting.participant_joined', 'Q7sx7BhlTveAb9p/AtoYNw==', 'ibrahimahmed8989@gmail.com', '2021-02-09T08:46:32Z', NULL, '2021-02-09 08:46:36', '2021-02-09 08:46:36'),
(152, 'meeting.participant_joined', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, '2021-02-09T08:48:12Z', NULL, '2021-02-09 08:48:16', '2021-02-09 08:48:16'),
(153, 'meeting.participant_joined', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, '2021-02-09T08:48:12Z', NULL, '2021-02-09 08:48:16', '2021-02-09 08:48:16'),
(154, 'meeting.participant_joined', 'Q7sx7BhlTveAb9p/AtoYNw==', 'alsayed2005mohamed@gmail.com', '2021-02-09T08:48:13Z', NULL, '2021-02-09 08:48:17', '2021-02-09 08:48:17'),
(155, 'meeting.participant_joined', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, '2021-02-09T08:48:17Z', NULL, '2021-02-09 08:48:21', '2021-02-09 08:48:21'),
(156, 'meeting.participant_left', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, NULL, '2021-02-09T09:05:49Z', '2021-02-09 09:05:53', '2021-02-09 09:05:53'),
(157, 'meeting.participant_left', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, NULL, '2021-02-09T09:05:50Z', '2021-02-09 09:05:54', '2021-02-09 09:05:54'),
(158, 'meeting.participant_left', 'Q7sx7BhlTveAb9p/AtoYNw==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-09T09:05:50Z', '2021-02-09 09:05:54', '2021-02-09 09:05:54'),
(159, 'meeting.participant_left', 'Q7sx7BhlTveAb9p/AtoYNw==', 'alsayed2005mohamed@gmail.com', NULL, '2021-02-09T09:05:50Z', '2021-02-09 09:05:54', '2021-02-09 09:05:54'),
(160, 'meeting.participant_left', 'Q7sx7BhlTveAb9p/AtoYNw==', NULL, NULL, '2021-02-09T09:05:47Z', '2021-02-09 09:05:56', '2021-02-09 09:05:56'),
(161, 'meeting.participant_joined', 'byT3Eb8yQGGk/3h43e0DIg==', 'ibrahimahmed8989@gmail.com', '2021-02-10T07:07:30Z', NULL, '2021-02-10 07:07:34', '2021-02-10 07:07:34'),
(162, 'meeting.participant_joined', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, '2021-02-10T07:09:18Z', NULL, '2021-02-10 07:09:22', '2021-02-10 07:09:22'),
(163, 'meeting.participant_joined', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, '2021-02-10T07:11:05Z', NULL, '2021-02-10 07:11:09', '2021-02-10 07:11:09'),
(164, 'meeting.participant_joined', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, '2021-02-10T07:13:11Z', NULL, '2021-02-10 07:13:16', '2021-02-10 07:13:16'),
(165, 'meeting.participant_left', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, NULL, '2021-02-10T07:25:56Z', '2021-02-10 07:26:00', '2021-02-10 07:26:00'),
(166, 'meeting.participant_joined', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, '2021-02-10T07:26:24Z', NULL, '2021-02-10 07:26:28', '2021-02-10 07:26:28'),
(167, 'meeting.participant_left', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, NULL, '2021-02-10T07:50:53Z', '2021-02-10 07:50:57', '2021-02-10 07:50:57'),
(168, 'meeting.participant_left', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, NULL, '2021-02-10T07:50:53Z', '2021-02-10 07:50:57', '2021-02-10 07:50:57'),
(169, 'meeting.participant_left', 'byT3Eb8yQGGk/3h43e0DIg==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-10T07:50:53Z', '2021-02-10 07:50:57', '2021-02-10 07:50:57'),
(170, 'meeting.participant_left', 'byT3Eb8yQGGk/3h43e0DIg==', NULL, NULL, '2021-02-10T07:50:53Z', '2021-02-10 07:50:57', '2021-02-10 07:50:57'),
(171, 'meeting.participant_joined', '9nK/2R5GSEKbVxFh2mxAsQ==', 'ibrahimahmed8989@gmail.com', '2021-02-10T07:51:09Z', NULL, '2021-02-10 07:51:12', '2021-02-10 07:51:12'),
(172, 'meeting.participant_joined', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, '2021-02-10T07:52:40Z', NULL, '2021-02-10 07:52:43', '2021-02-10 07:52:43'),
(173, 'meeting.participant_joined', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, '2021-02-10T07:52:40Z', NULL, '2021-02-10 07:52:43', '2021-02-10 07:52:43'),
(174, 'meeting.participant_joined', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, '2021-02-10T07:52:43Z', NULL, '2021-02-10 07:52:46', '2021-02-10 07:52:46'),
(175, 'meeting.participant_left', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, NULL, '2021-02-10T08:06:13Z', '2021-02-10 08:06:16', '2021-02-10 08:06:16'),
(176, 'meeting.participant_joined', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, '2021-02-10T08:06:13Z', NULL, '2021-02-10 08:06:16', '2021-02-10 08:06:16'),
(177, 'meeting.participant_left', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, NULL, '2021-02-10T08:31:33Z', '2021-02-10 08:31:36', '2021-02-10 08:31:36'),
(178, 'meeting.participant_left', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, NULL, '2021-02-10T08:31:33Z', '2021-02-10 08:31:37', '2021-02-10 08:31:37'),
(179, 'meeting.participant_left', '9nK/2R5GSEKbVxFh2mxAsQ==', NULL, NULL, '2021-02-10T08:31:33Z', '2021-02-10 08:31:38', '2021-02-10 08:31:38'),
(180, 'meeting.participant_joined', '0PYoShkLR9GUV7WZ43IGVQ==', 'ibrahimahmed8989@gmail.com', '2021-02-10T08:32:03Z', NULL, '2021-02-10 08:32:06', '2021-02-10 08:32:06'),
(181, 'meeting.participant_left', '9nK/2R5GSEKbVxFh2mxAsQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-10T08:32:14Z', '2021-02-10 08:32:16', '2021-02-10 08:32:16'),
(182, 'meeting.participant_joined', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, '2021-02-10T08:32:18Z', NULL, '2021-02-10 08:32:21', '2021-02-10 08:32:21'),
(183, 'meeting.participant_joined', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, '2021-02-10T08:32:26Z', NULL, '2021-02-10 08:32:29', '2021-02-10 08:32:29'),
(184, 'meeting.participant_joined', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, '2021-02-10T08:32:30Z', NULL, '2021-02-10 08:32:33', '2021-02-10 08:32:33'),
(185, 'meeting.participant_left', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, NULL, '2021-02-10T08:50:27Z', '2021-02-10 08:50:30', '2021-02-10 08:50:30'),
(186, 'meeting.participant_left', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, NULL, '2021-02-10T08:50:28Z', '2021-02-10 08:50:32', '2021-02-10 08:50:32'),
(187, 'meeting.participant_left', '0PYoShkLR9GUV7WZ43IGVQ==', NULL, NULL, '2021-02-10T08:50:31Z', '2021-02-10 08:50:34', '2021-02-10 08:50:34'),
(188, 'meeting.participant_left', '0PYoShkLR9GUV7WZ43IGVQ==', 'ibrahimahmed8989@gmail.com', NULL, '2021-02-10T08:50:32Z', '2021-02-10 08:50:35', '2021-02-10 08:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_assessments`
--

CREATE TABLE `student_assessments` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `final_mark` double(8,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `passed` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `number_of_attempts` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_start` int(11) NOT NULL DEFAULT '0',
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_submitted` int(11) NOT NULL DEFAULT '0',
  `exam_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assessments`
--

INSERT INTO `student_assessments` (`id`, `student_id`, `assessment_id`, `mark`, `final_mark`, `note`, `type`, `passed`, `lecture_id`, `number_of_attempts`, `start_time`, `end_time`, `is_start`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `is_submitted`, `exam_id`, `group_id`, `subject_id`, `status`) VALUES
(1, 33, 8, 2.00, 6.00, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:15', 1, NULL, NULL, NULL, 'Pass'),
(2, 33, 10, NULL, NULL, NULL, 2, NULL, 1, NULL, '01:04:23', '01:09:23', 1, 1, 0, '2021-01-31 23:04:23', '2021-01-31 23:04:52', 0, NULL, NULL, NULL, 'Redo'),
(3, 32, 10, NULL, NULL, NULL, 2, NULL, 1, NULL, '01:05:19', '01:10:19', 1, 1, 0, '2021-01-31 23:05:19', '2021-01-31 23:05:19', 0, NULL, NULL, NULL, NULL),
(4, 32, 8, 0.00, 6.00, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:36', 1, NULL, NULL, NULL, 'Pass'),
(5, 33, 3, 1.00, 4.00, NULL, 1, 1, 2, NULL, NULL, NULL, 0, 1, 0, '2021-02-01 00:13:49', '2021-02-01 00:14:10', 1, NULL, NULL, NULL, 'Pass'),
(6, 33, 12, NULL, NULL, NULL, 2, NULL, 2, NULL, '02:14:29', '02:34:29', 1, 1, 0, '2021-02-01 00:14:29', '2021-02-01 00:14:29', 0, NULL, NULL, NULL, NULL),
(7, 32, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 2, 3, 4, NULL),
(8, 46, 3, 1.00, 5.00, NULL, 1, 1, 19, NULL, NULL, NULL, 0, 1, 0, '2021-02-07 22:56:54', '2021-02-07 22:57:16', 1, NULL, NULL, NULL, 'Pass'),
(9, 46, 28, 0.00, 4.00, NULL, 2, 0, 19, NULL, '00:57:34', '01:57:34', 0, 1, 0, '2021-02-07 22:57:34', '2021-02-07 22:57:54', 1, NULL, NULL, NULL, 'Fail'),
(39, 55, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 5, 3, 4, NULL),
(38, 50, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 5, 3, 4, NULL),
(37, 46, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 5, 3, 4, NULL),
(36, 32, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 5, 3, 4, NULL),
(35, 33, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 5, 3, 4, NULL),
(18, 32, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(19, 33, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(20, 46, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(21, 64, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(22, 66, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(23, 67, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 6, 2, 8, NULL),
(24, 67, 3, 2.00, 5.00, NULL, 1, 1, 20, NULL, NULL, NULL, 0, 1, 0, '2021-02-09 13:52:57', '2021-02-09 13:53:53', 1, NULL, NULL, NULL, 'Pass'),
(25, 67, 28, 3.00, 3.00, NULL, 2, 1, 20, NULL, '15:54:52', '16:54:52', 0, 1, 0, '2021-02-09 13:54:52', '2021-02-09 13:55:21', 1, NULL, NULL, NULL, 'Pass'),
(26, 32, 3, 3.00, 5.00, NULL, 1, 1, 21, NULL, NULL, NULL, 0, 1, 0, '2021-02-09 15:15:30', '2021-02-09 15:15:48', 1, NULL, NULL, NULL, 'Pass'),
(27, 46, 3, 3.00, 5.00, NULL, 1, 1, 21, NULL, NULL, NULL, 0, 1, 0, '2021-02-09 15:16:53', '2021-02-09 15:17:05', 1, NULL, NULL, NULL, 'Pass'),
(28, 32, 28, 0.00, 4.00, NULL, 2, 0, 21, NULL, '17:17:31', '18:17:31', 0, 1, 0, '2021-02-09 15:17:31', '2021-02-09 15:18:01', 1, NULL, NULL, NULL, 'Fail'),
(29, 46, 28, 0.00, 3.00, NULL, 2, 0, 21, NULL, '17:17:47', '18:17:47', 0, 1, 0, '2021-02-09 15:17:47', '2021-02-09 15:17:58', 1, NULL, NULL, NULL, 'Fail'),
(40, 46, 34, 1.00, 2.00, NULL, 1, 1, 23, NULL, NULL, NULL, 0, 1, 0, '2021-02-09 16:25:12', '2021-02-09 16:25:30', 1, NULL, NULL, NULL, 'Pass'),
(41, 46, 28, 1.00, 3.00, NULL, 2, 0, 23, NULL, '18:25:47', '19:25:47', 0, 1, 0, '2021-02-09 16:25:47', '2021-02-09 16:26:07', 1, NULL, NULL, NULL, 'Fail'),
(42, 32, 34, 1.00, 2.00, NULL, 1, 1, 23, NULL, NULL, NULL, 0, 1, 0, '2021-02-09 16:26:32', '2021-02-09 16:26:47', 1, NULL, NULL, NULL, 'Pass'),
(43, 32, 28, NULL, NULL, NULL, 2, NULL, 23, NULL, '18:27:16', '19:27:16', 1, 1, 0, '2021-02-09 16:27:16', '2021-02-09 16:27:21', 0, NULL, NULL, NULL, 'Redo'),
(44, 32, 28, 0.00, 3.00, NULL, 2, 0, 23, NULL, '18:27:22', '19:27:22', 0, 1, 0, '2021-02-09 16:27:22', '2021-02-09 16:28:12', 1, NULL, NULL, NULL, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `student_assessment_questions`
--

CREATE TABLE `student_assessment_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_assessment_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `essay_answer` text COLLATE utf8mb4_unicode_ci,
  `score` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `model_answer` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `essay_model_answer` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_assessment_questions`
--

INSERT INTO `student_assessment_questions` (`id`, `student_assessment_id`, `question_id`, `answer_id`, `essay_answer`, `score`, `weight`, `model_answer`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `essay_model_answer`) VALUES
(1, 1, 22, 71, NULL, 0, 1, 74, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:06', NULL),
(2, 1, 21, 68, NULL, 0, 1, 69, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:07', NULL),
(3, 1, 23, 78, NULL, 1, 1, 78, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:09', NULL),
(4, 1, 24, 80, NULL, 1, 1, 80, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:11', NULL),
(5, 1, 26, 93, NULL, 0, 1, 92, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:13', NULL),
(6, 1, 25, 86, NULL, 0, 1, 89, 1, 0, '2021-01-31 23:03:59', '2021-01-31 23:04:13', NULL),
(7, 4, 22, 71, NULL, 0, 1, 74, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:36', NULL),
(8, 4, 21, NULL, NULL, NULL, 1, 69, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:29', NULL),
(9, 4, 23, NULL, NULL, NULL, 1, 78, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:29', NULL),
(10, 4, 24, NULL, NULL, NULL, 1, 80, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:29', NULL),
(11, 4, 26, NULL, NULL, NULL, 1, 92, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:29', NULL),
(12, 4, 25, NULL, NULL, NULL, 1, 89, 1, 0, '2021-01-31 23:13:29', '2021-01-31 23:13:29', NULL),
(13, 5, 2, 4, NULL, 0, 1, 6, 1, 0, '2021-02-01 00:13:49', '2021-02-01 00:13:59', NULL),
(14, 5, 4, 15, NULL, 0, 1, 17, 1, 0, '2021-02-01 00:13:49', '2021-02-01 00:14:00', NULL),
(15, 5, 7, 32, NULL, 1, 1, 32, 1, 0, '2021-02-01 00:13:49', '2021-02-01 00:14:04', NULL),
(16, 5, 19, NULL, '                ABCD', NULL, 1, NULL, 1, 0, '2021-02-01 00:13:49', '2021-02-01 00:14:10', 'The plant absorb water by osmosis to make photosynthesis'),
(17, 8, 6, 22, NULL, 0, 1, 21, 1, 0, '2021-02-07 22:56:54', '2021-02-07 22:56:58', NULL),
(18, 8, 20, NULL, '                         Fhfhhiytdyuu', NULL, 1, NULL, 1, 0, '2021-02-07 22:56:54', '2021-02-07 22:57:10', 'When water increase than the normal limit the plant loss water by transpiration\nTo lower its body temperature and help in ascent of water and salt to the leaves'),
(19, 8, 7, 32, NULL, 1, 1, 32, 1, 0, '2021-02-07 22:56:54', '2021-02-07 22:57:11', NULL),
(20, 8, 27, 96, NULL, 0, 2, 95, 1, 0, '2021-02-07 22:56:54', '2021-02-07 22:57:14', NULL),
(21, 9, 27, 96, NULL, 0, 2, 95, 1, 0, '2021-02-07 22:57:34', '2021-02-07 22:57:40', NULL),
(22, 9, 34, 117, NULL, 0, 1, 118, 1, 0, '2021-02-07 22:57:34', '2021-02-07 22:57:42', NULL),
(23, 9, 9, 37, NULL, 0, 1, 35, 1, 0, '2021-02-07 22:57:34', '2021-02-07 22:57:47', NULL),
(24, 24, 6, 22, NULL, 0, 1, 21, 1, 0, '2021-02-09 13:52:57', '2021-02-09 13:53:12', NULL),
(25, 24, 20, NULL, NULL, NULL, 1, NULL, 1, 0, '2021-02-09 13:52:57', '2021-02-09 13:52:57', 'When water increase than the normal limit the plant loss water by transpiration\nTo lower its body temperature and help in ascent of water and salt to the leaves'),
(26, 24, 7, 29, NULL, 0, 1, 32, 1, 0, '2021-02-09 13:52:57', '2021-02-09 13:53:44', NULL),
(27, 24, 27, 95, NULL, 2, 2, 95, 1, 0, '2021-02-09 13:52:57', '2021-02-09 13:53:50', NULL),
(28, 25, 2, 6, NULL, 1, 1, 6, 1, 0, '2021-02-09 13:54:52', '2021-02-09 13:55:11', NULL),
(29, 25, 7, 32, NULL, 1, 1, 32, 1, 0, '2021-02-09 13:54:52', '2021-02-09 13:55:14', NULL),
(30, 25, 9, 35, NULL, 1, 1, 35, 1, 0, '2021-02-09 13:54:52', '2021-02-09 13:55:18', NULL),
(31, 26, 6, 21, NULL, 1, 1, 21, 1, 0, '2021-02-09 15:15:30', '2021-02-09 15:15:43', NULL),
(32, 26, 20, NULL, NULL, NULL, 1, NULL, 1, 0, '2021-02-09 15:15:30', '2021-02-09 15:15:30', 'When water increase than the normal limit the plant loss water by transpiration\nTo lower its body temperature and help in ascent of water and salt to the leaves'),
(33, 26, 7, 28, NULL, 0, 1, 32, 1, 0, '2021-02-09 15:15:30', '2021-02-09 15:15:45', NULL),
(34, 26, 27, 95, NULL, 2, 2, 95, 1, 0, '2021-02-09 15:15:30', '2021-02-09 15:15:47', NULL),
(35, 27, 6, 21, NULL, 1, 1, 21, 1, 0, '2021-02-09 15:16:53', '2021-02-09 15:16:57', NULL),
(36, 27, 20, NULL, '                         اات', NULL, 1, NULL, 1, 0, '2021-02-09 15:16:53', '2021-02-09 15:17:02', 'When water increase than the normal limit the plant loss water by transpiration\nTo lower its body temperature and help in ascent of water and salt to the leaves'),
(37, 27, 7, 28, NULL, 0, 1, 32, 1, 0, '2021-02-09 15:16:53', '2021-02-09 15:17:04', NULL),
(38, 27, 27, 95, NULL, 2, 2, 95, 1, 0, '2021-02-09 15:16:53', '2021-02-09 15:17:04', NULL),
(39, 28, 27, 96, NULL, 0, 2, 95, 1, 0, '2021-02-09 15:17:31', '2021-02-09 15:17:50', NULL),
(40, 28, 34, 119, NULL, 0, 1, 118, 1, 0, '2021-02-09 15:17:31', '2021-02-09 15:17:52', NULL),
(41, 28, 7, 33, NULL, 0, 1, 32, 1, 0, '2021-02-09 15:17:31', '2021-02-09 15:17:53', NULL),
(42, 29, 2, 5, NULL, 0, 1, 6, 1, 0, '2021-02-09 15:17:47', '2021-02-09 15:17:53', NULL),
(43, 29, 34, 117, NULL, 0, 1, 118, 1, 0, '2021-02-09 15:17:47', '2021-02-09 15:17:54', NULL),
(44, 29, 9, 34, NULL, 0, 1, 35, 1, 0, '2021-02-09 15:17:47', '2021-02-09 15:17:56', NULL),
(45, 40, 4, 16, NULL, 0, 1, 17, 1, 0, '2021-02-09 16:25:12', '2021-02-09 16:25:21', NULL),
(46, 40, 6, 21, NULL, 1, 1, 21, 1, 0, '2021-02-09 16:25:12', '2021-02-09 16:25:26', NULL),
(47, 41, 2, 4, NULL, 0, 1, 6, 1, 0, '2021-02-09 16:25:47', '2021-02-09 16:25:55', NULL),
(48, 41, 34, 117, NULL, 0, 1, 118, 1, 0, '2021-02-09 16:25:47', '2021-02-09 16:25:57', NULL),
(49, 41, 9, 35, NULL, 1, 1, 35, 1, 0, '2021-02-09 16:25:47', '2021-02-09 16:25:58', NULL),
(50, 42, 4, 15, NULL, 0, 1, 17, 1, 0, '2021-02-09 16:26:32', '2021-02-09 16:26:44', NULL),
(51, 42, 6, 21, NULL, 1, 1, 21, 1, 0, '2021-02-09 16:26:32', '2021-02-09 16:26:41', NULL),
(52, 43, 2, NULL, NULL, NULL, 1, 6, 1, 0, '2021-02-09 16:27:16', '2021-02-09 16:27:16', NULL),
(53, 43, 7, NULL, NULL, NULL, 1, 32, 1, 0, '2021-02-09 16:27:16', '2021-02-09 16:27:16', NULL),
(54, 43, 34, NULL, NULL, NULL, 1, 118, 1, 0, '2021-02-09 16:27:16', '2021-02-09 16:27:16', NULL),
(55, 44, 2, 3, NULL, 0, 1, 6, 1, 0, '2021-02-09 16:27:22', '2021-02-09 16:27:45', NULL),
(56, 44, 34, 116, NULL, 0, 1, 118, 1, 0, '2021-02-09 16:27:22', '2021-02-09 16:27:46', NULL),
(57, 44, 9, 34, NULL, 0, 1, 35, 1, 0, '2021-02-09 16:27:22', '2021-02-09 16:27:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_exams`
--

CREATE TABLE `student_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_submitted` int(11) NOT NULL DEFAULT '0',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_start` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_questions`
--

CREATE TABLE `student_exam_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_exam_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `essay_answer` text COLLATE utf8mb4_unicode_ci,
  `score` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `essay_model_answer` text COLLATE utf8mb4_unicode_ci,
  `model_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transactions`
--

CREATE TABLE `student_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `number_of_lectures` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `transaction_type_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_transactions`
--

INSERT INTO `student_transactions` (`id`, `created_by_user_id`, `student_id`, `amount`, `number_of_lectures`, `subject_id`, `teacher_id`, `lecture_id`, `notes`, `transaction_type_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`, `balance`) VALUES
(1, 7, 33, NULL, 5, 4, 7, NULL, NULL, 2, 1, 0, '2021-01-31 22:49:46', '2021-01-31 22:49:52', 5),
(2, 7, 32, NULL, 5, 4, 7, NULL, NULL, 2, 1, 0, '2021-01-31 22:50:12', '2021-01-31 22:50:18', 5),
(3, 11, 33, NULL, 5, 8, 11, NULL, NULL, 2, 1, 0, '2021-01-31 22:51:48', '2021-01-31 22:51:57', 5),
(4, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-01-31 22:52:07', '2021-01-31 22:52:07', NULL),
(5, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-01-31 22:52:33', '2021-01-31 22:52:33', NULL),
(6, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-01-31 22:52:40', '2021-01-31 22:52:40', NULL),
(7, 11, 32, NULL, 5, 8, 11, NULL, NULL, 2, 1, 0, '2021-01-31 22:53:07', '2021-01-31 22:53:12', 5),
(8, NULL, 33, NULL, 1, 4, 7, 1, NULL, 1, 1, 0, '2021-01-31 22:59:07', '2021-01-31 22:59:07', 4),
(9, NULL, 32, NULL, 1, 4, 7, 1, NULL, 1, 1, 0, '2021-01-31 22:59:07', '2021-01-31 22:59:07', 4),
(15, NULL, 32, NULL, 1, 8, 11, 6, NULL, 1, 1, 0, '2021-02-01 01:22:26', '2021-02-01 01:22:26', 4),
(11, NULL, 33, NULL, 1, 8, 11, 2, NULL, 1, 1, 0, '2021-01-31 23:57:49', '2021-01-31 23:57:49', 4),
(12, 38, 33, NULL, 1, 4, 7, NULL, NULL, 2, 1, 0, '2021-02-01 00:51:38', '2021-02-01 00:51:43', 5),
(13, NULL, 33, NULL, 1, 4, 7, 3, NULL, 1, 1, 0, '2021-02-01 01:11:24', '2021-02-01 01:11:24', 4),
(14, NULL, 32, NULL, 1, 4, 7, 3, NULL, 1, 1, 0, '2021-02-01 01:11:24', '2021-02-01 01:11:24', 3),
(16, NULL, 33, NULL, 1, 8, 11, 6, NULL, 1, 1, 0, '2021-02-01 01:22:26', '2021-02-01 01:22:26', 3),
(17, 11, 46, NULL, 4, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-07 22:36:30', '2021-02-07 22:36:37', 4),
(18, NULL, 32, NULL, 1, 8, 11, 17, NULL, 1, 1, 0, '2021-02-07 22:41:05', '2021-02-07 22:41:05', 3),
(19, NULL, 33, NULL, 1, 8, 11, 17, NULL, 1, 1, 0, '2021-02-07 22:41:05', '2021-02-07 22:41:05', 2),
(20, NULL, 46, NULL, 1, 8, 11, 17, NULL, 1, 1, 0, '2021-02-07 22:41:05', '2021-02-07 22:41:05', 3),
(21, NULL, 46, NULL, 1, 8, 11, 19, NULL, 1, 1, 0, '2021-02-07 22:55:30', '2021-02-07 22:55:30', 2),
(22, 7, 46, NULL, 5, 4, 7, NULL, NULL, 2, 1, 0, '2021-02-09 11:18:26', '2021-02-09 11:18:40', 5),
(23, 7, 55, NULL, 5, 4, 7, NULL, NULL, 2, 1, 0, '2021-02-09 12:04:20', '2021-02-09 12:04:26', 5),
(24, 7, 50, NULL, 5, 4, 7, NULL, NULL, 2, 1, 0, '2021-02-09 12:05:52', '2021-02-09 12:06:19', 5),
(25, 19, 66, NULL, 5, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 12:26:39', '2021-02-09 12:26:48', 5),
(26, 19, 64, NULL, 4, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 12:28:12', '2021-02-09 12:28:25', 4),
(27, 19, 67, NULL, 4, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 13:33:19', '2021-02-09 13:33:25', 4),
(28, NULL, 32, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 2),
(29, NULL, 33, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 1),
(30, NULL, 46, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 1),
(31, NULL, 64, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 3),
(32, NULL, 66, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 4),
(33, NULL, 67, NULL, 1, 8, 11, 20, NULL, 1, 1, 0, '2021-02-09 13:50:05', '2021-02-09 13:50:05', 3),
(34, NULL, 67, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 2),
(35, NULL, 32, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 1),
(36, NULL, 66, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 3),
(37, NULL, 64, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 2),
(38, NULL, 33, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 0),
(39, NULL, 46, NULL, 1, 8, 11, 21, NULL, 1, 1, 0, '2021-02-09 15:13:39', '2021-02-09 15:13:39', 0),
(40, 19, 46, NULL, 4, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 15:52:41', '2021-02-09 15:52:50', 4),
(41, NULL, 32, NULL, 1, 8, 11, 22, NULL, 1, 1, 0, '2021-02-09 16:12:21', '2021-02-09 16:12:21', 0),
(42, NULL, 46, NULL, 1, 8, 11, 22, NULL, 1, 1, 0, '2021-02-09 16:12:21', '2021-02-09 16:12:21', 3),
(43, 11, 32, NULL, 5, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 16:19:14', '2021-02-09 16:19:21', 5),
(44, NULL, 46, NULL, 1, 8, 11, 23, NULL, 1, 1, 0, '2021-02-09 16:22:10', '2021-02-09 16:22:10', 2),
(45, NULL, 32, NULL, 1, 8, 11, 23, NULL, 1, 1, 0, '2021-02-09 16:22:10', '2021-02-09 16:22:10', 4),
(46, 19, 64, NULL, 5, 8, 11, NULL, NULL, 2, 1, 0, '2021-02-09 20:00:27', '2021-02-09 20:00:35', 7);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `status_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `grade_id`, `status_id`, `file_id`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 09:50:59', '2021-01-30 09:50:59'),
(2, 'Biology', 1, '1', 2, 1, 0, '2021-01-30 09:51:01', '2021-01-30 12:49:38'),
(3, 'Biology', 2, '1', 3, 1, 0, '2021-01-30 09:53:05', '2021-01-30 12:50:00'),
(4, 'Biology', 3, '1', 4, 1, 0, '2021-01-30 09:53:39', '2021-01-30 12:54:59'),
(5, NULL, NULL, NULL, 5, 0, 0, '2021-01-30 09:54:11', '2021-01-30 09:55:01'),
(6, 'Math', 1, '2', 6, 1, 0, '2021-01-30 09:56:30', '2021-01-30 09:57:02'),
(7, 'Math', 2, '2', 7, 1, 0, '2021-01-30 09:57:08', '2021-01-30 09:57:52'),
(8, 'Math', 3, '1', 8, 1, 0, '2021-01-30 09:57:56', '2021-01-30 12:48:39'),
(9, NULL, NULL, NULL, NULL, 0, 0, '2021-01-30 10:58:43', '2021-01-30 10:58:43'),
(10, NULL, NULL, NULL, 29, 0, 0, '2021-02-01 10:43:38', '2021-02-01 10:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `subject_status`
--

CREATE TABLE `subject_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_status`
--

INSERT INTO `subject_status` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Active', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Inactive', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_activation_email`
--

CREATE TABLE `teacher_activation_email` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_activation_email`
--

INSERT INTO `teacher_activation_email` (`id`, `teacher_id`, `subject_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 7, 4, '<p>You should pay on this number 123</p>\n<p>Watch this video<br /><br />https://www.youtube.com/watch?v=OdV6SkGZb3g&amp;ab_channel=YellowBrickCinema-RelaxingMusic</p>', '2021-01-30 12:40:33', '2021-01-31 22:15:40'),
(2, 11, 8, '<p>Welcome to Knowledge Academy, we are glad to inform you that your request to join Shady Alaa in Math has been accepted please watch this vedio&nbsp;</p>\n<p>&nbsp;</p>\n<p>https://youtu.be/gCeDRZSGEhM</p>\n<p>&nbsp;</p>', '2021-01-30 12:48:39', '2021-01-31 22:19:39'),
(3, 3, 2, 'Welcome to Knowledge Academy, we are glad to inform you that your request to join\n            Mona in Biology has been accepted', '2021-01-30 12:49:38', '2021-01-30 12:49:38'),
(4, 6, 3, 'Welcome to Knowledge Academy, we are glad to inform you that your request to join\n            Mai in Biology has been accepted', '2021-01-30 12:50:00', '2021-01-30 12:50:00'),
(5, 7, 4, 'Welcome to Knowledge Academy, we are glad to inform you that your request to join\n            Ibrahim in Biology has been accepted', '2021-01-30 12:54:59', '2021-01-30 12:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_payments`
--

CREATE TABLE `teacher_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_by_user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 'Lecture Taken', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39'),
(2, 'Payment', 1, 0, '2021-01-28 14:09:39', '2021-01-28 14:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_client_key` text COLLATE utf8mb4_unicode_ci,
  `zoom_client_secret` text COLLATE utf8mb4_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `parents_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parents_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` double DEFAULT NULL,
  `teacher_balance` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `student_balance` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `zoom_client_key`, `zoom_client_secret`, `status_id`, `parents_email`, `phone_number`, `parents_phone_number`, `whatsapp_number`, `facebook_url`, `school`, `alt_phone_number`, `file_id`, `city`, `gender_id`, `teacher_id`, `position`, `zoom_account`, `zoom_password`, `payment_terms`, `teacher_balance`, `description`, `student_balance`, `admin_show`, `stuff_order`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'super@nour.com', '$2y$10$qPRNj5XNSDDb.ITOTUyPg.qreU9YidxTFi0Mh9eWoBl0EEvLzSJHy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(3, 'Mona', 'monahusseinbiology@gmail.com', '$2y$10$RNCluOjickkrbsIg4vhFcu3ETC4ILemfxlrBjG0ahkBUu6cCdDfOC', '0', 'Abiaa6LvSb-DuOCzr-kOEg', 'TvMHdio5E5aqWr3BKp2hXhhBVkd58WzBYQ7p', 1, NULL, '01225387074', NULL, NULL, 'https://www.facebook.com/mona.hussien.9638', 'Zahran', '01225387074', 9, 'Alexandria', 2, NULL, 'Teacher', 'Monahusseinbiology@gmail.com', NULL, 1, 0, 'Biology teacher for senior one', NULL, 1, 0, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(6, 'Mai', 'mai.hamdy.mohammed@gmail.com', '$2y$10$gNBBWMo4TXez1VNrJDMeFuQPJuV3MMb0reRpsnj0GMw46wR76npXW', '0', 'mNZZQwOsT5aLwd-tE2fU2Q', 'ecu7BTwieKBIq8plsKfdIMqhxRaz2GSGeioq', 1, NULL, '01207622011', NULL, NULL, 'https://www.facebook.com/mai.hamdy.16503', 'Zahran', '01207622011', 10, 'Alexandria', 2, NULL, 'Teacher', 'Mai.hamdy.mohammed@gmail.com', 'Mai01207622011', 1, 0, 'Biology teacher for senior 2', NULL, 1, 0, NULL, NULL, NULL),
(7, 'Ibrahim', 'ibrahimahmed8989@gmail.com', '$2y$10$6MOT1OQ8ZGEdORD/67165Ofsx1xFZ/wBRBI9tjtOb8jPWLpQCaLnq', '0', 'JY39y4nHSd2UZcRuXLKHNQ', 'O1pkquJZq71KteOFtpFJZkT0mycsvLb7K0m8', 1, NULL, '01222509863', NULL, NULL, 'https://www.facebook.com/ibrahimahmed8989', 'Zahran', '01222509863', 11, 'Alexandria', 1, NULL, 'Teacher', 'Ibrahimahmed8989@gmail.com', NULL, 1, 2, 'Senior 3', NULL, 1, 0, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(11, 'Shady Alaa', 'shadyalaa785@gmail.com', '$2y$10$7asNofB.ZzkGOauKjY3lxeFcHUjl9rJBj6YHB0cSK5LBWix.B2nTG', '0', '7bXTCENkTk2WXhV5g0kslQ', 'SBFdrO26IL9akuNo7eiVfIN3iQuD8Y3wU1EG', 1, NULL, '01017896121', NULL, NULL, 'https://www.facebook.com/shady.alaa.5817', 'MES', '01017896122', 12, 'alexandria', 1, NULL, NULL, 'shadyalaa785@gmail.com', 'Shady785', 1, 8, NULL, NULL, 1, 0, NULL, NULL, NULL),
(12, 'maii', 'mairedapple5@gmail.com', '$2y$10$BNtvVEU9AwGUC8kN314rBOna6V6YLD38r0TwUUtviNzn81hjiGr6e', '0', NULL, NULL, 1, NULL, 'mairedapple5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '123456', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(13, 'menna', 'mennahassanelfawal@gmail.com', NULL, 'rzFlWeYvCBWFmxCAilghrVE8ieryxWkw', NULL, NULL, 2, NULL, 'mennahassanelfawal@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '123456', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(14, 'mai', 'maiwork7@gmail.com', NULL, '1EdhqkwDVQQ2CQjTB6k2ysZmRl5aZkny', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(16, 'maii', 'maiwork610@gmail.com', '$2y$10$/bFuhh8IMafpuBs2GCn9Qe4.YtOQUMS5Akd44wDFg4PdN5oqEU2UG', '0', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(17, 'kawthar', 'alkawther1994@gmail.com', '$2y$10$dct5gsfBF/ocCLyCCm2SA.9wM4GL9agnzIto98.euZ2v8DsDzpPxW', '0', NULL, NULL, 1, NULL, 'Mai.hamdy.mohammed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 'Mai01207622011', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(19, 'menna', 'mennahassanelfawal.me@gmail.com', '$2y$10$fgM5AhwQCDpBAgr3cjwQXO7Nq5H9SeD60KHWLy47LYHX89ts8ZLD2', '0', NULL, NULL, 1, NULL, 'mennahassanelfawal.me@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(32, 'Student mai', 'Mai_hamdy61@yahoo.com', '$2y$10$A227Alog1Ek3AlbcXr7n7eAAyyfD91IheLVs1cTbKoSNlDANaZ13i', 'ZPU5hmDNj2umaAvG3ghlbGaKq17UnQbI', NULL, NULL, NULL, 'Maiwork610@gmail.com', '012079820029', '01207622011', '012079820029', 'https://www.facebook.com/amal.wageeh.31', 'Zahran', NULL, 22, 'Alex', 2, NULL, NULL, 'Mai_hamdy61@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(33, 'Ebrahim Ahmed', 'ebrahimahmed10@gmail.com', '$2y$10$jCtTU0Szyi0Ibr.d3QEyReoDTV09yIKjXVI2EBFX2cJYMJMlWW4Gu', 'hdQY9YUUDCtK2TnbZAbhyAykgUb0TZIf', NULL, NULL, NULL, 'ebrahimahmed100@gmail.com', '01555692979', '01555692974', '01555692979', 'https://www.facebook.com/anoga.elmasria', 'Zahran', NULL, 30, 'Alexandria', 1, NULL, NULL, 'ebrahimahmed10@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(35, 'Rewan Ahmed', 'rewan663200@gmail.com', '$2y$10$QlpKtqDXGJ4lGkeVWJGEZu1sQ5GHhAeCtz3E5ldGva8ZjCPWQmrBu', '0', NULL, NULL, 1, NULL, 'Mai.hamdy.mohammed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 'Mai01207622011', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(36, 'Rewan', 'Rewanahmed095@gmail.com', '$2y$10$Id9/JAE4Enwckfgs5cXsuuIdoJJzqLgAJNKeKzd4i.8vaKrNWQmuO', '0', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(37, 'Monaa', 'Monawork7@gmail.com', '$2y$10$PmgqpLt4VJcY8ytZGc13q.xovTOv6Mp4bjd0LnQs8VMqW5mNAx3He', '0', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(38, 'Mona', 'monahussein36@gmail.com', '$2y$10$cK/nWBgTPoTqR5YfJT.eEeU1I6s8AzjShaqY3yCNPDHveyvxidMO.', '0', NULL, NULL, 1, NULL, 'Mai.hamdy.mohammed@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, 'Mai01207622011', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(43, 'Mahytab', 'crowenofmyheart81093@gmail.com', '$2y$10$IUCAckij4HrJ8JO5py5AQ.e9svOgMkdBVh71FqxIRwTRdLxA/ld9C', '0', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(46, 'Engy', 'engygaber80@gmail.com', '$2y$10$qRV9HMKE3cvIWETZjtzzjuXpJrESZ4mjm9Kop6WBTwocAcHmUKNty', 'trq4j4KmtI20TKwype3TingGt6cfQJwV', NULL, NULL, NULL, 'ebrahimahmed10@gmail.com', '01221628771', '01555692974', '01221628771', 'https://www.facebook.com/anoga.elmasri', 'MES', NULL, 31, 'Alexandria', 2, NULL, NULL, 'engygaber80@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(50, 'rewan', 'rewan6632@gmail.com', '$2y$10$yYTbGoNioLAixWwaxLHOpe4NFsxPoEcVObUOhHGT0QuV8OTW.Kzt.', 'NfO0t7FpluSXxhkY6373a4lmKRG5E2cR', NULL, NULL, NULL, 'rewanahmed@gmail.com', '01285139853', '01207622011', '01285139853', 'https://www.facebook.com/profile.php?id=100039684604254', 'zahran', NULL, 33, 'alex', 2, NULL, NULL, 'rewan6632@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, 'ObKH3m9U4WNpfER0TXbQXniTU0s20QukDSOoq8fq2yZEKG17C4dETFlQXM9k', NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(55, 'Ibrahim yahoo', 'ibrahimahmed8989@yahoo.com', '$2y$10$l6JCSosgBcnHF2jlEUQsc.7wzTR0rnlw4rR8aeEV7iyvgljSXMhcG', 'OOR80Uvfwcz0Eay0fFNqMSiTtmLFIvn1', NULL, NULL, NULL, 'mai@gmail.com', '01010158151', '01222509863', '01010158151', 'https://www.facebook.com/mahmoud.r.salem', 'Zahran', NULL, 38, 'Alexandria', 1, NULL, NULL, 'ibrahimahmed8989@yahoo.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(64, 'Hanin Kamel', 'kamelhanin770@gmail.com', '$2y$10$p1IVLssIuOEl7i0nuSronugFuSJNAbZbjFT0lhcLYFNgsC0bhTdqu', '0', NULL, NULL, NULL, 'kamelhusain@gmail.com', '01286714267', '01115660359', '01286714267', 'https://www.facebook.com/hanin.kamel.79', 'Mohamed Zahran language school', NULL, 39, 'Alexandria', 2, NULL, NULL, 'kamelhanin770@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(66, 'Ibrahim Hotmail', 'ibrahimahmed8989@hotmail.com', '$2y$10$AMo1wE7vb2AoIJ6RkQK0o.7KqbKAwqyGkiybWZImkdi.xU8DnAoZy', '0', NULL, NULL, NULL, 'Ibrahimahmed8989@gmail.com', '01555692980', '01555692978', '01555692980', 'https://www.facebook.com/amrelsoliaofficial', 'Zahran', NULL, 41, 'Alexandria', 1, NULL, NULL, 'ibrahimahmed8989@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(67, 'mahetab gamal gaber', 'mahygamal817@gmail.com', '$2y$10$L1DmqV16ER.guE3F7z1KQeuSlHjvK1CNhv6iRvpaVWW5IvrZjlJa2', '0', NULL, NULL, NULL, 'gamalmahy2@gmail.com', '01288998042', '01021474740', '01288998042', 'https://www.facebook.com/mahy.gamal.35', 'zahran', NULL, 42, 'alexandria', 2, NULL, NULL, 'mahy.gamal817@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_subjects`
--

CREATE TABLE `users_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `school_year_id` int(11) DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `reason_to_suspend` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential_sent` int(11) DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_subjects`
--

INSERT INTO `users_subjects` (`id`, `subject_id`, `teacher_id`, `student_id`, `status_id`, `balance`, `admin_show`, `school_year_id`, `note`, `reason_to_suspend`, `credential_sent`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL),
(2, 3, 6, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL),
(3, 4, 7, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL),
(4, 8, 11, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, NULL),
(5, 8, 11, 32, 1, 4, 1, 2, NULL, 'You are absent in last lecture', 1, 0, NULL, '2021-02-09 16:22:49'),
(6, 4, 7, 33, 1, 4, 1, 2, '2135324635', NULL, 1, 0, NULL, '2021-02-07 21:14:04'),
(7, 4, 7, 32, 1, 3, 1, 2, NULL, NULL, 1, 0, '2021-01-31 22:21:57', '2021-02-01 01:13:29'),
(8, 8, 11, 33, 4, 0, 1, 2, NULL, 'You are absent in last lecture', 1, 0, '2021-01-31 22:39:47', '2021-02-09 15:13:39'),
(17, 4, 7, 46, 1, 5, 1, 2, NULL, NULL, 1, 0, NULL, '2021-02-09 11:18:40'),
(9, 8, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(10, 8, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(11, 8, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(12, 8, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(13, 4, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(14, 4, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(15, 4, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(16, 4, NULL, 33, 2, 0, 1, NULL, NULL, NULL, 0, 0, NULL, NULL),
(18, 8, 11, 46, 1, 2, 1, 2, '222222', 'You are absent in last lecture', 1, 0, '2021-02-07 21:01:15', '2021-02-09 16:22:47'),
(19, 2, 3, 50, 1, 0, 1, 2, NULL, NULL, 1, 0, NULL, '2021-02-07 21:38:25'),
(20, 3, 6, 50, 2, 0, 1, NULL, NULL, NULL, 0, 0, '2021-02-07 21:39:38', '2021-02-07 21:39:38'),
(21, 4, 7, 50, 1, 5, 1, 2, NULL, NULL, 1, 0, '2021-02-07 21:40:06', '2021-02-09 12:06:19'),
(22, 8, 11, 50, 2, 0, 1, 2, NULL, NULL, 1, 0, '2021-02-07 21:41:22', '2021-02-07 21:42:07'),
(23, 4, 7, 55, 1, 5, 1, 2, NULL, NULL, 1, 0, NULL, '2021-02-09 12:04:26'),
(24, 8, 11, 64, 4, 7, 1, 2, NULL, 'You are absent in last lecture', 1, 0, NULL, '2021-02-09 20:00:35'),
(25, 8, 11, 55, 1, 0, 1, 1, NULL, NULL, 1, 0, '2021-02-09 12:15:31', '2021-02-09 12:18:09'),
(26, 8, 11, 66, 4, 3, 1, 2, NULL, 'You are absent in last lecture', 1, 0, NULL, '2021-02-09 15:13:39'),
(27, 8, 11, 67, 4, 2, 1, 2, NULL, 'You are absent in last lecture', 1, 0, NULL, '2021-02-09 15:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `read` int(11) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `created_at`, `updated_at`, `user_id`, `role_id`, `admin_show`, `stuff_order`) VALUES
(1, '2021-01-28 14:09:39', '2021-01-28 14:09:39', 1, 1, 0, 0),
(2, NULL, NULL, 3, 2, 0, 0),
(3, NULL, NULL, 6, 2, 0, 0),
(4, NULL, NULL, 7, 2, 0, 0),
(5, NULL, NULL, 11, 2, 0, 0),
(6, NULL, NULL, 12, 3, 0, 0),
(7, NULL, NULL, 13, 3, 0, 0),
(8, NULL, NULL, 14, 3, 0, 0),
(9, NULL, NULL, 16, 3, 0, 0),
(10, NULL, NULL, 17, 3, 0, 0),
(11, NULL, NULL, 18, 4, 0, 0),
(12, NULL, NULL, 19, 3, 0, 0),
(13, NULL, NULL, 20, 4, 0, 0),
(14, NULL, NULL, 21, 4, 0, 0),
(15, NULL, NULL, 22, 4, 0, 0),
(16, NULL, NULL, 23, 4, 0, 0),
(17, NULL, NULL, 24, 4, 0, 0),
(18, NULL, NULL, 25, 4, 0, 0),
(19, NULL, NULL, 26, 4, 0, 0),
(20, NULL, NULL, 27, 4, 0, 0),
(21, NULL, NULL, 28, 4, 0, 0),
(22, NULL, NULL, 29, 4, 0, 0),
(23, NULL, NULL, 30, 4, 0, 0),
(24, NULL, NULL, 31, 4, 0, 0),
(25, NULL, NULL, 32, 4, 0, 0),
(26, NULL, NULL, 33, 4, 0, 0),
(27, NULL, NULL, 34, 4, 0, 0),
(28, NULL, NULL, 36, 3, 0, 0),
(29, NULL, NULL, 35, 3, 0, 0),
(30, NULL, NULL, 37, 3, 0, 0),
(31, NULL, NULL, 38, 3, 0, 0),
(32, NULL, NULL, 39, 4, 0, 0),
(33, NULL, NULL, 40, 4, 0, 0),
(34, NULL, NULL, 41, 4, 0, 0),
(35, NULL, NULL, 42, 4, 0, 0),
(36, NULL, NULL, 43, 3, 0, 0),
(37, NULL, NULL, 44, 4, 0, 0),
(38, NULL, NULL, 45, 4, 0, 0),
(39, NULL, NULL, 46, 4, 0, 0),
(40, NULL, NULL, 47, 4, 0, 0),
(41, NULL, NULL, 48, 4, 0, 0),
(42, NULL, NULL, 49, 4, 0, 0),
(43, NULL, NULL, 50, 4, 0, 0),
(44, NULL, NULL, 51, 4, 0, 0),
(45, NULL, NULL, 52, 4, 0, 0),
(46, NULL, NULL, 53, 4, 0, 0),
(47, NULL, NULL, 55, 4, 0, 0),
(48, NULL, NULL, 56, 4, 0, 0),
(49, NULL, NULL, 57, 4, 0, 0),
(50, NULL, NULL, 58, 4, 0, 0),
(51, NULL, NULL, 59, 4, 0, 0),
(52, NULL, NULL, 60, 4, 0, 0),
(53, NULL, NULL, 61, 4, 0, 0),
(54, NULL, NULL, 62, 4, 0, 0),
(55, NULL, NULL, 63, 4, 0, 0),
(56, NULL, NULL, 64, 4, 0, 0),
(57, NULL, NULL, 65, 4, 0, 0),
(58, NULL, NULL, 66, 4, 0, 0),
(59, NULL, NULL, 67, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `admin_show` int(11) NOT NULL DEFAULT '0',
  `stuff_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `link`, `description`, `admin_show`, `stuff_order`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 0, 0, '2021-01-28 14:14:52', '2021-01-28 14:14:52'),
(2, NULL, 'https://www.youtube.com/watch?v=6RzUNq3WLGg', '<p>mona Hussein<br />No Pressure No Diamond&nbsp;&nbsp;<br />senior 3 - senior 2 - senior 1</p>', 1, 0, '2021-01-28 14:19:03', '2021-01-28 14:19:27');

-- --------------------------------------------------------

--
-- Structure for view `cgp_view_1st_quiz_section_detail_questions`
--
DROP TABLE IF EXISTS `cgp_view_1st_quiz_section_detail_questions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ie`@`localhost` SQL SECURITY DEFINER VIEW `cgp_view_1st_quiz_section_detail_questions`  AS  select distinct `cgp_questions`.`id` AS `question_id`,`cgp_quiz_section_details`.`id` AS `quiz_section_detail_id` from (((`cgp_questions` join `cgp_quiz_section_details` on(((`cgp_questions`.`question_type_id` = `cgp_quiz_section_details`.`question_type_id`) and (`cgp_questions`.`difficulty_id` = `cgp_quiz_section_details`.`difficulty_id`)))) join `cgp_question_topics` on((`cgp_question_topics`.`question_id` = `cgp_questions`.`id`))) join `cgp_quiz_section_topics` on((`cgp_quiz_section_topics`.`quiz_section_id` = `cgp_quiz_section_details`.`quiz_section_id`))) where ((`cgp_question_topics`.`topic_id` = `cgp_quiz_section_topics`.`topic_id`) and (`cgp_questions`.`admin_show` = 1) and isnull(`cgp_questions`.`archived`) and isnull(`cgp_quiz_section_details`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cgp_view_2nd_available_requested_question_difference`
--
DROP TABLE IF EXISTS `cgp_view_2nd_available_requested_question_difference`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ie`@`localhost` SQL SECURITY DEFINER VIEW `cgp_view_2nd_available_requested_question_difference`  AS  select (count(`cgp_view_1st_quiz_section_detail_questions`.`question_id`) - `cgp_quiz_section_details`.`number`) AS `difference`,`cgp_view_1st_quiz_section_detail_questions`.`quiz_section_detail_id` AS `quiz_section_detail_id` from (`cgp_quiz_section_details` join `cgp_view_1st_quiz_section_detail_questions` on((`cgp_quiz_section_details`.`id` = `cgp_view_1st_quiz_section_detail_questions`.`quiz_section_detail_id`))) group by `cgp_view_1st_quiz_section_detail_questions`.`quiz_section_detail_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment_containers`
--
ALTER TABLE `assessment_containers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment_container_question_details`
--
ALTER TABLE `assessment_container_question_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment_container_topics`
--
ALTER TABLE `assessment_container_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessment_types`
--
ALTER TABLE `assessment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assistants_permissions`
--
ALTER TABLE `assistants_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_status`
--
ALTER TABLE `attendance_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_difficulties`
--
ALTER TABLE `cgp_difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_generated_quizzes`
--
ALTER TABLE `cgp_generated_quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_generated_quiz_questions`
--
ALTER TABLE `cgp_generated_quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_infos`
--
ALTER TABLE `cgp_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_questions`
--
ALTER TABLE `cgp_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_answers`
--
ALTER TABLE `cgp_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_answer_files`
--
ALTER TABLE `cgp_question_answer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_answer_types`
--
ALTER TABLE `cgp_question_answer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_files`
--
ALTER TABLE `cgp_question_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_topics`
--
ALTER TABLE `cgp_question_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_question_types`
--
ALTER TABLE `cgp_question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_quizzes`
--
ALTER TABLE `cgp_quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_quiz_sections`
--
ALTER TABLE `cgp_quiz_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_quiz_section_details`
--
ALTER TABLE `cgp_quiz_section_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_quiz_section_topics`
--
ALTER TABLE `cgp_quiz_section_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_text_correct_answers`
--
ALTER TABLE `cgp_text_correct_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cgp_topics`
--
ALTER TABLE `cgp_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatable_column_invisibles`
--
ALTER TABLE `datatable_column_invisibles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_students`
--
ALTER TABLE `groups_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honor_board`
--
ALTER TABLE `honor_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures_files`
--
ALTER TABLE `lectures_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_attendance`
--
ALTER TABLE `lecture_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_payments`
--
ALTER TABLE `lecture_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_reschedule_request`
--
ALTER TABLE `lecture_reschedule_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nullable_free_models`
--
ALTER TABLE `nullable_free_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_difficulties`
--
ALTER TABLE `question_difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_files`
--
ALTER TABLE `question_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_topics`
--
ALTER TABLE `question_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_types`
--
ALTER TABLE `question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_status`
--
ALTER TABLE `request_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_meetings`
--
ALTER TABLE `students_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assessments`
--
ALTER TABLE `student_assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assessment_questions`
--
ALTER TABLE `student_assessment_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exams`
--
ALTER TABLE `student_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam_questions`
--
ALTER TABLE `student_exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_transactions`
--
ALTER TABLE `student_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_status`
--
ALTER TABLE `subject_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_activation_email`
--
ALTER TABLE `teacher_activation_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_payments`
--
ALTER TABLE `teacher_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_subjects`
--
ALTER TABLE `users_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessment_containers`
--
ALTER TABLE `assessment_containers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessment_container_question_details`
--
ALTER TABLE `assessment_container_question_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessment_container_topics`
--
ALTER TABLE `assessment_container_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessment_types`
--
ALTER TABLE `assessment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assistants_permissions`
--
ALTER TABLE `assistants_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `attendance_status`
--
ALTER TABLE `attendance_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cgp_difficulties`
--
ALTER TABLE `cgp_difficulties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cgp_generated_quizzes`
--
ALTER TABLE `cgp_generated_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `cgp_generated_quiz_questions`
--
ALTER TABLE `cgp_generated_quiz_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `cgp_infos`
--
ALTER TABLE `cgp_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cgp_questions`
--
ALTER TABLE `cgp_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cgp_question_answers`
--
ALTER TABLE `cgp_question_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `cgp_question_answer_files`
--
ALTER TABLE `cgp_question_answer_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `cgp_question_answer_types`
--
ALTER TABLE `cgp_question_answer_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cgp_question_files`
--
ALTER TABLE `cgp_question_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cgp_question_topics`
--
ALTER TABLE `cgp_question_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cgp_question_types`
--
ALTER TABLE `cgp_question_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cgp_quizzes`
--
ALTER TABLE `cgp_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cgp_quiz_sections`
--
ALTER TABLE `cgp_quiz_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `cgp_quiz_section_details`
--
ALTER TABLE `cgp_quiz_section_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `cgp_quiz_section_topics`
--
ALTER TABLE `cgp_quiz_section_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cgp_text_correct_answers`
--
ALTER TABLE `cgp_text_correct_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cgp_topics`
--
ALTER TABLE `cgp_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datatable_column_invisibles`
--
ALTER TABLE `datatable_column_invisibles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `groups_students`
--
ALTER TABLE `groups_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `honor_board`
--
ALTER TABLE `honor_board`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lectures_files`
--
ALTER TABLE `lectures_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lecture_attendance`
--
ALTER TABLE `lecture_attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `lecture_payments`
--
ALTER TABLE `lecture_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lecture_reschedule_request`
--
ALTER TABLE `lecture_reschedule_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nullable_free_models`
--
ALTER TABLE `nullable_free_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_difficulties`
--
ALTER TABLE `question_difficulties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_files`
--
ALTER TABLE `question_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_topics`
--
ALTER TABLE `question_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_types`
--
ALTER TABLE `question_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_status`
--
ALTER TABLE `request_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_meetings`
--
ALTER TABLE `students_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `student_assessments`
--
ALTER TABLE `student_assessments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `student_assessment_questions`
--
ALTER TABLE `student_assessment_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `student_exams`
--
ALTER TABLE `student_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_exam_questions`
--
ALTER TABLE `student_exam_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transactions`
--
ALTER TABLE `student_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject_status`
--
ALTER TABLE `subject_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_activation_email`
--
ALTER TABLE `teacher_activation_email`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_payments`
--
ALTER TABLE `teacher_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users_subjects`
--
ALTER TABLE `users_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
