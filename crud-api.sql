-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 12:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-api`
--

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_06_15_054741_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT 10,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `description`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Coke', '65', 80, NULL, NULL, '2023-06-15 03:45:45', '2023-06-15 03:45:45'),
(11, 'Rapoo A60 2.0 Wired Black Compact Stereo Speaker', '950', 59, NULL, NULL, '2023-06-15 04:24:14', '2023-06-15 04:24:14'),
(12, 'asif', '50', 40, NULL, NULL, '2023-06-15 04:24:14', '2023-06-15 04:24:14'),
(13, 'T-shirt', '550', 90, NULL, NULL, '2023-06-15 04:24:25', '2023-06-15 04:24:25'),
(14, 'Iphone 9', '5000', 68, NULL, NULL, '2023-06-15 04:24:38', '2023-06-15 04:24:38'),
(15, 'Havit SK563 RGB Black Gaming USB Speaker', '975', 39, NULL, NULL, '2023-06-15 04:24:46', '2023-06-15 04:24:46'),
(16, 'Samsung Monitor', '11000', 97, NULL, NULL, '2023-06-15 04:24:54', '2023-06-15 04:24:54'),
(17, 'Havit SK717 USB Black Speaker with LED Backlit', '625', 34, NULL, NULL, '2023-06-15 04:25:17', '2023-06-15 04:25:17'),
(18, 'Potato Chips', '15', 100, NULL, NULL, '2023-06-15 04:25:19', '2023-06-15 04:25:19'),
(19, 'sprite', '35', 93, NULL, NULL, '2023-06-15 04:25:37', '2023-06-15 04:25:37'),
(20, 'Havit SK707 USB Stereo Black Speaker', '750', 82, NULL, NULL, '2023-06-15 04:25:41', '2023-06-15 04:25:41'),
(21, 'Fantech GS202 USB Black Speaker', '1000', 19, NULL, NULL, '2023-06-15 04:26:23', '2023-06-15 04:26:23'),
(22, 'Lal Shakh - 1 ati', '20', 52, NULL, NULL, '2023-06-15 04:26:23', '2023-06-15 04:27:24'),
(23, 'Fantech HELLSCREAM GS205 RGB 2:0 Black USB Speaker', '1100', 45, NULL, NULL, '2023-06-15 04:26:39', '2023-06-15 04:26:39'),
(24, 'Asus ExpertCenter D9 SFF D900SA 10th Gen Intel Core i7 10700 8GB RAM Black Small Tower Brand PC #7107000300/7107000370', '75000', 27, NULL, NULL, '2023-06-15 04:27:06', '2023-06-15 04:27:06'),
(25, 'Kolmi shakh - 1 ati', '25', 98, NULL, NULL, '2023-06-15 04:27:10', '2023-06-15 04:27:10'),
(26, 'Dell OptiPlex 3000 Intel Core i5 12500 8GB RAM 1TB HDD Black Tower Brand PC', '70000', 22, NULL, NULL, '2023-06-15 04:27:24', '2023-06-15 04:27:24'),
(27, 'HP ProDesk 400 G7 MT 10th Gen Intel Core i3 10100 4GB RAM, 1TB HDD Mid Tower Brand PC #31P82PA', '57000', 92, NULL, NULL, '2023-06-15 04:27:39', '2023-06-15 04:27:39'),
(28, 'Dell Vostro 14 3400 11th Gen Intel Core i3 1115G4 4GB RAM 14 Inch HD Display Black Laptop', '44900', 86, NULL, NULL, '2023-06-15 04:28:06', '2023-06-15 04:28:06'),
(29, 'Acer Extensa 15 EX215-54-34SE Intel Core i3 1115G4 15.6 Inch FHD Charcoal Black Laptop #NX.EGJSI.00B', '46200', 92, NULL, NULL, '2023-06-15 04:28:20', '2023-06-15 04:28:20'),
(30, 'Cheap  Thrills', '500', 84, NULL, NULL, '2023-06-15 04:28:21', '2023-06-15 04:28:50'),
(31, 'Pantum P3010DW Single Function Mono Laser Printer', '17000', 36, NULL, NULL, '2023-06-15 04:28:57', '2023-06-15 04:28:57'),
(32, 'taka deyy', '5000', 93, NULL, NULL, '2023-06-15 04:30:38', '2023-06-15 04:36:05');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
