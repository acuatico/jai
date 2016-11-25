-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2016 at 03:09 AM
-- Server version: 10.0.27-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jai`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_date` date NOT NULL,
  `contact_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `department`, `active_date`, `contact_person`, `created_at`, `updated_at`) VALUES
(2, 'ICT', '2016-11-30', 'Dodo', '2016-11-14 14:29:40', '2016-11-14 14:42:46'),
(3, 'Biological Program', '2016-11-22', 'Dodo', '2016-11-15 15:19:05', '2016-11-15 15:19:05'),
(4, 'Operation and Business Development', '2016-11-30', 'Dodo', '2016-11-15 15:39:02', '2016-11-15 15:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `career_details`
--

CREATE TABLE `career_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `career_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `career_details`
--

INSERT INTO `career_details` (`id`, `career_id`, `lang`, `slug`, `position`, `description`) VALUES
(9, 2, 'en', 'programmers-en', 'Programmers (EN)', 'Programmers'),
(10, 2, 'id', 'programmers-id', 'Programmers  (ID)', 'Be a programmers'),
(11, 3, 'en', 'environment-scientist-en', 'Environment Scientist (EN)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(12, 3, 'id', 'environment-scientist-id', 'Environment Scientist (ID)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(17, 4, 'en', 'operation-manager-en', 'Operation Manager (EN)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(18, 4, 'id', 'operation-manager-id', 'Operation Manager (ID)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `career_metas`
--

CREATE TABLE `career_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `career_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `career_metas`
--

INSERT INTO `career_metas` (`id`, `career_id`, `meta_key`, `meta_value`) VALUES
(9, 2, 'meta_description-en', 'META (EN)'),
(10, 2, 'meta_description-id', 'META (ID)');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `post_type_id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 1, 'News', 'news', NULL, '2016-10-21 20:40:03', '2016-10-21 20:40:03', 0),
(2, 1, 'What\'s On', 'whats-on', NULL, '2016-10-22 09:59:54', '2016-10-22 09:59:54', 0),
(3, 2, 'Test Category', 'test-category', NULL, NULL, NULL, 0),
(15, 1, 'Coba', 'coba', NULL, '2016-10-22 10:46:19', '2016-10-22 10:46:19', 0),
(17, 3, 'Experience', 'experience', NULL, NULL, NULL, 0),
(18, 3, 'Shows & Attraction', 'shows-attraction', NULL, NULL, NULL, 0),
(19, 3, 'Dining & Shopping', 'dining-shopping', NULL, NULL, NULL, 0),
(21, 4, 'Animals', 'animals', NULL, NULL, NULL, 0),
(22, 4, 'Conservation', 'conservation', NULL, NULL, NULL, 0),
(23, 4, 'Event', 'event', NULL, NULL, NULL, 0),
(24, 4, 'Research', 'research', NULL, NULL, NULL, 0),
(25, 4, 'Leadership', 'leadership', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `coupon_type` int(11) NOT NULL DEFAULT '1',
  `usage_type` int(11) NOT NULL DEFAULT '1',
  `value` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `title`, `date`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'Lebaran Misalnya', '2016-10-15', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(4, 'Lebaran Misalnya', '2016-10-16', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(5, 'Lebaran Misalnya', '2016-10-17', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(6, 'Lebaran Misalnya', '2016-10-18', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(7, 'Lebaran Misalnya', '2016-10-19', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(8, 'Lebaran Misalnya', '2016-10-20', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42'),
(9, 'Lebaran Misalnya', '2016-10-21', 'Lebaran sebentar lagi', 3, '2016-10-28 22:07:42', '2016-10-28 22:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `file_name`, `description`, `created_at`, `updated_at`) VALUES
(43, 'AiPzG1F86wWs.jpg', 'AiPzG1F86wWs.jpg', NULL, '2016-10-19 21:33:06', '2016-10-19 21:33:06'),
(44, '4FdyA3zYcuZ2.jpg', '4FdyA3zYcuZ2.jpg', NULL, '2016-10-19 21:33:54', '2016-10-19 21:33:54'),
(45, 'bg-sec2-twb.jpg', 'bg-sec2-twb.jpg', NULL, '2016-10-19 21:35:25', '2016-10-19 21:35:25'),
(46, 'under the sea.jpg', 'under the sea.jpg', NULL, '2016-10-21 20:22:09', '2016-10-21 20:22:09'),
(47, 'street.jpg', 'street.jpg', NULL, '2016-10-21 20:24:03', '2016-10-21 20:24:03'),
(48, 'river.jpg', 'river.jpg', NULL, '2016-10-21 20:25:05', '2016-10-21 20:25:05'),
(49, 'boat.jpg', 'boat.jpg', NULL, '2016-10-21 20:25:37', '2016-10-21 20:25:37'),
(50, 'test.jpg', 'test.jpg', NULL, '2016-10-22 18:08:10', '2016-10-22 18:08:10'),
(51, 'head-sample-03.jpg', 'head-sample-03.jpg', NULL, '2016-10-28 15:09:59', '2016-10-28 15:09:59'),
(52, 'head-sample-01.jpg', 'head-sample-01.jpg', NULL, '2016-10-28 15:10:46', '2016-10-28 15:10:46'),
(53, 'about-header.jpg', 'about-header.jpg', NULL, '2016-11-02 19:32:31', '2016-11-02 19:32:31'),
(54, 'bg-section-sight.png', 'bg-section-sight.png', NULL, '2016-11-02 19:32:36', '2016-11-02 19:32:36'),
(55, 'img-sample-01.jpg', 'img-sample-01.jpg', NULL, '2016-11-02 19:32:48', '2016-11-02 19:32:48'),
(56, 'about-header.jpg', 'about-header.jpg', NULL, '2016-11-05 15:42:15', '2016-11-05 15:42:15'),
(57, 'img-news-01.jpg', 'img-news-01.jpg', NULL, '2016-11-10 18:26:27', '2016-11-10 18:26:27'),
(58, 'img-news-02.jpg', 'img-news-02.jpg', NULL, '2016-11-11 18:34:41', '2016-11-11 18:34:41'),
(59, 'img-news-03.jpg', 'img-news-03.jpg', NULL, '2016-11-11 18:34:57', '2016-11-11 18:34:57'),
(60, 'img-news-04.jpg', 'img-news-04.jpg', NULL, '2016-11-11 18:34:58', '2016-11-11 18:34:58'),
(61, 'img-news-05.jpg', 'img-news-05.jpg', NULL, '2016-11-11 18:34:59', '2016-11-11 18:34:59'),
(62, 'img-sample-01.jpg', 'img-sample-01.jpg', NULL, '2016-11-11 18:35:01', '2016-11-11 18:35:01'),
(63, 'Sea_otters_holding_hands.jpg', 'Sea_otters_holding_hands.jpg', NULL, '2016-11-16 16:59:41', '2016-11-16 16:59:41'),
(64, 'Screen Shot 2016-11-16 at 5.02.10 PM.png', 'Screen Shot 2016-11-16 at 5.02.10 PM.png', NULL, '2016-11-16 17:02:39', '2016-11-16 17:02:39'),
(65, 'Otter Peek a Boo.jpg', 'Otter Peek a Boo.jpg', NULL, '2016-11-16 17:04:59', '2016-11-16 17:04:59'),
(66, 'Otter Peek a Boo.jpg', 'Otter Peek a Boo.jpg', NULL, '2016-11-16 17:07:04', '2016-11-16 17:07:04'),
(67, 'Touch Me If You can.jpg', 'Touch Me If You can.jpg', NULL, '2016-11-16 17:13:10', '2016-11-16 17:13:10'),
(68, 'watch out the crab.jpg', 'watch out the crab.jpg', NULL, '2016-11-16 17:16:57', '2016-11-16 17:16:57'),
(69, 'Diving with Shark.jpg', 'Diving with Shark.jpg', NULL, '2016-11-16 17:25:33', '2016-11-16 17:25:33'),
(70, 'sea trekking.jpg', 'sea trekking.jpg', NULL, '2016-11-16 17:36:06', '2016-11-16 17:36:06'),
(71, 'sea trekking1.jpg', 'sea trekking1.jpg', NULL, '2016-11-16 17:38:44', '2016-11-16 17:38:44'),
(72, 'seatrek.jpg', 'seatrek.jpg', NULL, '2016-11-16 17:40:26', '2016-11-16 17:40:26'),
(73, 'create your own fish.jpeg', 'create your own fish.jpeg', NULL, '2016-11-16 17:44:03', '2016-11-16 17:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `media_sizes`
--

CREATE TABLE `media_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `menu_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'backend'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `display`, `link`, `parent_id`, `permission`, `icon_class`, `description`, `created_at`, `updated_at`, `order`, `menu_type`) VALUES
(1, 'dashboard', 'Dashboard', 'jai-backend', 0, 'dashboard', 'icon-home', NULL, NULL, NULL, 0, 'backend'),
(2, 'post', 'Posts', 'javascript:;', 0, 'post', 'fa fa-pencil', NULL, NULL, NULL, 100, 'backend-old'),
(3, 'post.add', 'Add Post', 'jai-backend/post/add', 2, 'post.add', NULL, NULL, NULL, NULL, 200, 'backend-old'),
(4, 'setting', 'Settings', 'javascript:;', 0, 'setting', 'fa fa-gears', NULL, NULL, NULL, 1000, 'backend'),
(5, 'user', 'User', 'jai-backend/user', 4, 'user', NULL, NULL, NULL, NULL, 300, 'backend'),
(6, 'permission', 'Permission', 'jai-backend/permission', 4, 'permission', NULL, NULL, NULL, NULL, 100, 'backend'),
(7, 'role', 'Role', 'jai-backend/role', 4, 'role', NULL, NULL, NULL, NULL, 200, 'backend'),
(9, 'post.list', 'Post List', 'jai-backend/post', 2, 'post', NULL, NULL, NULL, NULL, 100, 'backend-old'),
(10, 'category', 'Post Category', 'jai-backend/post-category/1', 2, 'post', '', NULL, NULL, NULL, 300, 'backend-old'),
(13, 'posttype', 'Post Type', 'jai-backend/post-type', 4, 'post-type', '', NULL, NULL, NULL, 400, 'backend'),
(14, 'slider', 'Slider', 'javascript:;', 0, 'slider', 'icon-picture', NULL, NULL, NULL, 700, 'backend'),
(15, 'slider.list', 'Slider List', 'jai-backend/slider', 14, 'slider', NULL, NULL, NULL, NULL, 100, 'backend'),
(16, 'slider.add', 'Add Slider', 'jai-backend/slider/add', 14, 'slider.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(17, 'news', 'News', 'javascript:;', 0, 'news', 'fa fa-newspaper-o', NULL, NULL, NULL, 200, 'backend'),
(18, 'news.list', 'News List', 'jai-backend/news', 17, 'news', NULL, NULL, NULL, NULL, 100, 'backend'),
(19, 'news.add', 'Add News', 'jai-backend/news/add', 17, 'news.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(20, 'news.category', 'News Category', 'jai-backend/post-category/2', 17, 'news-category', NULL, NULL, NULL, NULL, 300, 'backend'),
(24, 'package', 'Package', 'javascript:;', 0, 'package', 'fa fa-ticket', NULL, NULL, NULL, 400, 'backend'),
(25, 'package.list', 'Package List', 'jai-backend/package', 24, 'package', NULL, NULL, NULL, NULL, 100, 'backend'),
(26, 'package.add', 'Add Package', 'jai-backend/package/add', 24, 'package.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(27, 'holidays', 'Holiday Management', 'jai-backend/holiday', 24, 'holiday', NULL, NULL, NULL, NULL, 500, 'backend'),
(28, 'attractions', 'Attraction &amp; Experience', 'javascript:;', 0, 'attraction', 'fa fa-rocket', NULL, NULL, NULL, 500, 'backend'),
(29, 'attraction.list', 'Attraction List', 'jai-backend/attraction', 28, 'attraction', NULL, NULL, NULL, NULL, 100, 'backend'),
(30, 'attraction.add', 'Add Attraction', 'jai-backend/attraction/add', 28, 'attraction.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(31, 'media-room', 'Media Room', 'javascript:;', 0, 'media-room', 'fa fa-bullhorn', NULL, NULL, NULL, 600, 'backend'),
(32, 'media-room.list', 'Media Room List', 'jai-backend/media-room', 31, 'media-room', NULL, NULL, NULL, NULL, 100, 'backend'),
(33, 'media-room.add', 'Add Media Room', 'jai-backend/media-room/add', 31, 'media-room.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(34, 'showtime', 'Show Time', 'javascript:;', 0, 'showtime', 'fa fa-clock-o', NULL, NULL, NULL, 700, 'backend'),
(35, 'showtime.list', 'Show Time List', 'jai-backend/showtime', 34, 'showtime', NULL, NULL, NULL, NULL, 100, 'backend'),
(36, 'showtime.add', 'Add Show Time', 'jai-backend/showtime/add', 34, 'showtime.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(37, 'f.about-us', 'About Us', 'about-us', 0, 'frontend', 'ja-icon-about', NULL, NULL, NULL, 100, 'frontend'),
(38, 'f.plan', 'Plan Your Visit', 'javascript:;', 0, 'frontend', 'ja-icon-loc', NULL, NULL, NULL, 200, 'frontend'),
(39, 'f.ticket', 'Ticket &amp; Hours', 'ticket-hours', 38, 'frontend', NULL, NULL, NULL, NULL, 100, 'frontend'),
(40, 'f.package', 'Special Packages', 'special-packages', 38, 'frontend', NULL, NULL, NULL, NULL, 200, 'frontend'),
(41, 'f.show-time', 'Show Time', 'show-time', 38, 'frontend', NULL, NULL, NULL, NULL, 300, 'frontend'),
(42, 'f.location', 'Location', 'location', 38, 'frontend', NULL, NULL, NULL, NULL, 400, 'frontend'),
(43, 'f.attraction', 'Attractions and Experience', 'attractions-experience', 0, 'frontend', 'ja-icon-attract', NULL, NULL, NULL, 300, 'frontend'),
(44, 'f.conservation', 'Education and Conservation', 'conservation', 0, 'frontend', 'ja-icon-edu', NULL, NULL, NULL, 400, 'frontend-old'),
(45, 'f.news', 'News', 'news', 0, 'frontend', 'ja-icon-news', NULL, NULL, NULL, 500, 'frontend'),
(46, 'career', 'Careers', 'javascript:;', 0, 'career', 'fa fa-child', NULL, NULL, NULL, 700, 'backend'),
(47, 'career.list', 'Career List', 'jai-backend/career', 46, 'career', NULL, NULL, NULL, NULL, 100, 'backend'),
(48, 'career.add', 'Add Career', 'jai-backend/career/add', 46, 'career.add', NULL, NULL, NULL, NULL, 200, 'backend'),
(49, 'page', 'Pages', 'jai-backend/page', 0, 'page', 'fa fa-sticky-note-o', NULL, NULL, NULL, 800, 'backend');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_04_113129_create_sessions_table', 2),
('2016_10_05_042749_create_media_table', 3),
('2016_10_11_081507_create_menus_table', 4),
('2016_10_12_032409_create_permission_tables', 5),
('2016_10_12_042248_add_order_on_menus', 6),
('2016_10_13_110437_create_categories_table', 7),
('2016_10_13_110650_create_post_types_table', 8),
('2016_10_13_110751_create_posts_table', 9),
('2016_10_13_112053_create_post_has_categories_table', 10),
('2016_10_13_112733_create_tags_table', 11),
('2016_10_14_095031_add_parent_id_on_categories', 12),
('2016_10_14_135937_add_status_on_posts', 13),
('2016_10_14_152415_add_publish_date_on_posts', 14),
('2016_10_15_202336_create_medias_table', 14),
('2016_10_20_210322_add_media_type_on_post_has_medias', 15),
('2016_10_22_183740_create_post_details_table', 16),
('2016_10_24_213009_create_sliders_table', 17),
('2016_10_26_185546_create_post_metas_table', 18),
('2016_10_27_133403_create_holidays_table', 19),
('2016_10_27_181417_add_created_by_on_posts', 20),
('2016_10_28_192728_create_packages_table', 21),
('2016_10_30_112407_add_is_general_admission_on_package', 22),
('2016_10_30_120042_create_shows_table', 23),
('2016_11_01_201700_create_package_has_medias', 24),
('2016_11_05_125956_add_menu_type_on_menus', 25),
('2016_11_05_152539_alter_show_tables', 26),
('2016_11_10_104656_create_show_has_media_table', 27),
('2016_11_10_175742_create_package_metas_table', 28),
('2016_11_10_183306_create_show_metas_table', 29),
('2016_11_14_125111_create_careers_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_type_id` int(11) NOT NULL DEFAULT '1',
  `normal_price` double NOT NULL DEFAULT '0',
  `weekend_price` double NOT NULL DEFAULT '0',
  `holiday_price` double NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_general_admission` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_type_id`, `normal_price`, `weekend_price`, `holiday_price`, `created_by`, `is_general_admission`, `created_at`, `updated_at`) VALUES
(1, 1, 100000, 150000, 150000, 1, 1, '2016-10-28 21:59:22', '2016-11-23 16:27:35'),
(3, 1, 400000, 450000, 450000, 3, 1, '2016-10-28 22:10:11', '2016-10-30 11:31:01'),
(4, 1, 400000, 500000, 500000, 3, 1, '2016-10-30 11:31:58', '2016-10-30 11:31:58'),
(5, 2, 0, 0, 0, 3, 0, '2016-11-01 19:59:03', '2016-11-01 19:59:03'),
(6, 2, 0, 0, 0, 3, 0, '2016-11-01 20:00:47', '2016-11-01 20:00:47'),
(7, 2, 0, 0, 0, 3, 0, '2016-11-01 20:02:02', '2016-11-01 20:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `lang`, `title`, `slug`, `content`) VALUES
(17, 4, 'en', 'Package B', 'package-b', 'General admission + 5D + Diving'),
(18, 4, 'id', 'Paket B', 'paket-b', 'Pendaftaran + 5D + Diving'),
(29, 3, 'en', 'Package A', 'package-a', 'At vero eos et accusamus et iusto odio madeline dignis imosse ducma quisa. Ut enim ad minim veniam, quis nostrud quirelle exercitation ullamco ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis laboris nisi ut aliquip ex eamus commodo consequat. <br />Duis aute irure dignis imosse ducmation quisa cillum fugiat Extravaganza nulla pariatur. Excepteur sint exercitation ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis, unde omnis iste natus laboris nisi ut aliquip ex ea commodo consequat error sit voluptatem accusantium iusto cupidatat non proident doloremque requiem et dolore magnam accusamus et iusto odio voluptatem.'),
(30, 3, 'id', 'Paket A', 'paket-a', 'At vero eos et accusamus et iusto odio madeline dignis imosse ducma quisa. Ut enim ad minim veniam, quis nostrud quirelle exercitation ullamco ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis laboris nisi ut aliquip ex eamus commodo consequat. <br />Duis aute irure dignis imosse ducmation quisa cillum fugiat Extravaganza nulla pariatur. Excepteur sint exercitation ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis, unde omnis iste natus laboris nisi ut aliquip ex ea commodo consequat error sit voluptatem accusantium iusto cupidatat non proident doloremque requiem et dolore magnam accusamus et iusto odio voluptatem.'),
(33, 6, 'en', 'Camp Program', 'camp-program', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(34, 6, 'id', 'Program Camp', 'program-camp', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(35, 5, 'en', 'School Program', 'school-program', 'At vero eos et accusamus et iusto odio madeline dignis imosse ducma quisa. Ut enim ad minim veniam, quis nostrud quirelle exercitation ullamco ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis laboris nisi ut aliquip ex eamus commodo consequat. Duis aute irure dignis imosse ducmation quisa cillum fugiat Extravaganza nulla pariatur. <br />Excepteur sint exercitation ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis, unde omnis iste natus laboris nisi ut aliquip ex ea commodo consequat error sit voluptatem accusantium iusto cupidatat non proident doloremque requiem et dolore magnam accusamus et iusto odio voluptatem'),
(36, 5, 'id', 'Program Sekolah', 'program-sekolah', 'At vero eos et accusamus et iusto odio madeline dignis imosse ducma quisa. Ut enim ad minim veniam, quis nostrud quirelle exercitation ullamco ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis laboris nisi ut aliquip ex eamus commodo consequat. Duis aute irure dignis imosse ducmation quisa cillum fugiat Extravaganza nulla pariatur. <br /> Excepteur sint exercitation ullamco accusamus et iusto cupidatat non proident. Set ed ut perspiciatis, unde omnis iste natus laboris nisi ut aliquip ex ea commodo consequat error sit voluptatem accusantium iusto cupidatat non proident doloremque requiem et dolore magnam accusamus et iusto odio voluptatem'),
(39, 7, 'en', 'Combo Package', 'combo-package', 'The aquarium is one of Indonesia\'s most unforgettable group activities! Groups of 10 or more people receive discounted admission to the aquarium! Pre-booking is required at least 7 days in advance as groups must be pre-qualified before receiving this rate.&nbsp;'),
(40, 7, 'id', 'Paket Kombo', 'paket-kombo', 'The aquarium is one of Indonesia\'s most unforgettable group activities! Groups of 10 or more people receive discounted admission to the aquarium! Pre-booking is required at least 7 days in advance as groups must be pre-qualified before receiving this rate.&nbsp;'),
(43, 1, 'en', 'General Admission', 'general-admission', 'Get ready to be amused by sharks, turtles, jellyfishes, octopuses, seahorses, otters, and many more.'),
(44, 1, 'id', 'Paket Umum', 'paket-umum', 'Get ready to be amused by sharks, turtles, jellyfishes, octopuses, seahorses, otters, and many more.');

-- --------------------------------------------------------

--
-- Table structure for table `package_has_coupons`
--

CREATE TABLE `package_has_coupons` (
  `package_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_has_medias`
--

CREATE TABLE `package_has_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_has_medias`
--

INSERT INTO `package_has_medias` (`id`, `package_id`, `media_id`) VALUES
(4, 6, 53),
(5, 5, 55),
(6, 7, 54);

-- --------------------------------------------------------

--
-- Table structure for table `package_metas`
--

CREATE TABLE `package_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_metas`
--

INSERT INTO `package_metas` (`id`, `package_id`, `meta_key`, `meta_value`) VALUES
(3, 1, 'meta_description-en', 'META (ENG)'),
(4, 1, 'meta_description-id', 'META (ID)');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', NULL, NULL),
(2, 'post', NULL, NULL),
(3, 'post.add', NULL, NULL),
(4, 'setting', NULL, NULL),
(5, 'user', NULL, NULL),
(6, 'permission', NULL, NULL),
(7, 'role', NULL, NULL),
(8, 'user.add', NULL, NULL),
(9, 'user.edit', NULL, NULL),
(10, 'user.delete', NULL, NULL),
(11, 'role.add', '2016-10-13 10:36:02', '2016-10-13 10:36:02'),
(12, 'role.edit', '2016-10-13 10:36:09', '2016-10-13 10:36:09'),
(13, 'role.delete', '2016-10-13 10:36:14', '2016-10-13 10:36:14'),
(14, 'permission.add', '2016-10-13 10:37:22', '2016-10-13 10:37:22'),
(15, 'permission.edit', '2016-10-13 10:37:27', '2016-10-13 10:37:27'),
(16, 'permission.delete', '2016-10-13 10:37:32', '2016-10-13 10:37:32'),
(21, 'post-type', '2016-10-13 17:30:58', '2016-10-13 17:30:58'),
(22, 'post-type.add', '2016-10-13 17:31:06', '2016-10-13 17:31:06'),
(23, 'post-type.edit', '2016-10-13 17:31:12', '2016-10-13 17:31:12'),
(24, 'post-type.delete', '2016-10-13 17:31:19', '2016-10-13 17:31:19'),
(25, 'post-category', '2016-10-14 11:09:26', '2016-10-14 11:09:26'),
(26, 'post-category.add', '2016-10-14 11:14:03', '2016-10-14 11:14:03'),
(27, 'post-category.edit', '2016-10-14 11:14:11', '2016-10-14 11:14:11'),
(28, 'post-category.delete', '2016-10-14 11:14:18', '2016-10-14 11:14:18'),
(29, 'whats-on', '2016-10-21 19:41:51', '2016-10-21 19:41:51'),
(30, 'whats-on.add', '2016-10-21 19:41:57', '2016-10-21 19:41:57'),
(31, 'whats-on.edit', '2016-10-21 19:42:02', '2016-10-21 19:42:02'),
(32, 'whats-on.delete', '2016-10-21 19:42:07', '2016-10-21 19:42:07'),
(33, 'post.edit', '2016-10-22 15:53:48', '2016-10-22 15:53:48'),
(34, 'post.delete', '2016-10-22 15:53:53', '2016-10-22 15:53:53'),
(35, 'slider', '2016-10-24 21:56:43', '2016-10-24 21:56:43'),
(36, 'slider.add', '2016-10-24 21:56:49', '2016-10-24 21:56:49'),
(37, 'slider.edit', '2016-10-24 21:56:54', '2016-10-24 21:56:54'),
(38, 'slider.delete', '2016-10-24 21:57:00', '2016-10-24 21:57:00'),
(39, 'news', '2016-10-26 18:44:59', '2016-10-26 18:44:59'),
(40, 'news.add', '2016-10-26 18:45:03', '2016-10-26 18:45:03'),
(41, 'news.edit', '2016-10-26 18:45:09', '2016-10-26 18:45:09'),
(42, 'news.delete', '2016-10-26 18:45:15', '2016-10-26 18:45:15'),
(43, 'news-category', '2016-10-26 19:36:43', '2016-10-26 19:36:43'),
(44, 'package', '2016-10-27 13:17:35', '2016-10-27 13:17:35'),
(45, 'package.add', '2016-10-27 13:17:44', '2016-10-27 13:17:44'),
(46, 'package.edit', '2016-10-27 13:17:51', '2016-10-27 13:17:51'),
(47, 'package.delete', '2016-10-27 13:17:57', '2016-10-27 13:17:57'),
(48, 'holiday', '2016-10-27 13:31:05', '2016-10-27 13:31:05'),
(49, 'attraction', '2016-10-30 13:12:05', '2016-10-30 13:12:05'),
(50, 'attraction.add', '2016-10-30 13:12:13', '2016-10-30 13:12:13'),
(51, 'attraction.edit', '2016-10-30 13:12:20', '2016-10-30 13:12:20'),
(52, 'attraction.delete', '2016-10-30 13:12:27', '2016-10-30 13:12:27'),
(53, 'attraction-category', '2016-10-30 13:12:36', '2016-10-30 13:12:36'),
(54, 'media-room', '2016-10-30 13:56:51', '2016-10-30 13:56:51'),
(55, 'media-room.add', '2016-10-30 13:56:56', '2016-10-30 13:56:56'),
(56, 'media-room.edit', '2016-10-30 13:57:01', '2016-10-30 13:57:01'),
(57, 'media-room.delete', '2016-10-30 13:57:08', '2016-10-30 13:57:08'),
(58, 'media-room-category', '2016-10-30 13:57:14', '2016-10-30 13:57:14'),
(59, 'showtime', '2016-11-02 20:30:02', '2016-11-02 20:30:02'),
(60, 'showtime.add', '2016-11-02 20:30:07', '2016-11-02 20:30:07'),
(61, 'showtime.edit', '2016-11-02 20:30:13', '2016-11-02 20:30:23'),
(62, 'showtime.delete', '2016-11-02 20:30:32', '2016-11-02 20:30:32'),
(63, 'career', '2016-11-14 13:39:00', '2016-11-14 13:39:00'),
(64, 'career.add', '2016-11-14 13:39:06', '2016-11-14 13:39:06'),
(65, 'career.update', '2016-11-14 13:39:12', '2016-11-14 13:39:12'),
(66, 'career.delete', '2016-11-14 13:39:20', '2016-11-14 13:39:20'),
(67, 'page', '2016-11-22 15:36:56', '2016-11-22 15:36:56'),
(68, 'page.add', '2016-11-22 15:37:00', '2016-11-22 15:37:00'),
(69, 'page.edit', '2016-11-22 15:37:04', '2016-11-22 15:37:04'),
(70, 'page.delete', '2016-11-22 15:37:08', '2016-11-22 15:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `publish_date` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_type_id`, `created_at`, `updated_at`, `status`, `publish_date`, `created_by`) VALUES
(17, 1, '2016-10-22 19:20:17', '2016-10-27 18:34:17', 'PUBLISH', '2016-10-22 19:19:00', 1),
(18, 1, '2016-10-24 11:40:55', '2016-10-24 18:15:16', 'PUBLISH', '2016-10-24 11:35:00', 1),
(19, 2, '2016-10-27 18:22:34', '2016-11-03 11:03:29', 'PUBLISH', '2016-10-27 18:22:00', 1),
(20, 2, '2016-11-03 13:19:49', '2016-11-03 13:20:11', 'PUBLISH', '2016-11-03 00:00:00', 1),
(21, 2, '2016-11-03 13:19:49', '2016-11-03 13:20:20', 'PUBLISH', '2016-11-03 00:00:00', 1),
(22, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(23, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(24, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(25, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(26, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(27, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(28, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(29, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(30, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(31, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(32, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(33, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(34, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(35, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(36, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(37, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(38, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(39, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(40, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(41, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(42, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(43, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(44, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(45, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(46, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(47, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(48, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(49, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(50, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(51, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(52, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(53, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(54, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(55, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(56, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(57, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(58, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(59, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(60, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(61, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(62, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(63, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(64, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(65, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(66, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(67, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(68, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(69, 2, '2016-11-03 13:19:49', '2016-11-03 13:19:49', 'PUBLISH', '2016-11-03 00:00:00', 1),
(70, 4, '2016-11-05 14:21:55', '2016-11-10 18:28:41', 'PUBLISH', '2016-11-05 14:21:00', 3),
(71, 2, '2016-11-10 17:36:56', '2016-11-10 17:51:47', 'PUBLISH', '2016-11-10 17:35:00', 3),
(72, 3, '2016-11-10 18:26:45', '2016-11-16 16:40:34', 'PUBLISH', '2016-11-10 18:04:00', 3),
(73, 3, '2016-11-11 18:33:49', '2016-11-16 17:07:10', 'PUBLISH', '2016-11-11 18:33:00', 3),
(77, 3, '2016-11-16 17:13:23', '2016-11-16 17:13:23', 'PUBLISH', '2016-11-16 17:08:00', 3),
(78, 3, '2016-11-16 17:17:01', '2016-11-16 17:17:01', 'PUBLISH', '2016-11-16 17:13:00', 3),
(79, 3, '2016-11-16 17:25:47', '2016-11-16 17:25:47', 'PUBLISH', '2016-11-16 17:21:00', 3),
(80, 3, '2016-11-16 17:36:09', '2016-11-16 17:40:32', 'PUBLISH', '2016-11-16 17:31:00', 3),
(81, 3, '2016-11-16 17:44:08', '2016-11-16 17:44:08', 'PUBLISH', '2016-11-16 17:41:00', 3),
(82, 3, '2016-11-16 17:47:33', '2016-11-16 17:47:33', 'PUBLISH', '2016-11-16 17:44:00', 3),
(83, 3, '2016-11-16 17:49:46', '2016-11-16 17:49:46', 'PUBLISH', '2016-11-16 17:48:00', 3),
(84, 3, '2016-11-16 17:50:32', '2016-11-16 17:50:51', 'PUBLISH', '2016-11-16 17:49:00', 3),
(85, 3, '2016-11-16 17:52:24', '2016-11-16 17:52:24', 'PUBLISH', '2016-11-16 17:51:00', 3),
(86, 6, '2016-11-22 15:41:01', '2016-11-22 16:22:54', 'PUBLISH', '2016-11-22 15:40:00', 1),
(87, 6, '2016-11-22 15:41:21', '2016-11-22 15:41:21', 'PUBLISH', '2016-11-22 15:41:00', 1),
(88, 6, '2016-11-22 15:41:36', '2016-11-22 15:41:36', 'PUBLISH', '2016-11-22 15:41:00', 1),
(89, 6, '2016-11-22 15:42:01', '2016-11-22 15:42:01', 'PUBLISH', '2016-11-22 15:41:00', 1),
(90, 6, '2016-11-22 15:42:42', '2016-11-22 15:42:42', 'PUBLISH', '2016-11-22 15:42:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

CREATE TABLE `post_details` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_details`
--

INSERT INTO `post_details` (`post_id`, `lang`, `title`, `slug`, `content`) VALUES
(17, 'en', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia', 'far-far-away-behind-the-word-mountains-far-from-the-countries-vokalia-and-consonantia', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. <br />Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&rsquo;t listen. <br />She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. <br />Pityful a rethoric question ran over her cheek, then'),
(17, 'id', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia', 'far-far-away-behind-the-word-mountains-far-from-the-countries-vokalia-and-consonantia-2', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. <br />Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn&rsquo;t listen. <br />She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. <br />Pityful a rethoric question ran over her cheek, then'),
(18, 'en', 'Ini title english', 'ini-title-english', 'content english'),
(18, 'id', 'Title bahasa', 'title-bahasa', 'content bahasa'),
(19, 'en', 'HERE YOU WILL MEET FACE-TO-FACE WITH THE TAME PREDATORS', 'here-you-will-meet-face-to-face-with-the-tame-predators', 'News test'),
(19, 'id', 'DISINI KALIAN AKAN BERHADAPANG LANGSUNG DENGAN HIU PREDATOR', 'disini-kalian-akan-berhadapang-langsung-dengan-hiu-predator', 'Test news'),
(20, 'en', 'Eius qui ut officia ut cupiditate sit.', 'eius-qui-ut-officia-ut-cupiditate-sit', 'I don\'t believe it,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a melancholy tone: \'it doesn\'t seem to be"--or if you\'d like it very much,\' said the.'),
(20, 'id', 'Eius qui ut officia ut cupiditate sit.', 'eius-qui-ut-officia-ut-cupiditate-sit-2', 'I don\'t believe it,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a melancholy tone: \'it doesn\'t seem to be"--or if you\'d like it very much,\' said the.'),
(21, 'en', 'Totam necessitatibus molestiae iusto ratione dolore ea.', 'totam-necessitatibus-molestiae-iusto-ratione-dolore-ea', 'King put on his knee, and looking at the top of his pocket, and was going on shrinking rapidly: she soon made out that she was in such long ringlets, and mine doesn\'t go in ringlets at all; however, she went on, half to itself, \'Oh dear! Oh dear!.'),
(21, 'id', 'Totam necessitatibus molestiae iusto ratione dolore ea.', 'totam-necessitatibus-molestiae-iusto-ratione-dolore-ea-2', 'King put on his knee, and looking at the top of his pocket, and was going on shrinking rapidly: she soon made out that she was in such long ringlets, and mine doesn\'t go in ringlets at all; however, she went on, half to itself, \'Oh dear! Oh dear!.'),
(22, 'en', 'Voluptatem quam dolorum inventore cum accusamus aut ea.', 'voluptatem-quam-dolorum-inventore-cum-accusamus-aut-ea', 'Alice, whose thoughts were still running on the spot.\' This did not seem to see the earth takes twenty-four hours to turn into a doze; but, on being pinched by the time she heard a little bit of stick, and tumbled head over heels in its sleep.'),
(22, 'id', 'Voluptatem quam dolorum inventore cum accusamus aut ea.', 'voluptatem-quam-dolorum-inventore-cum-accusamus-aut-ea', 'Alice, whose thoughts were still running on the spot.\' This did not seem to see the earth takes twenty-four hours to turn into a doze; but, on being pinched by the time she heard a little bit of stick, and tumbled head over heels in its sleep.'),
(23, 'en', 'Laborum ut dolor eveniet aperiam sit hic et et.', 'laborum-ut-dolor-eveniet-aperiam-sit-hic-et-et', 'Alice, \'shall I NEVER get any older than I am so VERY wide, but she could not help thinking there MUST be more to come, so she went back to the table for it, he was speaking, and this was the BEST butter,\' the March Hare. \'He denies it,\' said.'),
(23, 'id', 'Laborum ut dolor eveniet aperiam sit hic et et.', 'laborum-ut-dolor-eveniet-aperiam-sit-hic-et-et', 'Alice, \'shall I NEVER get any older than I am so VERY wide, but she could not help thinking there MUST be more to come, so she went back to the table for it, he was speaking, and this was the BEST butter,\' the March Hare. \'He denies it,\' said.'),
(24, 'en', 'Quasi quidem harum accusantium harum itaque voluptas harum modi.', 'quasi-quidem-harum-accusantium-harum-itaque-voluptas-harum-modi', 'Alice said; but was dreadfully puzzled by the way to explain it as you might knock, and I never understood what it was: she was getting very sleepy; \'and they all looked so good, that it had made. \'He took me for his housemaid,\' she said these.'),
(24, 'id', 'Quasi quidem harum accusantium harum itaque voluptas harum modi.', 'quasi-quidem-harum-accusantium-harum-itaque-voluptas-harum-modi', 'Alice said; but was dreadfully puzzled by the way to explain it as you might knock, and I never understood what it was: she was getting very sleepy; \'and they all looked so good, that it had made. \'He took me for his housemaid,\' she said these.'),
(25, 'en', 'Molestias eaque sit nisi qui ut.', 'molestias-eaque-sit-nisi-qui-ut', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have got into it), and sometimes shorter, until she made out that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the shrill voice of the.'),
(25, 'id', 'Molestias eaque sit nisi qui ut.', 'molestias-eaque-sit-nisi-qui-ut', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have got into it), and sometimes shorter, until she made out that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the shrill voice of the.'),
(26, 'en', 'Omnis qui natus fuga ab.', 'omnis-qui-natus-fuga-ab', 'Queen, \'Really, my dear, and that if you like!\' the Duchess to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t know,\' he went on all the while, and fighting for the hot day made her look up in such a curious.'),
(26, 'id', 'Omnis qui natus fuga ab.', 'omnis-qui-natus-fuga-ab', 'Queen, \'Really, my dear, and that if you like!\' the Duchess to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t know,\' he went on all the while, and fighting for the hot day made her look up in such a curious.'),
(27, 'en', 'Enim deleniti recusandae consequatur aut voluptates et iusto.', 'enim-deleniti-recusandae-consequatur-aut-voluptates-et-iusto', 'Alice\'s shoulder, and it sat down in a hot tureen! Who for such a nice soft thing to get in?\' asked Alice again, in a confused way, \'Prizes! Prizes!\' Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of.'),
(27, 'id', 'Enim deleniti recusandae consequatur aut voluptates et iusto.', 'enim-deleniti-recusandae-consequatur-aut-voluptates-et-iusto', 'Alice\'s shoulder, and it sat down in a hot tureen! Who for such a nice soft thing to get in?\' asked Alice again, in a confused way, \'Prizes! Prizes!\' Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of.'),
(28, 'en', 'Quia est molestiae consequatur enim.', 'quia-est-molestiae-consequatur-enim', 'Kings and Queens, and among them Alice recognised the White Rabbit was no label this time with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'three inches is such a new idea to Alice, and she thought it must be collected at.'),
(28, 'id', 'Quia est molestiae consequatur enim.', 'quia-est-molestiae-consequatur-enim', 'Kings and Queens, and among them Alice recognised the White Rabbit was no label this time with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'three inches is such a new idea to Alice, and she thought it must be collected at.'),
(29, 'en', 'Error est consequatur sunt recusandae consectetur.', 'error-est-consequatur-sunt-recusandae-consectetur', 'You grant that?\' \'I suppose so,\' said the Queen, who had followed him into the sky all the jurymen on to himself in an offended tone, \'so I should be free of them even when they liked, so that her shoulders were nowhere to be afraid of them!\' \'And.'),
(29, 'id', 'Error est consequatur sunt recusandae consectetur.', 'error-est-consequatur-sunt-recusandae-consectetur', 'You grant that?\' \'I suppose so,\' said the Queen, who had followed him into the sky all the jurymen on to himself in an offended tone, \'so I should be free of them even when they liked, so that her shoulders were nowhere to be afraid of them!\' \'And.'),
(30, 'en', 'Dolorem quia non necessitatibus quia.', 'dolorem-quia-non-necessitatibus-quia', 'Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you have to go on. \'And so these three little sisters--they were learning to draw,\' the Dormouse shook itself, and began picking them up again as she remembered trying to make.'),
(30, 'id', 'Dolorem quia non necessitatibus quia.', 'dolorem-quia-non-necessitatibus-quia', 'Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you have to go on. \'And so these three little sisters--they were learning to draw,\' the Dormouse shook itself, and began picking them up again as she remembered trying to make.'),
(31, 'en', 'Aut error at ut voluptatem eum inventore labore.', 'aut-error-at-ut-voluptatem-eum-inventore-labore', 'Why, I haven\'t had a vague sort of way to fly up into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice to herself, \'it would be very likely it can be,\' said the March Hare went on. \'Would you like to show you! A little bright-eyed.'),
(31, 'id', 'Aut error at ut voluptatem eum inventore labore.', 'aut-error-at-ut-voluptatem-eum-inventore-labore', 'Why, I haven\'t had a vague sort of way to fly up into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice to herself, \'it would be very likely it can be,\' said the March Hare went on. \'Would you like to show you! A little bright-eyed.'),
(32, 'en', 'Fugiat ad rerum qui id quibusdam voluptas in.', 'fugiat-ad-rerum-qui-id-quibusdam-voluptas-in', 'There could be NO mistake about it: it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have imitated somebody else\'s hand,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one left.'),
(32, 'id', 'Fugiat ad rerum qui id quibusdam voluptas in.', 'fugiat-ad-rerum-qui-id-quibusdam-voluptas-in', 'There could be NO mistake about it: it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have imitated somebody else\'s hand,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one left.'),
(33, 'en', 'Consequatur et enim recusandae.', 'consequatur-et-enim-recusandae', 'So she set to work shaking him and punching him in the long hall, and close to the conclusion that it might end, you know,\' said Alice, who had been (Before she had brought herself down to the Knave of Hearts, who only bowed and smiled in reply..'),
(33, 'id', 'Consequatur et enim recusandae.', 'consequatur-et-enim-recusandae', 'So she set to work shaking him and punching him in the long hall, and close to the conclusion that it might end, you know,\' said Alice, who had been (Before she had brought herself down to the Knave of Hearts, who only bowed and smiled in reply..'),
(34, 'en', 'Aut cum dolor rerum ipsum.', 'aut-cum-dolor-rerum-ipsum', 'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice a good way off, panting, with its wings. \'Serpent!\' screamed the Gryphon. \'Turn a somersault in the book,\' said the Hatter, and, just as well as she came in with the Dormouse..'),
(34, 'id', 'Aut cum dolor rerum ipsum.', 'aut-cum-dolor-rerum-ipsum', 'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice a good way off, panting, with its wings. \'Serpent!\' screamed the Gryphon. \'Turn a somersault in the book,\' said the Hatter, and, just as well as she came in with the Dormouse..'),
(35, 'en', 'Et atque voluptatem repudiandae qui consectetur.', 'et-atque-voluptatem-repudiandae-qui-consectetur', 'I tell you!\' But she went on: \'--that begins with an M, such as mouse-traps, and the great question certainly was, what? Alice looked down into its mouth again, and she sat down with wonder at the beginning,\' the King eagerly, and he checked.'),
(35, 'id', 'Et atque voluptatem repudiandae qui consectetur.', 'et-atque-voluptatem-repudiandae-qui-consectetur', 'I tell you!\' But she went on: \'--that begins with an M, such as mouse-traps, and the great question certainly was, what? Alice looked down into its mouth again, and she sat down with wonder at the beginning,\' the King eagerly, and he checked.'),
(36, 'en', 'Consequatur asperiores qui sed consequatur atque officia.', 'consequatur-asperiores-qui-sed-consequatur-atque-officia', 'Lory, who at last it unfolded its arms, took the watch and looked at it uneasily, shaking it every now and then, and holding it to half-past one as long as you are; secondly, because they\'re making such a noise inside, no one listening, this time,.'),
(36, 'id', 'Consequatur asperiores qui sed consequatur atque officia.', 'consequatur-asperiores-qui-sed-consequatur-atque-officia', 'Lory, who at last it unfolded its arms, took the watch and looked at it uneasily, shaking it every now and then, and holding it to half-past one as long as you are; secondly, because they\'re making such a noise inside, no one listening, this time,.'),
(37, 'en', 'Tempore odit officia tempora maxime ut inventore veniam quibusdam.', 'tempore-odit-officia-tempora-maxime-ut-inventore-veniam-quibusdam', 'Alice; \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'how am I then? Tell me that first, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, with a melancholy air, and, after waiting till she was considering in her life, and had.'),
(37, 'id', 'Tempore odit officia tempora maxime ut inventore veniam quibusdam.', 'tempore-odit-officia-tempora-maxime-ut-inventore-veniam-quibusdam', 'Alice; \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'how am I then? Tell me that first, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, with a melancholy air, and, after waiting till she was considering in her life, and had.'),
(38, 'en', 'Eaque laudantium quia et ea.', 'eaque-laudantium-quia-et-ea', 'William\'s conduct at first she thought of herself, \'I wonder what CAN have happened to me! I\'LL soon make you grow shorter.\' \'One side of the thing at all. \'But perhaps he can\'t help that,\' said the Hatter. \'He won\'t stand beating. Now, if you only.'),
(38, 'id', 'Eaque laudantium quia et ea.', 'eaque-laudantium-quia-et-ea', 'William\'s conduct at first she thought of herself, \'I wonder what CAN have happened to me! I\'LL soon make you grow shorter.\' \'One side of the thing at all. \'But perhaps he can\'t help that,\' said the Hatter. \'He won\'t stand beating. Now, if you only.'),
(39, 'en', 'Ipsum quis numquam veniam qui autem id qui aliquam.', 'ipsum-quis-numquam-veniam-qui-autem-id-qui-aliquam', 'So she sat still and said to the cur, "Such a trial, dear Sir, With no jury or judge, would be very likely true.) Down, down, down. Would the fall was over. However, when they arrived, with a lobster as a drawing of a muchness?\' \'Really, now you.'),
(39, 'id', 'Ipsum quis numquam veniam qui autem id qui aliquam.', 'ipsum-quis-numquam-veniam-qui-autem-id-qui-aliquam', 'So she sat still and said to the cur, "Such a trial, dear Sir, With no jury or judge, would be very likely true.) Down, down, down. Would the fall was over. However, when they arrived, with a lobster as a drawing of a muchness?\' \'Really, now you.'),
(40, 'en', 'Sunt quae voluptates dicta molestiae adipisci qui doloribus.', 'sunt-quae-voluptates-dicta-molestiae-adipisci-qui-doloribus', 'King put on her spectacles, and began smoking again. This time there were a Duck and a fall, and a bright brass plate with the other: the Duchess sang the second verse of the moment they saw her, they hurried back to the fifth bend, I think?\' he.'),
(40, 'id', 'Sunt quae voluptates dicta molestiae adipisci qui doloribus.', 'sunt-quae-voluptates-dicta-molestiae-adipisci-qui-doloribus', 'King put on her spectacles, and began smoking again. This time there were a Duck and a fall, and a bright brass plate with the other: the Duchess sang the second verse of the moment they saw her, they hurried back to the fifth bend, I think?\' he.'),
(41, 'en', 'Ad eius voluptas et sunt.', 'ad-eius-voluptas-et-sunt', 'However, she got back to the Cheshire Cat sitting on a three-legged stool in the wood, \'is to grow up again! Let me see: I\'ll give them a railway station.) However, she did so, very carefully, with one eye, How the Owl and the happy summer days..'),
(41, 'id', 'Ad eius voluptas et sunt.', 'ad-eius-voluptas-et-sunt', 'However, she got back to the Cheshire Cat sitting on a three-legged stool in the wood, \'is to grow up again! Let me see: I\'ll give them a railway station.) However, she did so, very carefully, with one eye, How the Owl and the happy summer days..'),
(42, 'en', 'Mollitia beatae at et.', 'mollitia-beatae-at-et', 'I eat or drink something or other; but the Dormouse began in a whisper, half afraid that she still held the pieces of mushroom in her life before, and he went on, \'and most of \'em do.\' \'I don\'t believe there\'s an atom of meaning in it, \'and what is.'),
(42, 'id', 'Mollitia beatae at et.', 'mollitia-beatae-at-et', 'I eat or drink something or other; but the Dormouse began in a whisper, half afraid that she still held the pieces of mushroom in her life before, and he went on, \'and most of \'em do.\' \'I don\'t believe there\'s an atom of meaning in it, \'and what is.'),
(43, 'en', 'Soluta ut sunt quisquam et.', 'soluta-ut-sunt-quisquam-et', 'Alice a little pattering of footsteps in the kitchen. \'When I\'M a Duchess,\' she said this, she came upon a little bottle that stood near the looking-glass. There was no time to hear it say, as it went, as if it please your Majesty!\' the Duchess by.'),
(43, 'id', 'Soluta ut sunt quisquam et.', 'soluta-ut-sunt-quisquam-et', 'Alice a little pattering of footsteps in the kitchen. \'When I\'M a Duchess,\' she said this, she came upon a little bottle that stood near the looking-glass. There was no time to hear it say, as it went, as if it please your Majesty!\' the Duchess by.'),
(44, 'en', 'Facere eius eius dicta voluptatem fugiat consequuntur tenetur.', 'facere-eius-eius-dicta-voluptatem-fugiat-consequuntur-tenetur', 'There were doors all round her, calling out in a Little Bill It was so large in the way to explain the mistake it had come to the Gryphon. \'Turn a somersault in the lap of her ever getting out of this sort of mixed flavour of cherry-tart, custard,.'),
(44, 'id', 'Facere eius eius dicta voluptatem fugiat consequuntur tenetur.', 'facere-eius-eius-dicta-voluptatem-fugiat-consequuntur-tenetur', 'There were doors all round her, calling out in a Little Bill It was so large in the way to explain the mistake it had come to the Gryphon. \'Turn a somersault in the lap of her ever getting out of this sort of mixed flavour of cherry-tart, custard,.'),
(45, 'en', 'Qui est sit ducimus voluptate aut occaecati non tempora.', 'qui-est-sit-ducimus-voluptate-aut-occaecati-non-tempora', 'I needn\'t be so stingy about it, you know--\' She had just upset the week before. \'Oh, I BEG your pardon!\' she exclaimed in a very difficult question. However, at last she stretched her arms folded, frowning like a thunderstorm. \'A fine day, your.'),
(45, 'id', 'Qui est sit ducimus voluptate aut occaecati non tempora.', 'qui-est-sit-ducimus-voluptate-aut-occaecati-non-tempora', 'I needn\'t be so stingy about it, you know--\' She had just upset the week before. \'Oh, I BEG your pardon!\' she exclaimed in a very difficult question. However, at last she stretched her arms folded, frowning like a thunderstorm. \'A fine day, your.'),
(46, 'en', 'Dolorem impedit ipsa a qui ad laudantium architecto.', 'dolorem-impedit-ipsa-a-qui-ad-laudantium-architecto', 'Hatter, and he poured a little scream of laughter. \'Oh, hush!\' the Rabbit say to itself, half to Alice. \'Only a thimble,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she looked back once or twice she had sat down and began.'),
(46, 'id', 'Dolorem impedit ipsa a qui ad laudantium architecto.', 'dolorem-impedit-ipsa-a-qui-ad-laudantium-architecto', 'Hatter, and he poured a little scream of laughter. \'Oh, hush!\' the Rabbit say to itself, half to Alice. \'Only a thimble,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she looked back once or twice she had sat down and began.'),
(47, 'en', 'Maiores soluta omnis culpa dolorum repudiandae quibusdam et.', 'maiores-soluta-omnis-culpa-dolorum-repudiandae-quibusdam-et', 'Bill\'s place for a baby: altogether Alice did not wish to offend the Dormouse began in a great deal too flustered to tell its age, there was a dispute going on rather better now,\' she added in an undertone to the other, trying every door, she found.'),
(47, 'id', 'Maiores soluta omnis culpa dolorum repudiandae quibusdam et.', 'maiores-soluta-omnis-culpa-dolorum-repudiandae-quibusdam-et', 'Bill\'s place for a baby: altogether Alice did not wish to offend the Dormouse began in a great deal too flustered to tell its age, there was a dispute going on rather better now,\' she added in an undertone to the other, trying every door, she found.'),
(48, 'en', 'Quis ipsam id ab velit et repellendus praesentium quae.', 'quis-ipsam-id-ab-velit-et-repellendus-praesentium-quae', 'Alice was silent. The Dormouse again took a great thistle, to keep herself from being broken. She hastily put down yet, before the end of his shrill little voice, the name of the Lizard\'s slate-pencil, and the bright flower-beds and the three.'),
(48, 'id', 'Quis ipsam id ab velit et repellendus praesentium quae.', 'quis-ipsam-id-ab-velit-et-repellendus-praesentium-quae', 'Alice was silent. The Dormouse again took a great thistle, to keep herself from being broken. She hastily put down yet, before the end of his shrill little voice, the name of the Lizard\'s slate-pencil, and the bright flower-beds and the three.'),
(49, 'en', 'Sunt et dolor corporis sit dolorem.', 'sunt-et-dolor-corporis-sit-dolorem', 'I suppose.\' So she sat on, with closed eyes, and half believed herself in Wonderland, though she felt that it might tell her something about the reason and all the while, till at last turned sulky, and would only say, \'I am older than you, and.'),
(49, 'id', 'Sunt et dolor corporis sit dolorem.', 'sunt-et-dolor-corporis-sit-dolorem', 'I suppose.\' So she sat on, with closed eyes, and half believed herself in Wonderland, though she felt that it might tell her something about the reason and all the while, till at last turned sulky, and would only say, \'I am older than you, and.'),
(50, 'en', 'Quis consequatur nostrum et sed qui nemo minima.', 'quis-consequatur-nostrum-et-sed-qui-nemo-minima', 'Queen. \'It proves nothing of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t.'),
(50, 'id', 'Quis consequatur nostrum et sed qui nemo minima.', 'quis-consequatur-nostrum-et-sed-qui-nemo-minima', 'Queen. \'It proves nothing of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t.'),
(51, 'en', 'Tenetur expedita ipsum sint molestiae eaque beatae culpa.', 'tenetur-expedita-ipsum-sint-molestiae-eaque-beatae-culpa', 'Alice could see her after the others. \'Are their heads down! I am so VERY wide, but she heard one of the conversation. Alice felt a very grave voice, \'until all the party sat silent and looked into its face to see it again, but it was talking in.'),
(51, 'id', 'Tenetur expedita ipsum sint molestiae eaque beatae culpa.', 'tenetur-expedita-ipsum-sint-molestiae-eaque-beatae-culpa', 'Alice could see her after the others. \'Are their heads down! I am so VERY wide, but she heard one of the conversation. Alice felt a very grave voice, \'until all the party sat silent and looked into its face to see it again, but it was talking in.'),
(52, 'en', 'Quia consequuntur necessitatibus vitae maxime et.', 'quia-consequuntur-necessitatibus-vitae-maxime-et', 'Alice didn\'t think that there was Mystery,\' the Mock Turtle; \'but it doesn\'t mind.\' The table was a child,\' said the young Crab, a little house in it about four inches deep and reaching half down the hall. After a time she had succeeded in getting.'),
(52, 'id', 'Quia consequuntur necessitatibus vitae maxime et.', 'quia-consequuntur-necessitatibus-vitae-maxime-et', 'Alice didn\'t think that there was Mystery,\' the Mock Turtle; \'but it doesn\'t mind.\' The table was a child,\' said the young Crab, a little house in it about four inches deep and reaching half down the hall. After a time she had succeeded in getting.'),
(53, 'en', 'Nihil repellat qui molestiae velit quo.', 'nihil-repellat-qui-molestiae-velit-quo', 'VERY much out of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle interrupted, \'if you don\'t even know what they\'re about!\' \'Read them,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked very.'),
(53, 'id', 'Nihil repellat qui molestiae velit quo.', 'nihil-repellat-qui-molestiae-velit-quo', 'VERY much out of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle interrupted, \'if you don\'t even know what they\'re about!\' \'Read them,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked very.'),
(54, 'en', 'Praesentium ad quod fugiat perspiciatis laudantium et.', 'praesentium-ad-quod-fugiat-perspiciatis-laudantium-et', 'Alice was beginning to end,\' said the sage, as he fumbled over the list, feeling very curious to see the Mock Turtle. \'Very much indeed,\' said Alice. \'Oh, don\'t talk about cats or dogs either, if you want to get out at all fairly,\' Alice began, in.'),
(54, 'id', 'Praesentium ad quod fugiat perspiciatis laudantium et.', 'praesentium-ad-quod-fugiat-perspiciatis-laudantium-et', 'Alice was beginning to end,\' said the sage, as he fumbled over the list, feeling very curious to see the Mock Turtle. \'Very much indeed,\' said Alice. \'Oh, don\'t talk about cats or dogs either, if you want to get out at all fairly,\' Alice began, in.'),
(55, 'en', 'Rerum dolor et sint doloremque.', 'rerum-dolor-et-sint-doloremque', 'Mock Turtle at last, and managed to put the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a long argument with the Queen till she was saying, and the pattern on their.'),
(55, 'id', 'Rerum dolor et sint doloremque.', 'rerum-dolor-et-sint-doloremque', 'Mock Turtle at last, and managed to put the Dormouse sulkily remarked, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a long argument with the Queen till she was saying, and the pattern on their.'),
(56, 'en', 'Odit amet autem neque ab.', 'odit-amet-autem-neque-ab', 'DOES THE BOOTS AND SHOES.\' the Gryphon whispered in reply, \'for fear they should forget them before the officer could get away without speaking, but at last came a little before she got back to the Duchess: \'flamingoes and mustard both bite. And.'),
(56, 'id', 'Odit amet autem neque ab.', 'odit-amet-autem-neque-ab', 'DOES THE BOOTS AND SHOES.\' the Gryphon whispered in reply, \'for fear they should forget them before the officer could get away without speaking, but at last came a little before she got back to the Duchess: \'flamingoes and mustard both bite. And.'),
(57, 'en', 'Excepturi quam repellendus quo facere optio in.', 'excepturi-quam-repellendus-quo-facere-optio-in', 'I think?\' \'I had NOT!\' cried the Mock Turtle would be very likely it can talk: at any rate he might answer questions.--How am I to do?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon remarked: \'because they lessen from day to such.'),
(57, 'id', 'Excepturi quam repellendus quo facere optio in.', 'excepturi-quam-repellendus-quo-facere-optio-in', 'I think?\' \'I had NOT!\' cried the Mock Turtle would be very likely it can talk: at any rate he might answer questions.--How am I to do?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon remarked: \'because they lessen from day to such.'),
(58, 'en', 'Cum blanditiis quo quia ad.', 'cum-blanditiis-quo-quia-ad', 'The first thing she heard a little shriek, and went by without noticing her. Then followed the Knave of Hearts, carrying the King\'s crown on a summer day: The Knave did so, very carefully, with one foot. \'Get up!\' said the King, going up to them.'),
(58, 'id', 'Cum blanditiis quo quia ad.', 'cum-blanditiis-quo-quia-ad', 'The first thing she heard a little shriek, and went by without noticing her. Then followed the Knave of Hearts, carrying the King\'s crown on a summer day: The Knave did so, very carefully, with one foot. \'Get up!\' said the King, going up to them.'),
(59, 'en', 'Ea id voluptas magnam sed.', 'ea-id-voluptas-magnam-sed', 'Alice. \'It must have imitated somebody else\'s hand,\' said the Dormouse, who seemed to be lost, as she spoke, but no result seemed to have been a RED rose-tree, and we won\'t talk about cats or dogs either, if you please! "William the Conqueror,.'),
(59, 'id', 'Ea id voluptas magnam sed.', 'ea-id-voluptas-magnam-sed', 'Alice. \'It must have imitated somebody else\'s hand,\' said the Dormouse, who seemed to be lost, as she spoke, but no result seemed to have been a RED rose-tree, and we won\'t talk about cats or dogs either, if you please! "William the Conqueror,.'),
(60, 'en', 'Repellendus aspernatur iure quia dolorem rem quos a.', 'repellendus-aspernatur-iure-quia-dolorem-rem-quos-a', 'Alice. \'I\'M not a mile high,\' said Alice. \'Of course twinkling begins with an air of great dismay, and began singing in its hurry to change the subject,\' the March Hare, \'that "I breathe when I was going to do anything but sit with its wings..'),
(60, 'id', 'Repellendus aspernatur iure quia dolorem rem quos a.', 'repellendus-aspernatur-iure-quia-dolorem-rem-quos-a', 'Alice. \'I\'M not a mile high,\' said Alice. \'Of course twinkling begins with an air of great dismay, and began singing in its hurry to change the subject,\' the March Hare, \'that "I breathe when I was going to do anything but sit with its wings..'),
(61, 'en', 'Temporibus voluptas qui rerum blanditiis corrupti.', 'temporibus-voluptas-qui-rerum-blanditiis-corrupti', 'I wonder who will put on one side, to look at me like that!\' But she waited for a minute, nurse! But I\'ve got to?\' (Alice had been all the jurymen on to himself as he spoke, \'we were trying--\' \'I see!\' said the Hatter. \'I told you that.\' \'If I\'d.'),
(61, 'id', 'Temporibus voluptas qui rerum blanditiis corrupti.', 'temporibus-voluptas-qui-rerum-blanditiis-corrupti', 'I wonder who will put on one side, to look at me like that!\' But she waited for a minute, nurse! But I\'ve got to?\' (Alice had been all the jurymen on to himself as he spoke, \'we were trying--\' \'I see!\' said the Hatter. \'I told you that.\' \'If I\'d.'),
(62, 'en', 'Maiores eum quia repudiandae totam.', 'maiores-eum-quia-repudiandae-totam', 'White Rabbit, \'but it doesn\'t matter much,\' thought Alice, \'as all the right size, that it was only sobbing,\' she thought, \'till its ears have come, or at any rate I\'ll never go THERE again!\' said Alice sharply, for she was appealed to by all three.'),
(62, 'id', 'Maiores eum quia repudiandae totam.', 'maiores-eum-quia-repudiandae-totam', 'White Rabbit, \'but it doesn\'t matter much,\' thought Alice, \'as all the right size, that it was only sobbing,\' she thought, \'till its ears have come, or at any rate I\'ll never go THERE again!\' said Alice sharply, for she was appealed to by all three.'),
(63, 'en', 'Doloremque quia fugiat sint laborum doloribus quia suscipit magni.', 'doloremque-quia-fugiat-sint-laborum-doloribus-quia-suscipit-magni', 'This time there were a Duck and a great crowd assembled about them--all sorts of little birds and beasts, as well go back, and see what was going to begin with; and being so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t remember.'),
(63, 'id', 'Doloremque quia fugiat sint laborum doloribus quia suscipit magni.', 'doloremque-quia-fugiat-sint-laborum-doloribus-quia-suscipit-magni', 'This time there were a Duck and a great crowd assembled about them--all sorts of little birds and beasts, as well go back, and see what was going to begin with; and being so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t remember.'),
(64, 'en', 'Sit tempore consequatur qui nostrum aut.', 'sit-tempore-consequatur-qui-nostrum-aut', 'Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jurymen on to the Cheshire Cat sitting on the stairs. Alice knew it was very fond of beheading people.'),
(64, 'id', 'Sit tempore consequatur qui nostrum aut.', 'sit-tempore-consequatur-qui-nostrum-aut', 'Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jurymen on to the Cheshire Cat sitting on the stairs. Alice knew it was very fond of beheading people.'),
(65, 'en', 'Eum in et et accusamus quia ea nobis quae.', 'eum-in-et-et-accusamus-quia-ea-nobis-quae', 'Mouse looked at them with large eyes full of smoke from one end of your flamingo. Shall I try the effect: the next witness!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first sentence in her.'),
(65, 'id', 'Eum in et et accusamus quia ea nobis quae.', 'eum-in-et-et-accusamus-quia-ea-nobis-quae', 'Mouse looked at them with large eyes full of smoke from one end of your flamingo. Shall I try the effect: the next witness!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first sentence in her.'),
(66, 'en', 'Praesentium magnam expedita dolor et.', 'praesentium-magnam-expedita-dolor-et', 'Mock Turtle. \'And how do you want to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, in a sulky tone, as it left no mark on the trumpet, and called out, \'Sit down, all of them attempted to explain the paper. \'If.'),
(66, 'id', 'Praesentium magnam expedita dolor et.', 'praesentium-magnam-expedita-dolor-et', 'Mock Turtle. \'And how do you want to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, in a sulky tone, as it left no mark on the trumpet, and called out, \'Sit down, all of them attempted to explain the paper. \'If.'),
(67, 'en', 'Nobis dolore est porro quam.', 'nobis-dolore-est-porro-quam', 'King. \'Then it doesn\'t matter much,\' thought Alice, and, after folding his arms and frowning at the stick, running a very difficult game indeed. The players all played at once in her life; it was impossible to say anything. \'Why,\' said the Queen.'),
(67, 'id', 'Nobis dolore est porro quam.', 'nobis-dolore-est-porro-quam', 'King. \'Then it doesn\'t matter much,\' thought Alice, and, after folding his arms and frowning at the stick, running a very difficult game indeed. The players all played at once in her life; it was impossible to say anything. \'Why,\' said the Queen.'),
(68, 'en', 'Minus cupiditate in sapiente ad.', 'minus-cupiditate-in-sapiente-ad', 'And when I got up and saying, \'Thank you, sir, for your walk!" "Coming in a hurry. \'No, I\'ll look first,\' she said, without even waiting to put it right; \'not that it was out of sight. Alice remained looking thoughtfully at the mushroom for a great.'),
(68, 'id', 'Minus cupiditate in sapiente ad.', 'minus-cupiditate-in-sapiente-ad', 'And when I got up and saying, \'Thank you, sir, for your walk!" "Coming in a hurry. \'No, I\'ll look first,\' she said, without even waiting to put it right; \'not that it was out of sight. Alice remained looking thoughtfully at the mushroom for a great.'),
(69, 'en', 'Enim fugit officia repudiandae autem quo.', 'enim-fugit-officia-repudiandae-autem-quo', 'King. \'Nothing whatever,\' said Alice. \'You are,\' said the King, with an M, such as mouse-traps, and the pool a little scream of laughter. \'Oh, hush!\' the Rabbit coming to look through into the loveliest garden you ever see such a nice soft thing to.'),
(69, 'id', 'Enim fugit officia repudiandae autem quo.', 'enim-fugit-officia-repudiandae-autem-quo', 'King. \'Nothing whatever,\' said Alice. \'You are,\' said the King, with an M, such as mouse-traps, and the pool a little scream of laughter. \'Oh, hush!\' the Rabbit coming to look through into the loveliest garden you ever see such a nice soft thing to.'),
(70, 'en', 'test', 'test', 'test'),
(70, 'id', 'TEst', 'test-2', 'test'),
(71, 'en', 'Test (English)', 'test-english', 'TEST'),
(71, 'id', 'Test (Bahasa)', 'test-bahasa', 'TEST'),
(72, 'en', 'Shark Feeding Frenzy', 'shark-feeding-frenzy', 'Try a new experience and meet the sharks! Challenge yourself in hand-feeding this sea creature. Sharks\' food will be provided by our staff.<br /><br /><br />Lokation: Ocean Tank Walk Over'),
(72, 'id', 'Shark Feeding Frenzy', 'shark-feeding-frenzy-2', 'Rasakan pengalaman baru memberi makan hiu di Jakarta Aquarium. Anda bisa dapatkan makanan hiu dari staff kami.&nbsp;<br /><br />Lokasi: Ocean Tank Walk Over'),
(73, 'en', 'Otter Peek-a-Boo', 'otter-peek-a-boo', 'Come and meet our utterly amazing Otters who are not only fun creatures, but also highly intelligent. Take a peek of their daily activities through the glass tunnel. Who knows, you will find them holding hands while sleeping. <br /><br />Location: Otter Exhibition'),
(73, 'id', 'Otter Peek-a-Boo', 'otter-peek-a-boo-2', 'Temui dan sapa si Berang-Berang, hewan yang lucu, menggemaskan dan juga cerdas. Intip keseharian mereka melalui terowongan kaca. Siapa tahu, kamu dapat melihat mereka tidur sambil berpegangan tangan.<br /><br />Lokasi : Eksibit Berang-berang'),
(77, 'en', 'Touch Me If You Can', 'touch-me-if-you-can', 'Let them feel your love through simple touch of your hand. Introduce yourself to the Brown Banded Bamboo Shark, Blue Starfish, Turbo Snail, and other gentle animals. <br /><br />Location: Touch and Find Zone'),
(77, 'id', 'Touch Me if You Can', 'touch-me-if-you-can-2', 'Tunjukkan kasih sayangmu dengan membelai para hewan ini! Kenali hiu bambu, bintang laut biru, siput dan masih banyak lagi.<br /><br />Lokasi : Touch and Find Zone'),
(78, 'en', 'Watch Out the Crab!', 'watch-out-the-crab', 'Find out how hermit crabs spend their time inside tree truck with your magnifying glass. The warm wood chips or sand is a perfect spot for them to play.<br /><br />Location: Nurseries of the Sea'),
(78, 'id', 'Watch Out The Crab!', 'watch-out-the-crab-2', 'Temukan apa saja yang dilakukan kelomang untuk menjalani hari-harinya dengan menggunakan kaca pembesar. Serpihan kayu atau pasir yang hangat adalah tempat favorit mereka untuk bermain.<br /><br />Lokasi: Nurseries of The Sea'),
(79, 'en', 'Diving With Shark', 'diving-with-shark', 'Only here you can dive in our main tank where the Black Tip Reef Shark nestle. Our certified instructor is ready to accompany you to feel the experience. Only for licensed diver. Based on appointment. Please call us for further information. <br /><br />Location: Main Tank'),
(79, 'id', 'Diving With Shark', 'diving-with-shark-2', 'Hanya di sini anda dapat menyelam ke sarang hiu karang. Instruktur bersertifikat kami siap memandu anda. Hanya untuk penyelam yang memiliki lisensi. Berdasarkan perjanjian. Hubungi kami untuk info lebih lanjut.<br /><br />Lokasi: Main Tank'),
(80, 'en', 'Seatrekking', 'seatrekking', 'Don&rsquo;t have a diving license? You can still have the underwater adventure with this seatrekking activity. With a safety seatrek helmet, trace the handrail inside the main tank and be ready for the encounter with Black Blotch Stingray. Please call us for further info. <br /><br />Location: Main Tank'),
(80, 'id', 'Seatrekking', 'seatrekking-2', 'Tidak memiliki lisensi menyelam? Anda masih bisa merasakan serunya petualangan bawah laut dengan aktivitas seatrek. Dengan helm oksigen, telusuri panduan di akuarium utama dan bersiaplah berpapasan dengan ikan pari hitam. Hubungi kami untuk info lebih lanjut. <br /><br />Lokasi: Main Tank'),
(81, 'en', 'Create Your Own Fish', 'create-your-own-fish', 'Let your creativity play and create some cute fish as you wish. Color your favorite fish and scan your drawing. Let the fish swim freely on the screen.<br /><br />Location: Kid\'s Classroom'),
(81, 'id', 'Create Your Own Fish', 'create-your-own-fish-2', 'Kembangkan kreativitasmu dan mulai membuat ikan-ikan lucu karyamu. Warnai ikan favoritmu dan scan hasilnya. Biarkan mereka berenang bebas di layar.<br /><br />Lokasi : Kid\'s Classroom'),
(82, 'en', '5D Theater', '5d-theater', 'Hop on and feel the sensation as if you ride a real submarine with your close ones while exploring the deep ocean.<br /><br />Location: 5D Theater'),
(82, 'id', '5D Theater', '5d-theater-2', 'Masuk dan rasakan sensasi seakan berada dalam sebuah kapal selam sungguhan sembari menjelajahi lautan.<br /><br />Lokasi : 5D Theater'),
(83, 'en', 'Underwater Theaterical Show', 'underwater-theaterical-show', 'There are thousands of stories throughout the world. Our country, Indonesia, tells many wonderful stories. This is a story from a long time ago- somewhere in another time and place. Not far from here. It is the story about the devoted love of a king for his daughter. It is a story of intrigue, of adventure, deceit and compassion'),
(83, 'id', 'Underwater Theaterical Show', 'underwater-theaterical-show-2', 'Ada ribuan kisah dari seluruh dunia. Negara kita, Indonesia, juga banyak menyimpan kisah yang indah. Sebuah cerita dari zaman dahulu kala tentang kasih sayang seorang raja terhadap putrinya. Kisah petualangan yang penuh intrik dan mengharukan.<br />'),
(84, 'en', 'Pingoo Restaurant', 'pingoo-restaurant', 'This American seafood restaurant and grill is located at Neo Soho on LG floor. This fun and family restaurant is inspired by the penguin live in the southern hemisphere beach where the restaurant set in a beach deck viewing the beautiful penguin exhibit. Enjoy the experience where you can have a closer look to the penguin while enjoying our delightful menu. Kids, let\'s have fun to feed the cute Humboldt penguin.'),
(84, 'id', 'Pingoo Restaurant', 'pingoo-restaurant-2', 'Restauran dengan konsep makanan laut dan panggangan a la Amerika yang berlokasi di Neo Soho. Restauran keluarga ini terinspirasi dari habitat pinguin di daerah pantai selatan di mana restauran berada di sebuah dek di pantai yang menghadap langsung ke kawanan pinguin. Alami keseruan untuk melihat pinguin dengan lebih dekat sambil menyantap makanan anda yang lezat. Mari bersenang-senang sambil memberi makan pinguin Humboldt yang lucu!'),
(85, 'en', 'Safari Wonder', 'safari-wonder', 'Safari Wonder is part of Taman Safari Indonesia Group specialized in retail shop. Your journey wouldn&rsquo;t be complete without a memorable souvenir from Safari Wonder. Bring your memories home with adorable plush doll, cool shark t-shirt and many more. Collect them all from our store at LG floor.'),
(85, 'id', 'Safari Wonder', 'safari-wonder-2', 'Safari Wonder merupakan bagian dari Taman Safari Indonesia Group yang bergerak di bidang penjualan ritel. Perjalanan anda di Jakarta Aquarium belumlah lengkap tanpa cinderamata yang berkesan dari Safari Wonder. Bawa kenangan perjalanan Anda dengan boneka yang menggemaskan, kaus hiu yang keren dan masih banyak lagi! Koleksi semuanya dari gerai kami yang berada di lantai LG.'),
(86, 'en', 'About Us', 'about-us', '<p>Taman Safari Indonesia Group</p>\r\n<p>presents a cutting edge family recreation,</p>\r\n<p>Jakarta Aquarium.</p>'),
(86, 'id', 'Tentang Kami', 'tentang-kami', '<p>Taman Safari Indonesia Group</p>\r\n<p>mempersembahkan Jakarta Aquarium</p>\r\n<p>sebagai sarana rekreasi keluarga.</p>'),
(87, 'en', 'Special Package', 'special-package', ''),
(87, 'id', 'Paket Spesial', 'paket-spesial', ''),
(88, 'en', 'Career', 'career', ''),
(88, 'id', 'Karir', 'karir', ''),
(89, 'en', 'Privacy Policy', 'privacy-policy', ''),
(89, 'id', 'Syarat Ketentuan', 'syarat-ketentuan', ''),
(90, 'en', 'Term of Use', 'term-of-use', ''),
(90, 'id', 'Ketentuan Penggunaan', 'ketentuan-penggunaan', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_has_categories`
--

CREATE TABLE `post_has_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_has_categories`
--

INSERT INTO `post_has_categories` (`post_id`, `category_id`) VALUES
(17, 2),
(18, 2),
(19, 3),
(70, 21),
(70, 22),
(71, 3),
(72, 17),
(73, 17),
(77, 17),
(78, 17),
(79, 17),
(80, 17),
(81, 17),
(82, 18),
(83, 18),
(84, 19),
(85, 19);

-- --------------------------------------------------------

--
-- Table structure for table `post_has_medias`
--

CREATE TABLE `post_has_medias` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `media_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'featured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_has_medias`
--

INSERT INTO `post_has_medias` (`post_id`, `media_id`, `media_type`) VALUES
(17, 48, 'featured'),
(18, 45, 'featured'),
(19, 51, 'featured'),
(20, 53, 'featured'),
(21, 55, 'featured'),
(22, 54, 'featured'),
(23, 55, 'featured'),
(24, 55, 'featured'),
(25, 54, 'featured'),
(26, 53, 'featured'),
(27, 53, 'featured'),
(28, 51, 'featured'),
(29, 52, 'featured'),
(30, 51, 'featured'),
(31, 53, 'featured'),
(32, 51, 'featured'),
(33, 55, 'featured'),
(34, 51, 'featured'),
(35, 53, 'featured'),
(36, 54, 'featured'),
(37, 54, 'featured'),
(38, 52, 'featured'),
(39, 53, 'featured'),
(40, 51, 'featured'),
(41, 51, 'featured'),
(42, 52, 'featured'),
(43, 52, 'featured'),
(44, 52, 'featured'),
(45, 53, 'featured'),
(46, 55, 'featured'),
(47, 55, 'featured'),
(48, 52, 'featured'),
(49, 53, 'featured'),
(50, 51, 'featured'),
(51, 54, 'featured'),
(52, 52, 'featured'),
(53, 55, 'featured'),
(54, 54, 'featured'),
(55, 51, 'featured'),
(56, 54, 'featured'),
(57, 52, 'featured'),
(58, 54, 'featured'),
(59, 55, 'featured'),
(60, 54, 'featured'),
(61, 54, 'featured'),
(62, 52, 'featured'),
(63, 55, 'featured'),
(64, 53, 'featured'),
(65, 52, 'featured'),
(66, 52, 'featured'),
(67, 52, 'featured'),
(68, 55, 'featured'),
(69, 54, 'featured'),
(71, 53, 'featured'),
(72, 57, 'featured'),
(73, 66, 'featured'),
(77, 67, 'featured'),
(78, 68, 'featured'),
(79, 69, 'featured'),
(80, 72, 'featured'),
(81, 73, 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `post_metas`
--

CREATE TABLE `post_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_metas`
--

INSERT INTO `post_metas` (`id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8, 19, 'whats_on', '1'),
(9, 19, 'featured', '1'),
(14, 20, 'featured', '1'),
(15, 21, 'featured', '1'),
(20, 71, 'meta_description-en', 'Meta (English)'),
(21, 71, 'meta_description-id', 'Meta (Bahasa)'),
(24, 70, 'meta_description-en', 'Media Meta (EN)'),
(25, 70, 'meta_description-id', 'Media Meta (ID)'),
(26, 72, 'meta_description-en', 'META (ENG)'),
(27, 72, 'meta_description-id', 'Meta (ID)'),
(32, 86, 'philosophy-en', ''),
(33, 86, 'philosophy-id', ''),
(34, 86, 'story-en', '<p>Located in NEO Soho, a shopping center in West Jakarta, make Jakarta Aquarium accessible from all corners of the city.</p>\r\n<p>The combination of Indonesian biodiversity, the beauty of Indonesian heritage, and technology will become the main attraction for you and your family to escape from the midst of the capital\'s busy lifestyle.</p>'),
(35, 86, 'story-id', '<p>Terletak di Neo SOHO, salah satu pusat perbelanjaan di daerah Jakarta Barat, membuat Jakarta Aquarium sangat mudah diakses dari segala penjuru kota.</p>\r\n<p>Perpaduan keanekaragaman hayati Indonesia, keindahan budaya, dan teknologi merupakan daya tarik utama Jakarta Aquarium di tengah kesibukan ibu kota bagi Anda dan keluarga.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_types`
--

CREATE TABLE `post_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_types`
--

INSERT INTO `post_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Post', 'post', '2016-10-13 18:32:05', '2016-10-13 18:32:05'),
(2, 'News', 'news', '2016-10-26 18:44:06', '2016-10-26 18:44:06'),
(3, 'Attraction and Experience', 'attraction-and-experience', '2016-10-13 20:13:53', '2016-10-13 20:13:53'),
(4, 'Media Room', 'media-room', '2016-11-05 14:22:54', '2016-11-05 14:22:57'),
(5, 'Career', 'career', '2016-11-14 13:53:44', '2016-11-14 13:53:44'),
(6, 'Page', 'page', '2016-11-22 00:00:00', '2016-11-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(3, 'Author', '2016-10-12 20:11:37', '2016-10-12 20:11:37'),
(4, 'Semi Admin', '2016-10-13 17:34:12', '2016-10-13 17:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 3),
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(8, 3),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(11, 4),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 1),
(15, 4),
(16, 1),
(16, 4),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ACdwhU4mUZeY4DZIEf3LU21Zxcm1qZ1fxkDKX87', NULL, '103.24.104.234', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUU1FT3BOeDQ1RjR5ZGVSd0cxcWh1ZTNweVBuTUFBVW4yTEdpejFsSCI7czo0OiJsYW5nIjtzOjI6ImlkIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2phaS5zYXR3YW1hci5nYS9pZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5ODkzOTcwO3M6MToiYyI7aToxNDc5ODkzOTY4O3M6MToibCI7czoxOiIwIjt9fQ==', 1479893970),
('BHYXoQEy4koWsd5qO5ReFLZtpHClj3pOl2tcnoIG', 1, '103.24.104.234', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiODc5WU5lblB3OW1HMmx1OWpXbXllRDBEajhUbmp5enFhRW9UZ1VFQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9qYWkuc2F0d2FtYXIuZ2EvamFpLWJhY2tlbmQvcGFja2FnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoibGFuZyI7czoyOiJpZCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTg5MzkzNjtzOjE6ImMiO2k6MTQ3OTg5Mjc3NztzOjE6ImwiO3M6MToiMCI7fX0=', 1479893936),
('iPtxlnwMdNUMCM3xHGf2uJJFxR7U2KjGFSDfsGZd', 1, '103.24.104.234', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoic2VMNjdNUDFTVmdyTHNKVXFLVHBXODJ4VlNOZDE3ZlJCejBKMEpxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9qYWkuc2F0d2FtYXIuZ2EvaWQvbG9jYXRpb24tbWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJsYW5nIjtzOjI6ImlkIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5OTU1MzA3O3M6MToiYyI7aToxNDc5OTU1Mjk1O3M6MToibCI7czoxOiIwIjt9fQ==', 1479955307),
('K4Hi1e7VDToOW20zYyCAYSsE635Lx9d6R44IOcpa', NULL, '202.51.126.3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/600.3.18 (KHTML, like Gecko) Version/8.0.3 Safari/600.3.18', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibDFRRk9vaE8wQ082QTVkWjdVUHZ5amZnazBoTGpFb3pjeG9ydHBzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9qYWkuc2F0d2FtYXIuZ2EvaWQvbG9jYXRpb24tbWFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJsYW5nIjtzOjI6ImlkIjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTg5Njg1NjtzOjE6ImMiO2k6MTQ3OTg5Njc5NztzOjE6ImwiO3M6MToiMCI7fX0=', 1479896856),
('MWFn1sc7gnLkU3uu16QMERYnAECzthxlxEcITiSL', 3, '202.51.126.3', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.98 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQUVxVTUwdDRzbVgyRThXeWdWWjBLMUF3QThXNGtWRmtGZ1Zoa0YxdSI7czo0OiJsYW5nIjtzOjI6ImlkIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vamFpLnNhdHdhbWFyLmdhL2phaS1iYWNrZW5kL3BhY2thZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTg5NjU5MjtzOjE6ImMiO2k6MTQ3OTg5MTk5OTtzOjE6ImwiO3M6MToiMCI7fX0=', 1479896592);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) UNSIGNED NOT NULL,
  `show_type` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `show_type`, `created_by`, `created_at`, `updated_at`, `day`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(8, 1, 3, '2016-11-10 18:31:53', '2016-11-10 18:41:49', 5, '1970-01-01', '1970-01-01', '14:00:00', '00:00:00'),
(9, 3, 3, '2016-11-11 18:11:05', '2016-11-11 18:31:51', 1, '2016-11-09', '2016-11-15', '13:00:00', '00:00:00'),
(10, 2, 3, '2016-11-11 18:12:32', '2016-11-11 18:12:32', 5, '1970-01-01', '1970-01-01', '11:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `show_details`
--

CREATE TABLE `show_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `show_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `show_details`
--

INSERT INTO `show_details` (`id`, `show_id`, `title`, `slug`, `lang`, `content`) VALUES
(23, 8, 'Coral Reef Story Time (English)', 'coral-reef-story-time-english', 'en', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.<br />At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.<br />At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.'),
(24, 8, 'Coral Reef Story Time (ID)', 'coral-reef-story-time-id', 'id', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.<br />At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.<br />At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.'),
(27, 10, 'Particular Show', 'particular-show', 'en', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.'),
(28, 10, 'Pertunjukan Musiman', 'pertunjukan-musiman', 'id', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.'),
(31, 9, 'Limited Show', 'limited-show', 'en', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.'),
(32, 9, 'Pertunjukan Terbatas', 'pertunjukan-terbatas', 'id', 'At vero eos et accusamus et iusto odio madeline dignis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo mallera consequat aller proident.');

-- --------------------------------------------------------

--
-- Table structure for table `show_has_medias`
--

CREATE TABLE `show_has_medias` (
  `id` int(10) UNSIGNED NOT NULL,
  `show_id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `media_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'featured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `show_has_medias`
--

INSERT INTO `show_has_medias` (`id`, `show_id`, `media_id`, `media_type`) VALUES
(4, 8, 52, 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `show_metas`
--

CREATE TABLE `show_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `show_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `show_metas`
--

INSERT INTO `show_metas` (`id`, `show_id`, `meta_key`, `meta_value`) VALUES
(9, 8, 'meta_description-en', 'Show Meta (EN)'),
(10, 8, 'meta_description-id', 'Show Meta (ID)');

-- --------------------------------------------------------

--
-- Table structure for table `show_types`
--

CREATE TABLE `show_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `user_id`, `publish_date`, `created_at`, `updated_at`) VALUES
(6, 'Homeslider', 3, '2016-10-26 19:05:00', '2016-10-25 19:08:43', '2016-10-25 20:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `slider_items`
--

CREATE TABLE `slider_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `content` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider_items`
--

INSERT INTO `slider_items` (`id`, `slider_id`, `lang`, `content`, `link`, `file_name`, `order`) VALUES
(5, 6, 'en', 'HERE YOU WILL MEET FACE-TO-FACE WITH THE TAME PREDATORS', '#', 'bg-section-sight.png', 0),
(6, 6, 'id', 'DISINI KALIAN AKAN BERHADAPANG LANGSUNG DENGAN HIU PREDATOR', '#', 'head-sample-03.jpg', 0),
(9, 6, 'en', 'EXPLORE A HUNDRED OF BEAUTIFUL JELLIES IN A DARK TANK', '#', 'head-sample-01.jpg', 1),
(10, 6, 'id', 'DISINI KALIAN AKAN BERTEMU DENGAN FINDING DORI', '#', 'head-sample-01.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pasha Mahardika', 'me@pashamahardika.com', '$2y$10$Ys8gQPnelcFYGY7vVzKe/OHSzXBLNyqPGz9DTHFp9MZGzRa7djpb.', '9pYCFU0NQHVB8a8ym5J37JdOU0guoqcO0dDZQXoiZB9mijqYi1VNRqysdHRP', '2016-10-12 03:35:26', '2016-10-12 07:55:17'),
(3, 'Edwina Trianinda', 'trianinda.edwina@gmail.com', '$2y$10$iWVk/vWv/R3oa1ipa.pVgem6ypOZvDLW.F4jnbxEVODJFxbKgKHRa', 'c5jCFR3VIoX6rKN8nyVbudjeOTbPFH95N2Mkld6uLF3cTL0TRbVHrGvSE2s8', '2016-10-12 07:41:14', '2016-11-19 13:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 3),
(4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_details`
--
ALTER TABLE `career_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_details_career_id_foreign` (`career_id`);

--
-- Indexes for table `career_metas`
--
ALTER TABLE `career_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_metas_career_id_foreign` (`career_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_sizes`
--
ALTER TABLE `media_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_sizes_media_id_foreign` (`media_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_details_package_id_foreign` (`package_id`);

--
-- Indexes for table `package_has_coupons`
--
ALTER TABLE `package_has_coupons`
  ADD PRIMARY KEY (`package_id`,`coupon_id`),
  ADD KEY `package_has_coupons_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `package_has_medias`
--
ALTER TABLE `package_has_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_has_medias_package_id_foreign` (`package_id`);

--
-- Indexes for table `package_metas`
--
ALTER TABLE `package_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_metas_package_id_foreign` (`package_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_details`
--
ALTER TABLE `post_details`
  ADD PRIMARY KEY (`post_id`,`lang`);

--
-- Indexes for table `post_has_categories`
--
ALTER TABLE `post_has_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`),
  ADD KEY `post_has_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_has_medias`
--
ALTER TABLE `post_has_medias`
  ADD PRIMARY KEY (`post_id`,`media_id`),
  ADD KEY `post_has_medias_media_id_foreign` (`media_id`);

--
-- Indexes for table `post_metas`
--
ALTER TABLE `post_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_metas_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_details`
--
ALTER TABLE `show_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_details_show_id_foreign` (`show_id`);

--
-- Indexes for table `show_has_medias`
--
ALTER TABLE `show_has_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_has_medias_show_id_foreign` (`show_id`),
  ADD KEY `show_has_medias_media_id_foreign` (`media_id`);

--
-- Indexes for table `show_metas`
--
ALTER TABLE `show_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_metas_show_id_foreign` (`show_id`);

--
-- Indexes for table `show_types`
--
ALTER TABLE `show_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_items`
--
ALTER TABLE `slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `career_details`
--
ALTER TABLE `career_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `career_metas`
--
ALTER TABLE `career_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `media_sizes`
--
ALTER TABLE `media_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `package_has_medias`
--
ALTER TABLE `package_has_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `package_metas`
--
ALTER TABLE `package_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `post_metas`
--
ALTER TABLE `post_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `show_details`
--
ALTER TABLE `show_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `show_has_medias`
--
ALTER TABLE `show_has_medias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `show_metas`
--
ALTER TABLE `show_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `show_types`
--
ALTER TABLE `show_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider_items`
--
ALTER TABLE `slider_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `career_details`
--
ALTER TABLE `career_details`
  ADD CONSTRAINT `career_details_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `career_metas`
--
ALTER TABLE `career_metas`
  ADD CONSTRAINT `career_metas_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media_sizes`
--
ALTER TABLE `media_sizes`
  ADD CONSTRAINT `media_sizes_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_details`
--
ALTER TABLE `package_details`
  ADD CONSTRAINT `package_details_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_has_coupons`
--
ALTER TABLE `package_has_coupons`
  ADD CONSTRAINT `package_has_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_has_coupons_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_has_medias`
--
ALTER TABLE `package_has_medias`
  ADD CONSTRAINT `package_has_medias_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package_metas`
--
ALTER TABLE `package_metas`
  ADD CONSTRAINT `package_metas_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_details`
--
ALTER TABLE `post_details`
  ADD CONSTRAINT `post_details_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_has_categories`
--
ALTER TABLE `post_has_categories`
  ADD CONSTRAINT `post_has_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_has_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_has_medias`
--
ALTER TABLE `post_has_medias`
  ADD CONSTRAINT `post_has_medias_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_has_medias_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_metas`
--
ALTER TABLE `post_metas`
  ADD CONSTRAINT `post_metas_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `show_details`
--
ALTER TABLE `show_details`
  ADD CONSTRAINT `show_details_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `show_has_medias`
--
ALTER TABLE `show_has_medias`
  ADD CONSTRAINT `show_has_medias_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `show_has_medias_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `show_metas`
--
ALTER TABLE `show_metas`
  ADD CONSTRAINT `show_metas_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
