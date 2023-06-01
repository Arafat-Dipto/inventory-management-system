-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 11:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inv_management_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Electronics', 1, '2023-05-30 03:42:28', '2023-05-30 03:42:28'),
(12, 'Smartphone', 1, '2023-05-30 03:42:33', '2023-05-30 03:42:33'),
(13, 'Laptop', 1, '2023-06-01 02:37:25', '2023-06-01 03:35:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_06_065547_create_categories_table', 1),
(6, '2023_05_07_061100_create_suppliers_table', 1),
(7, '2023_05_07_061155_create_products_table', 1),
(8, '2023_05_07_071522_add_user_type_to_users_table', 1),
(10, '2023_05_08_061135_create_purchases_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '47f5a467ee0c95f1051512e5e1ff8dff63cabb8933709e479dc4f84d8c7bfd72', '[\"*\"]', '2023-05-27 22:20:30', '2023-05-27 21:52:19', '2023-05-27 22:20:30'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '5dc272300f1bb6916393103f72e453d5d23189bfac3fae5a914ed97248a0758e', '[\"*\"]', '2023-05-27 22:21:44', '2023-05-27 22:21:41', '2023-05-27 22:21:44'),
(3, 'App\\Models\\User', 1, 'API TOKEN', 'd3a53a9b884af51328629f3426e7896910d517b00596bc6edf36573986072402', '[\"*\"]', '2023-05-28 01:56:23', '2023-05-27 22:22:49', '2023-05-28 01:56:23'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '90025eb3da37681ad8a1e43b7d55326b907ed0c43a8d985f5fbe04219569015d', '[\"*\"]', '2023-05-30 04:27:53', '2023-05-30 03:41:36', '2023-05-30 04:27:53'),
(5, 'App\\Models\\User', 1, 'API TOKEN', '534b8059d772ee72be6d6c0e1e49c8e1408838edbe1c62df537c678cf4729821', '[\"*\"]', '2023-05-31 06:01:18', '2023-05-30 04:28:23', '2023-05-31 06:01:18'),
(6, 'App\\Models\\User', 1, 'API TOKEN', '3fd7b74729b4b791073db86517fbce18e3f093fc497c56f625dd0516a145b666', '[\"*\"]', NULL, '2023-05-31 22:08:53', '2023-05-31 22:08:53'),
(7, 'App\\Models\\User', 1, 'API TOKEN', '49cb55ba828292184421246a802f3e8d1183088a073b37d4780ce5be84a1917d', '[\"*\"]', NULL, '2023-05-31 22:14:27', '2023-05-31 22:14:27'),
(8, 'App\\Models\\User', 1, 'API TOKEN', 'f4e3a78d29334c5f2aa19f24e899fa8ac9578c7ad4b9d5cacc9b770f5fc8f4b8', '[\"*\"]', NULL, '2023-05-31 22:15:43', '2023-05-31 22:15:43'),
(9, 'App\\Models\\User', 1, 'API TOKEN', 'ad9eff44173ae41fc93ad57f314911c79ad5b4d15d0dd806d412ac140506a563', '[\"*\"]', NULL, '2023-05-31 22:16:47', '2023-05-31 22:16:47'),
(10, 'App\\Models\\User', 1, 'API TOKEN', 'cf6b897d29628b3b9113afc8d792d21b360c7e8a91a942e9cf4287d64cb63d0b', '[\"*\"]', '2023-06-01 02:26:01', '2023-06-01 01:49:25', '2023-06-01 02:26:01'),
(11, 'App\\Models\\User', 1, 'API TOKEN', '6a3bfd9cf41a07a654a2ef731070bde434d74ce89d7cd6bf50aed7d11bf0cc0b', '[\"*\"]', '2023-06-01 03:40:03', '2023-06-01 02:28:34', '2023-06-01 03:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category_id`, `stock_qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(4, 'pr 01', 'Headphone', 11, 1, '1200.00', 1, '2023-05-31 05:07:48', '2023-05-31 05:31:05'),
(5, 'pr 02', 'Samsung', 12, 2, '25000.00', 1, '2023-05-31 05:08:19', '2023-05-31 05:08:19'),
(6, 'pr03', 'ASUS', 12, 10, '26000.00', 1, '2023-06-01 02:37:56', '2023-06-01 02:37:56'),
(7, 'pr05', 'Keyboard', 11, 20, '500.00', 1, '2023-06-01 03:35:09', '2023-06-01 03:35:09'),
(8, 'pr06', 'DELL', 13, 10, '56000.00', 1, '2023-06-01 03:36:09', '2023-06-01 03:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `product_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product_list`)),
  `total_price` decimal(10,2) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `invoice_no`, `supplier_id`, `product_list`, `total_price`, `purchase_date`, `note`, `created_at`, `updated_at`) VALUES
(3, 'asdf123456', 2, '[{\"product_id\":4,\"product_name\":\"Headphone\",\"product_stock\":15,\"product_price\":\"1200.00\",\"product_qty\":\"5\",\"product_total\":6000},{\"product_id\":5,\"product_name\":\"Samsung\",\"product_stock\":12,\"product_price\":\"25000.00\",\"product_qty\":\"3\",\"product_total\":75000}]', '75000.00', '2023-05-03 15:45:00', 'something', '2023-05-31 05:09:32', '2023-05-31 06:01:12'),
(4, 'asdf123456545', 3, '[{\"product_id\":4,\"product_name\":\"Headphone\",\"product_stock\":9,\"product_price\":\"1200.00\",\"product_qty\":\"2\",\"product_total\":2400},{\"product_id\":5,\"product_name\":\"Samsung\",\"product_stock\":12,\"product_price\":\"25000.00\",\"product_qty\":\"2\",\"product_total\":50000}]', '52400.00', '2023-05-03 15:45:00', 'sadasdsad', '2023-05-31 05:13:30', '2023-05-31 05:13:30'),
(5, 'INVC0123456789', 2, '[{\"product_id\":4,\"product_name\":\"Headphone\",\"product_stock\":2,\"product_price\":\"1200.00\",\"product_qty\":1,\"product_total\":\"1200.00\"},{\"product_id\":5,\"product_name\":\"Samsung\",\"product_stock\":3,\"product_price\":\"25000.00\",\"product_qty\":1,\"product_total\":\"25000.00\"}]', '26200.00', '2023-05-10 13:00:00', 'this is a note', '2023-06-01 01:51:39', '2023-06-01 01:51:39'),
(6, 'INVC0123456788', 2, '[{\"product_id\":6,\"product_name\":\"ASUS\",\"product_stock\":12,\"product_price\":\"26000.00\",\"product_qty\":\"2\",\"product_total\":52000}]', '52000.00', '2023-06-01 14:15:00', NULL, '2023-06-01 03:39:50', '2023-06-01 03:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(2, 'ARAFAT Khan', '01922384927', 'Dhaka, BD', '2023-05-30 04:31:55', '2023-05-30 04:31:55'),
(3, 'Asif Khan', '01812454754', 'Dhaka, BD', '2023-05-30 04:32:08', '2023-05-30 04:32:08');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type_id`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ni3u42qiIN7pd1SPqv3qWOG3Q7nowKMkjGcmMlgqI/gEvNp0IuofG', NULL, '2023-05-07 21:38:13', '2023-05-07 21:38:13', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
