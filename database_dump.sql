-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 21 Jul 2024 pada 15.20
-- Versi server: 8.0.30
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_widget`
--

CREATE TABLE `about_widget` (
  `id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_widget`
--

INSERT INTO `about_widget` (`id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wire something about your company', 'on', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2017-10-18 06:34:07', '0000-00-00 00:00:00'),
(2, 'RahimVai', '2017-10-18 06:34:07', '0000-00-00 00:00:00'),
(3, 'Admin', '2017-10-18 07:29:57', '0000-00-00 00:00:00'),
(4, 'Parner', '2017-10-18 07:29:57', '0000-00-00 00:00:00'),
(6, 'admin', '2017-10-18 02:49:47', '2017-10-18 02:49:47'),
(7, 'abir vai', '2017-10-18 02:50:06', '2017-10-18 02:50:06'),
(8, 'Boss', '2017-10-18 03:00:37', '2017-10-18 03:00:37'),
(9, 'Ridoy', '2017-10-18 03:35:51', '2017-10-18 03:35:51'),
(10, 'Ridoy', '2017-10-18 03:35:56', '2017-10-18 03:35:56'),
(11, 'Piyal', '2017-10-18 03:42:30', '2017-10-18 03:42:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'support@thesoftking.com', '$2y$10$ojlQWqauqmVVwnAR2GOv/OsT69vJqdQ2ToK8Qw.d1O3SJiCUfBno.', 'fyEdDS61WGXJ1IQfkZK1cG6wqSQdkcV6XgPVzq7BOGEBbFmxUXhrh5D7NYmP', NULL, '2024-07-21 10:53:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`) VALUES
('pranto101201@gmail.com', '$2y$10$bKGrX7/KrxIffj27HVRH0eveqm6pZn4iBuxUwFIvP7fwtdYKX60wq', '2018-01-02 05:25:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int UNSIGNED NOT NULL,
  `add_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advertisements`
--

INSERT INTO `advertisements` (`id`, `add_code`, `created_at`, `updated_at`) VALUES
(1, 'enter adsense code here', '2017-10-12 06:13:56', '2017-10-12 06:13:56'),
(2, 'enter adsense code here', '2017-10-12 06:13:56', '2017-10-12 06:13:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendances`
--

CREATE TABLE `attendances` (
  `id` int UNSIGNED NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `user_id`, `status`, `ip`, `device`, `created_at`, `updated_at`) VALUES
(8, '2017-11-04', '3', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(9, '2017-11-04', '4', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(10, '2017-11-04', '5', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(11, '2017-11-04', '6', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(12, '2017-11-04', '7', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(13, '2017-11-04', '8', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(14, '2017-11-04', '9', '9', 'Auto', 'Auto', '2017-11-04 09:31:47', '2017-11-04 09:31:47'),
(15, '2017-11-05', '8', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0', '2017-11-05 04:31:59', '2017-11-05 04:32:16'),
(38, '2018-01-17', '3', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.39 Safari/537.36', '2018-01-02 12:56:27', '2018-01-02 12:56:27'),
(39, '2018-01-03', '8', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.39 Safari/537.36', '2018-01-03 05:46:06', '2018-01-03 05:46:06'),
(40, '2018-01-24', '3', '1', '59.153.30.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.113 Safari/537.36', '2018-01-24 22:51:25', '2018-01-24 22:51:53'),
(41, '2024-07-21', '9', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 09:59:09', '2024-07-21 09:59:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `awards`
--

CREATE TABLE `awards` (
  `id` int UNSIGNED NOT NULL,
  `award_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gift` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `awards`
--

INSERT INTO `awards` (`id`, `award_name`, `gift`, `price`, `employee_name`, `month`, `year`, `created_at`, `updated_at`) VALUES
(6, 'ICC World CUp', 'Laptop', '2000', 'Nayandra', 'july', '2024', '2024-07-09 09:53:23', '2024-07-09 09:53:23'),
(7, 'new', 'gggg', '35', 'Nayandra', 'july', '2024', '2024-07-16 11:33:30', '2024-07-16 11:33:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int UNSIGNED NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `account_number`, `branch_name`, `swift_code`, `created_at`, `updated_at`) VALUES
(1, 'World Banks', '121454592540', 'Dhaka,Bangladesh0', 'DJ458669S0', '2018-01-07 11:57:44', '2018-01-24 23:08:35'),
(2, 'Dutch Bangla', '124578986523', 'Mirpur-10, Dhaka', '887Eom1241', '2018-01-07 11:59:09', '2018-01-07 11:59:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` int UNSIGNED NOT NULL,
  `bank_id` int NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bank_transactions`
--

INSERT INTO `bank_transactions` (`id`, `bank_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '21100', 1, '2018-01-08 10:08:58', '2018-01-08 10:25:13'),
(2, 1, '51500', 1, '2018-01-08 10:09:35', '2018-01-08 10:11:44'),
(3, 1, '-5000', 0, '2018-01-08 11:09:25', '2018-01-08 11:09:25'),
(4, 2, '-2000', 0, '2018-01-08 11:12:09', '2018-01-08 11:12:09'),
(5, 2, '-8000', 0, '2018-01-08 11:12:53', '2018-01-08 11:12:53'),
(6, 2, '-1000', 0, '2018-01-08 11:15:15', '2018-01-08 11:15:15'),
(7, 1, '-500', 0, '2018-01-08 11:23:03', '2018-01-08 11:23:03'),
(8, 1, '4000', 1, '2018-01-08 11:42:39', '2018-01-08 11:42:39'),
(9, 2, '-1000', 0, '2018-01-08 11:53:32', '2018-01-08 11:53:32'),
(10, 2, '10000', 1, '2018-01-08 12:22:47', '2018-01-08 12:22:47'),
(11, 2, '-2100', 0, '2018-01-08 12:23:18', '2018-01-08 12:23:18'),
(12, 2, '100', 1, '2018-01-24 23:08:54', '2018-01-24 23:08:54'),
(13, 2, '300', 1, '2018-01-24 23:09:14', '2018-01-24 23:09:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `btcs`
--

CREATE TABLE `btcs` (
  `id` int UNSIGNED NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `xpub_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `btcs`
--

INSERT INTO `btcs` (`id`, `display_name`, `api_key`, `xpub_code`, `status`, `btc_picture`, `created_at`, `updated_at`) VALUES
(1, 'BITCOIN', 'api_key', 'xpub_code', NULL, 'jpg', '2017-10-12 06:13:51', '2017-10-12 06:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Drink', '2018-01-04 12:05:52', '2018-01-20 10:45:32'),
(3, 'Fruits', '2018-01-04 12:06:03', '2018-01-20 10:45:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `caterings`
--

CREATE TABLE `caterings` (
  `id` int UNSIGNED NOT NULL,
  `comapany_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `caterings`
--

INSERT INTO `caterings` (`id`, `comapany_id`, `package_id`, `quantity`, `date`, `invoice_id`, `payment`, `due_amount`, `description`, `created_at`, `updated_at`) VALUES
(113, '3', '3', '20', '2018-01-02', '151488921170556898', '1', '', '<br>', '2018-01-02 10:33:40', '2018-01-02 11:20:42'),
(114, '3', '6', '25', '2018-01-02', '15148892231316678468', '1', '', '<br>', '2018-01-02 10:33:50', '2018-01-02 11:20:51'),
(115, '3', '4', '50', '2018-01-02', '15148892331739704229', '1', '', '<br>', '2018-01-02 10:34:03', '2018-01-02 11:23:41'),
(116, '3', '8', '30', '2018-01-02', '15148893782003408180', '1', '', '<br>', '2018-01-02 10:36:26', '2018-01-02 11:23:49'),
(117, '3', '4', '20', '2018-01-02', '15148927601734111496', '0', '100', 'gfdgdf', '2018-01-02 11:32:52', '2018-01-02 11:32:52'),
(118, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:50:09', '2018-01-02 11:50:09'),
(119, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:50:55', '2018-01-02 11:50:55'),
(120, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:51:55', '2018-01-02 11:51:55'),
(121, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:52:23', '2018-01-02 11:52:23'),
(122, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:53:19', '2018-01-02 11:53:19'),
(123, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, 'gdfgfg', '2018-01-02 11:53:43', '2018-01-02 11:53:43'),
(124, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>', '2018-01-02 11:55:09', '2018-01-02 11:58:51'),
(125, '2', '4', '20', '2018-01-02', '15148938008341615', '1', NULL, '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>', '2018-01-02 11:56:19', '2018-01-02 11:58:45'),
(126, '2', '4', '50', '2018-01-02', '1514894909621848511', '1', NULL, 'kjhkhjk', '2018-01-02 12:08:37', '2018-01-02 12:08:37'),
(127, '2', '4', '50', '2018-01-02', '1514894909621848511', '0', '200', '<b style=\"\"><font color=\"#000000\">dsadadasddadfsadsa</font></b>', '2018-01-02 12:13:48', '2018-01-02 12:14:36'),
(128, '2', '2', '50', '2018-01-02', '15148989291921388829', '1', '', 'jhgjghj', '2018-01-02 13:15:38', '2018-01-03 05:38:06'),
(129, '2', '3', '20', '2018-01-03', '15149554081155704161', '1', NULL, 'gdfgfdg', '2018-01-03 04:57:36', '2018-01-03 04:57:36'),
(130, '2', '6', '50', '2018-01-03', '15149557521092896413', '1', '', '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>', '2018-01-03 05:03:09', '2018-01-03 05:38:04'),
(131, '2', '3', '56', '2018-01-23', '1516710381369105275', '1', NULL, 'sfsdfd', '2018-01-24 00:26:59', '2018-01-24 00:26:59'),
(132, '2', '3', '5', '2018-01-23', '1516710484406734919', '1', NULL, 'SADFJK', '2018-01-24 00:28:08', '2018-01-24 00:28:08'),
(133, '3', '4', '20', '2018-01-23', '1516712029697976959', '1', '', 'sdfghj', '2018-01-24 00:54:05', '2018-01-24 22:45:57'),
(134, '3', '7', '43', '2018-01-24', '1516789272281988800', '1', NULL, '<br>', '2018-01-24 22:21:23', '2018-01-24 22:21:23'),
(135, '3', '4', '45', '2018-01-24', '1516789623588333035', '1', NULL, '<br>', '2018-01-24 22:27:12', '2018-01-24 22:27:12'),
(136, '3', '4', '54', '2018-01-24', '1516789731500699752', '1', NULL, 'fggf', '2018-01-24 22:29:00', '2018-01-24 22:29:00'),
(137, '3', '4', '54', '2018-01-24', '1516789731500699752', '1', NULL, 'fggf', '2018-01-24 22:30:31', '2018-01-24 22:30:31'),
(138, '3', '7', '45', '2018-01-24', '1516789921555545516', '1', NULL, 'sdfgh', '2018-01-24 22:32:08', '2018-01-24 22:32:08'),
(139, '3', '4', '10', '2018-01-24', '15167907031748983822', '0', '200', 'dghj', '2018-01-24 22:45:15', '2018-01-24 22:45:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `color_picker`
--

CREATE TABLE `color_picker` (
  `id` int UNSIGNED NOT NULL,
  `color_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `color_picker`
--

INSERT INTO `color_picker` (`id`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'bf6f6f', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_balances`
--

CREATE TABLE `customer_balances` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer_balances`
--

INSERT INTO `customer_balances` (`id`, `customer_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, '1500', NULL, '2018-01-04 07:21:35', '2018-01-04 07:55:24'),
(2, 4, '500', NULL, '2018-01-04 07:21:43', '2018-01-24 23:06:00'),
(3, 1, '500', NULL, '2018-01-04 07:21:53', '2018-01-04 07:55:07'),
(5, 5, '300', NULL, '2018-01-04 07:54:52', '2018-01-04 07:55:31'),
(6, 6, '1000', 'fdsfdsf', '2018-01-04 07:56:01', '2018-01-04 07:56:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cutomers`
--

CREATE TABLE `cutomers` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `include_word` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cutomers`
--

INSERT INTO `cutomers` (`id`, `full_name`, `phone`, `email`, `address`, `include_word`, `created_at`, `updated_at`) VALUES
(1, 'Shanto', '01420420420', 'shanto@420.com', 'Dhaka, Bangladesh', 'somthing, somthing, somthing, somthing, somthing, somthing,', '2018-01-04 06:18:34', '2018-01-04 06:38:58'),
(3, 'Rifat Vaai', '021454751221', 'rifat@gmail.com', 'Dhaka, Bangladesh', 'somthing, somthing, somthing, somthing, somthing, somthing,', '2018-01-04 06:39:35', '2018-01-04 06:39:35'),
(4, 'Ridoy Vaai', '0215421245412', 'ridoy@gmail.com', 'Dhaka, Bangladesh', 'sdsdssdsd', '2018-01-04 06:44:03', '2018-01-20 10:45:14'),
(5, 'Pranto', '323545421214', 'pranto@gmail.com', 'dfdsf,fsdfsd,dsfdsfsd', 'fdsdsfsdf', '2018-01-04 07:47:29', '2018-01-04 07:47:29'),
(6, 'Abir Khan', '15645210214', 'sadfsd@dsfds.com', 'sdfsdf,fsdf', 'sdfdsfdsf', '2018-01-04 07:55:50', '2018-01-04 07:55:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(39, 'Laravel', '2017-10-24 05:02:45', '2018-01-11 10:27:01'),
(41, 'Android', '2017-10-25 07:24:38', '2018-01-11 10:26:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `designations`
--

CREATE TABLE `designations` (
  `id` int UNSIGNED NOT NULL,
  `deg_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `designations`
--

INSERT INTO `designations` (`id`, `deg_name`, `dept_id`, `created_at`, `updated_at`) VALUES
(211, 'Intern Level', 41, '2017-10-25 06:52:59', '2018-01-11 10:26:35'),
(297, 'Entry Level', 41, '2017-11-09 08:57:48', '2018-01-11 10:26:35'),
(298, 'Mid Level', 41, '2017-11-09 08:57:48', '2018-01-11 10:26:35'),
(299, 'Pro', 41, '2017-11-09 08:57:48', '2018-01-11 10:26:35'),
(313, 'Intern Level', 39, '2018-01-03 05:43:39', '2018-01-11 10:27:01'),
(314, 'Entry Level', 39, '2018-01-03 05:43:39', '2018-01-11 10:27:01'),
(315, 'Mid Level', 39, '2018-01-03 05:43:39', '2018-01-03 05:43:39'),
(318, 'Pro Level', 39, '2018-01-11 10:27:01', '2018-01-11 10:27:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int NOT NULL,
  `dept_id` int NOT NULL,
  `deg_id` int NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `image`, `name`, `f_name`, `b_date`, `gender`, `phone`, `local_add`, `per_add`, `email`, `password`, `remember_token`, `employee_id`, `dept_id`, `deg_id`, `date`, `salary`, `ac_name`, `ac_num`, `bank_name`, `code`, `pan_num`, `branch`, `resume`, `offer_letter`, `join_letter`, `con_letter`, `proof`, `created_at`, `updated_at`) VALUES
(3, '1508994104.jpg', 'Pranto', 'Sunil', '13-09-1995', 'male', '01624932425', 'Dhaka,Bnagladesh<br>', 'Dhaka,Bangladesh<br>', 'pranto@thesoftking.com', '$2y$10$s3HWVHtLDGp5KsD.HQxEKOO7sKnhxAvq3syFlT0snFa0QYR7uJ6s6', 'c1C2JaZ95Gp0OvFK631JGbOz7EPHk1QT9UVb1w4laWxtl0tzf1Cw6YMnkV7Y', 45, 39, 314, '04-10-2017', '3000', 'Pranto Roy', '1032-2552-2152', 'Dutch Bangla', 'FC104', '124589', 'Mirpur-10, Dhaka', '1508931959.pdf', '1508931959.pdf', '1508931885.pdf', '1508931885.pdf', '1508931885.pdf', '2017-10-24 12:10:54', '2018-01-11 10:28:44'),
(4, '1508994665.jpg', 'Md. Nazmul Islam', 'Somthing', '01-11-1989', 'male', '01616008181', 'Komolapur, Dhaka.<br>', 'Komolapur, Dhaka.', 'ridoy@thesoftking.com', '$2y$10$LDEvFpVNx1026/dUtRr76.Ay50jtPUEIVjopvUdRs7HilKmY5bYbG', 'QAYPA8SzFlOt6rT79vUMpod3cD8XnC6s77x0k9ezhP5OD3XpdRbsYdhnJ94n', 565424, 39, 315, '02-10-2017', '10000', 'Md. Nazmul Islam', '132-556-4465', 'Eastern Bank', 'PC1235', '145879', 'Dhaka.', '1508994665.pdf', '1508994665.pdf', '1508994665.pdf', '1508994665.pdf', '1508994665.pdf', '2017-10-26 05:11:05', '2018-01-11 10:28:56'),
(5, '1508994953.jpg', 'Saddam Hossain', 'Somthing', '30-09-1993', 'male', '01700010005', 'Dhaka, Bnagladesh<br>', 'Dhaka,Bangladesh<br>', 'saddam@thesoftking.com', '$2y$10$Q2wqQnGCNUUrErrCSZ6Y8ePiATwQq7Bhsb87G8husj4lOvKUEKhHO', 'qYXDcJl0VM1TQ8mDGdcRaQgMj6RhcG4CbM5qaQmlo1FZKZE8mH1Z4gjwvwiq', 23, 42, 316, '02-10-2017', '10000', 'Saddam Hossain', '123456789', 'Dhaka Bank', 'TC54551', '12315646', 'Kawran Bazar', '1508994953.pdf', '1508994953.pdf', '1508994953.pdf', '1508994953.pdf', '1508994953.pdf', '2017-10-26 05:15:53', '2018-01-11 10:28:24'),
(6, '1508995181.jpg', 'Zahangir Pial', 'Somthing', '07-04-1993', 'male', '01749770222', 'Mohammadpur, Dhaka.<br>', 'Mohammadpur, Dhaka.', 'piyal@softking.com', '$2y$10$fhjeAkh7sIdp2UkVl3yTnuie8fZ.NdO4XY0AhN8aPo2hZwqj8FxpS', NULL, 89, 39, 315, '02-10-2017', '10000', 'Zahangir Pial', '54355462145', 'Bank Asia', 'PO45453', '56484212', 'Mohammadpur', '1508995181.pdf', '1508995181.pdf', '1508995181.pdf', '1508995181.pdf', '1508995181.pdf', '2017-10-26 05:19:41', '2018-01-11 10:28:10'),
(7, '1721572799.jpg', 'Abdur Rahman', 'Somthing', '01-05-1991', 'male', '01896526633', 'Mirpur, Dhaka.<br>', 'Mirpur, Dhaka.', 'riyad@thesoftking.com', '$2y$10$mOSTHwJaDhzAre8qtWs8rON0LCP.5C8Qo0AIUJaZqkUztDbTxod.K', NULL, 88, 39, 313, '01-01-2024', '8000', 'Abdur Rahman', '545544354345', 'Sonali Bank', 'OP4545', '146546552', 'Mirpur-10, Dhaka', '1508995370.pdf', '1508995370.pdf', '1508995370.pdf', '1508995370.pdf', '1508995370.pdf', '2017-10-26 05:22:50', '2024-07-21 13:40:00'),
(9, '1721572750.jpg', 'nayandra', 'Somthing', '03-05-1993', 'male', '01986262368', 'Dhaka,Bnagladesh<br>', 'Dhaka,Bnagladesh', 'nayandra', '$2y$10$OfnL2Yocn.Kkj.uSdaot0.IsSa/y/j90FTn6DHxCEsvvJdVPvnqdq', '7QphJiXsZtMakVbWfQWUS1ar5DH0U8O0ydvXDcdfKGxs0SPaB6eXNc3Puk4O', 24586220, 39, 313, '01-01-2024', '10000', 'Shahidul Islam', '45367766572', 'Rupali Bank', '546874', '025416510321', 'Uttora', '1508996485.pdf', '1508996485.pdf', '1508996485.pdf', '1508996485.pdf', '1508996485.pdf', '2017-10-26 05:41:25', '2024-07-21 14:05:22'),
(10, '1721572311.jpg', 'nayandra 1', 'gdfgdf', '08-11-2017', 'male', '543454354', 'dfgdfgdfg<br>', 'ggdfg<br>', 'thesoftking@gmail.com', '$2y$10$T0mcZ1G9M5CcUnc6m9UZNOqc8PG47XuTYPrPuf2rtyjIUr1SSOSwa', NULL, 34545345, 39, 313, '01-01-2024', '4343543', 'fgdfgdfg', '543534543', 'fgdfgdfg', 'fgdfgdfg', 'fgdfgdfg', 'fgdfgdfg', '1516444695.pdf', '1516444695.pdf', '1516444695.pdf', '1516444695.pdf', '1516444695.pdf', '2017-11-18 04:45:48', '2024-07-21 13:40:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expance_transactions`
--

CREATE TABLE `expance_transactions` (
  `id` int UNSIGNED NOT NULL,
  `bank_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `expance_transactions`
--

INSERT INTO `expance_transactions` (`id`, `bank_id`, `amount`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5000', 'Fruite Item Buy<div><br></div>', 0, '2018-01-08 11:09:25', '2018-01-08 11:09:25'),
(2, '2', '2000', 'fsdfsdf', 0, '2018-01-08 11:12:09', '2018-01-08 11:12:09'),
(3, '2', '8000', 'fdsf', 0, '2018-01-08 11:12:53', '2018-01-08 11:12:53'),
(4, '2', '1000', 'ghhj<div><br></div>', 0, '2018-01-08 11:15:15', '2018-01-08 11:15:15'),
(5, '1', '500', 'fd', 0, '2018-01-08 11:23:03', '2018-01-08 11:23:03'),
(6, '2', '1000', 'gfd', 0, '2018-01-08 11:53:32', '2018-01-08 11:53:32'),
(7, '2', '2100', 'oiuoiu', 0, '2018-01-08 12:23:18', '2018-01-08 12:23:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `id` int NOT NULL,
  `expense` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expenses`
--

INSERT INTO `expenses` (`id`, `expense`, `created_at`, `updated_at`) VALUES
(1, 'fgdgfsg', '2017-11-06 08:45:26', '2017-11-06 08:45:26'),
(2, 'Rent', '2017-11-06 09:41:48', '2017-11-06 08:46:37'),
(3, 'Electricity Bill', '2017-11-06 08:47:56', '2017-11-06 08:47:56'),
(4, 'Others', '2017-11-06 08:48:12', '2017-11-06 08:48:12'),
(5, 'Wasa Bill', '2017-11-06 10:07:25', '2017-11-06 10:07:25'),
(6, 'fsdfsd', '2018-01-03 05:16:48', '2018-01-03 05:16:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int UNSIGNED NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'on', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_items`
--

CREATE TABLE `food_items` (
  `id` int UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `food_items`
--

INSERT INTO `food_items` (`id`, `package_id`, `item`, `created_at`, `updated_at`) VALUES
(30, 2, 'cha', '2018-01-01 11:34:43', '2018-01-01 11:34:43'),
(31, 2, 'biskut', '2018-01-01 11:34:43', '2018-01-01 11:34:43'),
(32, 2, 'pani', '2018-01-01 11:34:43', '2018-01-01 11:34:43'),
(33, 4, 'vaat', '2018-01-01 11:39:10', '2018-01-01 11:39:10'),
(34, 4, 'mangso', '2018-01-01 11:39:10', '2018-01-01 11:39:10'),
(35, 4, 'daal', '2018-01-01 11:39:10', '2018-01-01 11:39:10'),
(36, 6, 'ruti', '2018-01-01 11:40:51', '2018-01-01 11:40:51'),
(37, 6, 'vaji', '2018-01-01 11:40:51', '2018-01-01 11:40:51'),
(38, 7, 'vat', '2018-01-01 11:41:21', '2018-01-01 11:41:21'),
(39, 7, 'fish', '2018-01-01 11:41:21', '2018-01-01 11:41:21'),
(40, 7, 'meat', '2018-01-01 11:41:21', '2018-01-01 11:41:21'),
(41, 8, 'vaat', '2018-01-01 11:42:03', '2018-01-01 11:42:03'),
(42, 8, 'dim', '2018-01-01 11:42:03', '2018-01-01 11:42:03'),
(43, 8, 'meat', '2018-01-01 11:42:03', '2018-01-01 11:42:03'),
(44, 3, 'vat', '2018-01-20 10:44:29', '2018-01-20 10:44:29'),
(45, 3, 'daal', '2018-01-20 10:44:30', '2018-01-20 10:44:30'),
(46, 3, 'masssss', '2018-01-20 10:44:30', '2018-01-20 10:44:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_mills`
--

CREATE TABLE `food_mills` (
  `id` int UNSIGNED NOT NULL,
  `shift_id` int NOT NULL,
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `food_mills`
--

INSERT INTO `food_mills` (`id`, `shift_id`, `package_name`, `package_price`, `created_at`, `updated_at`) VALUES
(3, 2, 'lunch 1', '50', '2018-01-01 09:40:37', '2018-01-01 11:30:06'),
(4, 3, 'dinner 1', '60', '2018-01-01 09:40:48', '2018-01-01 11:39:10'),
(7, 2, 'lunch2', '80', '2018-01-01 11:41:21', '2018-01-01 11:41:21'),
(8, 3, 'dinner 2', '80', '2018-01-01 11:42:03', '2018-01-01 11:42:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_shifts`
--

CREATE TABLE `food_shifts` (
  `id` int UNSIGNED NOT NULL,
  `shift_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `food_shifts`
--

INSERT INTO `food_shifts` (`id`, `shift_name`, `time`, `created_at`, `updated_at`) VALUES
(2, 'Lunch', '2:00 PM', '2018-01-01 08:59:05', '2018-01-01 08:59:05'),
(3, 'Dinner', '9:00 PM', '2018-01-01 08:59:41', '2018-01-01 08:59:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `generals`
--

CREATE TABLE `generals` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `generals`
--

INSERT INTO `generals` (`id`, `image`, `title`, `mobile`, `email`, `name`, `currency`, `created_at`, `updated_at`) VALUES
(1, '1510985988.png', 'TheSoftKing ERP', '01624932425', 'support@thesoftking.com', 'The Softking', 'RP', NULL, '2024-07-21 10:53:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `holidays`
--

CREATE TABLE `holidays` (
  `id` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `occasion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `holidays`
--

INSERT INTO `holidays` (`id`, `start_date`, `end_date`, `occasion`, `created_at`, `updated_at`) VALUES
(29, '2018-01-17', '2018-01-17', 'dffssdfdf', '2017-10-31 08:33:16', '2017-10-31 08:33:16'),
(30, '2017-11-15', '2017-11-18', 'somthing', '2017-11-01 11:40:26', '2017-11-01 11:40:26'),
(31, '2017-11-03', '2017-11-04', 'xddg', '2017-11-04 05:09:19', '2017-11-04 05:09:19'),
(32, '2017-11-08', '2017-11-08', 'fdgf', '2017-11-04 05:22:22', '2017-11-04 05:22:22'),
(33, '2017-11-06', '2017-11-07', 'fdsggdfgf', '2017-11-04 05:23:22', '2017-11-04 05:23:22'),
(34, '2017-11-05', '2017-11-07', 'fsdffdsf', '2017-11-04 05:27:38', '2017-11-04 05:27:38'),
(35, '2017-11-04', '2017-11-05', 'fdsfsfsd', '2017-11-04 05:28:34', '2017-11-04 05:28:34'),
(36, '2017-11-03', '2017-11-03', 'cxvxvxxcv', '2017-11-04 05:33:53', '2017-11-04 05:33:53'),
(37, '2017-11-15', '2017-11-17', 'xzcxvxvxc', '2017-11-04 07:28:40', '2017-11-04 07:28:40'),
(38, '2017-11-23', '2017-11-23', 'somthing', '2017-11-12 06:27:58', '2017-11-12 06:27:58'),
(39, '2018-01-17', '2018-01-26', 'ffdsfds', '2018-01-03 05:16:38', '2018-01-03 05:16:38'),
(40, '2018-04-12', '2018-04-20', 'asxdfgh', NULL, NULL),
(41, '2024-07-03', '2024-07-24', 'malas', '2024-07-21 09:29:29', '2024-07-21 09:29:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_page_managements`
--

CREATE TABLE `home_page_managements` (
  `id` int UNSIGNED NOT NULL,
  `header_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recent_items` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countdown_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_items` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_page_managements`
--

INSERT INTO `home_page_managements` (`id`, `header_section`, `featured_section`, `category_section`, `recent_items`, `team_section`, `countdown_section`, `popular_items`, `created_at`, `updated_at`) VALUES
(1, 'on', 'on', 'on', 'on', 'on', 'on', 'on', '2017-10-12 03:55:54', '2017-10-12 03:55:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `incomes`
--

CREATE TABLE `incomes` (
  `id` int NOT NULL,
  `income` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `incomes`
--

INSERT INTO `incomes` (`id`, `income`, `created_at`, `updated_at`) VALUES
(1, 'gdfgdfg', '2017-11-06 08:45:00', '2017-11-06 08:45:00'),
(2, 'Client', '2017-11-06 08:45:59', '2017-11-06 08:45:59'),
(3, 'Sales', '2017-11-06 08:46:18', '2017-11-06 08:46:18'),
(5, 'Others', '2017-11-06 08:47:12', '2017-11-06 08:47:12'),
(6, 'fdsfd', '2018-01-03 05:16:45', '2018-01-03 05:16:45'),
(7, 'makan', '2024-07-21 09:04:47', '2024-07-21 09:04:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_02_102258_create_categories_table', 1),
(4, '2017_10_04_070056_create_sub_categories_table', 1),
(5, '2017_10_04_113111_create_plans_table', 1),
(6, '2017_10_05_081245_create_paypals_table', 1),
(7, '2017_10_05_094111_create_perfect_moneys_table', 1),
(8, '2017_10_05_103539_create_btcs_table', 1),
(9, '2017_10_05_115012_create_stripes_table', 1),
(10, '2017_10_07_055619_create_advertisements_table', 1),
(11, '2017_10_07_062621_create_locations_table', 1),
(12, '2017_10_07_070507_create_currencies_table', 1),
(13, '2017_10_07_111806_create_home_page_managements_table', 1),
(14, '2017_10_08_082145_create_page_managements_table', 1),
(15, '2017_10_10_044526_create_siteinfos_table', 1),
(16, '2017_10_10_062124_create_support_bars_table', 1),
(17, '2017_10_10_070455_create_widget_managements_table', 1),
(18, '2017_10_10_080035_create_about_widget_table', 1),
(19, '2017_10_10_120449_create_feedback_table', 1),
(20, '2017_10_10_120557_create_recent_post_widget', 1),
(21, '2017_10_11_041245_create_useful_links_winget_table', 1),
(22, '2017_10_11_072848_create_color_picker_table', 1),
(23, '2017_10_12_103202_create_social_managements_table', 2),
(24, '2017_10_18_060658_create_accounts_table', 3),
(25, '2017_10_18_060850_create_transactions_table', 4),
(26, '2017_10_18_102659_create_incomes_table', 5),
(27, '2017_10_18_102759_create_expenses_table', 5),
(28, '2017_10_18_164910_create_trans_incomes_table', 6),
(29, '2017_10_18_165005_create_trans_expenses_table', 6),
(30, '2017_10_22_105453_create_departments_table', 7),
(31, '2017_10_22_105741_create_designations_table', 7),
(32, '2017_10_22_125500_create_awards_table', 8),
(33, '2017_10_23_115244_create_notices_table', 9),
(35, '2017_10_23_132455_create_generals_table', 10),
(38, '2017_10_24_114740_create_holidays_table', 11),
(39, '2017_10_24_115040_create_employees_table', 11),
(40, '2017_10_26_121501_create_attendances_table', 12),
(41, '2017_10_29_101307_create_timezones_table', 13),
(42, '2017_10_29_123504_create_tasks_table', 14),
(43, '2017_11_07_130414_create_payments_table', 15),
(44, '2017_11_08_152059_create_admins_table', 16),
(45, '2017_11_08_152100_create_admin_password_resets_table', 16),
(46, '2018_01_01_123159_create_office_details_table', 17),
(47, '2018_01_01_132041_create_food_mills_table', 18),
(48, '2018_01_01_143107_create_food_shifts_table', 18),
(49, '2018_01_01_143606_create_food_items_table', 18),
(50, '2018_01_01_175144_create_caterings_table', 19),
(51, '2018_01_04_115058_create_cutomers_table', 20),
(52, '2018_01_04_125141_create_customer_balances_table', 21),
(53, '2018_01_04_150552_create_products_table', 22),
(54, '2018_01_07_105426_create_sale_points_table', 23),
(56, '2018_01_07_130506_create_stock_products_table', 24),
(57, '2018_01_07_131310_create_warehouses_table', 24),
(58, '2018_01_07_165905_create_bank_accounts_table', 25),
(60, '2018_01_08_142117_create_bank_transactions_table', 26),
(61, '2018_01_08_162951_create_expance_transactions_table', 27),
(62, '2018_01_09_112524_create_suppliers_table', 28),
(63, '2018_01_09_112637_create_supplier_items_table', 28),
(64, '2018_01_09_112725_create_supply_managments_table', 28),
(65, '2018_01_09_190511_create_supplied_products_table', 29),
(66, '2018_01_10_141459_create_personal_managements_table', 30),
(67, '2018_01_10_150800_create_office_loans_table', 31),
(68, '2018_01_10_163837_create_purchases_table', 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notices`
--

CREATE TABLE `notices` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Tets title', 'test notice', '2024-07-21 13:49:35', '2024-07-21 13:49:35'),
(5, 'Tets title', 'test notice', '2024-07-21 13:49:43', '2024-07-21 13:49:43'),
(6, 'Tets title', 'test notice', '2024-07-21 13:51:51', '2024-07-21 13:51:51'),
(7, 'Tets title', 'test notice', '2024-07-21 13:53:34', '2024-07-21 13:53:34'),
(8, 'Tets title', 'test notice', '2024-07-21 13:55:18', '2024-07-21 13:55:18'),
(9, 'dadwad', 'dadwadd', '2024-07-21 13:55:25', '2024-07-21 13:55:25'),
(10, 'dadwad', 'dadwadd', '2024-07-21 13:55:28', '2024-07-21 13:55:28'),
(11, 'dawdwad', 'dawdawd', '2024-07-21 13:57:19', '2024-07-21 13:57:19'),
(12, 'dawdwad', 'dawdawd', '2024-07-21 13:57:22', '2024-07-21 13:57:22'),
(13, 'dawdwad', 'dawdawd', '2024-07-21 13:57:25', '2024-07-21 13:57:25'),
(14, 'dawdd', 'awdawd', '2024-07-21 13:58:40', '2024-07-21 13:58:40'),
(15, 'dawdd', 'awdawd', '2024-07-21 14:00:37', '2024-07-21 14:00:37'),
(16, 'dawd', 'dawdad', '2024-07-21 14:01:07', '2024-07-21 14:01:07'),
(17, 'dawd', 'dawdad', '2024-07-21 14:01:10', '2024-07-21 14:01:10'),
(18, 'dawd', 'dawdad', '2024-07-21 14:01:12', '2024-07-21 14:01:12'),
(19, 'dawdd', 'dawdwdaw', '2024-07-21 14:02:11', '2024-07-21 14:02:11'),
(20, 'dawd', 'dawd', '2024-07-21 14:02:49', '2024-07-21 14:02:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `office_details`
--

CREATE TABLE `office_details` (
  `id` int UNSIGNED NOT NULL,
  `office_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `office_details`
--

INSERT INTO `office_details` (`id`, `office_name`, `owner_name`, `phone`, `email`, `location`, `created_at`, `updated_at`) VALUES
(2, 'Office1', 'Office1', '145648451', 'e55f95498d-8547b3@inbox.mailtrap.io', 'Dhaka Bangladesh', '2018-01-01 07:18:10', '2018-01-01 07:18:10'),
(3, 'Pranto Roy Ltd.', 'Pranto', '01624932425', 'www.prantoroy.com@gmail.com', 'Dhaka Bangladesh', '2018-01-01 11:35:43', '2018-01-24 22:26:55'),
(4, 'Office3', 'Office3', '12654641', 'Office3@gmail.com', 'Dhaka Bangladesh', '2018-01-01 11:36:11', '2018-01-01 11:36:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `office_loans`
--

CREATE TABLE `office_loans` (
  `id` int UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `office_loans`
--

INSERT INTO `office_loans` (`id`, `employee_id`, `amount`, `date`, `detail`, `created_at`, `updated_at`) VALUES
(1, 3, '5000', '2018-01-30', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 09:26:40', '2018-01-20 10:49:47'),
(2, 5, '100', '2018-01-16', 'dsfsf', '2018-01-24 00:46:20', '2018-01-24 00:46:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `page_managements`
--

CREATE TABLE `page_managements` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `menu_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `page_managements`
--

INSERT INTO `page_managements` (`id`, `name`, `content`, `menu_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ooo', 'faq', NULL, 0, '2017-10-12 04:26:37', '2017-10-17 23:22:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `attend` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`id`, `employee_id`, `attend`, `salary`, `from_date`, `to_date`, `status`, `created_at`, `updated_at`) VALUES
(111, 23, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 10:39:06', '2024-07-21 10:39:06'),
(113, 88, '1', '266.66666666667', '2024-07-01', '2024-07-31', 0, '2024-07-21 10:39:06', '2024-07-21 10:39:06'),
(114, 89, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 10:39:06', '2024-07-21 10:39:06'),
(115, 565424, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 10:39:06', '2024-07-21 10:39:06'),
(116, 24586220, '2', '666.66666666667', '2024-07-01', '2024-07-31', 1, '2024-07-21 10:39:06', '2024-07-21 10:39:49'),
(117, 34545345, '0', '0', '2024-07-01', '2024-07-31', 0, '2024-07-21 10:39:06', '2024-07-21 10:39:06'),
(118, 23, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(119, 45, '3', '300', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(120, 88, '1', '266.66666666667', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(121, 89, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(122, 565424, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(123, 24586220, '2', '666.66666666667', '2024-07-01', '2024-07-31', 1, '2024-07-21 12:15:42', '2024-07-21 13:19:12'),
(124, 34545345, '0', '0', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:15:42', '2024-07-21 12:15:42'),
(125, 23, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(126, 45, '3', '300', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(127, 88, '1', '266.66666666667', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(128, 89, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(129, 565424, '1', '333.33333333333', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(130, 24586220, '2', '666.66666666667', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11'),
(131, 34545345, '0', '0', '2024-07-01', '2024-07-31', 0, '2024-07-21 12:29:11', '2024-07-21 12:29:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paypals`
--

CREATE TABLE `paypals` (
  `id` int UNSIGNED NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paypals`
--

INSERT INTO `paypals` (`id`, `display_name`, `paypal_email`, `status`, `payment_picture`, `created_at`, `updated_at`) VALUES
(1, 'Enter Display Name', 'Enter Paypal Email', NULL, 'jpg', '2017-10-12 06:13:51', '2017-10-12 06:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perfect_moneys`
--

CREATE TABLE `perfect_moneys` (
  `id` int UNSIGNED NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passpharase` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefect_money_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perfect_moneys`
--

INSERT INTO `perfect_moneys` (`id`, `display_name`, `passpharase`, `usd`, `status`, `prefect_money_picture`, `created_at`, `updated_at`) VALUES
(1, 'Perfect Money', 'U5220203', 'reg4e54h1grt1j', NULL, 'jpg', '2017-10-12 06:13:51', '2017-10-12 06:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_managements`
--

CREATE TABLE `personal_managements` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_managements`
--

INSERT INTO `personal_managements` (`id`, `name`, `phone`, `email`, `amount`, `date`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Abir Vaai', '0123456789525', 'abir@gmail.com', '50000', '2018-01-23', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 08:40:58', '2018-01-10 09:04:55'),
(2, 'Rifat Vaai', '078945612301', 'rifat@gmail.com', '25000', '2018-02-15', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 08:41:32', '2018-01-20 10:49:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `plans`
--

CREATE TABLE `plans` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `days`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 1200, 3, 'on', '2017-10-12 06:10:15', '2017-10-12 06:10:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_id`, `unit`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pepsi', '45435454544', 'Pieces', '15', '18', '2018-01-04 11:32:23', '2018-01-04 12:23:02'),
(3, 2, 'Mojo', '43323232432', 'Pieces', '15', '18', '2018-01-04 11:53:24', '2018-01-04 12:23:09'),
(4, 3, 'Bananna', '5344343554', 'Pieces', '8', '10', '2018-01-07 05:28:03', '2018-01-07 05:28:03'),
(5, 3, 'Mango', '8989898', 'Kg', '40', '60', '2018-01-07 05:28:29', '2018-01-07 05:28:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE `purchases` (
  `id` int UNSIGNED NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `purchases`
--

INSERT INTO `purchases` (`id`, `amount`, `date`, `detail`, `created_at`, `updated_at`) VALUES
(1, '200', '2018-01-10', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 11:03:54', '2018-01-10 11:03:54'),
(2, '500', '2018-01-31', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 11:04:05', '2018-01-10 11:04:05'),
(3, '3000', '2018-01-13', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 11:04:25', '2018-01-10 11:04:25'),
(4, '1000', '2018-01-18', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 11:04:44', '2018-01-24 23:10:12'),
(5, '200', '2018-01-18', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>', '2018-01-10 11:18:58', '2018-01-20 10:50:03'),
(6, '150', '2018-01-02', 'hgbhb', '2018-01-24 22:55:08', '2018-01-24 23:00:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recent_post_widget`
--

CREATE TABLE `recent_post_widget` (
  `id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `recent_post_widget`
--

INSERT INTO `recent_post_widget` (`id`, `count`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'on', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale_points`
--

CREATE TABLE `sale_points` (
  `id` int UNSIGNED NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sale_points`
--

INSERT INTO `sale_points` (`id`, `invoice_id`, `warehouse_id`, `customer_id`, `product_id`, `quantity`, `total_amount`, `date`, `created_at`, `updated_at`) VALUES
(2, '15153184991219855851', 1, 4, 5, '10', '600', '2018-01-07', '2018-01-07 09:48:29', '2018-01-07 09:48:29'),
(3, '1515318694508602606', 1, 4, 5, '10', '600', '2018-01-07', '2018-01-07 09:51:44', '2018-01-07 09:51:44'),
(4, '1515320688449733712', 1, 3, 3, '200', '3600', '2018-01-07', '2018-01-07 10:25:01', '2018-01-07 10:25:01'),
(5, '15153213431796850766', 3, 4, 4, '10', '100', '2018-01-07', '2018-01-07 10:35:57', '2018-01-07 10:35:57'),
(6, '15153213431796850766', 3, 4, 4, '10', '100', '2018-01-07', '2018-01-07 10:36:11', '2018-01-07 10:36:11'),
(7, '15153213431796850766', 3, 4, 4, '10', '100', '2018-01-07', '2018-01-07 10:36:45', '2018-01-07 10:36:45'),
(8, '15153213431796850766', 3, 4, 4, '10', '100', '2018-01-07', '2018-01-07 10:38:26', '2018-01-07 10:38:26'),
(9, '1515321520347021211', 1, 5, 5, '12', '720', '2018-01-07', '2018-01-07 10:38:49', '2018-01-07 10:38:49'),
(10, '15156728791342421646', 1, 3, 3, '1750', '31500', '2018-01-11', '2018-01-11 12:15:24', '2018-01-11 12:15:24'),
(11, '151609721779674098', 1, 3, 4, '100', '1000', '2018-01-16', '2018-01-16 10:07:10', '2018-01-16 10:07:10'),
(12, '1516445150801433674', 1, 4, 5, '1000', '60000', '2018-01-20', '2018-01-20 10:46:48', '2018-01-20 10:46:48'),
(13, '15164452931222906187', 1, 4, 4, '200', '0', '2018-01-20', '2018-01-20 10:48:32', '2018-01-20 10:48:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siteinfos`
--

CREATE TABLE `siteinfos` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fevicon` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siteinfos`
--

INSERT INTO `siteinfos` (`id`, `title`, `copyright_text`, `logo`, `fevicon`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, 'This is a demo title', '© 2017 Demo Site. All rights reserved.', 'png', 'png', 'Demo Meta Description', 'Demo Meta Keyword', '2017-10-12 03:42:37', '2017-10-12 03:42:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_managements`
--

CREATE TABLE `social_managements` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_managements`
--

INSERT INTO `social_managements` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(2, 'Electronics', 'http://robin.thesoftking.com/mama-host/', '2017-10-12 04:46:49', '2017-10-12 04:46:49'),
(4, 'Demo Page', 'http://onlyapk24.com/kingsoft/awesome/Awesome-Community-demo', '2017-10-12 04:47:39', '2017-10-12 04:47:39'),
(6, 'about', 'devrobin.com/test', '2017-10-12 04:48:40', '2017-10-12 04:48:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_products`
--

CREATE TABLE `stock_products` (
  `id` int UNSIGNED NOT NULL,
  `warehouse_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stock_products`
--

INSERT INTO `stock_products` (`id`, `warehouse_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2500', '2018-01-07 08:22:27', '2018-01-07 08:22:27'),
(2, 1, 3, '2000', '2018-01-07 08:22:52', '2018-01-07 08:22:52'),
(3, 1, 5, '5000', '2018-01-07 08:23:01', '2018-01-07 08:23:01'),
(4, 3, 4, '5000', '2018-01-07 08:23:08', '2018-01-07 08:23:08'),
(5, 1, 4, '2000', '2018-01-07 08:50:57', '2018-01-07 08:50:57'),
(7, 1, 5, '-10', '2018-01-07 09:48:29', '2018-01-07 09:48:29'),
(8, 1, 5, '-10', '2018-01-07 09:51:44', '2018-01-07 09:51:44'),
(9, 1, 3, '-200', '2018-01-07 10:25:01', '2018-01-07 10:25:01'),
(10, 3, 4, '-10', '2018-01-07 10:35:57', '2018-01-07 10:35:57'),
(11, 3, 4, '-10', '2018-01-07 10:36:11', '2018-01-07 10:36:11'),
(12, 3, 4, '-10', '2018-01-07 10:36:45', '2018-01-07 10:36:45'),
(13, 3, 4, '-10', '2018-01-07 10:38:26', '2018-01-07 10:38:26'),
(14, 1, 5, '-12', '2018-01-07 10:38:49', '2018-01-07 10:38:49'),
(15, 1, 3, '-1750', '2018-01-11 12:15:24', '2018-01-11 12:15:24'),
(16, 1, 4, '-100', '2018-01-16 10:07:10', '2018-01-16 10:07:10'),
(17, 1, 5, '-1000', '2018-01-20 10:46:49', '2018-01-20 10:46:49'),
(18, 1, 4, '-200', '2018-01-20 10:48:32', '2018-01-20 10:48:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stripes`
--

CREATE TABLE `stripes` (
  `id` int UNSIGNED NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stripes`
--

INSERT INTO `stripes` (`id`, `display_name`, `secret_key`, `publisher_key`, `status`, `stripe_picture`, `created_at`, `updated_at`) VALUES
(1, 'Card', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, 'jpg', '2017-10-12 06:13:51', '2017-10-12 06:13:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int UNSIGNED NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplied_products`
--

CREATE TABLE `supplied_products` (
  `id` int UNSIGNED NOT NULL,
  `item_id` int NOT NULL,
  `supply_table_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `service_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplied_products`
--

INSERT INTO `supplied_products` (`id`, `item_id`, `supply_table_id`, `supplier_id`, `service_price`, `service_quantity`, `service_amount`, `invoice_id`, `form_date`, `to_date`, `created_at`, `updated_at`) VALUES
(21, 5, 13, 3, '10', '500', '5000', '15155687821857975065', '2018-01-01', '2018-01-31', '2018-01-10', '2018-01-10 07:19:42'),
(22, 21, 13, 3, '50', '180', '9000', '15155687821009752253', '2018-01-01', '2018-01-31', '2018-01-10', '2018-01-10 07:19:42'),
(23, 22, 13, 3, '500', '600', '300000', '15155687821289818127', '2018-01-01', '2018-01-31', '2018-01-10', '2018-01-10 07:19:42'),
(24, 9, 14, 4, '60', '70', '4200', '15155688032057601175', NULL, NULL, '2018-01-10', '2018-01-10 07:20:03'),
(25, 8, 14, 4, '50', '70', '3500', '15155688031747741716', NULL, NULL, '2018-01-10', '2018-01-10 07:20:03'),
(26, 9, 15, 4, '20', '20', '400', '1516790934337551553', NULL, NULL, '2018-01-24', '2018-01-24 22:48:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int UNSIGNED NOT NULL,
  `supplier_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `supplier_mobile`, `supplier_email`, `supplier_address`, `created_at`, `updated_at`) VALUES
(3, 'Supplier 1', '02312541564', 'Supplier1@email.com', 'Dhaka, Bangladesh', '2018-01-09 06:34:26', '2018-01-24 23:09:44'),
(4, 'Supplier 2 Updated', '0231454510', 'Supplier2@email.comUPdated', 'Dhaka,BangladeshUpdated', '2018-01-09 06:36:51', '2018-01-09 08:23:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_items`
--

CREATE TABLE `supplier_items` (
  `id` int UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier_items`
--

INSERT INTO `supplier_items` (`id`, `supplier_id`, `item`, `created_at`, `updated_at`) VALUES
(5, 3, 'Banana Updated', '2018-01-09 06:34:26', '2018-01-09 08:18:48'),
(8, 4, 'Burger Updated', '2018-01-09 06:36:51', '2018-01-09 08:23:38'),
(9, 4, 'French Fry Updated', '2018-01-09 06:36:51', '2018-01-09 08:23:38'),
(10, 4, 'Pizza Updated', '2018-01-09 06:36:51', '2018-01-09 08:23:38'),
(21, 3, 'Mango', '2018-01-09 08:18:48', '2018-01-09 08:19:33'),
(22, 3, 'Jack', '2018-01-09 08:19:04', '2018-01-09 08:19:33'),
(23, 4, 'HotDog New', '2018-01-09 08:23:39', '2018-01-09 08:23:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supply_managments`
--

CREATE TABLE `supply_managments` (
  `id` int UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `status` int NOT NULL,
  `form_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `total_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supply_managments`
--

INSERT INTO `supply_managments` (`id`, `supplier_id`, `status`, `form_date`, `to_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(13, 3, 0, '2018-01-01', '2018-01-31', '314000', '2018-01-10 07:19:42', '2018-01-10 07:19:42'),
(14, 4, 1, NULL, NULL, '7700', '2018-01-10 07:20:03', '2018-01-10 07:20:03'),
(15, 4, 1, NULL, NULL, '400', '2018-01-24 22:48:54', '2018-01-24 22:48:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `support_bars`
--

CREATE TABLE `support_bars` (
  `id` int UNSIGNED NOT NULL,
  `contact_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_time_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `support_bars`
--

INSERT INTO `support_bars` (`id`, `contact_icon`, `phone_number`, `service_time_icon`, `service_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phone', '12345678910', 'clock', '9.00 am - 5.00 pm', NULL, '2017-10-12 03:42:37', '2017-10-12 03:42:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` int UNSIGNED NOT NULL,
  `employee_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_Id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `employee_name`, `employee_Id`, `task_name`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(12, 'Shahidul Islam', 'nayandra', 'create modul inquiry for YMS project', '<br>', '2024-07-02', '2024-07-05', '2024-07-21 09:58:00', '2024-07-21 09:58:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `timezones`
--

CREATE TABLE `timezones` (
  `id` int UNSIGNED NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `timezones`
--

INSERT INTO `timezones` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Asia/Pontianak', NULL, '2024-07-21 10:59:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `account_id` int NOT NULL,
  `tr_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `account_id`, `tr_type`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 'Out', '5000', 'Cash received', NULL, NULL),
(2, 1, 'In', '5000', 'Cash withdrew', NULL, NULL),
(3, 1, 'Out', '2000', 'Cash transfar', NULL, NULL),
(4, 2, 'In', '2000', 'Cash transfar', NULL, NULL),
(5, 3, 'In', '1500', '', NULL, NULL),
(6, 1, 'Out', '1500', 'None', NULL, NULL),
(7, 8, '1', '5000', NULL, '2017-10-18 03:29:14', '2017-10-18 03:29:14'),
(8, 6, '0', '2000', 'sdffsdf', '2017-10-18 03:29:32', '2017-10-18 03:29:32'),
(9, 8, '1', '1000', NULL, '2017-10-18 03:31:21', '2017-10-18 03:31:21'),
(10, 7, '0', '700', NULL, '2017-10-18 03:34:54', '2017-10-18 03:34:54'),
(11, 10, '0', '200', NULL, '2017-10-18 03:36:09', '2017-10-18 03:36:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_expenses`
--

CREATE TABLE `trans_expenses` (
  `id` int UNSIGNED NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_id` int NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trans_expenses`
--

INSERT INTO `trans_expenses` (`id`, `date`, `expense_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(7, '2017-11-15', 4, '700', 'new', '2017-11-06 10:08:10', '2017-11-07 04:08:59'),
(8, '2017-10-01', 4, '100', 'a', '2017-11-06 10:09:09', '2017-11-06 12:22:29'),
(9, '2017-11-14', 2, '2000', 'Somthing', '2017-11-07 06:02:49', '2017-11-07 06:02:49'),
(10, '2017-11-16', 4, '500', 'Source', '2017-11-07 06:04:18', '2017-11-07 06:04:18'),
(11, '2018-01-25', 4, '53', NULL, '2018-01-03 05:17:07', '2018-01-03 05:17:07'),
(12, '2018-01-02', 4, '2121', NULL, '2018-01-10 10:31:04', '2018-01-10 10:31:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_incomes`
--

CREATE TABLE `trans_incomes` (
  `id` int UNSIGNED NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_id` int NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trans_incomes`
--

INSERT INTO `trans_incomes` (`id`, `date`, `income_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(13, '2017-11-01', 2, '123', 'qwe', '2017-11-06 10:22:54', '2017-11-06 12:08:20'),
(14, '2017-11-01', 2, '1000', 'Somthing', '2017-11-07 06:01:39', '2017-11-07 06:01:39'),
(15, '2017-11-03', 3, '7000', 'Somthing', '2017-11-07 06:01:54', '2017-11-07 06:01:54'),
(16, '2017-11-09', 3, '8000', 'Somthing', '2017-11-07 06:02:12', '2017-11-07 06:02:12'),
(17, '2017-11-15', 3, '8000', 'Somthing', '2017-11-07 06:02:34', '2017-11-07 06:02:34'),
(18, '2017-11-19', 3, '8000', NULL, '2017-11-07 06:04:02', '2017-11-07 06:04:02'),
(19, '2018-01-17', 6, '43543', NULL, '2018-01-03 05:16:58', '2018-01-03 05:16:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `useful_links`
--

CREATE TABLE `useful_links` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'warehouse 1 Edited', 'Dhaka Bangladesh', '2018-01-07 07:20:06', '2018-01-20 10:45:46'),
(3, 'warehouse 2', 'Dhaka Bangladesh', '2018-01-07 07:43:57', '2018-01-07 07:43:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `widget_managements`
--

CREATE TABLE `widget_managements` (
  `id` int UNSIGNED NOT NULL,
  `search` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recent_post` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advertisement` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `widget_managements`
--

INSERT INTO `widget_managements` (`id`, `search`, `category`, `recent_post`, `tag`, `advertisement`, `created_at`, `updated_at`) VALUES
(1, 'on', 'on', 'on', 'on', 'on', '2017-10-12 03:55:54', '2017-10-12 03:55:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_widget`
--
ALTER TABLE `about_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indeks untuk tabel `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `btcs`
--
ALTER TABLE `btcs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `btcs_api_key_unique` (`api_key`),
  ADD UNIQUE KEY `btcs_xpub_code_unique` (`xpub_code`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `caterings`
--
ALTER TABLE `caterings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `color_picker`
--
ALTER TABLE `color_picker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_balances`
--
ALTER TABLE `customer_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cutomers`
--
ALTER TABLE `cutomers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `expance_transactions`
--
ALTER TABLE `expance_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food_mills`
--
ALTER TABLE `food_mills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food_shifts`
--
ALTER TABLE `food_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_page_managements`
--
ALTER TABLE `home_page_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `office_details`
--
ALTER TABLE `office_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `office_loans`
--
ALTER TABLE `office_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page_managements`
--
ALTER TABLE `page_managements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_managements_name_unique` (`name`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paypals`
--
ALTER TABLE `paypals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paypals_paypal_email_unique` (`paypal_email`);

--
-- Indeks untuk tabel `perfect_moneys`
--
ALTER TABLE `perfect_moneys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perfect_moneys_passpharase_unique` (`passpharase`),
  ADD UNIQUE KEY `perfect_moneys_usd_unique` (`usd`);

--
-- Indeks untuk tabel `personal_managements`
--
ALTER TABLE `personal_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `recent_post_widget`
--
ALTER TABLE `recent_post_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sale_points`
--
ALTER TABLE `sale_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siteinfos`
--
ALTER TABLE `siteinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_managements`
--
ALTER TABLE `social_managements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_managements_name_unique` (`name`),
  ADD UNIQUE KEY `social_managements_url_unique` (`url`);

--
-- Indeks untuk tabel `stock_products`
--
ALTER TABLE `stock_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stripes`
--
ALTER TABLE `stripes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stripes_secret_key_unique` (`secret_key`),
  ADD UNIQUE KEY `stripes_publisher_key_unique` (`publisher_key`);

--
-- Indeks untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_categories_id_foreign` (`categories_id`);

--
-- Indeks untuk tabel `supplied_products`
--
ALTER TABLE `supplied_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier_items`
--
ALTER TABLE `supplier_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supply_managments`
--
ALTER TABLE `supply_managments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `support_bars`
--
ALTER TABLE `support_bars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trans_expenses`
--
ALTER TABLE `trans_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trans_incomes`
--
ALTER TABLE `trans_incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `useful_links`
--
ALTER TABLE `useful_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useful_links_name_unique` (`name`),
  ADD UNIQUE KEY `useful_links_url_unique` (`url`);

--
-- Indeks untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `widget_managements`
--
ALTER TABLE `widget_managements`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_widget`
--
ALTER TABLE `about_widget`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `btcs`
--
ALTER TABLE `btcs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `caterings`
--
ALTER TABLE `caterings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `color_picker`
--
ALTER TABLE `color_picker`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer_balances`
--
ALTER TABLE `customer_balances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `cutomers`
--
ALTER TABLE `cutomers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `expance_transactions`
--
ALTER TABLE `expance_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `food_mills`
--
ALTER TABLE `food_mills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `food_shifts`
--
ALTER TABLE `food_shifts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `generals`
--
ALTER TABLE `generals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `home_page_managements`
--
ALTER TABLE `home_page_managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `office_details`
--
ALTER TABLE `office_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `office_loans`
--
ALTER TABLE `office_loans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `page_managements`
--
ALTER TABLE `page_managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `paypals`
--
ALTER TABLE `paypals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `perfect_moneys`
--
ALTER TABLE `perfect_moneys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_managements`
--
ALTER TABLE `personal_managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `recent_post_widget`
--
ALTER TABLE `recent_post_widget`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sale_points`
--
ALTER TABLE `sale_points`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `siteinfos`
--
ALTER TABLE `siteinfos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `social_managements`
--
ALTER TABLE `social_managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `stock_products`
--
ALTER TABLE `stock_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `stripes`
--
ALTER TABLE `stripes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supplied_products`
--
ALTER TABLE `supplied_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier_items`
--
ALTER TABLE `supplier_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `supply_managments`
--
ALTER TABLE `supply_managments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `support_bars`
--
ALTER TABLE `support_bars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `trans_expenses`
--
ALTER TABLE `trans_expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `trans_incomes`
--
ALTER TABLE `trans_incomes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `useful_links`
--
ALTER TABLE `useful_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `widget_managements`
--
ALTER TABLE `widget_managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
