-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 04:31 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ravkoo_new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-12 16:32:09', '2021-10-12 16:32:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ravkoo_new', 'yes'),
(2, 'home', 'http://localhost/ravkoo_new', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'html@bexcodeservices.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=30&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:1;s:59:\"quick-child-theme-generator/quick-child-theme-generator.php\";i:2;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty-child-theme', 'yes'),
(41, 'stylesheet', 'twentytwenty-child-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:59:\"quick-child-theme-generator/quick-child-theme-generator.php\";a:2:{i:0;s:10:\"QCTHG_Main\";i:1;s:14:\"qcthgUninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '30', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1649608329', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1635258730;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1635265930;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1635265940;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635265944;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635352330;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:3:{i:2;a:1:{s:8:\"nav_menu\";i:5;}i:3;a:1:{s:8:\"nav_menu\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634056419;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1635234597;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635234599;s:7:\"checked\";a:2:{s:24:\"twentytwenty-child-theme\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'recently_activated', 'a:1:{s:29:\"mainwp-child/mainwp-child.php\";i:1634736430;}', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(155, 'disable_gutenberg_options', 'a:22:{s:11:\"disable-all\";i:1;s:23:\"user-role_administrator\";i:1;s:16:\"user-role_editor\";i:1;s:16:\"user-role_author\";i:1;s:21:\"user-role_contributor\";i:1;s:20:\"user-role_subscriber\";i:1;s:14:\"post-type_post\";i:1;s:14:\"post-type_page\";i:1;s:21:\"post-type_wp_template\";i:1;s:9:\"templates\";s:0:\"\";s:8:\"post-ids\";s:0:\"\";s:12:\"whitelist-id\";s:0:\"\";s:14:\"whitelist-slug\";s:0:\"\";s:15:\"whitelist-title\";s:0:\"\";s:15:\"classic-widgets\";i:1;s:11:\"disable-nag\";i:1;s:13:\"styles-enable\";i:0;s:9:\"whitelist\";i:0;s:9:\"hide-menu\";i:0;s:8:\"hide-gut\";i:0;s:12:\"links-enable\";i:0;s:10:\"acf-enable\";i:0;}', 'yes'),
(158, 'current_theme', 'Ravkoo-Theme', 'yes'),
(159, 'theme_mods_twentytwenty', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:7:\"primary\";i:0;s:8:\"expanded\";i:2;s:6:\"social\";i:4;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:43;s:11:\"retina_logo\";b:0;s:15:\"show_author_bio\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634739651;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(163, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(164, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":2,\"critical\":1}', 'yes'),
(192, 'bodhi_svgs_plugin_version', '2.3.19', 'yes'),
(207, 'site_logo', '43', 'yes'),
(224, '_site_transient_timeout_browser_080845ddfc9fd28cc64d421dcdca199d', '1635339490', 'no'),
(225, '_site_transient_browser_080845ddfc9fd28cc64d421dcdca199d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.81\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(226, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1635339491', 'no'),
(227, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(234, 'mainwp_child_update_version', '1.5', 'yes'),
(235, 'mainwp_child_plugin_version', '4.1.7.1', 'yes'),
(236, 'mainwp_child_auth', 'a:2:{i:5;s:32:\"d9daae43707d5d9e3283ab637c9c4d71\";s:4:\"last\";i:1634735162;}', 'yes'),
(237, 'mainwp_child_branding_settings', 'a:4:{s:13:\"contact_label\";s:15:\"Contact Support\";s:18:\"cancelled_branding\";b:1;s:23:\"branding_preserve_title\";s:0:\"\";s:21:\"branding_disconnected\";s:3:\"yes\";}', 'no'),
(238, 'mainwp_child_activated_once', '1', 'no'),
(239, 'mainwp_child_clone_from_server_last_folder', 'C:/xampp/htdocs/ravkoo_new/wp-content/uploads/mainwp/backup', 'no'),
(240, 'mainwp_child_uniqueId', 'JPwv0Za3', 'no'),
(245, 'theme_mods_twentytwenty-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:7:\"primary\";i:0;s:8:\"expanded\";i:2;s:6:\"social\";i:4;s:6:\"footer\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634740392;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(249, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635234599;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:59:\"quick-child-theme-generator/quick-child-theme-generator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/quick-child-theme-generator\";s:4:\"slug\";s:27:\"quick-child-theme-generator\";s:6:\"plugin\";s:59:\"quick-child-theme-generator/quick-child-theme-generator.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/quick-child-theme-generator/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/quick-child-theme-generator.2.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/quick-child-theme-generator/assets/icon.svg?rev=2338973\";s:3:\"svg\";s:72:\"https://ps.w.org/quick-child-theme-generator/assets/icon.svg?rev=2338973\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/quick-child-theme-generator/assets/banner-772x250.png?rev=2338973\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.19\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.19.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}}s:7:\"checked\";a:3:{s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"2.5.1\";s:59:\"quick-child-theme-generator/quick-child-theme-generator.php\";s:5:\"2.0.0\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.19\";}}', 'no'),
(251, 'theme_mods_RavkooTwentyChildTheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:7:\"primary\";i:0;s:8:\"expanded\";i:2;s:6:\"social\";i:4;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634739646;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(258, 'theme_mods_twentytwenty-child-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:7:\"primary\";i:0;s:8:\"expanded\";i:2;s:6:\"social\";i:4;s:6:\"footer\";i:0;s:6:\"mobile\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(271, 'recovery_mode_email_last_sent', '1634807221', 'yes'),
(308, '_site_transient_timeout_theme_roots', '1635236398', 'no'),
(309, '_site_transient_theme_roots', 'a:2:{s:24:\"twentytwenty-child-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_attached_file', '2021/10/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2021/10/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(88, 24, '_menu_item_type', 'custom'),
(89, 24, '_menu_item_menu_item_parent', '0'),
(90, 24, '_menu_item_object_id', '24'),
(91, 24, '_menu_item_object', 'custom'),
(92, 24, '_menu_item_target', ''),
(93, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 24, '_menu_item_xfn', ''),
(95, 24, '_menu_item_url', 'https://www.facebook.com/rx2door/?modal=admin_todo_tour'),
(96, 25, '_menu_item_type', 'custom'),
(97, 25, '_menu_item_menu_item_parent', '0'),
(98, 25, '_menu_item_object_id', '25'),
(99, 25, '_menu_item_object', 'custom'),
(100, 25, '_menu_item_target', ''),
(101, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 25, '_menu_item_xfn', ''),
(103, 25, '_menu_item_url', 'https://twitter.com/Ravkoo3'),
(120, 10, '_wp_trash_meta_status', 'publish'),
(121, 10, '_wp_trash_meta_time', '1634056451'),
(140, 30, '_edit_last', '1'),
(141, 30, '_edit_lock', '1634143796:1'),
(142, 30, '_wp_page_template', 'page-home.php'),
(143, 32, '_wp_attached_file', '2021/10/icon_user.svg'),
(144, 32, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:21;s:6:\"height\";i:26;s:4:\"file\";s:22:\"/2021/10/icon_user.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_user.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(145, 33, '_wp_attached_file', '2021/10/ravkoo_health_watch.svg'),
(146, 33, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:530;s:6:\"height\";i:186;s:4:\"file\";s:32:\"/2021/10/ravkoo_health_watch.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:23:\"ravkoo_health_watch.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(147, 34, '_wp_attached_file', '2021/10/ravkoo_mobile_app.svg'),
(148, 34, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:530;s:6:\"height\";i:186;s:4:\"file\";s:30:\"/2021/10/ravkoo_mobile_app.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ravkoo_mobile_app.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(151, 36, '_wp_attached_file', '2021/10/connect_kiosk.svg'),
(152, 36, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:530;s:6:\"height\";i:186;s:4:\"file\";s:26:\"/2021/10/connect_kiosk.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"connect_kiosk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(161, 40, '_edit_lock', '1634656372:1'),
(167, 43, '_wp_attached_file', '2021/10/ravkoo-logo.png'),
(168, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:122;s:6:\"height\";i:29;s:4:\"file\";s:23:\"2021/10/ravkoo-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 44, '_wp_attached_file', '2021/10/ravkoo-logo.svg'),
(170, 44, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:122;s:6:\"height\";i:29;s:4:\"file\";s:24:\"/2021/10/ravkoo-logo.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:15:\"ravkoo-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(171, 40, '_customize_restore_dismissed', '1'),
(172, 45, '_wp_trash_meta_status', 'publish'),
(173, 45, '_wp_trash_meta_time', '1634657349'),
(174, 46, '_wp_trash_meta_status', 'publish'),
(175, 46, '_wp_trash_meta_time', '1634657443'),
(176, 47, '_edit_lock', '1634657780:1'),
(177, 47, '_wp_trash_meta_status', 'publish'),
(178, 47, '_wp_trash_meta_time', '1634657789'),
(179, 48, '_wp_trash_meta_status', 'publish'),
(180, 48, '_wp_trash_meta_time', '1634657827'),
(181, 49, '_wp_trash_meta_status', 'publish'),
(182, 49, '_wp_trash_meta_time', '1634657849'),
(186, 43, '_wp_attachment_image_alt', 'ravkoo logo'),
(187, 51, '_wp_trash_meta_status', 'publish'),
(188, 51, '_wp_trash_meta_time', '1634717372'),
(194, 54, '_wp_trash_meta_status', 'publish'),
(195, 54, '_wp_trash_meta_time', '1634734808'),
(196, 55, 'inline_featured_image', '0'),
(197, 55, '_edit_last', '1'),
(198, 55, '_wp_page_template', 'default'),
(199, 55, '_edit_lock', '1634738347:1'),
(200, 57, 'inline_featured_image', '0'),
(201, 57, '_edit_last', '1'),
(202, 57, '_wp_page_template', 'default'),
(203, 57, '_edit_lock', '1634738614:1'),
(204, 59, '_menu_item_type', 'post_type'),
(205, 59, '_menu_item_menu_item_parent', '0'),
(206, 59, '_menu_item_object_id', '55'),
(207, 59, '_menu_item_object', 'page'),
(208, 59, '_menu_item_target', ''),
(209, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 59, '_menu_item_xfn', ''),
(211, 59, '_menu_item_url', ''),
(213, 60, '_menu_item_type', 'post_type'),
(214, 60, '_menu_item_menu_item_parent', '0'),
(215, 60, '_menu_item_object_id', '57'),
(216, 60, '_menu_item_object', 'page'),
(217, 60, '_menu_item_target', ''),
(218, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 60, '_menu_item_xfn', ''),
(220, 60, '_menu_item_url', ''),
(221, 61, 'inline_featured_image', '0'),
(222, 61, '_edit_last', '1'),
(223, 61, '_edit_lock', '1634747037:1'),
(224, 61, '_wp_page_template', 'default'),
(225, 63, 'inline_featured_image', '0'),
(227, 24, '_wp_old_date', '2021-10-12'),
(228, 25, '_wp_old_date', '2021-10-12'),
(229, 64, '_menu_item_type', 'custom'),
(230, 64, '_menu_item_menu_item_parent', '0'),
(231, 64, '_menu_item_object_id', '64'),
(232, 64, '_menu_item_object', 'custom'),
(233, 64, '_menu_item_target', ''),
(234, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 64, '_menu_item_xfn', ''),
(236, 64, '_menu_item_url', 'https://www.linkedin.com/company/ravkoo/'),
(238, 65, '_menu_item_type', 'custom'),
(239, 65, '_menu_item_menu_item_parent', '0'),
(240, 65, '_menu_item_object_id', '65'),
(241, 65, '_menu_item_object', 'custom'),
(242, 65, '_menu_item_target', ''),
(243, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 65, '_menu_item_xfn', ''),
(245, 65, '_menu_item_url', 'https://www.instagram.com/_ravkoo/'),
(247, 66, '_menu_item_type', 'custom'),
(248, 66, '_menu_item_menu_item_parent', '0'),
(249, 66, '_menu_item_object_id', '66'),
(250, 66, '_menu_item_object', 'custom'),
(251, 66, '_menu_item_target', ''),
(252, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(253, 66, '_menu_item_xfn', ''),
(254, 66, '_menu_item_url', 'https://www.youtube.com/channel/UCEntitPX5Z7LYvykrneCXdQ'),
(256, 67, '_wp_trash_meta_status', 'publish'),
(257, 67, '_wp_trash_meta_time', '1634806851'),
(263, 70, '_wp_attached_file', '2021/10/GooglePlay.svg'),
(264, 70, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:23:\"/2021/10/GooglePlay.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"GooglePlay.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(265, 71, '_wp_attached_file', '2021/10/Appstore.png'),
(266, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:39;s:4:\"file\";s:20:\"2021/10/Appstore.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 72, '_wp_attached_file', '2021/10/Appstore.svg'),
(268, 72, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:21:\"/2021/10/Appstore.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:12:\"Appstore.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(269, 73, '_wp_attached_file', '2021/10/GooglePlay.png'),
(270, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:39;s:4:\"file\";s:22:\"2021/10/GooglePlay.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 72, '_wp_attachment_image_alt', 'Appstore'),
(272, 70, '_wp_attachment_image_alt', 'GooglePlay'),
(273, 74, '_wp_attached_file', '2021/10/ri-heart-add-fill.svg'),
(274, 74, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:30:\"/2021/10/ri-heart-add-fill.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ri-heart-add-fill.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(275, 74, '_wp_attachment_image_alt', 'ri-heart-add-fill'),
(276, 75, 'inline_featured_image', '0'),
(277, 75, '_edit_last', '1'),
(278, 75, '_wp_page_template', 'default'),
(279, 75, '_edit_lock', '1634906671:1'),
(280, 77, 'inline_featured_image', '0'),
(281, 77, '_edit_last', '1'),
(282, 77, '_wp_page_template', 'default'),
(283, 77, '_edit_lock', '1634906680:1'),
(284, 79, 'inline_featured_image', '0'),
(285, 79, '_edit_last', '1'),
(286, 79, '_wp_page_template', 'default'),
(287, 79, '_edit_lock', '1634906687:1'),
(288, 81, 'inline_featured_image', '0'),
(289, 81, '_edit_last', '1'),
(290, 81, '_wp_page_template', 'default'),
(291, 81, '_edit_lock', '1634906693:1'),
(296, 85, 'inline_featured_image', '0'),
(297, 85, '_edit_last', '1'),
(298, 85, '_wp_page_template', 'default'),
(299, 85, '_edit_lock', '1634906717:1'),
(300, 87, 'inline_featured_image', '0'),
(301, 87, '_edit_last', '1'),
(302, 87, '_wp_page_template', 'default'),
(303, 87, '_edit_lock', '1634906724:1'),
(304, 89, 'inline_featured_image', '0'),
(305, 89, '_edit_last', '1'),
(306, 89, '_wp_page_template', 'default'),
(307, 89, '_edit_lock', '1634906729:1'),
(308, 91, 'inline_featured_image', '0'),
(309, 91, '_edit_last', '1'),
(310, 91, '_wp_page_template', 'default'),
(311, 91, '_edit_lock', '1634906740:1'),
(312, 93, '_menu_item_type', 'post_type'),
(313, 93, '_menu_item_menu_item_parent', '0'),
(314, 93, '_menu_item_object_id', '30'),
(315, 93, '_menu_item_object', 'page'),
(316, 93, '_menu_item_target', ''),
(317, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 93, '_menu_item_xfn', ''),
(319, 93, '_menu_item_url', ''),
(321, 94, '_menu_item_type', 'post_type'),
(322, 94, '_menu_item_menu_item_parent', '0'),
(323, 94, '_menu_item_object_id', '91'),
(324, 94, '_menu_item_object', 'page'),
(325, 94, '_menu_item_target', ''),
(326, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 94, '_menu_item_xfn', ''),
(328, 94, '_menu_item_url', ''),
(330, 95, '_menu_item_type', 'post_type'),
(331, 95, '_menu_item_menu_item_parent', '0'),
(332, 95, '_menu_item_object_id', '87'),
(333, 95, '_menu_item_object', 'page'),
(334, 95, '_menu_item_target', ''),
(335, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 95, '_menu_item_xfn', ''),
(337, 95, '_menu_item_url', ''),
(339, 96, '_menu_item_type', 'post_type'),
(340, 96, '_menu_item_menu_item_parent', '0'),
(341, 96, '_menu_item_object_id', '79'),
(342, 96, '_menu_item_object', 'page'),
(343, 96, '_menu_item_target', ''),
(344, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(345, 96, '_menu_item_xfn', ''),
(346, 96, '_menu_item_url', ''),
(348, 97, '_menu_item_type', 'post_type'),
(349, 97, '_menu_item_menu_item_parent', '0'),
(350, 97, '_menu_item_object_id', '85'),
(351, 97, '_menu_item_object', 'page'),
(352, 97, '_menu_item_target', ''),
(353, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 97, '_menu_item_xfn', ''),
(355, 97, '_menu_item_url', ''),
(357, 98, '_menu_item_type', 'post_type'),
(358, 98, '_menu_item_menu_item_parent', '0'),
(359, 98, '_menu_item_object_id', '89'),
(360, 98, '_menu_item_object', 'page'),
(361, 98, '_menu_item_target', ''),
(362, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(363, 98, '_menu_item_xfn', ''),
(364, 98, '_menu_item_url', ''),
(366, 99, '_menu_item_type', 'post_type'),
(367, 99, '_menu_item_menu_item_parent', '97'),
(368, 99, '_menu_item_object_id', '55'),
(369, 99, '_menu_item_object', 'page'),
(370, 99, '_menu_item_target', ''),
(371, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(372, 99, '_menu_item_xfn', ''),
(373, 99, '_menu_item_url', ''),
(375, 100, '_menu_item_type', 'post_type'),
(376, 100, '_menu_item_menu_item_parent', '97'),
(377, 100, '_menu_item_object_id', '61'),
(378, 100, '_menu_item_object', 'page'),
(379, 100, '_menu_item_target', ''),
(380, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(381, 100, '_menu_item_xfn', ''),
(382, 100, '_menu_item_url', ''),
(384, 101, '_menu_item_type', 'post_type'),
(385, 101, '_menu_item_menu_item_parent', '97'),
(386, 101, '_menu_item_object_id', '57'),
(387, 101, '_menu_item_object', 'page'),
(388, 101, '_menu_item_target', ''),
(389, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(390, 101, '_menu_item_xfn', ''),
(391, 101, '_menu_item_url', ''),
(393, 102, '_menu_item_type', 'post_type'),
(394, 102, '_menu_item_menu_item_parent', '0'),
(395, 102, '_menu_item_object_id', '75'),
(396, 102, '_menu_item_object', 'page'),
(397, 102, '_menu_item_target', ''),
(398, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(399, 102, '_menu_item_xfn', ''),
(400, 102, '_menu_item_url', ''),
(402, 103, '_menu_item_type', 'post_type'),
(403, 103, '_menu_item_menu_item_parent', '0'),
(404, 103, '_menu_item_object_id', '77'),
(405, 103, '_menu_item_object', 'page'),
(406, 103, '_menu_item_target', ''),
(407, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 103, '_menu_item_xfn', ''),
(409, 103, '_menu_item_url', ''),
(411, 104, '_menu_item_type', 'post_type'),
(412, 104, '_menu_item_menu_item_parent', '0'),
(413, 104, '_menu_item_object_id', '81'),
(414, 104, '_menu_item_object', 'page'),
(415, 104, '_menu_item_target', ''),
(416, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 104, '_menu_item_xfn', ''),
(418, 104, '_menu_item_url', ''),
(429, 106, 'inline_featured_image', '0'),
(430, 106, '_edit_last', '1'),
(431, 106, '_wp_page_template', 'default'),
(432, 106, '_edit_lock', '1634906873:1'),
(433, 108, '_menu_item_type', 'post_type'),
(434, 108, '_menu_item_menu_item_parent', '97'),
(435, 108, '_menu_item_object_id', '106'),
(436, 108, '_menu_item_object', 'page'),
(437, 108, '_menu_item_target', ''),
(438, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(439, 108, '_menu_item_xfn', ''),
(440, 108, '_menu_item_url', ''),
(442, 109, '_menu_item_type', 'post_type'),
(443, 109, '_menu_item_menu_item_parent', '0'),
(444, 109, '_menu_item_object_id', '30'),
(445, 109, '_menu_item_object', 'page'),
(446, 109, '_menu_item_target', ''),
(447, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 109, '_menu_item_xfn', ''),
(449, 109, '_menu_item_url', ''),
(451, 110, '_menu_item_type', 'post_type'),
(452, 110, '_menu_item_menu_item_parent', '0'),
(453, 110, '_menu_item_object_id', '91'),
(454, 110, '_menu_item_object', 'page'),
(455, 110, '_menu_item_target', ''),
(456, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(457, 110, '_menu_item_xfn', ''),
(458, 110, '_menu_item_url', ''),
(460, 111, '_menu_item_type', 'post_type'),
(461, 111, '_menu_item_menu_item_parent', '0'),
(462, 111, '_menu_item_object_id', '87'),
(463, 111, '_menu_item_object', 'page'),
(464, 111, '_menu_item_target', ''),
(465, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(466, 111, '_menu_item_xfn', ''),
(467, 111, '_menu_item_url', ''),
(469, 112, '_menu_item_type', 'post_type'),
(470, 112, '_menu_item_menu_item_parent', '0'),
(471, 112, '_menu_item_object_id', '79'),
(472, 112, '_menu_item_object', 'page'),
(473, 112, '_menu_item_target', ''),
(474, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(475, 112, '_menu_item_xfn', ''),
(476, 112, '_menu_item_url', ''),
(478, 113, '_menu_item_type', 'post_type'),
(479, 113, '_menu_item_menu_item_parent', '0'),
(480, 113, '_menu_item_object_id', '85'),
(481, 113, '_menu_item_object', 'page'),
(482, 113, '_menu_item_target', ''),
(483, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 113, '_menu_item_xfn', ''),
(485, 113, '_menu_item_url', ''),
(487, 114, '_menu_item_type', 'post_type'),
(488, 114, '_menu_item_menu_item_parent', '0'),
(489, 114, '_menu_item_object_id', '89'),
(490, 114, '_menu_item_object', 'page'),
(491, 114, '_menu_item_target', ''),
(492, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(493, 114, '_menu_item_xfn', ''),
(494, 114, '_menu_item_url', ''),
(496, 115, '_menu_item_type', 'post_type'),
(497, 115, '_menu_item_menu_item_parent', '113'),
(498, 115, '_menu_item_object_id', '106'),
(499, 115, '_menu_item_object', 'page'),
(500, 115, '_menu_item_target', ''),
(501, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(502, 115, '_menu_item_xfn', ''),
(503, 115, '_menu_item_url', ''),
(505, 116, '_menu_item_type', 'post_type'),
(506, 116, '_menu_item_menu_item_parent', '113'),
(507, 116, '_menu_item_object_id', '55'),
(508, 116, '_menu_item_object', 'page'),
(509, 116, '_menu_item_target', ''),
(510, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 116, '_menu_item_xfn', ''),
(512, 116, '_menu_item_url', ''),
(514, 117, '_menu_item_type', 'post_type'),
(515, 117, '_menu_item_menu_item_parent', '113'),
(516, 117, '_menu_item_object_id', '61'),
(517, 117, '_menu_item_object', 'page'),
(518, 117, '_menu_item_target', ''),
(519, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 117, '_menu_item_xfn', ''),
(521, 117, '_menu_item_url', ''),
(523, 118, '_menu_item_type', 'post_type'),
(524, 118, '_menu_item_menu_item_parent', '113'),
(525, 118, '_menu_item_object_id', '57'),
(526, 118, '_menu_item_object', 'page'),
(527, 118, '_menu_item_target', ''),
(528, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(529, 118, '_menu_item_xfn', ''),
(530, 118, '_menu_item_url', ''),
(532, 119, '_menu_item_type', 'post_type'),
(533, 119, '_menu_item_menu_item_parent', '0'),
(534, 119, '_menu_item_object_id', '75'),
(535, 119, '_menu_item_object', 'page'),
(536, 119, '_menu_item_target', ''),
(537, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(538, 119, '_menu_item_xfn', ''),
(539, 119, '_menu_item_url', ''),
(541, 120, '_menu_item_type', 'post_type'),
(542, 120, '_menu_item_menu_item_parent', '0'),
(543, 120, '_menu_item_object_id', '77'),
(544, 120, '_menu_item_object', 'page'),
(545, 120, '_menu_item_target', ''),
(546, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(547, 120, '_menu_item_xfn', ''),
(548, 120, '_menu_item_url', ''),
(550, 121, '_menu_item_type', 'post_type'),
(551, 121, '_menu_item_menu_item_parent', '0'),
(552, 121, '_menu_item_object_id', '81'),
(553, 121, '_menu_item_object', 'page'),
(554, 121, '_menu_item_target', ''),
(555, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(556, 121, '_menu_item_xfn', ''),
(557, 121, '_menu_item_url', ''),
(569, 123, 'inline_featured_image', '0'),
(570, 123, '_edit_last', '1'),
(571, 123, '_wp_page_template', 'default'),
(572, 123, '_edit_lock', '1634908769:1'),
(573, 125, '_menu_item_type', 'post_type'),
(574, 125, '_menu_item_menu_item_parent', '0'),
(575, 125, '_menu_item_object_id', '123'),
(576, 125, '_menu_item_object', 'page'),
(577, 125, '_menu_item_target', ''),
(578, 125, '_menu_item_classes', 'a:1:{i:0;s:13:\"link-location\";}'),
(579, 125, '_menu_item_xfn', ''),
(580, 125, '_menu_item_url', ''),
(582, 126, '_wp_trash_meta_status', 'publish'),
(583, 126, '_wp_trash_meta_time', '1634909319'),
(584, 127, '_wp_trash_meta_status', 'publish'),
(585, 127, '_wp_trash_meta_time', '1634909331'),
(586, 128, '_wp_attached_file', '2021/10/icon_minus.svg'),
(587, 128, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:32;s:6:\"height\";i:31;s:4:\"file\";s:23:\"/2021/10/icon_minus.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"icon_minus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(588, 129, '_wp_attached_file', '2021/10/icon-plus.svg'),
(589, 129, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:12;s:6:\"height\";i:11;s:4:\"file\";s:22:\"/2021/10/icon-plus.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon-plus.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(590, 128, '_wp_attachment_image_alt', 'icon_minus'),
(591, 129, '_wp_attachment_image_alt', 'icon-plus'),
(592, 130, '_wp_attached_file', '2021/10/bg_menu_bar.png'),
(593, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:900;s:4:\"file\";s:23:\"2021/10/bg_menu_bar.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bg_menu_bar-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bg_menu_bar-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bg_menu_bar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bg_menu_bar-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"bg_menu_bar-1200x750.png\";s:5:\"width\";i:1200;s:6:\"height\";i:750;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(594, 130, '_wp_attachment_image_alt', 'bg_menu_bar'),
(595, 131, '_wp_attached_file', '2021/10/icon_location_pin.svg'),
(596, 131, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:20;s:6:\"height\";i:27;s:4:\"file\";s:30:\"/2021/10/icon_location_pin.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"icon_location_pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(597, 131, '_wp_attachment_image_alt', 'icon_location_pin'),
(598, 109, '_wp_old_date', '2021-10-22'),
(599, 119, '_wp_old_date', '2021-10-22'),
(600, 120, '_wp_old_date', '2021-10-22'),
(601, 112, '_wp_old_date', '2021-10-22'),
(602, 121, '_wp_old_date', '2021-10-22'),
(604, 113, '_wp_old_date', '2021-10-22'),
(605, 118, '_wp_old_date', '2021-10-22'),
(606, 117, '_wp_old_date', '2021-10-22'),
(607, 115, '_wp_old_date', '2021-10-22'),
(608, 116, '_wp_old_date', '2021-10-22'),
(609, 111, '_wp_old_date', '2021-10-22'),
(610, 114, '_wp_old_date', '2021-10-22'),
(611, 110, '_wp_old_date', '2021-10-22'),
(612, 125, '_wp_old_date', '2021-10-22'),
(615, 133, '_wp_attached_file', '2021/10/banner_home_v2.png'),
(616, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:900;s:4:\"file\";s:26:\"2021/10/banner_home_v2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner_home_v2-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"banner_home_v2-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner_home_v2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"banner_home_v2-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"banner_home_v2-1200x750.png\";s:5:\"width\";i:1200;s:6:\"height\";i:750;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(617, 134, '_wp_attached_file', '2021/10/banner_home_v2.svg'),
(618, 134, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:1440;s:6:\"height\";i:900;s:4:\"file\";s:27:\"/2021/10/banner_home_v2.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"banner_home_v2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(619, 135, '_wp_attached_file', '2021/10/bg_home_mobile.png'),
(620, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:667;s:4:\"file\";s:26:\"2021/10/bg_home_mobile.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bg_home_mobile-169x300.png\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bg_home_mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(621, 136, '_wp_attached_file', '2021/10/bg_home_mobile.svg'),
(622, 136, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:375;s:6:\"height\";i:667;s:4:\"file\";s:27:\"/2021/10/bg_home_mobile.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"bg_home_mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(624, 137, '_wp_attached_file', '2021/10/icon_cart.svg'),
(625, 137, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:22:\"/2021/10/icon_cart.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"icon_cart.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(626, 138, '_wp_attached_file', '2021/10/bg_home_ipad.svg'),
(627, 138, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:25:\"/2021/10/bg_home_ipad.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:23:\"twentytwenty-fullscreen\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"bg_home_ipad.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(628, 139, '_wp_attached_file', '2021/10/bg_home_ipad.png'),
(629, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:24:\"2021/10/bg_home_ipad.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bg_home_ipad-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bg_home_ipad-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(633, 140, 'inline_featured_image', '0'),
(634, 140, '_edit_last', '1'),
(635, 140, '_wp_page_template', 'default'),
(636, 140, '_edit_lock', '1635179448:1'),
(637, 142, '_menu_item_type', 'post_type'),
(638, 142, '_menu_item_menu_item_parent', '0'),
(639, 142, '_menu_item_object_id', '140'),
(640, 142, '_menu_item_object', 'page'),
(641, 142, '_menu_item_target', ''),
(642, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 142, '_menu_item_xfn', ''),
(644, 142, '_menu_item_url', ''),
(646, 109, '_wp_old_date', '2021-10-23'),
(647, 119, '_wp_old_date', '2021-10-23'),
(648, 120, '_wp_old_date', '2021-10-23'),
(649, 112, '_wp_old_date', '2021-10-23'),
(650, 121, '_wp_old_date', '2021-10-23'),
(651, 113, '_wp_old_date', '2021-10-23'),
(652, 118, '_wp_old_date', '2021-10-23'),
(653, 117, '_wp_old_date', '2021-10-23'),
(654, 115, '_wp_old_date', '2021-10-23'),
(655, 116, '_wp_old_date', '2021-10-23'),
(656, 111, '_wp_old_date', '2021-10-23'),
(657, 114, '_wp_old_date', '2021-10-23'),
(658, 110, '_wp_old_date', '2021-10-23'),
(659, 125, '_wp_old_date', '2021-10-23'),
(660, 93, '_wp_old_date', '2021-10-22'),
(661, 102, '_wp_old_date', '2021-10-22'),
(662, 103, '_wp_old_date', '2021-10-22'),
(663, 96, '_wp_old_date', '2021-10-22'),
(664, 104, '_wp_old_date', '2021-10-22'),
(665, 97, '_wp_old_date', '2021-10-22'),
(666, 101, '_wp_old_date', '2021-10-22'),
(667, 100, '_wp_old_date', '2021-10-22'),
(668, 99, '_wp_old_date', '2021-10-22'),
(669, 108, '_wp_old_date', '2021-10-22'),
(670, 95, '_wp_old_date', '2021-10-22'),
(671, 98, '_wp_old_date', '2021-10-22'),
(672, 94, '_wp_old_date', '2021-10-22'),
(676, 143, '_menu_item_type', 'post_type'),
(677, 143, '_menu_item_menu_item_parent', '0'),
(678, 143, '_menu_item_object_id', '140'),
(679, 143, '_menu_item_object', 'page'),
(680, 143, '_menu_item_target', ''),
(681, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(682, 143, '_menu_item_xfn', ''),
(683, 143, '_menu_item_url', ''),
(684, 139, '_edit_lock', '1635182320:1'),
(685, 138, '_edit_lock', '1635234743:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-12 16:32:09', '2021-10-12 16:32:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-10-12 16:32:09', '2021-10-12 16:32:09', '', 0, 'http://localhost/ravkoo_new/?p=1', 0, 'post', '', 1),
(5, 1, '2021-10-12 16:34:10', '2021-10-12 16:34:10', '', 'The New UMoMA Opens its Doors', '', 'inherit', 'open', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2021-10-12 16:34:10', '2021-10-12 16:34:10', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-10-12 16:34:10', '2021-10-12 16:34:10', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86ab13178e5ec44ed0e3403d81bc7f7e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ebc7ccbef8dd286577e5f45bcfaa14a0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/ravkoo_new/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/ravkoo_new/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:34:10\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-12 16:33:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86a11fe4-d29a-4349-9858-5d20c8caa38a', '', '', '2021-10-12 16:34:10', '2021-10-12 16:34:10', '', 0, 'http://localhost/ravkoo_new/?p=10', 0, 'customize_changeset', '', 0),
(24, 1, '2021-10-21 08:58:05', '2021-10-12 16:34:11', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 0, 'http://localhost/ravkoo_new/2021/10/12/facebook/', 3, 'nav_menu_item', '', 0),
(25, 1, '2021-10-21 08:58:05', '2021-10-12 16:34:11', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 0, 'http://localhost/ravkoo_new/2021/10/12/twitter/', 4, 'nav_menu_item', '', 0),
(30, 1, '2021-10-13 16:52:18', '2021-10-13 16:52:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-10-13 16:52:18', '2021-10-13 16:52:18', '', 0, 'http://localhost/ravkoo_new/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-10-13 16:52:18', '2021-10-13 16:52:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-10-13 16:52:18', '2021-10-13 16:52:18', '', 30, 'http://localhost/ravkoo_new/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 'icon_user', '', 'inherit', 'open', 'closed', '', 'icon_user', '', '', '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/icon_user.svg', 0, 'attachment', 'image/svg+xml', 0),
(33, 1, '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 'ravkoo_health_watch', '', 'inherit', 'open', 'closed', '', 'ravkoo_health_watch', '', '', '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/ravkoo_health_watch.svg', 0, 'attachment', 'image/svg+xml', 0),
(34, 1, '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 'ravkoo_mobile_app', '', 'inherit', 'open', 'closed', '', 'ravkoo_mobile_app', '', '', '2021-10-18 09:06:15', '2021-10-18 09:06:15', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/ravkoo_mobile_app.svg', 0, 'attachment', 'image/svg+xml', 0),
(36, 1, '2021-10-18 09:06:16', '2021-10-18 09:06:16', '', 'connect_kiosk', '', 'inherit', 'open', 'closed', '', 'connect_kiosk', '', '', '2021-10-18 09:06:16', '2021-10-18 09:06:16', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/connect_kiosk.svg', 0, 'attachment', 'image/svg+xml', 0),
(40, 1, '2021-10-19 15:12:52', '0000-00-00 00:00:00', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 14:53:30\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 14:53:30\"\n    },\n    \"twentytwenty::custom_logo\": {\n        \"value\": 41,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:12:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '93dab87b-826e-4075-8c12-9fd4468ed531', '', '', '2021-10-19 15:12:52', '2021-10-19 15:12:52', '', 0, 'http://localhost/ravkoo_new/?p=40', 0, 'customize_changeset', '', 0),
(43, 1, '2021-10-19 15:28:39', '2021-10-19 15:28:39', '', 'ravkoo logo', '', 'inherit', 'open', 'closed', '', 'ravkoo-logo', '', '', '2021-10-20 08:09:28', '2021-10-20 08:09:28', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/ravkoo-logo.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2021-10-19 15:28:39', '2021-10-19 15:28:39', '', 'ravkoo logo', '', 'inherit', 'open', 'closed', '', 'ravkoo-logo-2', '', '', '2021-10-19 15:28:39', '2021-10-19 15:28:39', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/ravkoo-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(45, 1, '2021-10-19 15:29:09', '2021-10-19 15:29:09', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:29:09\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:29:09\"\n    },\n    \"twentytwenty::custom_logo\": {\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:29:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89eabc99-ce99-42b0-b6e3-7432e042bc10', '', '', '2021-10-19 15:29:09', '2021-10-19 15:29:09', '', 0, 'http://localhost/ravkoo_new/2021/10/19/89eabc99-ce99-42b0-b6e3-7432e042bc10/', 0, 'customize_changeset', '', 0),
(46, 1, '2021-10-19 15:30:43', '2021-10-19 15:30:43', '{\n    \"twentytwenty::retina_logo\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:30:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f8a8157-92e5-4f29-84f0-1f9d3fae4955', '', '', '2021-10-19 15:30:43', '2021-10-19 15:30:43', '', 0, 'http://localhost/ravkoo_new/2021/10/19/9f8a8157-92e5-4f29-84f0-1f9d3fae4955/', 0, 'customize_changeset', '', 0),
(47, 1, '2021-10-19 15:36:29', '2021-10-19 15:36:29', '{\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:36:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '224d76eb-a480-4095-8d4b-78eeaad5e25b', '', '', '2021-10-19 15:36:29', '2021-10-19 15:36:29', '', 0, 'http://localhost/ravkoo_new/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2021-10-19 15:37:07', '2021-10-19 15:37:07', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:37:07\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:37:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8443f143-cdec-48eb-90e2-6d5de3f4db7b', '', '', '2021-10-19 15:37:07', '2021-10-19 15:37:07', '', 0, 'http://localhost/ravkoo_new/2021/10/19/8443f143-cdec-48eb-90e2-6d5de3f4db7b/', 0, 'customize_changeset', '', 0),
(49, 1, '2021-10-19 15:37:29', '2021-10-19 15:37:29', '{\n    \"twentytwenty::retina_logo\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-19 15:37:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82b67a44-71c1-43dc-9652-fe820524b072', '', '', '2021-10-19 15:37:29', '2021-10-19 15:37:29', '', 0, 'http://localhost/ravkoo_new/2021/10/19/82b67a44-71c1-43dc-9652-fe820524b072/', 0, 'customize_changeset', '', 0),
(51, 1, '2021-10-20 08:09:32', '2021-10-20 08:09:32', '{\n    \"twentytwenty::custom_logo\": {\n        \"value\": 43,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-20 08:09:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e98aee50-7d92-46ca-ab5d-cbf1c4f039cf', '', '', '2021-10-20 08:09:32', '2021-10-20 08:09:32', '', 0, 'http://localhost/ravkoo_new/2021/10/20/e98aee50-7d92-46ca-ab5d-cbf1c4f039cf/', 0, 'customize_changeset', '', 0),
(54, 1, '2021-10-20 13:00:08', '2021-10-20 13:00:08', '{\n    \"twentytwenty::show_author_bio\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-20 13:00:08\"\n    },\n    \"twentytwenty::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-20 13:00:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1f190c9-a5a8-4c66-ab9a-d03443647638', '', '', '2021-10-20 13:00:08', '2021-10-20 13:00:08', '', 0, 'http://localhost/ravkoo_new/2021/10/20/e1f190c9-a5a8-4c66-ab9a-d03443647638/', 0, 'customize_changeset', '', 0),
(55, 1, '2021-10-20 14:01:29', '2021-10-20 14:01:29', '', 'Patients', '', 'publish', 'closed', 'closed', '', 'patients', '', '', '2021-10-20 14:01:29', '2021-10-20 14:01:29', '', 0, 'http://localhost/ravkoo_new/?page_id=55', 0, 'page', '', 0),
(56, 1, '2021-10-20 14:01:29', '2021-10-20 14:01:29', '', 'Patients', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-10-20 14:01:29', '2021-10-20 14:01:29', '', 55, 'http://localhost/ravkoo_new/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-10-20 14:01:36', '2021-10-20 14:01:36', '', 'Providers', '', 'publish', 'closed', 'closed', '', 'providers', '', '', '2021-10-20 14:03:34', '2021-10-20 14:03:34', '', 0, 'http://localhost/ravkoo_new/?page_id=57', 0, 'page', '', 0),
(58, 1, '2021-10-20 14:01:36', '2021-10-20 14:01:36', '', 'Providers', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-10-20 14:01:36', '2021-10-20 14:01:36', '', 57, 'http://localhost/ravkoo_new/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-10-20 16:44:39', '2021-10-20 14:03:13', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2021-10-20 16:44:39', '2021-10-20 16:44:39', '', 0, 'http://localhost/ravkoo_new/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2021-10-20 16:44:39', '2021-10-20 14:03:47', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2021-10-20 16:44:39', '2021-10-20 16:44:39', '', 0, 'http://localhost/ravkoo_new/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2021-10-20 16:25:42', '2021-10-20 16:25:42', '', 'Pharmacy', '', 'publish', 'closed', 'closed', '', 'pharmacy', '', '', '2021-10-20 16:25:42', '2021-10-20 16:25:42', '', 0, 'http://localhost/ravkoo_new/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-10-20 16:25:42', '2021-10-20 16:25:42', '', 'Pharmacy', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-10-20 16:25:42', '2021-10-20 16:25:42', '', 61, 'http://localhost/ravkoo_new/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-10-21 08:53:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-21 08:53:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/ravkoo_new/?p=63', 0, 'post', '', 0),
(64, 1, '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 'Linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 0, 'http://localhost/ravkoo_new/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram-2', '', '', '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 0, 'http://localhost/ravkoo_new/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 'YouTube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2021-10-21 08:58:05', '2021-10-21 08:58:05', '', 0, 'http://localhost/ravkoo_new/?p=66', 5, 'nav_menu_item', '', 0),
(67, 1, '2021-10-21 09:00:51', '2021-10-21 09:00:51', '{\n    \"twentytwenty-child-theme::nav_menu_locations[social]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-21 09:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e7c1640-a342-41b0-a38d-6c81e17a3901', '', '', '2021-10-21 09:00:51', '2021-10-21 09:00:51', '', 0, 'http://localhost/ravkoo_new/2021/10/21/5e7c1640-a342-41b0-a38d-6c81e17a3901/', 0, 'customize_changeset', '', 0),
(70, 1, '2021-10-21 11:49:01', '2021-10-21 11:49:01', '', 'GooglePlay', '', 'inherit', 'open', 'closed', '', 'googleplay', '', '', '2021-10-21 11:52:00', '2021-10-21 11:52:00', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/GooglePlay.svg', 0, 'attachment', 'image/svg+xml', 0),
(71, 1, '2021-10-21 11:49:01', '2021-10-21 11:49:01', '', 'Appstore', '', 'inherit', 'open', 'closed', '', 'appstore', '', '', '2021-10-21 11:49:01', '2021-10-21 11:49:01', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/Appstore.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2021-10-21 11:49:02', '2021-10-21 11:49:02', '', 'Appstore', '', 'inherit', 'open', 'closed', '', 'appstore-2', '', '', '2021-10-21 11:50:56', '2021-10-21 11:50:56', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/Appstore.svg', 0, 'attachment', 'image/svg+xml', 0),
(73, 1, '2021-10-21 11:49:02', '2021-10-21 11:49:02', '', 'GooglePlay', '', 'inherit', 'open', 'closed', '', 'googleplay-2', '', '', '2021-10-21 11:49:02', '2021-10-21 11:49:02', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/GooglePlay.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2021-10-21 11:55:52', '2021-10-21 11:55:52', '', 'ri-heart-add-fill', '', 'inherit', 'open', 'closed', '', 'ri-heart-add-fill', '', '', '2021-10-21 11:56:00', '2021-10-21 11:56:00', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/ri-heart-add-fill.svg', 0, 'attachment', 'image/svg+xml', 0),
(75, 1, '2021-10-22 12:46:48', '2021-10-22 12:46:48', '', 'Ravkoo Health App', '', 'publish', 'closed', 'closed', '', 'ravkoo-health-app', '', '', '2021-10-22 12:46:48', '2021-10-22 12:46:48', '', 0, 'http://localhost/ravkoo_new/?page_id=75', 0, 'page', '', 0),
(76, 1, '2021-10-22 12:46:48', '2021-10-22 12:46:48', '', 'Ravkoo Health App', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2021-10-22 12:46:48', '2021-10-22 12:46:48', '', 75, 'http://localhost/ravkoo_new/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-10-22 12:46:59', '2021-10-22 12:46:59', '', 'Ravkoo Health Watch', '', 'publish', 'closed', 'closed', '', 'ravkoo-health-watch', '', '', '2021-10-22 12:46:59', '2021-10-22 12:46:59', '', 0, 'http://localhost/ravkoo_new/?page_id=77', 0, 'page', '', 0),
(78, 1, '2021-10-22 12:46:59', '2021-10-22 12:46:59', '', 'Ravkoo Health Watch', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2021-10-22 12:46:59', '2021-10-22 12:46:59', '', 77, 'http://localhost/ravkoo_new/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-10-22 12:47:07', '2021-10-22 12:47:07', '', 'Connect Kiosk', '', 'publish', 'closed', 'closed', '', 'connect-kiosk', '', '', '2021-10-22 12:47:07', '2021-10-22 12:47:07', '', 0, 'http://localhost/ravkoo_new/?page_id=79', 0, 'page', '', 0),
(80, 1, '2021-10-22 12:47:07', '2021-10-22 12:47:07', '', 'Connect Kiosk', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2021-10-22 12:47:07', '2021-10-22 12:47:07', '', 79, 'http://localhost/ravkoo_new/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-10-22 12:47:14', '2021-10-22 12:47:14', '', 'Rx Discount Card', '', 'publish', 'closed', 'closed', '', 'rx-discount-card', '', '', '2021-10-22 12:47:14', '2021-10-22 12:47:14', '', 0, 'http://localhost/ravkoo_new/?page_id=81', 0, 'page', '', 0),
(82, 1, '2021-10-22 12:47:14', '2021-10-22 12:47:14', '', 'Rx Discount Card', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2021-10-22 12:47:14', '2021-10-22 12:47:14', '', 81, 'http://localhost/ravkoo_new/?p=82', 0, 'revision', '', 0),
(85, 1, '2021-10-22 12:47:28', '2021-10-22 12:47:28', '', 'Join us', '', 'publish', 'closed', 'closed', '', 'join-us', '', '', '2021-10-22 12:47:28', '2021-10-22 12:47:28', '', 0, 'http://localhost/ravkoo_new/?page_id=85', 0, 'page', '', 0),
(86, 1, '2021-10-22 12:47:28', '2021-10-22 12:47:28', '', 'Join us', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2021-10-22 12:47:28', '2021-10-22 12:47:28', '', 85, 'http://localhost/ravkoo_new/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-10-22 12:47:46', '2021-10-22 12:47:46', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2021-10-22 12:47:46', '2021-10-22 12:47:46', '', 0, 'http://localhost/ravkoo_new/?page_id=87', 0, 'page', '', 0),
(88, 1, '2021-10-22 12:47:46', '2021-10-22 12:47:46', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2021-10-22 12:47:46', '2021-10-22 12:47:46', '', 87, 'http://localhost/ravkoo_new/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-10-22 12:47:51', '2021-10-22 12:47:51', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2021-10-22 12:47:51', '2021-10-22 12:47:51', '', 0, 'http://localhost/ravkoo_new/?page_id=89', 0, 'page', '', 0),
(90, 1, '2021-10-22 12:47:51', '2021-10-22 12:47:51', '', 'News', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-10-22 12:47:51', '2021-10-22 12:47:51', '', 89, 'http://localhost/ravkoo_new/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-10-22 12:47:55', '2021-10-22 12:47:55', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-10-22 12:47:55', '2021-10-22 12:47:55', '', 0, 'http://localhost/ravkoo_new/?page_id=91', 0, 'page', '', 0),
(92, 1, '2021-10-22 12:47:55', '2021-10-22 12:47:55', '', 'About', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2021-10-22 12:47:55', '2021-10-22 12:47:55', '', 91, 'http://localhost/ravkoo_new/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=94', 14, 'nav_menu_item', '', 0),
(95, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=95', 12, 'nav_menu_item', '', 0),
(96, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=97', 7, 'nav_menu_item', '', 0),
(98, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=98', 13, 'nav_menu_item', '', 0),
(99, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=99', 10, 'nav_menu_item', '', 0),
(100, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=100', 9, 'nav_menu_item', '', 0),
(101, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=101', 8, 'nav_menu_item', '', 0),
(102, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=102', 2, 'nav_menu_item', '', 0),
(103, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2021-10-25 16:36:41', '2021-10-22 12:49:58', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=104', 5, 'nav_menu_item', '', 0),
(106, 1, '2021-10-22 12:50:14', '2021-10-22 12:50:14', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2021-10-22 12:50:14', '2021-10-22 12:50:14', '', 0, 'http://localhost/ravkoo_new/?page_id=106', 0, 'page', '', 0),
(107, 1, '2021-10-22 12:50:14', '2021-10-22 12:50:14', '', 'Partners', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2021-10-22 12:50:14', '2021-10-22 12:50:14', '', 106, 'http://localhost/ravkoo_new/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-10-25 16:36:41', '2021-10-22 12:50:32', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=108', 11, 'nav_menu_item', '', 0),
(109, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=110', 14, 'nav_menu_item', '', 0),
(111, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=111', 12, 'nav_menu_item', '', 0),
(112, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=113', 7, 'nav_menu_item', '', 0),
(114, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=114', 13, 'nav_menu_item', '', 0),
(115, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=115', 10, 'nav_menu_item', '', 0),
(116, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=116', 11, 'nav_menu_item', '', 0),
(117, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=117', 9, 'nav_menu_item', '', 0),
(118, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=118', 8, 'nav_menu_item', '', 0),
(119, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=120', 3, 'nav_menu_item', '', 0),
(121, 1, '2021-10-25 16:33:48', '2021-10-22 13:17:17', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=121', 5, 'nav_menu_item', '', 0),
(123, 1, '2021-10-22 13:21:49', '2021-10-22 13:21:49', '', 'Location', '', 'publish', 'closed', 'closed', '', 'location', '', '', '2021-10-22 13:21:49', '2021-10-22 13:21:49', '', 0, 'http://localhost/ravkoo_new/?page_id=123', 0, 'page', '', 0),
(124, 1, '2021-10-22 13:21:49', '2021-10-22 13:21:49', '', 'Location', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2021-10-22 13:21:49', '2021-10-22 13:21:49', '', 123, 'http://localhost/ravkoo_new/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-10-25 16:33:49', '2021-10-22 13:22:25', '', 'Where we deliver', '', 'publish', 'closed', 'closed', '', 'where-we-deliver', '', '', '2021-10-25 16:33:49', '2021-10-25 16:33:49', '', 0, 'http://localhost/ravkoo_new/?p=125', 15, 'nav_menu_item', '', 0),
(126, 1, '2021-10-22 13:28:39', '2021-10-22 13:28:39', '{\n    \"twentytwenty-child-theme::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-22 13:28:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aca8a677-79d4-4371-a98a-472468dfb449', '', '', '2021-10-22 13:28:39', '2021-10-22 13:28:39', '', 0, 'http://localhost/ravkoo_new/2021/10/22/aca8a677-79d4-4371-a98a-472468dfb449/', 0, 'customize_changeset', '', 0),
(127, 1, '2021-10-22 13:28:51', '2021-10-22 13:28:51', '{\n    \"twentytwenty-child-theme::nav_menu_locations[social]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-22 13:28:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fecb76a0-580f-4446-acc9-1ae22c3f7f1c', '', '', '2021-10-22 13:28:51', '2021-10-22 13:28:51', '', 0, 'http://localhost/ravkoo_new/2021/10/22/fecb76a0-580f-4446-acc9-1ae22c3f7f1c/', 0, 'customize_changeset', '', 0),
(128, 1, '2021-10-22 16:17:26', '2021-10-22 16:17:26', '', 'icon_minus', '', 'inherit', 'open', 'closed', '', 'icon_minus', '', '', '2021-10-22 16:18:52', '2021-10-22 16:18:52', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/icon_minus.svg', 0, 'attachment', 'image/svg+xml', 0),
(129, 1, '2021-10-22 16:17:27', '2021-10-22 16:17:27', '', 'icon-plus', '', 'inherit', 'open', 'closed', '', 'icon-plus', '', '', '2021-10-22 16:25:37', '2021-10-22 16:25:37', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/icon-plus.svg', 0, 'attachment', 'image/svg+xml', 0),
(130, 1, '2021-10-22 18:10:25', '2021-10-22 18:10:25', '', 'bg_menu_bar', '', 'inherit', 'open', 'closed', '', 'bg_menu_bar', '', '', '2021-10-22 18:10:42', '2021-10-22 18:10:42', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/bg_menu_bar.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2021-10-22 18:49:30', '2021-10-22 18:49:30', '', 'icon_location_pin', '', 'inherit', 'open', 'closed', '', 'icon_location_pin', '', '', '2021-10-22 18:49:36', '2021-10-22 18:49:36', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/icon_location_pin.svg', 0, 'attachment', 'image/svg+xml', 0),
(133, 1, '2021-10-25 14:31:39', '2021-10-25 14:31:39', '', 'banner_home_v2', '', 'inherit', 'open', 'closed', '', 'banner_home_v2', '', '', '2021-10-25 14:31:39', '2021-10-25 14:31:39', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/banner_home_v2.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2021-10-25 14:31:40', '2021-10-25 14:31:40', '', 'banner_home_v2', '', 'inherit', 'open', 'closed', '', 'banner_home_v2-2', '', '', '2021-10-25 14:31:40', '2021-10-25 14:31:40', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/banner_home_v2.svg', 0, 'attachment', 'image/svg+xml', 0),
(135, 1, '2021-10-25 14:32:03', '2021-10-25 14:32:03', '', 'bg_home_mobile', '', 'inherit', 'open', 'closed', '', 'bg_home_mobile', '', '', '2021-10-25 14:32:03', '2021-10-25 14:32:03', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/bg_home_mobile.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2021-10-25 14:32:07', '2021-10-25 14:32:07', '', 'bg_home_mobile', '', 'inherit', 'open', 'closed', '', 'bg_home_mobile-2', '', '', '2021-10-25 14:32:07', '2021-10-25 14:32:07', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/bg_home_mobile.svg', 0, 'attachment', 'image/svg+xml', 0),
(137, 1, '2021-10-25 14:44:42', '2021-10-25 14:44:42', '', 'icon_cart', '', 'inherit', 'open', 'closed', '', 'icon_cart', '', '', '2021-10-25 14:44:42', '2021-10-25 14:44:42', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/icon_cart.svg', 0, 'attachment', 'image/svg+xml', 0),
(138, 1, '2021-10-25 14:47:48', '2021-10-25 14:47:48', '', 'bg_home_ipad', '', 'inherit', 'open', 'closed', '', 'bg_home_ipad', '', '', '2021-10-25 14:47:48', '2021-10-25 14:47:48', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/bg_home_ipad.svg', 0, 'attachment', 'image/svg+xml', 0),
(139, 1, '2021-10-25 14:47:49', '2021-10-25 14:47:49', '', 'bg_home_ipad', '', 'inherit', 'open', 'closed', '', 'bg_home_ipad-2', '', '', '2021-10-25 14:47:49', '2021-10-25 14:47:49', '', 0, 'http://localhost/ravkoo_new/wp-content/uploads/2021/10/bg_home_ipad.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2021-10-25 16:33:02', '2021-10-25 16:33:02', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-10-25 16:33:02', '2021-10-25 16:33:02', '', 0, 'http://localhost/ravkoo_new/?page_id=140', 0, 'page', '', 0),
(141, 1, '2021-10-25 16:33:02', '2021-10-25 16:33:02', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2021-10-25 16:33:02', '2021-10-25 16:33:02', '', 140, 'http://localhost/ravkoo_new/?p=141', 0, 'revision', '', 0),
(142, 1, '2021-10-25 16:33:48', '2021-10-25 16:33:48', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2021-10-25 16:33:48', '2021-10-25 16:33:48', '', 0, 'http://localhost/ravkoo_new/?p=142', 6, 'nav_menu_item', '', 0),
(143, 1, '2021-10-25 16:36:41', '2021-10-25 16:36:41', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2021-10-25 16:36:41', '2021-10-25 16:36:41', '', 0, 'http://localhost/ravkoo_new/?p=143', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0),
(3, 'Mobile Menu', 'mobile-menu', 0),
(4, 'Social Links Menu', 'social-links-menu', 0),
(5, 'Footer-1', 'footer-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 4, 0),
(25, 4, 0),
(59, 5, 0),
(60, 5, 0),
(64, 4, 0),
(65, 4, 0),
(66, 4, 0),
(93, 2, 0),
(94, 2, 0),
(95, 2, 0),
(96, 2, 0),
(97, 2, 0),
(98, 2, 0),
(99, 2, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(103, 2, 0),
(104, 2, 0),
(108, 2, 0),
(109, 3, 0),
(110, 3, 0),
(111, 3, 0),
(112, 3, 0),
(113, 3, 0),
(114, 3, 0),
(115, 3, 0),
(116, 3, 0),
(117, 3, 0),
(118, 3, 0),
(119, 3, 0),
(120, 3, 0),
(121, 3, 0),
(125, 3, 0),
(142, 3, 0),
(143, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 14),
(3, 3, 'nav_menu', '', 0, 15),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ravkoo_new_admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:11:{s:64:\"e4faffa5941132287c08af04d7ddb440bdc213b31de28c47f3d7253e8606912a\";a:4:{s:10:\"expiration\";i:1635265940;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1634056340;}s:64:\"5b7355655ce8838ab7ed8e4e375894b3f6cfd87b4a7ef71dd85e99ba009da7c2\";a:4:{s:10:\"expiration\";i:1635342121;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635169321;}s:64:\"b71a9d52d46da5ff10909b8ca6809a95e0fdbb02d97600efbe7244f06b01955e\";a:4:{s:10:\"expiration\";i:1635355028;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635182228;}s:64:\"3ba2bd8d7a94ac1ac81db7ea0aaf38d9ddcf3553581658be8e9c87e77a3a6634\";a:4:{s:10:\"expiration\";i:1635407682;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635234882;}s:64:\"6c71dfa03483049bc72da954f269900a423f47eac7af14c385926551cd554fcc\";a:4:{s:10:\"expiration\";i:1635428953;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256153;}s:64:\"8d9ab10938ca32bf41c67a614f70268c7a1ef256e3b75ec5010ba78bf3a74998\";a:4:{s:10:\"expiration\";i:1635429024;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256224;}s:64:\"bbbbe4b7fe4b42b112640afc3dc383ae7a75dc0c9eadb38e0b79ad0b4d251497\";a:4:{s:10:\"expiration\";i:1635429048;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256248;}s:64:\"a39c48e6b0a6adb25368b374c8b1dd394d69d658e7fa0f3b98db9f932fc1a0ee\";a:4:{s:10:\"expiration\";i:1635429164;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256364;}s:64:\"f52b5ed9bc0d298f76761d58ce567fb9f4c43c6ce2159f3359c4b5ed73c3de9e\";a:4:{s:10:\"expiration\";i:1635429172;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256372;}s:64:\"a886226e1bac04abd240d72cfae3bf848e07a726647a2f3d76f603a751a50445\";a:4:{s:10:\"expiration\";i:1635429282;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635256482;}s:64:\"411fabb59579001c325f2210920a3b64860707a5ef3d5a4b64f4fb76ad174326\";a:4:{s:10:\"expiration\";i:1635430856;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635258056;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '63'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&widgets_access=off'),
(21, 1, 'wp_user-settings-time', '1634738980'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(25, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(26, 1, 'wp_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ravkoo_new_admin', '$P$B6LYVSUG3j/j8dUy.aoU4inc3.y1hz1', 'ravkoo_new_admin', 'html@bexcodeservices.com', 'http://localhost/ravkoo_new', '2021-10-12 16:32:09', '', 0, 'ravkoo_new_admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
