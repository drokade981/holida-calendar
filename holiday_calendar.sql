-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2024 at 09:02 PM
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
-- Database: `holiday_calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `date`, `type`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', '2024-01-01', 'Optional holiday', '2024-07-07 04:38:39', '2024-07-07 04:38:39'),
(2, 'Lohri', '2024-01-13', 'National holiday', '2024-07-07 04:38:39', '2024-07-07 04:38:39'),
(3, 'Makar Sankranti', '2024-01-14', 'Hinduism', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(4, 'Pongal', '2024-01-15', 'Hinduism', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(5, 'Guru Govind Singh Jayanti', '2024-01-17', 'Observance', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(6, 'Hazarat Ali\'s Birthday', '2024-01-25', 'Optional holiday', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(7, 'Republic Day', '2024-01-26', 'National holiday', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(8, 'Lunar New Year', '2024-02-10', 'Observance', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(9, 'Vasant Panchami', '2024-02-14', 'Hinduism', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(10, 'Valentine\'s Day', '2024-02-14', 'Observance', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(11, 'Shivaji Jayanti', '2024-02-19', 'Optional holiday', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(12, 'Guru Ravidas Jayanti', '2024-02-24', 'Optional holiday', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(13, 'Maharishi Dayanand Saraswati Jayanti', '2024-03-06', 'Optional holiday', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(14, 'Maha Shivaratri/Shivaratri', '2024-03-08', 'Hinduism', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(15, 'Ramadan Start', '2024-03-12', 'Observance', '2024-07-07 04:38:40', '2024-07-07 04:38:40'),
(16, 'March Equinox', '2024-03-20', 'Season', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(17, 'Holika Dahana', '2024-03-24', 'Optional holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(18, 'Holi', '2024-03-25', 'National holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(19, 'Dolyatra', '2024-03-25', 'National holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(20, 'Maundy Thursday', '2024-03-28', 'Observance', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(21, 'Good Friday', '2024-03-29', 'National holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(22, 'Easter Day', '2024-03-31', 'Optional holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(23, 'Jamat Ul-Vida', '2024-04-05', 'Optional holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(24, 'Chaitra Sukhladi', '2024-04-09', 'Hinduism', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(25, 'Ugadi', '2024-04-09', 'Hinduism', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(26, 'Gudi Padwa', '2024-04-09', 'Hinduism', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(27, 'Ramzan Id/Eid-ul-Fitar', '2024-04-10', 'Muslim', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(28, 'Ramzan Id/Eid-ul-Fitar', '2024-04-11', 'National holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(29, 'Vaisakhi', '2024-04-13', 'Optional holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(30, 'Mesadi / Vaisakhadi', '2024-04-14', 'Optional holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(31, 'Ambedkar Jayanti', '2024-04-14', 'National holiday', '2024-07-07 04:51:03', '2024-07-07 04:51:03'),
(32, 'Rama Navami', '2024-04-17', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(33, 'Mahavir Jayanti', '2024-04-21', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(34, 'First day of Passover', '2024-04-23', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(35, 'International Worker\'s Day', '2024-05-01', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(36, 'Birthday of Rabindranath', '2024-05-08', 'Optional holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(37, 'Mothers\' Day', '2024-05-12', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(38, 'Buddha Purnima/Vesak', '2024-05-23', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(39, 'Fathers\' Day', '2024-06-16', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(40, 'Bakrid/Eid ul-Adha', '2024-06-17', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(41, 'June Solstice', '2024-06-20', 'Season', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(42, 'Rath Yatra', '2024-07-07', 'Hinduism', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(43, 'Muharram/Ashura', '2024-07-17', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(44, 'Guru Purnima', '2024-07-21', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(45, 'Friendship Day', '2024-08-04', 'Observance', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(46, 'Independence Day', '2024-08-15', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(47, 'Parsi New Year', '2024-08-15', 'Optional holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(48, 'Raksha Bandhan (Rakhi)', '2024-08-19', 'Hinduism', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(49, 'Janmashtami', '2024-08-26', 'National holiday', '2024-07-07 04:51:04', '2024-07-07 04:51:04'),
(50, 'Janmashtami (Smarta)', '2024-08-26', 'Observance', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(51, 'Ganesh Chaturthi/Vinayaka Chaturthi', '2024-09-07', 'Hinduism', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(52, 'Onam', '2024-09-15', 'Hinduism', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(53, 'Milad un-Nabi/Id-e-Milad', '2024-09-16', 'National holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(54, 'September Equinox', '2024-09-22', 'Season', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(55, 'Mahatma Gandhi Jayanti', '2024-10-02', 'National holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(56, 'First Day of Sharad Navratri', '2024-10-03', 'Observance', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(57, 'First Day of Durga Puja Festivities', '2024-10-09', 'Observance', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(58, 'Maha Saptami', '2024-10-10', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(59, 'Maha Navami', '2024-10-11', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(60, 'Maha Ashtami', '2024-10-11', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(61, 'Dussehra', '2024-10-12', 'National holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(62, 'Maharishi Valmiki Jayanti', '2024-10-17', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(63, 'Karaka Chaturthi (Karva Chauth)', '2024-10-20', 'Hinduism', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(64, 'Halloween', '2024-10-31', 'Observance', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(65, 'Naraka Chaturdasi', '2024-10-31', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(66, 'Diwali/Deepavali', '2024-10-31', 'National holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(67, 'Govardhan Puja', '2024-11-02', 'Optional holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(68, 'Bhai Duj', '2024-11-03', 'Hinduism', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(69, 'Chhat Puja (Pratihar Sashthi/Surya Sashthi)', '2024-11-07', 'Hinduism', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(70, 'Guru Nanak Jayanti', '2024-11-15', 'National holiday', '2024-07-07 04:51:05', '2024-07-07 04:51:05'),
(71, 'Guru Tegh Bahadur\'s Martyrdom Day', '2024-11-24', 'Optional holiday', '2024-07-07 04:51:06', '2024-07-07 04:51:06'),
(72, 'December Solstice', '2024-12-21', 'Season', '2024-07-07 04:51:06', '2024-07-07 04:51:06'),
(73, 'Christmas Eve', '2024-12-24', 'Optional holiday', '2024-07-07 04:51:06', '2024-07-07 04:51:06'),
(74, 'Christmas', '2024-12-25', 'National holiday', '2024-07-07 04:51:06', '2024-07-07 04:51:06'),
(75, 'First Day of Hanukkah', '2024-12-26', 'Observance', '2024-07-07 04:51:06', '2024-07-07 04:51:06'),
(76, 'New Year\'s Eve', '2024-12-31', 'Observance', '2024-07-07 04:51:06', '2024-07-07 04:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_07_094446_create_holidays_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3J1ECgOCIr23RecjA02RoJFWKvVslszur9tkIOVF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME1TTloyblZNVEZ4OFJqQldpVlpIN2NMczlNUjlSZzZaOHJITnUxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvaG9saWRheS1jYWxlbmRhci9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720416020),
('7JhRAkaZsdyAMFaHrgNVPV37VrmqxgYBopRoRZzH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVpQdk9tZk0zbnFKOUNlV2NOdU02TERlZzcxeWNNWFRMcGJST0RmeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720416038),
('hrW4J08mOU2ackhhp0OLdIbMpWCBiTSRn8RCTPdn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGZjWTN4dklKNlFSSVI5ZzJQVnBxREVYRnZyQjlMYWg2aUJnTk1lZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvaG9saWRheS1jYWxlbmRhci9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720504251),
('sDTU9IWVZp7Ds92uBcEY7vrOpnEBZkex8ysEVbQk', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTklUQ2kxaGhVVXhjalk0UUEwb084ZTd5TEZrUnI5WEo4WlBvSXlEVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvaG9saWRheS1jYWxlbmRhci9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720376758),
('VWj6Tytg5arqT1F6Oi6D0G1UhwsWYkMpJGtDNWGU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1Z5WHQwY1JMRWpOWUs5M1QyY3VJZHo4MTlWT1Z2Y1Npc0NhbHZBbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvaG9saWRheS1jYWxlbmRhci9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720377057);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
