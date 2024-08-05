-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 09:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_php3_group2`
--

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` text NOT NULL,
  `thoi_gian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `user_id`, `product_id`, `noi_dung`, `thoi_gian`, `created_at`, `updated_at`) VALUES
(3, 3, 2, 'Sản phảm hay', '2024-08-02', '2024-08-01 20:58:17', '2024-08-01 20:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kiếm', 'kiem', 1, NULL, '2024-08-01 12:40:03', '2024-08-01 20:00:32'),
(2, 'Dao', 'dao', 1, NULL, '2024-08-01 20:00:26', '2024-08-01 20:00:26'),
(3, 'Rìu', 'riu', 1, NULL, '2024-08-01 20:03:34', '2024-08-01 20:03:34'),
(4, 'Bình xịt hơi cay', 'binh-xit-hoi-cay', 1, NULL, '2024-08-01 20:03:55', '2024-08-01 20:03:55'),
(5, 'Gậy', 'gay', 1, NULL, '2024-08-01 20:04:17', '2024-08-01 20:04:17');

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
(57, '2014_10_12_000000_create_users_table', 1),
(58, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(59, '2019_08_19_000000_create_failed_jobs_table', 1),
(60, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(61, '2024_07_11_155143_create_categories_table', 1),
(62, '2024_07_13_160642_create_blogs_table', 1),
(63, '2024_07_23_165540_create_products_table', 1),
(64, '2024_07_24_165152_create_product_images_table', 1),
(65, '2024_07_29_154725_update_table_add_permission_user', 1),
(66, '2024_07_29_160219_update_add_deleted_at_users', 1),
(67, '2024_07_29_163744_create_orders_table', 1),
(68, '2024_07_29_163818_create_order_details_table', 1),
(69, '2024_07_30_161611_create_binh_luans_table', 1),
(70, '2024_08_01_154723_add_address_phone_for_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'cho_xac_nhan',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `code`, `name`, `email`, `phone`, `address`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '59164416', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:07:07', '2024-08-01 14:07:07'),
(2, 1, '88987094', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:09:48', '2024-08-01 14:09:48'),
(3, 1, '81372048', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:10:57', '2024-08-01 14:10:57'),
(4, 1, '52576959', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:11:39', '2024-08-01 14:11:39'),
(5, 1, '58865381', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:12:36', '2024-08-01 14:12:36'),
(6, 1, '83922110', 'Nguyễn Hữu Thế Bảo', 'nguyentheb705@gmail.com', '0383123387', 'số 48, đường liên xã', 'ádadasdasd', 'cho_xac_nhan', NULL, '2024-08-01 14:15:49', '2024-08-01 14:15:49'),
(7, 1, '73207315', 'Nguyễn Hữu Thế Bảo', 'nguyentheb705@gmail.com', '0383123387', 'số 48, đường liên xã', 'ádadasdasd', 'dang_chuan_bi', NULL, '2024-08-01 14:15:55', '2024-08-01 20:15:26'),
(8, 1, '78532039', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:17:47', '2024-08-01 14:17:47'),
(9, 1, '40049271', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:18:15', '2024-08-01 14:18:15'),
(10, 1, '40819826', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:19:55', '2024-08-01 14:19:55'),
(11, 1, '37760778', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'da_xac_nhan', NULL, '2024-08-01 14:20:09', '2024-08-01 20:53:32'),
(12, 1, '24851040', 'Nguyễn Hữu Thế Bảo', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'Đơn hàng mới', 'cho_xac_nhan', NULL, '2024-08-01 14:22:33', '2024-08-01 14:22:33'),
(13, 1, '33255103', 'Nguyễn Hữu Thế Bảo 1', 'baonhtph39681@fpt.edu.vn', '0383123387', 'số 48, đường liên xã', 'ĐƠn mới', 'cho_xac_nhan', NULL, '2024-08-01 20:22:25', '2024-08-01 20:22:25'),
(14, 3, '78541440', 'Dung Nguyen', 'dungnguyen@gmail.com', '0383123387', 'Số 1', 'ádasdasd', 'cho_xac_nhan', NULL, '2024-08-01 20:57:15', '2024-08-01 20:57:15'),
(15, 3, '41154564', 'Dung Nguyen', 'nguyentheb705@gmail.com', '0383123387', 'Số 1', 'ádasdasd', 'cho_xac_nhan', NULL, '2024-08-01 20:57:27', '2024-08-01 20:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1.00, 17, NULL, '2024-08-01 14:07:07', '2024-08-01 14:07:07'),
(2, 2, 2, 1.00, 17, NULL, '2024-08-01 14:09:48', '2024-08-01 14:09:48'),
(3, 3, 2, 1.00, 17, NULL, '2024-08-01 14:10:57', '2024-08-01 14:10:57'),
(4, 4, 2, 1.00, 17, NULL, '2024-08-01 14:11:39', '2024-08-01 14:11:39'),
(5, 5, 2, 1.00, 17, NULL, '2024-08-01 14:12:36', '2024-08-01 14:12:36'),
(6, 6, 2, 1.00, 2, NULL, '2024-08-01 14:15:49', '2024-08-01 14:15:49'),
(7, 9, 2, 1.00, 2, NULL, '2024-08-01 14:18:15', '2024-08-01 14:18:15'),
(8, 10, 2, 1.00, 2, NULL, '2024-08-01 14:19:55', '2024-08-01 14:19:55'),
(9, 11, 2, 1.00, 2, NULL, '2024-08-01 14:20:09', '2024-08-01 14:20:09'),
(10, 12, 2, 1.00, 2, NULL, '2024-08-01 14:22:33', '2024-08-01 14:22:33'),
(11, 13, 6, 500.00, 1, NULL, '2024-08-01 20:22:25', '2024-08-01 20:22:25'),
(12, 13, 1, 500.00, 2, NULL, '2024-08-01 20:22:25', '2024-08-01 20:22:25'),
(13, 13, 4, 3000.00, 1, NULL, '2024-08-01 20:22:25', '2024-08-01 20:22:25'),
(14, 14, 7, 2222.00, 2, NULL, '2024-08-01 20:57:15', '2024-08-01 20:57:15'),
(15, 14, 1, 500.00, 2, NULL, '2024-08-01 20:57:15', '2024-08-01 20:57:15'),
(16, 15, 7, 2222.00, 2, NULL, '2024-08-01 20:57:27', '2024-08-01 20:57:27'),
(17, 15, 1, 500.00, 2, NULL, '2024-08-01 20:57:27', '2024-08-01 20:57:27');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_san_pham` varchar(10) NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `so_luong` int(10) UNSIGNED NOT NULL,
  `gia_san_pham` double(12,2) NOT NULL,
  `gia_khuyen_mai` double(12,2) DEFAULT NULL,
  `mo_ta_ngan` varchar(255) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` text DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `is_hot` tinyint(1) NOT NULL DEFAULT 1,
  `is_hot_deal` tinyint(1) NOT NULL DEFAULT 1,
  `is_show_home` tinyint(1) NOT NULL DEFAULT 1,
  `luot_xem` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ma_san_pham`, `ten_san_pham`, `hinh_anh`, `so_luong`, `gia_san_pham`, `gia_khuyen_mai`, `mo_ta_ngan`, `ngay_nhap`, `categories_id`, `noi_dung`, `trang_thai`, `is_new`, `is_hot`, `is_hot_deal`, `is_show_home`, `luot_xem`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'kiem-a', 'Kiếm A', 'uploads/products/5rr3VFH7aUhvAqxm7FlVvk1bfKMe2uRGwfI0cOMD.jpg', 12, 1000.00, 500.00, '...', '2024-08-09', 1, '...', 1, 1, 1, 1, 1, 5, NULL, '2024-08-01 12:41:04', '2024-08-01 20:56:56'),
(2, 'kiem-b', 'Kiếm B', 'uploads/products/29HY8byKQBbFdZbPWvWAtN3L8g1Sr1OQFV402wBC.jpg', 22, 6000.00, 4000.00, '...', '2024-08-06', 1, '...', 1, 1, 1, 1, 1, 50, NULL, '2024-08-01 12:43:41', '2024-08-01 20:58:17'),
(3, 'riu-a', 'Rìu A', 'uploads/products/bknVuRNjtViUg2bt7dbutnmW3IWQFA7ZAlKmtRxQ.jpg', 11, 3000.00, 2000.00, '...', '2024-07-31', 3, '...', 1, 1, 1, 1, 1, 8, NULL, '2024-08-01 12:47:16', '2024-08-01 20:11:26'),
(4, 'riu-b', 'Rìu B', 'uploads/product/CvhULKeOMouFE91pFaayjrp6ny2MjVdhMyCwYDjF.jpg', 11, 4000.00, 3000.00, '...', '2024-07-29', 3, '...', 1, 1, 1, 1, 1, 3, NULL, '2024-08-01 20:12:18', '2024-08-01 20:22:07'),
(5, 'dao-a', 'Dao A', 'uploads/product/2HY9NBISC7BWuQYJZ2ZjNhzgh3lrSZ1YyJ6fA8Z3.jpg', 11, 4888.00, 4000.00, '...', '2024-08-14', 2, '...', 1, 1, 1, 1, 1, 1, NULL, '2024-08-01 20:13:09', '2024-08-01 20:39:27'),
(6, 'dao-b', 'Dao B', 'uploads/product/T2bcH5s26e3L4n5X9ucCNqHPM66rYk4nxHzc4GVn.jpg', 11, 1000.00, 500.00, '...', '2024-08-06', 2, '...', 1, 1, 1, 1, 1, 7, NULL, '2024-08-01 20:13:45', '2024-08-01 20:46:06'),
(7, 'binh-a', 'Bình xịt A', 'uploads/product/xBfsVeEOLUEysTnKYm6NUX7cCvDeaZRxvxBqUxRC.jpg', 33, 7000.00, 2222.00, '...', '2024-08-12', 4, '...', 1, 1, 1, 1, 1, 3, NULL, '2024-08-01 20:14:37', '2024-08-01 20:56:41'),
(8, 'binh-b', 'Bình xịt B', 'uploads/product/tVBnpOywVlUXPoEOZHH8xy4kO9fAWBR6JGQkpIQu.jpg', 11, 400.00, 300.00, '...', '2024-08-06', 4, '...', 1, 1, 1, 1, 1, 0, NULL, '2024-08-01 20:15:15', '2024-08-01 20:15:15'),
(9, 'gay-a', 'Gậy A', 'uploads/product/zvvOJxqcUKbm4sSNvmtusjf5zquNOMXH19C3FG5X.jpg', 11, 2000.00, NULL, '...', '2024-08-19', 5, '...', 1, 1, 1, 1, 1, 0, NULL, '2024-08-01 20:24:10', '2024-08-01 20:24:10'),
(10, 'gay-b', 'Gậy B', 'uploads/product/DV8iQvh8GOAm8dsiX9SMEpR6hDGqmiyPamesyFNV.jpg', 11, 3000.00, NULL, '...', '2024-08-12', 5, '...', 1, 1, 1, 1, 1, 0, NULL, '2024-08-01 20:24:43', '2024-08-01 20:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `permission` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `address`, `phone`) VALUES
(1, 'Nguyễn Hữu Thế Bảo 1', 'baonhtph39681@fpt.edu.vn', NULL, '$2y$12$FQ1twjA1KoAUtKYnL6GAqOZQ.FZsSKiDw1wSqkCO2eqRtd/1p4SWm', 1, NULL, '2024-08-01 08:58:46', '2024-08-01 15:03:35', NULL, 'số 48, đường liên xã', '0383123387'),
(2, 'Phan Thi Mi', 'nguyentheb705@gmail.com', NULL, '$2y$12$q69Kn8mh1UVvFjlKiB9jsOGXBIkqH4kv9q1WFeYkd/eyAyNHUylKm', 1, NULL, '2024-08-01 12:57:11', '2024-08-01 14:51:43', '2024-08-01 14:51:43', NULL, NULL),
(3, 'Dung Nguyen', 'dungnguyen@gmail.com', NULL, '$2y$12$1XiKpQ9Z/v54nG89vt.0keGF2w0Vf5232TMiFH.4vIEBAZYq8Ep8i', 1, NULL, '2024-08-01 20:26:09', '2024-08-01 20:26:09', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luans_user_id_foreign` (`user_id`),
  ADD KEY `binh_luans_product_id_foreign` (`product_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_category_id_unique` (`category_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `products_ma_san_pham_unique` (`ma_san_pham`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
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
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `binh_luans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
