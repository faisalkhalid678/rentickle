-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 10, 2021 at 01:02 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renticle`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_carts`
--

DROP TABLE IF EXISTS `add_to_carts`;
CREATE TABLE IF NOT EXISTS `add_to_carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `tenure` int(11) DEFAULT NULL,
  `total_rent` double(10,2) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_to_carts`
--

INSERT INTO `add_to_carts` (`id`, `product_id`, `product_size_id`, `tenure`, `total_rent`, `offer_id`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 3, 30003.00, 0, '2021-08-10 12:55:09', '2021-08-10 12:55:09'),
(2, 1, 1, 3, 30003.00, 0, '2021-08-10 12:55:32', '2021-08-10 12:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_size` int(11) NOT NULL,
  `tenure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rent` double(10,2) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `product_id`, `product_size`, `tenure`, `total_rent`, `updated_at`, `created_at`) VALUES
(1, 1, 54, '1', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 15, 26, '4', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 3, 65, '1', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 9, 62, '6', 120000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 1, 76, '1', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 19, 22, '0', 120000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 38, 6, '3', 120000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 9, 57, '9', 130000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 16, 29, '9', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 8, 13, '3', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 12, 35, '1', 130000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 30, 50, '3', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 17, 79, '3', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 28, 36, '6', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 26, 31, '9', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 28, 39, '8', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 26, 28, '8', 120000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 40, 37, '7', 120000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 27, 27, '7', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 33, 40, '2', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 25, 77, '9', 130000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 27, 27, '8', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 5, 7, '8', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 4, 13, '2', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 26, 25, '8', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 20, 72, '7', 130000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 39, 30, '9', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 14, 21, '9', 170000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 35, 74, '1', 140000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 28, 4, '2', 190000.00, '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `status`, `updated_at`, `created_at`) VALUES
(1, 'ipsum', 'category4.png', 'Inactive', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 'id', 'category1.png', 'Inactive', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 'sunt', 'category3.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 'voluptatem', 'category2.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 'illum', 'category1.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 'aliquam', 'category3.png', 'Inactive', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 'rem', 'category2.png', 'Deleted', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 'nulla', 'category1.png', 'Deleted', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 'soluta', 'category1.png', 'Deleted', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 'corporis', 'category4.png', 'Deleted', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 'amet', 'category4.png', 'Deleted', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 'fuga', 'category5.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 'et', 'category4.png', 'Inactive', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 'blanditiis', 'category4.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 'inventore', 'category5.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 'eligendi', 'category1.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 'corporis', 'category2.png', 'Inactive', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 'asperiores', 'category1.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 'quia', 'category4.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 'vel', 'category3.png', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_10_050016_categories_table', 1),
(5, '2021_08_10_050339_products_table', 1),
(6, '2021_08_10_051359_product_sizes_table', 1),
(7, '2021_08_10_051713_product_offers_table', 1),
(8, '2021_08_10_052319_product_ratings_table', 1),
(9, '2021_08_10_052408_product_reviews_table', 1),
(10, '2021_08_10_052846_add_to_cart_table', 1),
(11, '2021_08_10_080628_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` double(10,2) NOT NULL,
  `refundable_deposit` double(10,2) NOT NULL,
  `viewed_time` datetime NOT NULL,
  `status` enum('Active','Inactive','Deleted') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_image`, `rent`, `refundable_deposit`, `viewed_time`, `status`, `updated_at`, `created_at`) VALUES
(1, 11, 'quae', 'product1.png', 30000.00, 50000.00, '2021-08-10 12:05:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 1, 'in', 'product5.png', 28000.00, 45000.00, '2021-08-10 12:02:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 1, 'totam', 'product3.png', 30000.00, 50000.00, '2021-08-10 12:20:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 8, 'consequuntur', 'product4.png', 20000.00, 61000.00, '2021-08-10 12:14:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 3, 'fugit', 'product1.png', 25000.00, 61000.00, '2021-08-10 12:20:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 8, 'sed', 'product2.png', 25000.00, 50000.00, '2021-08-10 12:12:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 3, 'vitae', 'product4.png', 30000.00, 50000.00, '2021-08-10 12:10:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 14, 'dolorum', 'product5.png', 25000.00, 50000.00, '2021-08-10 12:07:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 18, 'deserunt', 'product2.png', 25000.00, 50000.00, '2021-08-10 12:20:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 9, 'corporis', 'product4.png', 28000.00, 50000.00, '2021-08-10 12:18:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 15, 'harum', 'product5.png', 20000.00, 45000.00, '2021-08-10 12:06:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 11, 'aut', 'product2.png', 20000.00, 63000.00, '2021-08-10 12:01:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 14, 'iste', 'product3.png', 28000.00, 63000.00, '2021-08-10 12:12:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 2, 'non', 'product2.png', 20000.00, 63000.00, '2021-08-10 12:04:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 8, 'aut', 'product3.png', 25000.00, 45000.00, '2021-08-10 12:17:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 10, 'dolor', 'product4.png', 28000.00, 45000.00, '2021-08-10 12:11:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 9, 'qui', 'product2.png', 30000.00, 57000.00, '2021-08-10 12:05:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 10, 'qui', 'product1.png', 28000.00, 57000.00, '2021-08-10 12:18:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 11, 'numquam', 'product4.png', 19000.00, 50000.00, '2021-08-10 12:18:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 6, 'consectetur', 'product2.png', 28000.00, 61000.00, '2021-08-10 12:03:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 5, 'beatae', 'product1.png', 25000.00, 45000.00, '2021-08-10 12:12:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 11, 'rem', 'product1.png', 20000.00, 57000.00, '2021-08-10 12:14:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 13, 'distinctio', 'product3.png', 20000.00, 50000.00, '2021-08-10 12:15:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 15, 'repellendus', 'product3.png', 20000.00, 61000.00, '2021-08-10 12:07:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 20, 'non', 'product4.png', 28000.00, 50000.00, '2021-08-10 12:07:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 1, 'commodi', 'product3.png', 19000.00, 63000.00, '2021-08-10 12:18:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 19, 'nihil', 'product1.png', 20000.00, 50000.00, '2021-08-10 12:17:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 7, 'ad', 'product3.png', 20000.00, 50000.00, '2021-08-10 12:07:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 14, 'repellendus', 'product4.png', 19000.00, 45000.00, '2021-08-10 12:05:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 9, 'commodi', 'product2.png', 19000.00, 57000.00, '2021-08-10 12:14:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(31, 5, 'quis', 'product1.png', 25000.00, 45000.00, '2021-08-10 12:16:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(32, 9, 'commodi', 'product2.png', 20000.00, 57000.00, '2021-08-10 12:04:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(33, 7, 'a', 'product3.png', 28000.00, 61000.00, '2021-08-10 12:05:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(34, 7, 'molestiae', 'product5.png', 28000.00, 45000.00, '2021-08-10 12:16:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(35, 4, 'unde', 'product3.png', 28000.00, 50000.00, '2021-08-10 12:06:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(36, 20, 'voluptatem', 'product5.png', 25000.00, 45000.00, '2021-08-10 12:14:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(37, 18, 'fugiat', 'product2.png', 20000.00, 45000.00, '2021-08-10 12:18:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(38, 2, 'pariatur', 'product3.png', 20000.00, 45000.00, '2021-08-10 12:10:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(39, 3, 'suscipit', 'product1.png', 25000.00, 45000.00, '2021-08-10 12:11:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(40, 4, 'quasi', 'product2.png', 25000.00, 50000.00, '2021-08-10 12:02:00', 'Active', '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_offers`
--

DROP TABLE IF EXISTS `product_offers`;
CREATE TABLE IF NOT EXISTS `product_offers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `offer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_percentage` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_offers`
--

INSERT INTO `product_offers` (`id`, `product_id`, `offer_name`, `offer_description`, `offer_percentage`, `updated_at`, `created_at`) VALUES
(1, 30, '14th Augush Offer', 'Est nostrum ut nulla inventore debitis facilis cum provident sapiente odio ea saepe neque.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 17, '14th Augush Offer', 'Rerum quam inventore exercitationem dolores magni nostrum sunt aliquid in quos.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 3, 'Eid Offer', 'Nihil nam alias sapiente illo maiores vel consequatur nostrum consequatur nemo deserunt.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 5, 'Eid Offer', 'Velit voluptas qui maiores voluptates fugiat nisi dolorum ut nihil numquam odit omnis et temporibus omnis nulla magni consequatur veritatis.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 27, '14th Augush Offer', 'Dolores nisi aspernatur ut praesentium non cupiditate eveniet vel dolor quas eum porro ut.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 21, '14th Augush Offer', 'Corporis saepe non similique sint in omnis est voluptatum accusamus dolor enim vitae voluptas.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 38, 'Eid Offer', 'Tenetur veritatis aspernatur consequatur facere voluptatem tenetur nostrum cum totam mollitia et eos consequatur fugit a necessitatibus et ipsa vitae.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 3, 'New Year Offer', 'Velit cupiditate modi voluptas ea animi fugiat ut qui asperiores qui aut quasi.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 21, '14th Augush Offer', 'Mollitia nulla perspiciatis facere porro et commodi necessitatibus aspernatur magnam.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 33, '14th Augush Offer', 'Necessitatibus dolores ipsa officia et sed ut illo cumque voluptatibus repudiandae eligendi id sunt placeat quo.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 37, 'Eid Offer', 'Voluptatem repudiandae doloremque nobis vero officiis non possimus debitis earum hic impedit quibusdam maiores eos quae.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 28, 'New Year Offer', 'Ab debitis qui voluptatum quaerat eaque minus odio consequuntur asperiores deserunt deleniti aut esse assumenda esse aut harum sequi consequuntur.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 11, 'Eid Offer', 'Exercitationem qui est inventore consequatur sed ut qui quisquam consequatur et maiores vitae.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 27, '14th Augush Offer', 'Voluptatum aliquid voluptas voluptatem non quae vero ratione iusto consequatur dolorum debitis voluptates eius doloremque corrupti ut consectetur expedita dolore.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 19, 'New Year Offer', 'Similique atque eos voluptatem ex quia officiis ut repudiandae impedit magni incidunt aut.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 32, 'Eid Offer', 'Quis enim doloremque consequatur beatae deserunt aut repudiandae incidunt eaque velit quia veritatis.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 13, 'Eid Offer', 'Ullam non eaque nesciunt ut vero quas quam illum nesciunt fuga et exercitationem animi sequi velit iste numquam corrupti provident.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 11, 'Eid Offer', 'Deleniti atque et eveniet deleniti veritatis fugit quis sed velit neque quae.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 27, '14th Augush Offer', 'Hic ut animi eius iure ratione est est voluptatibus quaerat illum eos aut sit et quasi et.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 3, 'Eid Offer', 'Eius est voluptas illo atque esse omnis ad corrupti nesciunt incidunt qui praesentium.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 29, 'New Year Offer', 'Illum perspiciatis quia at sit dolorem sit architecto vel aut et hic eveniet.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 13, 'Eid Offer', 'Qui odio ipsam doloremque sit odio quos ea quasi dignissimos aliquid voluptatem assumenda et.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 39, 'Eid Offer', 'Ea doloribus sint debitis ut eius eius temporibus atque eos nisi expedita sequi earum.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 38, 'Eid Offer', 'Modi cupiditate enim rem adipisci vel eveniet enim sit consequatur incidunt nemo consectetur molestiae aliquid et qui perferendis.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 30, '14th Augush Offer', 'Cupiditate et exercitationem nam tenetur maiores reiciendis voluptas eius dolores delectus qui eum minus velit nulla at tempora cumque quia dolores.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 34, 'Eid Offer', 'Praesentium atque blanditiis quos qui autem possimus voluptatibus voluptates pariatur rerum id fuga dolor est eum omnis molestiae perferendis eum.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 29, '14th Augush Offer', 'Ipsam doloremque eos doloribus voluptatem eligendi consequuntur perferendis minus quia est fuga eum et esse est.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 32, '14th Augush Offer', 'Eaque consequuntur quis possimus ipsum asperiores qui quam temporibus veritatis molestiae aliquid ad et est.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 13, 'New Year Offer', 'Saepe aperiam exercitationem voluptates architecto eligendi recusandae fugiat quod illum qui architecto sit temporibus rerum assumenda et.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 31, 'New Year Offer', 'Eum hic quia sit impedit doloremque officiis iusto aut molestias facilis magni debitis nesciunt rerum.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(31, 37, '14th Augush Offer', 'Consequuntur rerum dolorem architecto quae error neque ullam eveniet vero sint aut porro.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(32, 13, '14th Augush Offer', 'Voluptatem ut non voluptatem ut tenetur reprehenderit quas maxime est officiis quaerat veritatis.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(33, 14, 'New Year Offer', 'Voluptatem consequatur voluptatem voluptate assumenda quibusdam repellendus pariatur architecto quia in incidunt dignissimos et enim et consectetur dolores accusamus ipsa.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(34, 1, 'New Year Offer', 'Dolores quo rerum similique labore perspiciatis eius placeat id eveniet officia rerum repellendus assumenda autem pariatur distinctio autem dolorem et tempore.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(35, 4, 'New Year Offer', 'Repellendus qui debitis dolor et sed maxime et itaque eum ut ratione saepe ex.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(36, 6, 'Eid Offer', 'Ut eum molestiae qui sequi ipsa voluptas qui quae recusandae cum.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(37, 5, 'New Year Offer', 'Recusandae dolore nisi molestias reiciendis fugiat assumenda odit nihil expedita est.', 10, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(38, 12, '14th Augush Offer', 'Et minus aut ab aut omnis exercitationem voluptatem et asperiores voluptas provident quae.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(39, 31, 'Eid Offer', 'Incidunt reprehenderit dolore voluptatem nostrum inventore perspiciatis optio sed quia aspernatur atque est vero.', 20, '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(40, 40, 'Eid Offer', 'Veniam molestiae sed numquam voluptatem illo dolorem ut eveniet quaerat possimus suscipit porro corrupti alias unde.', 15, '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

DROP TABLE IF EXISTS `product_ratings`;
CREATE TABLE IF NOT EXISTS `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `name`, `email`, `rating`, `updated_at`, `created_at`) VALUES
(1, 17, 'Josie Vandervort', 'kailyn78@yahoo.com', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 19, 'Devin Gutmann', 'trantow.novella@heathcote.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 38, 'Trace Emard Jr.', 'weissnat.augustus@rowe.biz', '4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 28, 'Christian Zemlak', 'gwiegand@powlowski.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 21, 'Miss Macy Labadie', 'dejah83@gmail.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 25, 'Isabel Grimes V', 'paolo60@yahoo.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 6, 'Mrs. Francisca Lowe MD', 'dane.lowe@ledner.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 18, 'Kane Wilderman', 'hheathcote@schultz.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 16, 'Adan O\'Keefe', 'roderick86@hotmail.com', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 21, 'Lonie Kuvalis V', 'donato.larson@hotmail.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 8, 'Brooklyn Dare', 'ylehner@little.net', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 29, 'Miss Daphney Steuber MD', 'abeier@sawayn.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 10, 'Laurine Aufderhar DVM', 'emard.randi@hotmail.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 14, 'Lavada Strosin', 'vwaters@hotmail.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 19, 'Tom Parisian', 'vsauer@yahoo.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 29, 'Sebastian McDermott II', 'sanford.powlowski@yahoo.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 28, 'Dr. Nathan Beer', 'gia67@gmail.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 18, 'Miss Christina Schinner', 'parker.flo@kshlerin.biz', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 12, 'Ms. Orie Stehr III', 'elynch@yahoo.com', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 12, 'Jaden Halvorson Jr.', 'krajcik.pansy@yahoo.com', '4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 18, 'Jamil Herman PhD', 'jared96@hotmail.com', '3', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 24, 'Miss Leatha Hansen', 'stone.baumbach@toy.com', '4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 25, 'Darrion Willms', 'harley67@streich.com', '1', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 8, 'Tod Mraz', 'jaskolski.telly@grimes.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 31, 'Cora Runolfsdottir PhD', 'vkeeling@hotmail.com', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 39, 'Ms. Kenna Ullrich', 'marianna78@hotmail.com', '5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 1, 'Justine Bins', 'aditya.hill@hotmail.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 38, 'Dr. Vito Ratke', 'sporer.sydney@yahoo.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 35, 'Jamaal Fay', 'xkozey@yahoo.com', '4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 12, 'Horacio Nolan', 'nakia.beier@gmail.com', '2', '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `name`, `email`, `reviews`, `updated_at`, `created_at`) VALUES
(1, 9, 'Keshaun Turcotte', 'sister.christiansen@mcglynn.com', 'Doloribus sint totam quia ut voluptates saepe exercitationem doloribus non quam.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 34, 'Eleonore Botsford', 'bria23@gmail.com', 'Molestiae numquam eos veniam fugiat molestiae modi voluptas qui.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 7, 'Miss Annabel Brown', 'jayde81@fahey.com', 'Ducimus totam aliquam consequuntur quis ipsa alias facere omnis dolor.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 19, 'Ms. Maribel Jast', 'liliana72@hotmail.com', 'Quia magni sint voluptate ea dolores aut.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 2, 'Howell Feeney', 'rupert.bernhard@hotmail.com', 'Molestiae aut officiis quod architecto harum dolorem nihil est id temporibus perspiciatis.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 15, 'Alvena Ernser', 'trantow.furman@white.com', 'Alias vel cum est rerum quis quis.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 11, 'Nola Jerde', 'ddaniel@gmail.com', 'Magni non sapiente ab et vel veniam fuga rem ea non.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 17, 'Lamar Carter', 'bortiz@brakus.com', 'In enim amet laudantium nihil et.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 29, 'Prof. Vernon Dare', 'priscilla04@abernathy.org', 'Qui ipsum impedit voluptas animi laboriosam quasi nemo.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 39, 'Marjorie Feeney', 'huels.abner@hotmail.com', 'Esse repellendus ut odio rerum omnis non tempora odio.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 33, 'Ben Ebert', 'mireille.cummerata@spinka.com', 'Eveniet quae aliquid vero impedit tenetur et veritatis quas.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 32, 'Kaden Dietrich', 'hhayes@ruecker.com', 'Et iste cumque sequi quasi maxime.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 23, 'Meredith Bradtke MD', 'marshall61@von.com', 'Doloremque eos debitis veritatis vitae numquam ad rem.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 6, 'Nona Blick', 'schiller.adah@grady.info', 'Itaque deserunt debitis dignissimos voluptas ipsum deleniti mollitia at.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 11, 'Raquel Herzog V', 'shaag@yahoo.com', 'Nisi corporis possimus placeat quae neque qui dolores aut.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 35, 'Mr. Ola Bashirian', 'ukozey@yahoo.com', 'Itaque quo quam maiores rerum sed esse veniam.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 27, 'Zachary Boehm', 'cornelius63@gmail.com', 'Animi neque similique est omnis dignissimos molestiae eum et.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 24, 'Mr. Adriel Ortiz DDS', 'cschultz@gmail.com', 'Ad repudiandae dignissimos aut consequatur voluptatem amet molestiae.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 15, 'Magdalena Wuckert', 'jamel.gaylord@yahoo.com', 'Consequatur eos porro sunt sunt eligendi aut.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 21, 'Colton Oberbrunner', 'fay.alvina@hotmail.com', 'Laudantium repellendus aut aut asperiores pariatur et.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 36, 'Miss Lilly Wyman', 'qokeefe@bernier.com', 'Atque facere ad et ea sed consectetur eaque quia.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 38, 'Jayden Botsford', 'ywhite@gmail.com', 'Autem dignissimos dicta distinctio fugiat eligendi autem.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 1, 'Mr. Stefan Schmidt I', 'leila57@yahoo.com', 'Cupiditate possimus officiis numquam voluptas dolorem.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 19, 'Miss Zola Hahn', 'adrain50@rohan.com', 'Consequatur natus delectus repudiandae corrupti neque laborum voluptas consectetur.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 19, 'Rosario Gusikowski DVM', 'iortiz@hotmail.com', 'Quasi aut quis illo consequatur consequatur sit sed quos eligendi.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 24, 'Jamel Beahan V', 'brisa.bashirian@hotmail.com', 'Numquam provident et quos soluta necessitatibus praesentium quae.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 25, 'Billy Bernhard', 'lavinia.windler@bernhard.com', 'Ea maiores eligendi ipsa sequi dolore et consequatur iste minus maxime.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 40, 'Emery Reichel V', 'gerhold.bobbie@gmail.com', 'Reiciendis perspiciatis ut ut laboriosam esse nihil non ut aspernatur recusandae.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 27, 'Prof. Nikko Pollich DDS', 'antonietta.johnston@willms.biz', 'Exercitationem quisquam laudantium ducimus numquam sit tempore.', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 33, 'Dr. Vesta Roberts V', 'frami.maye@hotmail.com', 'Quos ut voluptate animi eos.', '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE IF NOT EXISTS `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `product_size`, `updated_at`, `created_at`) VALUES
(1, 11, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(2, 19, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(3, 28, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(4, 4, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(5, 12, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(6, 25, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(7, 39, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(8, 30, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(9, 29, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(10, 34, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(11, 34, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(12, 4, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(13, 24, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(14, 40, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(15, 13, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(16, 27, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(17, 30, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(18, 39, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(19, 36, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(20, 34, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(21, 27, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(22, 6, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(23, 11, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(24, 2, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(25, 9, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(26, 12, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(27, 6, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(28, 33, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(29, 10, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(30, 38, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(31, 13, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(32, 28, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(33, 10, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(34, 31, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(35, 37, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(36, 35, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(37, 16, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(38, 24, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(39, 30, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(40, 7, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(41, 14, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(42, 29, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(43, 23, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(44, 7, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(45, 14, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(46, 14, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(47, 14, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(48, 15, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(49, 3, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(50, 25, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(51, 32, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(52, 26, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(53, 37, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(54, 26, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(55, 35, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(56, 21, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(57, 36, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(58, 21, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(59, 22, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(60, 26, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(61, 5, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(62, 13, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(63, 37, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(64, 34, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(65, 34, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(66, 15, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(67, 6, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(68, 21, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(69, 4, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(70, 19, '4 * 4', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(71, 16, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(72, 39, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(73, 5, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(74, 29, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(75, 17, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(76, 9, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(77, 12, '5 * 5', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(78, 14, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(79, 31, '7 * 7', '2021-08-10 12:48:00', '2021-08-10 12:48:00'),
(80, 16, '6 * 6', '2021-08-10 12:48:00', '2021-08-10 12:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bernice Erdman DDS', 'donna.farrell@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'POLdilwZhk', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(2, 'Marilie Mills', 'fohara@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Whg4CvjTSp', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(3, 'Electa Gleason', 'roob.cruz@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qmF6yQEgaL', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(4, 'Missouri Ortiz', 'gleason.jesse@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tvpb8YSmwT', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(5, 'Toni Veum', 'brooke30@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0SW9einADh', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(6, 'Miss Hosea Lowe DDS', 'xbahringer@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4yMG56S0Im', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(7, 'Prof. Arnulfo Kovacek', 'rod.mayert@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm817FznfJg', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(8, 'Maverick Schaefer', 'aaliyah.west@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lVb6AzmH2a', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(9, 'Kylee Erdman', 'tito91@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cYoXWfkRvG', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(10, 'Mr. Jaiden Kautzer Sr.', 'josianne37@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h2hxvbm636', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(11, 'Lonie Nicolas', 'maymie.sipes@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '07hzQX5dLe', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(12, 'Ms. Shanon Emard', 'lilly.will@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4YEx3H1xIS', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(13, 'Leonardo Halvorson', 'douglas.rhett@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '50IZMBwHRO', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(14, 'Dr. Jackie Terry PhD', 'kassulke.rosetta@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IqAuI9h6iR', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(15, 'Friedrich Hudson', 'green.milan@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1Iddg7vQgT', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(16, 'Dr. Alessandro Bartell', 'adell42@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W9vwP3dNde', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(17, 'Tina Hettinger III', 'mertz.lilliana@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ahx3TGq73d', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(18, 'Teagan Rowe', 'jesus.auer@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6UZGz5jmmz', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(19, 'Prof. Julian Aufderhar', 'elmira.williamson@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TMHHHH3FXO', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(20, 'Noemie Mills', 'npouros@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Isg91Yv5AG', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(21, 'Dr. Kayli Parker', 'vena46@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A2VnSCcDAJ', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(22, 'Madaline O\'Conner', 'yundt.rex@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nKRLPgIGK3', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(23, 'Cortez Swift', 'conroy.evans@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9KshBYg7Tv', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(24, 'Salvador Schaden', 'dickens.waino@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sH3OyVHBea', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(25, 'Frances Koss', 'carmela.hand@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3h473rrJZT', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(26, 'Letitia Kerluke V', 'wmohr@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZzF3GHQPB1', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(27, 'Holden Torp', 'langworth.deven@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JORCkqSh9U', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(28, 'Spencer Luettgen', 'moen.lucious@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2UFOFTVGRO', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(29, 'Melody Okuneva', 'legros.catalina@example.org', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q3eOZuyWTm', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(30, 'Caden McClure', 'myrtie69@example.com', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q9T4gPmql5', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(31, 'Miss Everette Schuppe', 'haley.eloy@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RmyuEytiHd', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(32, 'Milford Dicki Jr.', 'collier.luna@example.net', '2021-08-10 07:47:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UNdh8mauQL', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(33, 'Rosamond Rau', 'cummings.tristin@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tk1vNBdSxd', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(34, 'Eladio Boyle', 'boyer.elwyn@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'twSmJOZWGU', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(35, 'Anika Stroman', 'hosea35@example.com', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zkQYtKBQXZ', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(36, 'Shana Upton', 'matilda.spinka@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fFxUYzJz8m', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(37, 'Deja Miller PhD', 'paucek.shaina@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'krukk7auL6', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(38, 'Mrs. Lea Dickens', 'garland48@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QymVslF2pd', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(39, 'Floyd McLaughlin', 'hassan87@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2BcSFdJuiH', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(40, 'Mr. Jerald Davis', 'gerda37@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0PFqIiGGWi', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(41, 'Cedrick Torp', 'wellington.ziemann@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rwd3PKtAbJ', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(42, 'Aurelie Fritsch', 'champlin.jeffry@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2oay1ZCvnK', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(43, 'Maximus Jenkins', 'zack41@example.com', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'llXRddJ7O6', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(44, 'Mrs. Norma Douglas', 'misty.purdy@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zikg8e6IOh', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(45, 'Alan Rippin', 'kitty95@example.com', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yks9r2Dg6f', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(46, 'Jarrod Boyle Jr.', 'schamberger.merlin@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cTVj6eUUMk', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(47, 'Judge Johns', 'wolf.edison@example.org', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IgQp3EjeCO', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(48, 'Mr. Samir Boyer PhD', 'tremblay.shane@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H0YlwPTHS0', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(49, 'Alberta Hills', 'ofisher@example.com', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KwH3CnSMZ5', '2021-08-10 07:48:00', '2021-08-10 07:48:00'),
(50, 'Valentine Spencer', 'kaleb40@example.net', '2021-08-10 07:48:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't6eU2MM2vg', '2021-08-10 07:48:00', '2021-08-10 07:48:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
