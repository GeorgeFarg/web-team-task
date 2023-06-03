-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 02, 2023 at 01:36 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees_management`
--
CREATE DATABASE IF NOT EXISTS `employees_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `employees_management`;

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `date_hired` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`id`, `name`, `email`, `job_title`, `salary`, `date_hired`, `phone`, `profile_img`) VALUES
(21, 'Jamie Bins', 'Kennedy.Stroman@yahoo.com', 'Server admin', 5655, '2023-06-02 12:58:48.197', '(676) 281-6580 x5649', 'https://avatars.githubusercontent.com/u/59573324'),
(22, 'Yolanda Johns', 'Elenora_West@yahoo.com', 'developer', 5320, '2023-06-02 12:58:48.478', '1-849-893-3909 x43469', 'https://avatars.githubusercontent.com/u/92459676'),
(23, 'Dr. Della Collins', 'Stefan_Heller@hotmail.com', 'Server admin', 4524, '2023-06-02 12:58:48.745', '759-615-0314', 'https://avatars.githubusercontent.com/u/14973824'),
(24, 'Cassandra Kozey V', 'Frederick_Torphy42@hotmail.com', 'Network engineer', 3484, '2023-06-02 12:58:49.189', '434-207-9316 x373', 'https://avatars.githubusercontent.com/u/19052075'),
(25, 'Elizabeth Yost', 'Esther81@hotmail.com', 'developer', 5122, '2023-06-02 12:58:50.059', '637.468.1902', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/33.jpg'),
(26, 'Paul DuBuque', 'Tito68@yahoo.com', 'developer', 4421, '2023-06-02 12:58:50.221', '1-359-355-1336 x82226', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1235.jpg'),
(27, 'Cora Becker', 'Chanelle_Corkery@gmail.com', 'Instructor', 3047, '2023-06-02 12:58:50.466', '(483) 668-1407 x4177', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/506.jpg'),
(28, 'Ms. Julia Romaguera', 'Tierra_Quitzon38@gmail.com', 'Server admin', 4226, '2023-06-02 12:58:50.633', '(793) 231-8849 x6750', 'https://avatars.githubusercontent.com/u/23762100'),
(29, 'Dr. Ginger Wilderman', 'Bernita47@gmail.com', 'Instructor', 6603, '2023-06-02 12:58:50.900', '1-292-915-9564 x4052', 'https://avatars.githubusercontent.com/u/47878860'),
(30, 'Erma Satterfield', 'Celine61@yahoo.com', 'UI/UX designer', 3265, '2023-06-02 12:58:51.144', '(935) 758-1374 x5152', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/657.jpg'),
(31, 'asdasdasdaksjdaksdj', 'asdaskjdaslkj@mail.com', 'asdjashdas', 2000, '2023-06-02 13:32:38.651', '0122222222222', NULL),
(32, 'askdjsdanfkljsdefkljas', 'kjaefkljWEFLKJEWBFKLJABF', 'EDFKAJWNLKEFJAWLEIUFWAILE', 5000, '2023-06-02 13:35:18.324', '365165841684', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `HR`
--

CREATE TABLE `HR` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Profile_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Managers`
--

CREATE TABLE `Managers` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Managers`
--

INSERT INTO `Managers` (`id`, `name`, `email`, `phone`, `profile_img`) VALUES
(1, 'name', 'asd@mail.com', '12222222222', 'https://avatars.githubusercontent.com/u/37921448');

-- --------------------------------------------------------

--
-- Table structure for table `Requests`
--

CREATE TABLE `Requests` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_requested` int NOT NULL,
  `date_requested` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `granted` tinyint(1) DEFAULT NULL,
  `employees_Id` int NOT NULL,
  `managers_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Requests`
--

INSERT INTO `Requests` (`id`, `title`, `text`, `duration_requested`, `date_requested`, `granted`, `employees_Id`, `managers_Id`) VALUES
(3, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:51.492', NULL, 21, 1),
(4, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:51.857', NULL, 22, 1),
(5, 'text', 'I need a few days off.', 3, '2023-06-02 12:58:52.023', NULL, 23, 1),
(6, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:52.323', NULL, 24, 1),
(7, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:52.524', NULL, 25, 1),
(8, 'text', 'I need a few days off.', 3, '2023-06-02 12:58:52.769', NULL, 26, 1),
(9, 'text', 'I need a few days off.', 3, '2023-06-02 12:58:53.023', NULL, 27, 1),
(10, 'text', 'I need a few days off.', 3, '2023-06-02 12:58:53.279', NULL, 28, 1),
(11, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:53.545', NULL, 29, 1),
(12, 'text', 'I need a few days off.', 4, '2023-06-02 12:58:53.868', NULL, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('e0b11b85-d486-43b2-a5d5-ebbf3a5390a0', 'f89fe15a0c6b6b9e15aea9d929f814863d3685bd167ba3ba9e1025707af75b3d', '2023-06-02 12:33:30.861', '20230602123302_init', NULL, NULL, '2023-06-02 12:33:02.761', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Employees_email_key` (`email`),
  ADD UNIQUE KEY `Employees_phone_key` (`phone`);

--
-- Indexes for table `HR`
--
ALTER TABLE `HR`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HR_email_key` (`email`);

--
-- Indexes for table `Managers`
--
ALTER TABLE `Managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Managers_email_key` (`email`),
  ADD UNIQUE KEY `Managers_phone_key` (`phone`);

--
-- Indexes for table `Requests`
--
ALTER TABLE `Requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Requests_employees_Id_fkey` (`employees_Id`),
  ADD KEY `Requests_managers_Id_fkey` (`managers_Id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Managers`
--
ALTER TABLE `Managers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Requests`
--
ALTER TABLE `Requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Requests`
--
ALTER TABLE `Requests`
  ADD CONSTRAINT `Requests_employees_Id_fkey` FOREIGN KEY (`employees_Id`) REFERENCES `Employees` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `Requests_managers_Id_fkey` FOREIGN KEY (`managers_Id`) REFERENCES `Managers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
