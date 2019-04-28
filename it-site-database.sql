-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 28, 2019 at 11:17 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress%204', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress%204', 'yes'),
(3, 'blogname', 'IT Site', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andrewhearnden839@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:181:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"index.php/services/?$\";s:28:\"index.php?post_type=services\";s:51:\"index.php/services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:46:\"index.php/services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:38:\"index.php/services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:25:\"index.php/partnerships/?$\";s:32:\"index.php?post_type=partnerships\";s:55:\"index.php/partnerships/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=partnerships&feed=$matches[1]\";s:50:\"index.php/partnerships/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=partnerships&feed=$matches[1]\";s:42:\"index.php/partnerships/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=partnerships&paged=$matches[1]\";s:25:\"index.php/testimonials/?$\";s:32:\"index.php?post_type=testimonials\";s:55:\"index.php/testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:50:\"index.php/testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:42:\"index.php/testimonials/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=testimonials&paged=$matches[1]\";s:17:\"index.php/team/?$\";s:24:\"index.php?post_type=team\";s:47:\"index.php/team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:42:\"index.php/team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:34:\"index.php/team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"index.php/services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:39:\"index.php/services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:59:\"index.php/services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:54:\"index.php/services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:47:\"index.php/services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:54:\"index.php/services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:35:\"index.php/services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"index.php/partnerships/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"index.php/partnerships/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"index.php/partnerships/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/partnerships/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/partnerships/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"index.php/partnerships/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"index.php/partnerships/([^/]+)/embed/?$\";s:45:\"index.php?partnerships=$matches[1]&embed=true\";s:43:\"index.php/partnerships/([^/]+)/trackback/?$\";s:39:\"index.php?partnerships=$matches[1]&tb=1\";s:63:\"index.php/partnerships/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?partnerships=$matches[1]&feed=$matches[2]\";s:58:\"index.php/partnerships/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?partnerships=$matches[1]&feed=$matches[2]\";s:51:\"index.php/partnerships/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?partnerships=$matches[1]&paged=$matches[2]\";s:58:\"index.php/partnerships/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?partnerships=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/partnerships/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?partnerships=$matches[1]&page=$matches[2]\";s:39:\"index.php/partnerships/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"index.php/partnerships/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"index.php/partnerships/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/partnerships/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/partnerships/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/partnerships/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"index.php/testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"index.php/testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"index.php/testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"index.php/testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"index.php/testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:43:\"index.php/testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:63:\"index.php/testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:58:\"index.php/testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:51:\"index.php/testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:58:\"index.php/testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:39:\"index.php/testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"index.php/testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"index.php/testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"index.php/team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"index.php/team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"index.php/team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"index.php/team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"index.php/team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:35:\"index.php/team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:55:\"index.php/team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:50:\"index.php/team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:43:\"index.php/team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:50:\"index.php/team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:31:\"index.php/team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"index.php/team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"index.php/team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:74:\"/Applications/MAMP/htdocs/wordpress 4/wp-content/themes/it-theme/style.css\";i:2;s:73:\"/Applications/MAMP/htdocs/wordpress 4/wp-content/themes/it-theme/page.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'it-theme', 'yes'),
(41, 'stylesheet', 'it-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_GB', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1556490787;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1556490811;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1556490812;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553199016;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.1.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1556486310;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1556486312;s:7:\"checked\";a:1:{s:8:\"it-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'IT Company', 'yes'),
(147, 'theme_mods_it-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"it-nav\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(273, 'category_children', 'a:0:{}', 'yes'),
(284, '_site_transient_timeout_php_check_cd0d3c01d5de47172fb0980b9e484085', '1556534867', 'no'),
(285, '_site_transient_php_check_cd0d3c01d5de47172fb0980b9e484085', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:5:\"5.2.4\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(296, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1556486312;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.12\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(297, 'acf_version', '5.7.12', 'yes'),
(308, '_site_transient_timeout_browser_3333907eb62f9049c2f0353029621b64', '1556914018', 'no'),
(309, '_site_transient_browser_3333907eb62f9049c2f0353029621b64', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.108\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(314, '_site_transient_timeout_theme_roots', '1556488111', 'no'),
(315, '_site_transient_theme_roots', 'a:1:{s:8:\"it-theme\";s:7:\"/themes\";}', 'no'),
(316, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1556529568', 'no'),
(317, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:33:\"WordPress Coventry - Open Surgery\";s:3:\"url\";s:47:\"https://www.meetup.com/wp_cov/events/260066144/\";s:6:\"meetup\";s:25:\"WordPress Coventry Meetup\";s:10:\"meetup_url\";s:30:\"https://www.meetup.com/wp_cov/\";s:4:\"date\";s:19:\"2019-05-01 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Coventry, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:52.40538;s:9:\"longitude\";d:-1.510299;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"The art of problem solving and Using a visual site map plugin\";s:3:\"url\";s:50:\"https://www.meetup.com/wpbristol/events/260480313/\";s:6:\"meetup\";s:24:\"Bristol WordPress People\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/wpbristol/\";s:4:\"date\";s:19:\"2019-05-07 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Bristol, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.453148;s:9:\"longitude\";d:-2.591244;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:74:\"Nurture your WordPress website & Using WordPress on the Rainmaker Platform\";s:3:\"url\";s:68:\"https://www.meetup.com/Cheltenham-WordPress-Meetup/events/260726924/\";s:6:\"meetup\";s:27:\"Cheltenham WordPress Meetup\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/Cheltenham-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-05-15 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:24:\"GL53 7LX, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.88936;s:9:\"longitude\";d:-2.079254;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"Monthly WordPress Meetup - Introducing the Gutenberg editor\";s:3:\"url\";s:53:\"https://www.meetup.com/WordPress-OX/events/260558402/\";s:6:\"meetup\";s:4:\"WPOX\";s:10:\"meetup_url\";s:36:\"https://www.meetup.com/WordPress-OX/\";s:4:\"date\";s:19:\"2019-05-15 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Oxford, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.752567;s:9:\"longitude\";d:-1.263324;}}i:4;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Bristol\";s:3:\"url\";s:34:\"https://2019.bristol.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-05-17 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:7:\"Bristol\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:51.4584172;s:9:\"longitude\";d:-2.6029792;}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1555942321:1'),
(15, 10, '_edit_lock', '1554653070:1'),
(16, 12, '_edit_lock', '1553803881:1'),
(18, 15, '_edit_lock', '1554661186:1'),
(19, 17, '_edit_lock', '1556310367:1'),
(20, 19, '_edit_lock', '1556313752:1'),
(71, 19, '_wp_page_template', 'contact.php'),
(83, 31, '_menu_item_type', 'post_type'),
(84, 31, '_menu_item_menu_item_parent', '0'),
(85, 31, '_menu_item_object_id', '8'),
(86, 31, '_menu_item_object', 'page'),
(87, 31, '_menu_item_target', ''),
(88, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 31, '_menu_item_xfn', ''),
(90, 31, '_menu_item_url', ''),
(92, 32, '_menu_item_type', 'post_type'),
(93, 32, '_menu_item_menu_item_parent', '0'),
(94, 32, '_menu_item_object_id', '17'),
(95, 32, '_menu_item_object', 'page'),
(96, 32, '_menu_item_target', ''),
(97, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 32, '_menu_item_xfn', ''),
(99, 32, '_menu_item_url', ''),
(101, 33, '_menu_item_type', 'post_type'),
(102, 33, '_menu_item_menu_item_parent', '0'),
(103, 33, '_menu_item_object_id', '19'),
(104, 33, '_menu_item_object', 'page'),
(105, 33, '_menu_item_target', ''),
(106, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 33, '_menu_item_xfn', ''),
(108, 33, '_menu_item_url', ''),
(110, 34, '_menu_item_type', 'post_type'),
(111, 34, '_menu_item_menu_item_parent', '0'),
(112, 34, '_menu_item_object_id', '12'),
(113, 34, '_menu_item_object', 'page'),
(114, 34, '_menu_item_target', ''),
(115, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 34, '_menu_item_xfn', ''),
(117, 34, '_menu_item_url', ''),
(119, 35, '_menu_item_type', 'post_type'),
(120, 35, '_menu_item_menu_item_parent', '0'),
(121, 35, '_menu_item_object_id', '10'),
(122, 35, '_menu_item_object', 'page'),
(123, 35, '_menu_item_target', ''),
(124, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 35, '_menu_item_xfn', ''),
(126, 35, '_menu_item_url', ''),
(128, 36, '_menu_item_type', 'post_type'),
(129, 36, '_menu_item_menu_item_parent', '0'),
(130, 36, '_menu_item_object_id', '15'),
(131, 36, '_menu_item_object', 'page'),
(132, 36, '_menu_item_target', ''),
(133, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 36, '_menu_item_xfn', ''),
(135, 36, '_menu_item_url', ''),
(143, 51, '_edit_last', '1'),
(144, 51, '_edit_lock', '1555933860:1'),
(145, 51, '_wp_old_date', '2019-03-28'),
(149, 66, '_edit_lock', '1554661885:1'),
(152, 66, '_wp_trash_meta_status', 'publish'),
(153, 66, '_wp_trash_meta_time', '1554662037'),
(154, 66, '_wp_desired_post_slug', 'test'),
(157, 70, '_edit_lock', '1554662173:1'),
(161, 70, '_wp_trash_meta_status', 'publish'),
(162, 70, '_wp_trash_meta_time', '1554662322'),
(163, 70, '_wp_desired_post_slug', 'test'),
(164, 74, '_edit_last', '1'),
(165, 74, '_edit_lock', '1555273002:1'),
(166, 74, '_wp_trash_meta_status', 'publish'),
(167, 74, '_wp_trash_meta_time', '1555273146'),
(168, 74, '_wp_desired_post_slug', 'adam'),
(169, 76, '_edit_last', '1'),
(170, 76, '_edit_lock', '1555934024:1'),
(171, 80, '_edit_last', '1'),
(172, 80, '_edit_lock', '1555933960:1'),
(176, 84, '_edit_last', '1'),
(177, 84, '_edit_lock', '1555449060:1'),
(178, 84, '_wp_trash_meta_status', 'publish'),
(179, 84, '_wp_trash_meta_time', '1555449212'),
(180, 84, '_wp_desired_post_slug', 'microsoft'),
(181, 85, '_wp_attached_file', '2019/04/aws_web_services.png'),
(182, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:515;s:6:\"height\";i:187;s:4:\"file\";s:28:\"2019/04/aws_web_services.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"aws_web_services-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"aws_web_services-300x109.png\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 51, '_thumbnail_id', '85'),
(187, 91, '_edit_lock', '1555934012:1'),
(188, 92, '_edit_lock', '1555939632:1'),
(189, 93, '_edit_last', '1'),
(190, 93, '_edit_lock', '1556310307:1'),
(191, 94, '_edit_last', '1'),
(192, 94, '_edit_lock', '1556488666:1'),
(193, 95, '_wp_attached_file', '2019/04/006-tv.png'),
(194, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:18:\"2019/04/006-tv.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 93, '_thumbnail_id', '95'),
(196, 100, '_edit_last', '1'),
(197, 100, '_edit_lock', '1556488945:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2019-03-23 11:57:08', '2019-03-23 11:57:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-04-26 22:03:49', '2019-04-26 21:03:49', '', 0, 'http://localhost:8888/wordpress%204/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-03-23 11:57:08', '2019-03-23 11:57:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-03-23 11:57:08', '2019-03-23 11:57:08', '', 8, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-03-23 12:05:59', '2019-03-23 12:05:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-04-26 22:03:55', '2019-04-26 21:03:55', '', 0, 'http://localhost:8888/wordpress%204/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-03-23 12:05:59', '2019-03-23 12:05:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-03-23 12:05:59', '2019-03-23 12:05:59', '', 10, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-03-23 12:06:42', '2019-03-23 12:06:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Partnerships', '', 'publish', 'closed', 'closed', '', 'partnerships', '', '', '2019-04-26 22:03:53', '2019-04-26 21:03:53', '', 0, 'http://localhost:8888/wordpress%204/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-03-23 12:06:42', '2019-03-23 12:06:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Partnerships', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-03-23 12:06:42', '2019-03-23 12:06:42', '', 12, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-03-23 12:08:33', '2019-03-23 12:08:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2019-04-26 22:03:57', '2019-04-26 21:03:57', '', 0, 'http://localhost:8888/wordpress%204/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-03-23 12:08:33', '2019-03-23 12:08:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-03-23 12:08:33', '2019-03-23 12:08:33', '', 15, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-03-23 12:08:48', '2019-03-23 12:08:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-04-26 22:03:51', '2019-04-26 21:03:51', '', 0, 'http://localhost:8888/wordpress%204/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-03-23 12:08:48', '2019-03-23 12:08:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-03-23 12:08:48', '2019-03-23 12:08:48', '', 17, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-03-23 12:10:05', '2019-03-23 12:10:05', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-04-26 22:03:46', '2019-04-26 21:03:46', '', 0, 'http://localhost:8888/wordpress%204/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-03-23 12:10:05', '2019-03-23 12:10:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-23 12:10:05', '2019-03-23 12:10:05', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/23/19-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-03-24 20:39:51', '2019-03-24 20:39:51', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-24 20:39:51', '2019-03-24 20:39:51', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/24/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2019-03-26 21:24:18', '2019-03-26 21:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-03-26 21:25:03', '2019-03-26 21:25:03', '', 0, 'http://localhost:8888/wordpress%204/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-03-26 21:57:11', '2019-03-26 21:57:11', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-26 21:57:11', '2019-03-26 21:57:11', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/26/19-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-03-26 21:57:39', '2019-03-26 21:57:39', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-26 21:57:39', '2019-03-26 21:57:39', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/26/19-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-03-26 22:01:01', '2019-03-26 22:01:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":39} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost:8888/wordpress%204/wp-content/uploads/2019/03/Joker-Wide-Wallpapers-300x188.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Partnerships', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-03-26 22:01:01', '2019-03-26 22:01:01', '', 12, 'http://localhost:8888/wordpress%204/index.php/2019/03/26/12-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-03-26 22:04:14', '2019-03-26 22:04:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nulla fermentum, est wisi dolor malesuada, vivamus velit faucibus sollicitudin. Metus in. Proin nulla quisquam. Metus sit diam, dapibus at suspendisse suspendisse aliquet eu, nec mauris massa lorem ipsum nulla morbi. Pharetra vel adipiscing, et sollicitudin, odio ante mi, sit amet, quam volutpat.</p>\n<!-- /wp:paragraph -->', 'Partnerships', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-03-26 22:04:14', '2019-03-26 22:04:14', '', 12, 'http://localhost:8888/wordpress%204/index.php/2019/03/26/12-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-03-27 20:51:43', '2019-03-27 20:51:43', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>test</h2>\n<!-- /wp:heading -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-27 20:51:43', '2019-03-27 20:51:43', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/27/19-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-03-27 20:52:10', '2019-03-27 20:52:10', '<!-- wp:heading -->\n<h2>test</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-27 20:52:10', '2019-03-27 20:52:10', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/27/19-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-03-27 20:53:34', '2019-03-27 20:53:34', '<!-- wp:heading -->\n<h2>test</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>test2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-27 20:53:34', '2019-03-27 20:53:34', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/27/19-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-03-27 20:53:52', '2019-03-27 20:53:52', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-27 20:53:52', '2019-03-27 20:53:52', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/03/27/19-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-04-02 20:24:21', '2019-04-02 19:24:21', '<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, mauris suspendisse neque mus laoreet nunc, nullam ultrices nec in dui, quis metus, hendrerit turpis pede commodo etiam. Congue sodales porta, aptent at fuga a consectetuer interdum faucibus, beatae et magna.</p>', 'Amazon Web Services', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-04-16 22:23:51', '2019-04-16 21:23:51', '', 0, 'http://localhost:8888/wordpress%204/?post_type=partnerships&#038;p=51', 0, 'partnerships', '', 0),
(66, 1, '2019-04-07 19:33:19', '2019-04-07 18:33:19', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2019-04-07 19:33:57', '2019-04-07 18:33:57', '', 0, 'http://localhost:8888/wordpress%204/?p=66', 0, 'post', '', 0),
(67, 1, '2019-04-07 19:33:19', '2019-04-07 18:33:19', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-04-07 19:33:19', '2019-04-07 18:33:19', '', 66, 'http://localhost:8888/wordpress%204/index.php/2019/04/07/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-04-07 19:37:02', '2019-04-07 18:37:02', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'test', '', 'trash', 'open', 'open', '', 'test__trashed-2', '', '', '2019-04-07 19:38:42', '2019-04-07 18:38:42', '', 0, 'http://localhost:8888/wordpress%204/?p=70', 0, 'post', '', 0),
(71, 1, '2019-04-07 19:37:02', '2019-04-07 18:37:02', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-04-07 19:37:02', '2019-04-07 18:37:02', '', 70, 'http://localhost:8888/wordpress%204/index.php/2019/04/07/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-04-14 21:18:54', '2019-04-14 20:18:54', 'fefnefni', 'Adam', '', 'trash', 'closed', 'closed', '', 'adam__trashed', '', '', '2019-04-14 21:19:06', '2019-04-14 20:19:06', '', 0, 'http://localhost:8888/wordpress%204/?post_type=team&#038;p=74', 0, 'team', '', 0),
(75, 1, '2019-04-14 21:18:58', '2019-04-14 20:18:58', 'fefnefni', 'Adam', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2019-04-14 21:18:58', '2019-04-14 20:18:58', '', 74, 'http://localhost:8888/wordpress%204/index.php/2019/04/14/74-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2019-04-15 21:02:06', '2019-04-15 20:02:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Mark Beets', '', 'publish', 'closed', 'closed', '', 'mark-beets', '', '', '2019-04-15 21:03:53', '2019-04-15 20:03:53', '', 0, 'http://localhost:8888/wordpress%204/?post_type=team&#038;p=76', 0, 'team', '', 0),
(80, 1, '2019-04-15 21:07:00', '2019-04-15 20:07:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Steve Mates', '', 'publish', 'closed', 'closed', '', 'steve-mates', '', '', '2019-04-15 21:07:00', '2019-04-15 20:07:00', '', 0, 'http://localhost:8888/wordpress%204/?post_type=team&#038;p=80', 0, 'team', '', 0),
(84, 1, '2019-04-16 22:12:50', '2019-04-16 21:12:50', 'Lorem ipsum dolor sit amet, mauris suspendisse neque mus laoreet nunc, nullam ultrices nec in dui, quis metus, hendrerit turpis pede commodo etiam. Congue sodales porta, aptent at fuga a consectetuer interdum faucibus, beatae et magna.', 'Microsoft', '', 'trash', 'closed', 'closed', '', 'microsoft__trashed', '', '', '2019-04-16 22:13:32', '2019-04-16 21:13:32', '', 0, 'http://localhost:8888/wordpress%204/?post_type=partnerships&#038;p=84', 0, 'partnerships', '', 0),
(85, 1, '2019-04-16 22:23:45', '2019-04-16 21:23:45', '', 'aws_web_services', '', 'inherit', 'open', 'closed', '', 'aws_web_services', '', '', '2019-04-16 22:23:45', '2019-04-16 21:23:45', '', 51, 'http://localhost:8888/wordpress%204/wp-content/uploads/2019/04/aws_web_services.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2019-04-22 11:47:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-04-22 11:47:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?p=88', 0, 'post', '', 0),
(91, 1, '2019-04-22 12:53:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-04-22 12:53:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?p=91', 0, 'post', '', 0),
(92, 1, '2019-04-22 14:27:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-04-22 14:27:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?p=92', 0, 'post', '', 0),
(93, 1, '2019-04-26 21:15:19', '2019-04-26 20:15:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'System Support', '', 'publish', 'closed', 'closed', '', 'system-support', '', '', '2019-04-26 21:26:40', '2019-04-26 20:26:40', '', 0, 'http://localhost:8888/wordpress%204/?post_type=services&#038;p=93', 0, 'services', '', 0),
(94, 1, '2019-04-26 21:24:29', '2019-04-26 20:24:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Client 1', '', 'publish', 'closed', 'closed', '', 'client-1', '', '', '2019-04-26 21:24:29', '2019-04-26 20:24:29', '', 0, 'http://localhost:8888/wordpress%204/?post_type=testimonials&#038;p=94', 0, 'testimonials', '', 0),
(95, 1, '2019-04-26 21:26:27', '2019-04-26 20:26:27', '', '006-tv', '', 'inherit', 'open', 'closed', '', '006-tv', '', '', '2019-04-26 21:26:27', '2019-04-26 20:26:27', '', 93, 'http://localhost:8888/wordpress%204/wp-content/uploads/2019/04/006-tv.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2019-04-26 21:58:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-04-26 21:58:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?post_type=careers&p=96', 0, 'careers', '', 0),
(97, 1, '2019-04-26 21:59:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-04-26 21:59:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?post_type=careers&p=97', 0, 'careers', '', 0),
(98, 1, '2019-04-26 22:00:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-04-26 22:00:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress%204/?post_type=careers&p=98', 0, 'careers', '', 0),
(99, 1, '2019-04-26 22:04:05', '2019-04-26 21:04:05', '<!-- wp:paragraph -->\n<p>Please fill in the below contact form:</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2019-04-26 22:04:05', '2019-04-26 21:04:05', '', 19, 'http://localhost:8888/wordpress%204/index.php/2019/04/26/19-autosave-v1/', 0, 'revision', '', 0),
(100, 1, '2019-04-28 23:00:26', '2019-04-28 22:00:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Client 2', '', 'publish', 'closed', 'closed', '', 'client-2', '', '', '2019-04-28 23:00:26', '2019-04-28 22:00:26', '', 0, 'http://localhost:8888/wordpress%204/?post_type=testimonials&#038;p=100', 0, 'testimonials', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(3, 'Header-Navbar', 'header-navbar', 0),
(4, 'System/Hardware', 'system', 0),
(5, 'Cloud', 'cloud', 0),
(6, 'Network', 'network', 0),
(7, 'Hardware', 'hardware', 0),
(8, 'Software', 'software', 0),
(9, 'Network', 'network', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(66, 1, 0),
(70, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', 'Hardware related services', 0, 0),
(5, 5, 'category', 'Cloud related services', 0, 0),
(6, 6, 'category', 'Network related services', 0, 0),
(7, 7, 'post_tag', 'Hardware', 0, 0),
(8, 8, 'post_tag', 'Software', 0, 0),
(9, 9, 'post_tag', 'Network', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0c3c70bd13c6f94addfa93db8f6a267cb10fff1c86463cf80d89d8985fe50c67\";a:4:{s:10:\"expiration\";i:1556659166;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36\";s:5:\"login\";i:1556486366;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(18, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&align=right&editor=tinymce&advImgDetails=show'),
(21, 1, 'wp_user-settings-time', '1553803119'),
(22, 1, 'enable_custom_fields', '1'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(28, 1, 'closedpostboxes_partnerships', 'a:0:{}'),
(29, 1, 'metaboxhidden_partnerships', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(30, 1, 'manageedit-partnershipscolumnshidden', 'a:0:{}'),
(31, 1, 'closedpostboxes_services', 'a:0:{}'),
(32, 1, 'metaboxhidden_services', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(33, 1, 'closedpostboxes_post', 'a:0:{}'),
(34, 1, 'metaboxhidden_post', 'a:0:{}'),
(35, 1, 'closedpostboxes_team', 'a:0:{}'),
(36, 1, 'metaboxhidden_team', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bk0h9F.wKj0G1mcWrAqrbfsJ4YOCX1/', 'root', 'andrewhearnden839@gmail.com', '', '2019-03-20 22:33:07', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
