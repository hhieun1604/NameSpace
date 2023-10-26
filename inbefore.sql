-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2022 at 06:18 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inbefore`
--

-- --------------------------------------------------------

--
-- Table structure for table `in_attempts`
--

CREATE TABLE `in_attempts` (
  `attempt_id` int UNSIGNED NOT NULL,
  `attempt_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempt_ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `attempt_time` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_attempts`
--

INSERT INTO `in_attempts` (`attempt_id`, `attempt_type`, `attempt_ip`, `user_id`, `attempt_time`) VALUES
(1, 'SIGN_IN', '127.0.0.1', 0, 1670825298);

-- --------------------------------------------------------

--
-- Table structure for table `in_categories`
--

CREATE TABLE `in_categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The category name',
  `category_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unique slug for category',
  `category_icon` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_order` int UNSIGNED NOT NULL DEFAULT '100' COMMENT 'Category order, this will be used for homepage listing',
  `category_feat_at_home` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'If enabled latest posts from this category will be shown on homepage',
  `created_at` bigint NOT NULL DEFAULT '0',
  `updated_at` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_categories`
--

INSERT INTO `in_categories` (`category_id`, `category_name`, `category_slug`, `category_icon`, `category_order`, `category_feat_at_home`, `created_at`, `updated_at`) VALUES
(1, 'Chính trị', 'politics', '/site/uploads/2019/Oct/04/iconmonstr-building-35-48.png', 2, 1, 1567672266, 1670821435),
(2, 'Du lịch', 'local', '/site/uploads/2019/Oct/04/iconmonstr-map-8-48.png', 3, 1, 1567672541, 1670820371),
(3, 'Thế giới', 'international', '/site/uploads/2019/Oct/04/iconmonstr-delivery-13-48.png', 1, 1, 1567672574, 1670820021),
(4, 'Kinh doanh', 'finance', '/site/uploads/2019/Oct/04/iconmonstr-chart-6-48.png', 4, 1, 1567672625, 1670820353),
(5, 'Thể thao', 'sports', '/site/uploads/2019/Oct/04/iconmonstr-soccer-1-32.png', 6, 1, 1567672636, 1670820034),
(6, 'Giải trí', 'entertainment', '/site/uploads/2019/Oct/04/iconmonstr-party-15-32.png', 7, 1, 1567672654, 1670820198),
(7, 'Đời sống', 'lifestyle', '/site/uploads/2019/Oct/04/iconmonstr-glasses-13-32.png', 8, 1, 1567673074, 1670820283),
(8, 'Công nghệ', 'technology', '/site/uploads/2019/Oct/04/iconmonstr-battery-10-32.png', 9, 1, 1567673155, 1670820217),
(9, 'Khoa học', 'science', '/site/uploads/2019/Oct/04/iconmonstr-school-18-32.png', 11, 1, 1567673167, 1670820331),
(10, 'Sức khỏe', 'health', '/site/uploads/2019/Oct/04/iconmonstr-medical-6-32.png', 12, 1, 1567673175, 1670820387),
(11, 'Literature', 'literature', '/site/uploads/2019/Oct/04/iconmonstr-book-17-32.png', 10, 1, 1567673277, 1570188018);

-- --------------------------------------------------------

--
-- Table structure for table `in_content`
--

CREATE TABLE `in_content` (
  `content_id` int UNSIGNED NOT NULL,
  `content_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_author` int NOT NULL,
  `content_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `content_size` bigint DEFAULT '0',
  `content_mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` bigint NOT NULL DEFAULT '0',
  `updated_at` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_content`
--

INSERT INTO `in_content` (`content_id`, `content_title`, `content_slug`, `content_author`, `content_body`, `content_path`, `content_type`, `content_size`, `content_mimetype`, `content_meta`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', 1, '<p>There once was a story about a man who could turn invisible. I thought it was only a story... until it happened to me. Ok, so here\'s how it works: there\'s this stuff called <a href=\"#\">Quicksilver that can</a> bend light. Some scientist made it into a synthetic gland, and that\'s where I came in. See, I was facing life in prison and they were looking for a human experiment. So, we made a deal. They put the gland in my brain; I walk free. The operation was a success... but that\'s where everything started to go wrong.</p>\r\n\r\n<p>Marshall, Will, and Holly on a routine expedition, met the greatest earthquake ever known. High on the rapids, it struck their tiny raft! And plunged them down a thousand feet below... to the Land of the Lost! Lost! <a href=\"#\">Lost! Lost! Lost!</a></p>\r\n\r\n<p>My name is Rhoda Morgenstern. I was born in the Bronx, New York in December of 1941. I\'ve always felt responsible for World War II. The first thing I remember liking that liked me back was food. I had a bad puberty; it lasted seventeen years. I\'m a high school graduate. I went to art school. My entrance exam was on a book of matches. I decided to move out of the house when I was twenty-four. My mother still refers to this as the time I ran away from home. Eventually, I ran to Minneapolis, where it\'s cold and I figured I\'d keep better. Now I\'m back in Manhattan. New York, this is <a href=\"#\">your last chance!</a></p>\r\n\r\n<p>There\'s a holdout in the Bronx, Brooklyn\'s broken out in fights. There\'s a traffic jam in <a href=\"#\">Harlem that\'s backed</a> up to Jackson Heights. There\'s a Scout troop short a child, Khrushchev\'s due at Idelwyld... Car 54, where are you?</p>\r\n\r\n<p>Moon over Parma, bring <a href=\"#\">my love to</a> me tonight. Guide her to Cleveland, underneath your silvery light. We\'re going bowlin\' so don\'t lose her in Solon. Moon over Parma, tonight!</p>\r\n\r\n', '', 'page', 0, NULL, NULL, 1545883269, 1556338147),
(2, 'Contact Us', 'contact-us', 1, '<p>Yes, this is a generic contact us page, it may contain email links,&nbsp; or a slug based <strong>pages/contact-us.php</strong> template, idk. anything is possible</p>', '', 'page', 0, NULL, NULL, 1551429694, 1555918695),
(3, 'Terms & Conditions', 'terms', 1, '<p>Roger Ramjet and his Eagles, fighting for our freedom. Fly through and in outer space, not to <a href=\"#\">join him but</a> to beat him! When Ramjet takes a Proton pill, the crooks begin to worry. They cant escape their awful fate from Protons mighty fury! Come and join us all you kids for lots of fun and laughter, as Roger Ramjet and his men get all the crooks they\'re after! Roger Ramjet he\'s our man, hero of our nation. For his adventure just be sure and stay tuned to this station!</p>\r\n\r\n<p>What walks down stairs, alone or in pairs, and makes a slinkity sound? A spring, a spring, a marvelous thing, everyone knows it\'s Slinky. It\'s Slinky, it\'s Slinky, for fun it\'s a wonderful toy. It\'s Slinky, it\'s Slinky, it\'s fun for a girl or a boy. It\'s fun for a <a href=\"#\">girl or boy!</a></p>\r\n\r\n<p>Look for the Union Label when you are <a href=\"#\">buying a coat,</a> dress, or blouse. Remember, somewhere our union\'s sewing, our wages going to feed the kids, and run the house. We work hard, but who\'s complaining. Thanks to the I.L.G. we\'re paying our way. So always look for the Union Label. It means we\'re able to make it in the U.S.A.!</p>\r\n\r\n<p>My kinda people, my kinda place. There\'s something special about this place. Got no reason to stray too far, \'cause it\'s all right here in my own backyard! This is a Burger King town, it\'s made just for me! This is a Burger King town, we know how burgers should be! Right up the road, left at the sign. My way, your way, one at a time, hot off <a href=\"#\">the fire with</a> anything on it! And don\'t it feel good when it\'s just how you want it? This is a Burger King town, it\'s made just for me! This is a Burger King town, we know how burgers should be!</p>\r\n\r\n<p>I bet we been together for a million years, And I bet we\'ll be together for a million more. Oh, It\'s like I started breathing on the night we kissed, and I can\'t remember what I ever did before. What would we do baby, without us? What would we do baby, without us? And there ain\'t no nothing we can\'t love each other through. What would we do baby, without us? Sha <a href=\"#\">la la la.</a></p>\r\n\r\n', '', 'page', 0, NULL, NULL, 1556337990, 1556337990),
(4, 'iconmonstr-delivery-13-48', NULL, 1, '', '2019/Oct/04/iconmonstr-delivery-13-48.png', 'attachment', 16867, 'image/png', NULL, 1570187932, 1570187932),
(5, 'iconmonstr-building-35-48', NULL, 1, '', '2019/Oct/04/iconmonstr-building-35-48.png', 'attachment', 15428, 'image/png', NULL, 1570187950, 1570187950),
(6, 'iconmonstr-map-8-48', NULL, 1, '', '2019/Oct/04/iconmonstr-map-8-48.png', 'attachment', 16446, 'image/png', NULL, 1570187961, 1570187961),
(7, 'iconmonstr-chart-6-48', NULL, 1, '', '2019/Oct/04/iconmonstr-chart-6-48.png', 'attachment', 15619, 'image/png', NULL, 1570187970, 1570187970),
(8, 'iconmonstr-soccer-1-32', NULL, 1, '', '2019/Oct/04/iconmonstr-soccer-1-32.png', 'attachment', 1546, 'image/png', NULL, 1570187979, 1570187979),
(9, 'iconmonstr-party-15-32', NULL, 1, '', '2019/Oct/04/iconmonstr-party-15-32.png', 'attachment', 1126, 'image/png', NULL, 1570187989, 1570187989),
(10, 'iconmonstr-glasses-13-32', NULL, 1, '', '2019/Oct/04/iconmonstr-glasses-13-32.png', 'attachment', 837, 'image/png', NULL, 1570188003, 1570188003),
(11, 'iconmonstr-battery-10-32', NULL, 1, '', '2019/Oct/04/iconmonstr-battery-10-32.png', 'attachment', 412, 'image/png', NULL, 1570188011, 1570188011),
(12, 'iconmonstr-book-17-32', NULL, 1, '', '2019/Oct/04/iconmonstr-book-17-32.png', 'attachment', 671, 'image/png', NULL, 1570188017, 1570188017),
(13, 'iconmonstr-school-18-32', NULL, 1, '', '2019/Oct/04/iconmonstr-school-18-32.png', 'attachment', 1930, 'image/png', NULL, 1570188026, 1570188026),
(14, 'iconmonstr-medical-6-32', NULL, 1, '', '2019/Oct/04/iconmonstr-medical-6-32.png', 'attachment', 1012, 'image/png', NULL, 1570188034, 1570188034),
(15, 'inbefore-logo', NULL, 1, '', '2019/Oct/05/inbefore-logo.png', 'attachment', 22537, 'image/png', NULL, 1570261209, 1570261209),
(16, 'news', NULL, 1, '', '2022/Dec/12/news.png', 'attachment', 118225, 'image/png', NULL, 1670820752, 1670820752),
(17, 'news (2)', NULL, 1, '', '2022/Dec/12/news (2).png', 'attachment', 118225, 'image/png', NULL, 1670821626, 1670821626),
(18, 'logo-news', NULL, 1, '', '2022/Dec/12/logo-news.png', 'attachment', 13182, 'image/png', NULL, 1670821969, 1670821969),
(19, 'logo', NULL, 1, '', '2022/Dec/12/logo.png', 'attachment', 3250, 'image/png', NULL, 1670821987, 1670821987),
(20, 'logo-news (2)', NULL, 1, '', '2022/Dec/12/logo-news (2).png', 'attachment', 11210, 'image/png', NULL, 1670822071, 1670822071),
(21, 'logo-news (3)', NULL, 1, '', '2022/Dec/12/logo-news (3).png', 'attachment', 15348, 'image/png', NULL, 1670822103, 1670822103),
(22, 'logo-news (4)', NULL, 1, '', '2022/Dec/12/logo-news (4).png', 'attachment', 17231, 'image/png', NULL, 1670822152, 1670822152),
(23, 'thanhnien', NULL, 1, '', '2022/Dec/12/thanhnien.png', 'attachment', 3856, 'image/png', NULL, 1670823092, 1670823092),
(24, 'thanhnien (2)', NULL, 1, '', '2022/Dec/12/thanhnien (2).png', 'attachment', 3856, 'image/png', NULL, 1670823116, 1670823116),
(25, 'nguoi-lao-dong', NULL, 1, '', '2022/Dec/12/nguoi-lao-dong.png', 'attachment', 2038, 'image/png', NULL, 1670823201, 1670823201),
(26, 'genk', NULL, 1, '', '2022/Dec/12/genk.png', 'attachment', 4550, 'image/png', NULL, 1670823411, 1670823411);

-- --------------------------------------------------------

--
-- Table structure for table `in_engines`
--

CREATE TABLE `in_engines` (
  `engine_id` int UNSIGNED NOT NULL,
  `engine_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A short name for the engine',
  `engine_cse_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Google CSE ID for the engine.',
  `engine_is_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Choose if the result type is image or not',
  `engine_show_thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Select if thumbnails will be shown when if available (web result only)',
  `created_at` bigint NOT NULL DEFAULT '0',
  `updated_at` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_engines`
--

INSERT INTO `in_engines` (`engine_id`, `engine_name`, `engine_cse_id`, `engine_is_image`, `engine_show_thumb`, `created_at`, `updated_at`) VALUES
(1, 'Web', 'partner-pub-9134522736300956:4140494421', 0, 0, 1567321259, 1567321259),
(3, 'Videos', '017868052422402550355:dtkzl6yzv74', 0, 1, 1567321259, 1567321259),
(4, 'News', 'partner-pub-9134522736300956:2425971629', 0, 1, 1567321259, 1567321259),
(5, 'Torrents', '017868052422402550355:5xcraecopso', 0, 0, 1567321259, 1567321259),
(6, 'Subtitles', '017868052422402550355:1tcfk8s8xi4', 0, 0, 1567321259, 1567321259);

-- --------------------------------------------------------

--
-- Table structure for table `in_feeds`
--

CREATE TABLE `in_feeds` (
  `feed_id` int UNSIGNED NOT NULL,
  `feed_category_id` int NOT NULL COMMENT '@skip',
  `feed_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Feed name, for reference purpose.',
  `feed_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL to the feed.',
  `feed_logo_url` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feed_priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Feed priority, lower numbers will be executed early',
  `feed_max_items` int NOT NULL DEFAULT '0' COMMENT 'Maximum number of items to fetch at each refresh, set this to 0 to fetch all the items.',
  `feed_fulltext_selector` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'HTML selector for fulltext ',
  `feed_fetch_fulltext` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'If enabled we will attempt to fetch full text otherwise just the excerpt.',
  `feed_auto_update` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Choose if the feed would be auto updated via cron job',
  `feed_ignore_without_image` tinyint(1) NOT NULL DEFAULT '1',
  `feed_last_refreshed` int NOT NULL DEFAULT '0' COMMENT '@skip',
  `created_at` bigint NOT NULL DEFAULT '0',
  `updated_at` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_feeds`
--

INSERT INTO `in_feeds` (`feed_id`, `feed_category_id`, `feed_name`, `feed_url`, `feed_logo_url`, `feed_priority`, `feed_max_items`, `feed_fulltext_selector`, `feed_fetch_fulltext`, `feed_auto_update`, `feed_ignore_without_image`, `feed_last_refreshed`, `created_at`, `updated_at`) VALUES
(1, 5, 'vnexpress', 'https://vnexpress.net/rss/the-thao.rss', 'https://s.vnecdn.net/vnexpress/i/v20/logos/vne_logo_rss.png', 0, 5, '', 0, 1, 1, 0, 1670819726, 1670822217),
(2, 8, 'Công nghệ', 'https://genk.vn/rss/home.rss', '/site/uploads/2022/Dec/12/genk.png', 0, 5, '', 0, 0, 1, 0, 1670819821, 1670823413),
(3, 7, 'cafebiz', 'https://cafebiz.vn/rss/song.rss', 'https://cafebiz.cafebizcdn.vn/web_images/cafebiz_logo_16052022.svg', 0, 5, '', 0, 1, 0, 0, 1670822381, 1670822384),
(4, 6, 'Giải trí', 'https://vnexpress.net/rss/giai-tri.rss', 'https://s.vnecdn.net/vnexpress/i/v20/logos/vne_logo_rss.png', 0, 5, '', 0, 1, 0, 0, 1670822499, 1670822501),
(5, 10, 'Sức khỏe', 'https://nld.com.vn/suc-khoe.rss', '/site/uploads/2022/Dec/12/nguoi-lao-dong.png', 0, 5, '', 0, 1, 0, 1670823211, 1670822673, 1670823211),
(6, 3, 'Thế giới', 'https://thanhnien.vn/rss/the-gioi-66.rss', '/site/uploads/2022/Dec/12/thanhnien (2).png', 0, 5, '', 0, 1, 0, 0, 1670822762, 1670823118),
(7, 1, 'Chính trị', 'https://thanhnien.vn/rss/thoi-su/chinh-tri-227.rss', '/site/uploads/2022/Dec/12/thanhnien.png', 0, 5, '', 0, 1, 0, 1670822814, 1670822807, 1670823093);

-- --------------------------------------------------------

--
-- Table structure for table `in_options`
--

CREATE TABLE `in_options` (
  `option_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `option_autoload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_options`
--

INSERT INTO `in_options` (`option_name`, `option_value`, `option_autoload`) VALUES
('active_plugins', '[\"instant-answer\"]', 1),
('active_theme', 'default', 1),
('ad_unit_1', '<div class=\"dummy-ad\" style=\"min-height:200px\">\r\n<h5>RIGHT SIDEBAR TOP AD</h5>\r\n</div>', 0),
('ad_unit_2', '<div class=\"dummy-ad mt-3 mx-0\" style=\"min-height:300px;max-width:160px\">\r\n<h5>LEFT SIDEBAR AD</h5>\r\n<p>Hidden in mobile, Best for skyscrapers.</p>\r\n</div>', 0),
('ad_unit_3', '<div class=\"dummy-ad\" style=\"min-height:60px;max-width:468px;\">\r\n<h5>468x60 AD AFTER 4 POSTS</h5>\r\n</div>', 0),
('captcha_enabled', '0', 0),
('footer_scripts', '', 1),
('google_recaptcha_secret_key', '', 0),
('google_recaptcha_site_key', '', 0),
('header_scripts', '', 1),
('site_description', 'inbefore is a automated news aggregator with Google CSE based search engine script that searches different portions of the web via Google Custom Search Engine.', 1),
('default_engine', '1', 0),
('site_email', 'admin@site.com', 1),
('site_locale', '', 0),
('site_logo', '/site/uploads/2022/Dec/12/logo-news (4).png', 1),
('site_name', 'inbefore', 1),
('site_tagline', 'search engine, content portal, news aggretator', 1),
('smtp_auth_enabled', '1', 0),
('smtp_enabled', '', 0),
('smtp_host', 'smtp.gmail.com', 0),
('smtp_password', '', 0),
('smtp_port', '587', 0),
('smtp_username', 'user@gmail.com', 0),
('timezone', 'Asia/Ho_Chi_Minh', 1),
('facebook_username', '', 0),
('twitter_username', '', 0),
('youtube_username', '', 0),
('instagram_username', '', 0),
('linkedin_username', '', 0),
('facebook_app_secret', '', 0),
('facebook_app_id', '', 0),
('spark_cron_job_token', '123974460089f349ca2e', 0),
('latest_posts_count', '50', 1),
('category_posts_count', '50', 1),
('feed_redirection', '0', 1),
('max_slider_items', '10', 1),
('search_items_count', '20', 1),
('disqus_url', '', 0),
('disqus_enabled', '0', 0),
('popular_posts_count', '5', 0),
('ad_unit_8', '<div class=\"dummy-ad mt-1 mb-4\" style=\"min-height:200px;max-width:200px\">\r\n<h5>ARTICLE AD</h5>\r\n</div>', 0),
('ad_unit_5', '<div class=\"dummy-ad mt-1 mb-0\" style=\"min-height:200px\">\r\n<h5>SEARCH SIDEBAR AD</h5>\r\n</div>', 0),
('ad_unit_6', '<div class=\"dummy-ad mt-1 mb-0\" style=\"min-height:60px\">\r\n<h5>PRE SEARCH RESULTS AD</h5>\r\n</div>', 0),
('auto_delete_posts_after', '0', 0),
('ad_unit_4', '<div class=\"dummy-ad\" style=\"min-height:200px\">\r\n<h5>RIGHT SIDEBAR BOTTOM AD</h5>\r\n</div>', 0),
('ad_unit_7', '<div class=\"dummy-ad mt-1 mb-4\" style=\"min-height:60px\">\r\n<h5>POST SEARCH RESULTS AD</h5>\r\n</div>', 0),
('site_language', 'vi_VN', 0),
('default_theme_custom_css', '', 0),
('single_page_layout', 'single', 0),
('enable_registration', '0', 0),
('related_posts_count', '3', 0),
('enable_search_ads', '0', 0),
('enable_yt_downloader', '0', 0),
('trends_region', 'VN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `in_permissions`
--

CREATE TABLE `in_permissions` (
  `perm_id` int UNSIGNED NOT NULL,
  `perm_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_permissions`
--

INSERT INTO `in_permissions` (`perm_id`, `perm_desc`) VALUES
(1, 'access_dashboard'),
(2, 'add_user'),
(3, 'edit_user'),
(4, 'delete_user'),
(5, 'add_role'),
(6, 'edit_role'),
(7, 'delete_role'),
(8, 'change_settings'),
(9, 'manage_plugins'),
(10, 'change_user_role'),
(11, 'manage_gallery'),
(12, 'manage_pages'),
(13, 'manage_themes'),
(14, 'access_gallery'),
(15, 'change_user_status'),
(18, 'manage_categories'),
(17, 'manage_engines'),
(19, 'manage_feeds'),
(20, 'manage_posts');

-- --------------------------------------------------------

--
-- Table structure for table `in_posts`
--

CREATE TABLE `in_posts` (
  `post_id` int UNSIGNED NOT NULL,
  `post_category_id` int UNSIGNED NOT NULL COMMENT '@skip',
  `post_feed_id` int UNSIGNED NOT NULL COMMENT '@skip',
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title for the post',
  `post_author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anonymous',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post body, HTML enabled',
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post excerpt',
  `post_featured_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Featured image URL for the post',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'imported_post' COMMENT '@skip',
  `post_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Source link to the post',
  `post_hits` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of hits/views the post has recieved',
  `post_pubdate` bigint NOT NULL DEFAULT '0' COMMENT '@skip',
  `created_at` bigint NOT NULL DEFAULT '0',
  `updated_at` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_posts`
--

INSERT INTO `in_posts` (`post_id`, `post_category_id`, `post_feed_id`, `post_title`, `post_author`, `post_content`, `post_excerpt`, `post_featured_image`, `post_type`, `post_source`, `post_hits`, `post_pubdate`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Ngày cuối đăng ký siêu sớm giải VM Nha Trang 2023', 'Anonymous', '<a href=\"https://vnexpress.net/ngay-cuoi-dang-ky-sieu-som-giai-vm-nha-trang-2023-4542446.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/luum2460-jpg-9727-1670290154-1-7264-8587-1670817951.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WB8MQ3zfxYt7vDZJooliaA\"></a>Runner còn một ngày để mua Bib giai đoạn siêu sớm và hưởng ưu đãi giá, in tên nhóm lên áo giải VnExpress Marathon Marvelous Nha Trang 2023.', 'Runner còn một ngày để mua Bib giai đoạn siêu sớm và hưởng ưu đãi giá, in tên nhóm lên áo giải VnExpress Marathon Marvelous Nha Trang 2023.', 'https://i1-thethao.vnecdn.net/2022/12/12/luum2460-jpg-9727-1670290154-1-7264-8587-1670817951.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=WB8MQ3zfxYt7vDZJooliaA', 'imported_post', 'https://vnexpress.net/ngay-cuoi-dang-ky-sieu-som-giai-vm-nha-trang-2023-4542446.html', 1, 1670817873, 1670819742, 1670819742),
(2, 5, 1, 'Ronaldo Nazario tiến cử HLV mới cho Brazil', 'Anonymous', '<a href=\"https://vnexpress.net/ronaldo-nazario-tien-cu-hlv-moi-cho-brazil-4547078.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/fernando-diniz-1670815624-2265-1670815626.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=-K4IAia37oI7jwevE3cHDw\"></a>Theo huyền thoại Ronaldo Nazario, Fernando Diniz là người phù hợp để kế nhiệm Tite, dù muốn LĐBĐ Brazil (CBF) bổ nhiệm Pep Guardiola.', 'Theo huyền thoại Ronaldo Nazario, Fernando Diniz là người phù hợp để kế nhiệm Tite, dù muốn LĐBĐ Brazil (CBF) bổ nhiệm Pep Guardiola.', 'https://i1-thethao.vnecdn.net/2022/12/12/fernando-diniz-1670815624-2265-1670815626.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=-K4IAia37oI7jwevE3cHDw', 'imported_post', 'https://vnexpress.net/ronaldo-nazario-tien-cu-hlv-moi-cho-brazil-4547078.html', 0, 1670815809, 1670819742, 1670819742),
(3, 5, 1, 'Modric so sánh Croatia với Real', 'Anonymous', '<a href=\"https://vnexpress.net/modric-so-sanh-croatia-voi-real-4547045.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/sss15503-1-1670813538-1134-1670813800.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mY0mzll0PqFwHecv1ZRplg\"></a>Theo tiền vệ Luka Modric, tuyển Croatia hiện sở hữu tinh thần không bỏ cuộc và thi đấu quyết tâm giống Real.', 'Theo tiền vệ Luka Modric, tuyển Croatia hiện sở hữu tinh thần không bỏ cuộc và thi đấu quyết tâm giống Real.', 'https://i1-thethao.vnecdn.net/2022/12/12/sss15503-1-1670813538-1134-1670813800.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=mY0mzll0PqFwHecv1ZRplg', 'imported_post', 'https://vnexpress.net/modric-so-sanh-croatia-voi-real-4547045.html', 0, 1670813879, 1670819742, 1670819742),
(4, 5, 1, 'Lank thua ngược dù Huỳnh Như góp công', 'Anonymous', '<a href=\"https://vnexpress.net/lank-thua-nguoc-du-huynh-nhu-gop-cong-4547026.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/318453722192661819948890601732-9728-5908-1670812111.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JrRmuxIv1kgG5KyFBiCQUw\"></a>Tiền đạo Huỳnh Như thi đấu năng nổ, đá phạt dẫn đến một bàn nhưng Lank FC thua ngược Albergaria 2-3 ở vòng 9 giải VĐQG Bồ Đào Nha tối 11/12.', 'Tiền đạo Huỳnh Như thi đấu năng nổ, đá phạt dẫn đến một bàn nhưng Lank FC thua ngược Albergaria 2-3 ở vòng 9 giải VĐQG Bồ Đào Nha tối 11/12.', 'https://i1-thethao.vnecdn.net/2022/12/12/318453722192661819948890601732-9728-5908-1670812111.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=JrRmuxIv1kgG5KyFBiCQUw', 'imported_post', 'https://vnexpress.net/lank-thua-nguoc-du-huynh-nhu-gop-cong-4547026.html', 0, 1670813340, 1670819742, 1670819742),
(5, 5, 1, 'Đối đầu Messi - Modric có thể định đoạt bán kết World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/doi-dau-messi-modric-co-the-dinh-doat-ban-ket-world-cup-4546978.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/dc-cover-peaolb8kpet19e3v93nbn-8423-6580-1670805625.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xF2NkDK9HqR6w0m1pIikyg\"></a>Với những gì thể hiện từ đầu giải, phong độ của Lionel Messi và Luka Modric có thể sẽ định đoạt kết cục trận bán kết World Cup 2022 trên sân Lusail ngày 13/12.', 'Với những gì thể hiện từ đầu giải, phong độ của Lionel Messi và Luka Modric có thể sẽ định đoạt kết cục trận bán kết World Cup 2022 trên sân Lusail ngày 13/12.', 'https://i1-thethao.vnecdn.net/2022/12/12/dc-cover-peaolb8kpet19e3v93nbn-8423-6580-1670805625.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=xF2NkDK9HqR6w0m1pIikyg', 'imported_post', 'https://vnexpress.net/doi-dau-messi-modric-co-the-dinh-doat-ban-ket-world-cup-4546978.html', 0, 1670805726, 1670819742, 1670819742),
(6, 5, 1, 'Tiền đạo Morocco nhảy gần 3 m để ghi bàn loại Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/tien-dao-morocco-nhay-gan-3-m-de-ghi-ban-loai-bo-dao-nha-4546971.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/96df603bc9-jpeg-1670804806-9758-1670804849.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=HNm-RVmGyKLWJTSjEtIT0Q\"></a>Youssef En-Nesyri bật nhảy cao 2,78 m trong pha đánh đầu tung lưới Bồ Đào Nha ở tứ kết World Cup 2022, gần bằng kỷ lục của Cristiano Ronaldo.', 'Youssef En-Nesyri bật nhảy cao 2,78 m trong pha đánh đầu tung lưới Bồ Đào Nha ở tứ kết World Cup 2022, gần bằng kỷ lục của Cristiano Ronaldo.', 'https://i1-thethao.vnecdn.net/2022/12/12/96df603bc9-jpeg-1670804806-9758-1670804849.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=HNm-RVmGyKLWJTSjEtIT0Q', 'imported_post', 'https://vnexpress.net/tien-dao-morocco-nhay-gan-3-m-de-ghi-ban-loai-bo-dao-nha-4546971.html', 0, 1670804879, 1670819742, 1670819742),
(7, 5, 1, 'Fernandes tự hào dù Bồ Đào Nha dừng ở tứ kết', 'Anonymous', '<a href=\"https://vnexpress.net/fernandes-tu-hao-du-bo-dao-nha-dung-o-tu-ket-4546940.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/fernandes-jpeg-1670774445-8972-1670774484.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=lEDWiDTqyAld1JovcZpbdg\"></a>Tiền vệ Bruno Fernandes viết lên Instagram lời tri ân đồng đội khi đưa Bồ Đào Nha tới tứ kết World Cup 2022.', 'Tiền vệ Bruno Fernandes viết lên Instagram lời tri ân đồng đội khi đưa Bồ Đào Nha tới tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/fernandes-jpeg-1670774445-8972-1670774484.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=lEDWiDTqyAld1JovcZpbdg', 'imported_post', 'https://vnexpress.net/fernandes-tu-hao-du-bo-dao-nha-dung-o-tu-ket-4546940.html', 0, 1670802822, 1670819742, 1670819742),
(8, 5, 1, 'Nhiều đội ra giá 100 triệu USD cho trung vệ Croatia', 'Anonymous', '<a href=\"https://vnexpress.net/nhieu-doi-ra-gia-100-trieu-usd-cho-trung-ve-croatia-4546951.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/gvardiol-jpeg-1670787788-4217-1670787849.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oKBc7o1SFwFaNCdp_Iqnrg\"></a>Màn trình diễn của Josko Gvardiol tại World Cup 2022 khiến Man City, Man Utd hay Chelsea sẵn sàng chi đậm để mua trung vệ này.', 'Màn trình diễn của Josko Gvardiol tại World Cup 2022 khiến Man City, Man Utd hay Chelsea sẵn sàng chi đậm để mua trung vệ này.', 'https://i1-thethao.vnecdn.net/2022/12/12/gvardiol-jpeg-1670787788-4217-1670787849.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=oKBc7o1SFwFaNCdp_Iqnrg', 'imported_post', 'https://vnexpress.net/nhieu-doi-ra-gia-100-trieu-usd-cho-trung-ve-croatia-4546951.html', 0, 1670802658, 1670819742, 1670819742),
(9, 5, 1, 'Valdano: \'Không yêu Messi là không yêu bóng đá\'', 'Anonymous', '<a href=\"https://vnexpress.net/valdano-khong-yeu-messi-la-khong-yeu-bong-da-4546952.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/messi-2-jpeg-1670803807-4653-1670803823.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JbcIdhlN1AdGEhguU0d6Ig\"></a>Theo cựu tiền đạo Argentina Jorge Valdano, Lionel Messi đang trình diễn tại World Cup 2022 ở đẳng cấp như huyền thoại Diego Maradona.', 'Theo cựu tiền đạo Argentina Jorge Valdano, Lionel Messi đang trình diễn tại World Cup 2022 ở đẳng cấp như huyền thoại Diego Maradona.', 'https://i1-thethao.vnecdn.net/2022/12/12/messi-2-jpeg-1670803807-4653-1670803823.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=JbcIdhlN1AdGEhguU0d6Ig', 'imported_post', 'https://vnexpress.net/valdano-khong-yeu-messi-la-khong-yeu-bong-da-4546952.html', 0, 1670802247, 1670819742, 1670819742),
(10, 5, 1, 'Neymar: \'Trận thua Croatia là đau đớn nhất\'', 'Anonymous', '<a href=\"https://vnexpress.net/neymar-tran-thua-croatia-la-dau-don-nhat-4546946.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/12/ScreenShot20221212at001241-167-3081-5388-1670778937.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=EfAL7roSNrUl852SlyUuXQ\"></a>Theo tiền đạo tuyển Brazil, thất bại ở loạt sút luân lưu trước Croatia ở tứ kết World Cup 2022 là nỗi đau kéo dài với anh.', 'Theo tiền đạo tuyển Brazil, thất bại ở loạt sút luân lưu trước Croatia ở tứ kết World Cup 2022 là nỗi đau kéo dài với anh.', 'https://i1-thethao.vnecdn.net/2022/12/12/ScreenShot20221212at001241-167-3081-5388-1670778937.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=EfAL7roSNrUl852SlyUuXQ', 'imported_post', 'https://vnexpress.net/neymar-tran-thua-croatia-la-dau-don-nhat-4546946.html', 0, 1670781106, 1670819742, 1670819742),
(11, 5, 1, 'Thái Lan đè bẹp Myanmar trước AFF Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/thai-lan-de-bep-myanmar-truoc-aff-cup-2022-4546939.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/changsuek-thai-lan-myanmar-jpe-2953-7514-1670773972.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=42E5D44n73T6hZse_Pl66w\"></a>Thái Lan hạ Myanmar 6-0 tối 11/12 trên sân Thammasat trong trận giao hữu đầu tiên chuẩn bị cho AFF Cup 2022.', 'Thái Lan hạ Myanmar 6-0 tối 11/12 trên sân Thammasat trong trận giao hữu đầu tiên chuẩn bị cho AFF Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/changsuek-thai-lan-myanmar-jpe-2953-7514-1670773972.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=42E5D44n73T6hZse_Pl66w', 'imported_post', 'https://vnexpress.net/thai-lan-de-bep-myanmar-truoc-aff-cup-2022-4546939.html', 0, 1670774038, 1670819742, 1670819742),
(12, 5, 1, 'Ronaldo viết tâm thư sau khi vỡ mộng World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/ronaldo-viet-tam-thu-sau-khi-vo-mong-world-cup-4546935.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/ronaldo-jpeg-1670771791-5065-1670771890.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TR2PrSzUoOEcung_WqmXAA\"></a>Một ngày sau khi cùng Bồ Đào Nha bị loại ở tứ kết, Cristiano Ronaldo viết hơn 1.000 chữ, bày tỏ thất vọng vì không thể vô địch World Cup 2022.', 'Một ngày sau khi cùng Bồ Đào Nha bị loại ở tứ kết, Cristiano Ronaldo viết hơn 1.000 chữ, bày tỏ thất vọng vì không thể vô địch World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/ronaldo-jpeg-1670771791-5065-1670771890.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TR2PrSzUoOEcung_WqmXAA', 'imported_post', 'https://vnexpress.net/ronaldo-viet-tam-thu-sau-khi-vo-mong-world-cup-4546935.html', 0, 1670772082, 1670819742, 1670819742),
(13, 5, 1, 'Đoàn Văn Hậu: ‘Đối thủ nào ở AFF Cup cũng mạnh’', 'Anonymous', '<a href=\"https://vnexpress.net/doan-van-hau-doi-thu-nao-o-aff-cup-cung-manh-4546906.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/LVT3432JPG-1670754917-3557-1670755154.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=u41VRzf6AXiU2ihWbctIKQ\"></a>Trước buổi tập chiều 11/12, hậu vệ Đoàn Văn Hậu cho biết Việt Nam sẽ không được chủ quan với bất cứ đội bóng nào nếu muốn chinh phục chức vô địch AFF Cup 2022.', 'Trước buổi tập chiều 11/12, hậu vệ Đoàn Văn Hậu cho biết Việt Nam sẽ không được chủ quan với bất cứ đội bóng nào nếu muốn chinh phục chức vô địch AFF Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/LVT3432JPG-1670754917-3557-1670755154.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=u41VRzf6AXiU2ihWbctIKQ', 'imported_post', 'https://vnexpress.net/doan-van-hau-doi-thu-nao-o-aff-cup-cung-manh-4546906.html', 0, 1670757524, 1670819742, 1670819742),
(14, 5, 1, 'Quế Ngọc Hải và Đoàn Văn Hậu phải tập riêng', 'Anonymous', '<a href=\"https://vnexpress.net/que-ngoc-hai-va-doan-van-hau-phai-tap-rieng-4546893.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/LVT-3493-1670751952.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Sf1OjPF9h01Bve-KH6Lq7A\"></a>Trong buổi tập đầu tiên sau khi trở lại Hà Nội chiều 11/12, bộ đôi hậu vệ Quế Ngọc Hải và Đoàn Văn Hậu bị căng cơ, phải làm việc riêng cùng bác sĩ Choi Ju-young.', 'Trong buổi tập đầu tiên sau khi trở lại Hà Nội chiều 11/12, bộ đôi hậu vệ Quế Ngọc Hải và Đoàn Văn Hậu bị căng cơ, phải làm việc riêng cùng bác sĩ Choi Ju-young.', 'https://i1-thethao.vnecdn.net/2022/12/11/LVT-3493-1670751952.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Sf1OjPF9h01Bve-KH6Lq7A', 'imported_post', 'https://vnexpress.net/que-ngoc-hai-va-doan-van-hau-phai-tap-rieng-4546893.html', 0, 1670753434, 1670819742, 1670819742),
(15, 5, 1, 'Tiền đạo Hà Lan: \'Messi đã thiếu tôn trọng tôi\'', 'Anonymous', '<a href=\"https://vnexpress.net/tien-dao-ha-lan-messi-da-thieu-ton-trong-toi-4546842.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/untitled-1670732966-5248-1670733039.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=6R7CfnAjabTnRlMoXxQIzw\"></a>Tiền đạo Wout Weghorst thất vọng khi bị Lionel Messi mắng sau trận tứ kết World Cup 2022.', 'Tiền đạo Wout Weghorst thất vọng khi bị Lionel Messi mắng sau trận tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/untitled-1670732966-5248-1670733039.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=6R7CfnAjabTnRlMoXxQIzw', 'imported_post', 'https://vnexpress.net/tien-dao-ha-lan-messi-da-thieu-ton-trong-toi-4546842.html', 0, 1670751475, 1670819742, 1670819742),
(16, 5, 1, 'Rooney bênh vực Kane', 'Anonymous', '<a href=\"https://vnexpress.net/rooney-benh-vuc-kane-4546852.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/Untitled-3572-1670734871.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qYosgFKwyj6Hl_3ky345mA\"></a>Cựu tiền đạo Wayne Rooney động viên đàn em Harry Kane sau khi hỏng phạt đền, khiến Anh thua Pháp ở tứ kết World Cup 2022.', 'Cựu tiền đạo Wayne Rooney động viên đàn em Harry Kane sau khi hỏng phạt đền, khiến Anh thua Pháp ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/Untitled-3572-1670734871.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qYosgFKwyj6Hl_3ky345mA', 'imported_post', 'https://vnexpress.net/rooney-benh-vuc-kane-4546852.html', 0, 1670744086, 1670819742, 1670819742),
(17, 5, 1, 'Tiền vệ Pháp: \'Kane đá hỏng phạt đền là công lý\'', 'Anonymous', '<a href=\"https://vnexpress.net/tien-ve-phap-kane-da-hong-phat-den-la-cong-ly-4546846.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/image-1670705806-jpeg-16707337-9288-1709-1670733726.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gPrNt9qijl5lgYUQooIbFQ\"></a>Tiền vệ Adrien Rabiot hả hê vì thủ quân Anh Harry Kane đá hỏng phạt đền cuối trận tứ kết Pháp ở World Cup 2022, tối 10/12.', 'Tiền vệ Adrien Rabiot hả hê vì thủ quân Anh Harry Kane đá hỏng phạt đền cuối trận tứ kết Pháp ở World Cup 2022, tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/image-1670705806-jpeg-16707337-9288-1709-1670733726.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gPrNt9qijl5lgYUQooIbFQ', 'imported_post', 'https://vnexpress.net/tien-ve-phap-kane-da-hong-phat-den-la-cong-ly-4546846.html', 0, 1670733786, 1670819742, 1670819742),
(18, 5, 1, 'FIFA tri ân Ronaldo', 'Anonymous', '<a href=\"https://vnexpress.net/fifa-tri-an-ronaldo-4546834.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/untitled-1670731696-6806-1670731790.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=cGv9r_kUxAdms_rsXNU9AA\"></a>Sau khi Bồ Đào Nha bị loại ở tứ kết tối 10/12, FIFA đã tổng hợp những khoảnh khắc ấn tượng của Cristiano Ronaldo trong năm lần dự World Cup.', 'Sau khi Bồ Đào Nha bị loại ở tứ kết tối 10/12, FIFA đã tổng hợp những khoảnh khắc ấn tượng của Cristiano Ronaldo trong năm lần dự World Cup.', 'https://i1-thethao.vnecdn.net/2022/12/11/untitled-1670731696-6806-1670731790.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=cGv9r_kUxAdms_rsXNU9AA', 'imported_post', 'https://vnexpress.net/fifa-tri-an-ronaldo-4546834.html', 0, 1670732899, 1670819742, 1670819742),
(19, 5, 1, 'Hậu vệ Morocco hôn đầu Pepe khi thoát thua phút bù giờ', 'Anonymous', '<a href=\"https://vnexpress.net/hau-ve-morocco-hon-dau-pepe-khi-thoat-thua-phut-bu-gio-4546838.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/a-nh-chu-p-ma-n-hi-nh-2022-12-1163-3477-1670732545.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=3yavA2oJLhZYaMi1dWLUSg\"></a>Jawad El Yamiq hôn lên đầu Pepe sau khi trung vệ Bồ Đào Nha dứt điểm chệch cột cuối trận tứ kết World Cup 2022, tối 10/12.', 'Jawad El Yamiq hôn lên đầu Pepe sau khi trung vệ Bồ Đào Nha dứt điểm chệch cột cuối trận tứ kết World Cup 2022, tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/a-nh-chu-p-ma-n-hi-nh-2022-12-1163-3477-1670732545.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=3yavA2oJLhZYaMi1dWLUSg', 'imported_post', 'https://vnexpress.net/hau-ve-morocco-hon-dau-pepe-khi-thoat-thua-phut-bu-gio-4546838.html', 0, 1670732616, 1670819742, 1670819742),
(20, 5, 1, 'Cầu thủ Morocco nhảy cùng mẹ sau trận thắng Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/cau-thu-morocco-nhay-cung-me-sau-tran-thang-bo-dao-nha-4546818.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/NewProject36-1670729902-6736-1670730154.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=2otAlQBXqM61heuFKlhLMw\"></a>Tiền vệ Sofiane Boufal mời mẹ xuống sân chung vui với đội tuyển Morocco sau trận tứ kết World Cup 2022 thắng Bồ Đào Nha 1-0 tối 10/12.', 'Tiền vệ Sofiane Boufal mời mẹ xuống sân chung vui với đội tuyển Morocco sau trận tứ kết World Cup 2022 thắng Bồ Đào Nha 1-0 tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/NewProject36-1670729902-6736-1670730154.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=2otAlQBXqM61heuFKlhLMw', 'imported_post', 'https://vnexpress.net/cau-thu-morocco-nhay-cung-me-sau-tran-thang-bo-dao-nha-4546818.html', 0, 1670731700, 1670819742, 1670819742),
(21, 5, 1, 'Harry Kane: \'Quả phạt đền hỏng là nỗi đau kéo dài\'', 'Anonymous', '<a href=\"https://vnexpress.net/harry-kane-qua-phat-den-hong-la-noi-dau-keo-dai-4546786.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/NewProject34-1670724913-9403-1670725099.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=0yAmO-GjeAcGglPHshbBEw\"></a>Đội trưởng Harry Kane nhận trách nhiệm sau khi đá hỏng phạt đền, góp phần khiến Anh thua Pháp 1-2 ở tứ kết World Cup 2022 tối qua.', 'Đội trưởng Harry Kane nhận trách nhiệm sau khi đá hỏng phạt đền, góp phần khiến Anh thua Pháp 1-2 ở tứ kết World Cup 2022 tối qua.', 'https://i1-thethao.vnecdn.net/2022/12/11/NewProject34-1670724913-9403-1670725099.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=0yAmO-GjeAcGglPHshbBEw', 'imported_post', 'https://vnexpress.net/harry-kane-qua-phat-den-hong-la-noi-dau-keo-dai-4546786.html', 0, 1670731365, 1670819742, 1670819742),
(22, 5, 1, 'Đinh Hồng Quân thắng võ sĩ Philippines', 'Anonymous', '<a href=\"https://vnexpress.net/dinh-hong-quan-thang-vo-si-philippines-4546813.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/z39499739524552b25407d5b8c4980-8327-3839-1670726878.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Ud6tMMFlHh5CGapvINIzcQ\"></a>Võ sĩ Việt Nam thắng điểm trọng tài trước đối thủ người Philippines Arnel Baconaje tại sự kiện Boxing IBF WBO Title Matches \"Fortunes of War\" tối 10/12.', 'Võ sĩ Việt Nam thắng điểm trọng tài trước đối thủ người Philippines Arnel Baconaje tại sự kiện Boxing IBF WBO Title Matches \"Fortunes of War\" tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/z39499739524552b25407d5b8c4980-8327-3839-1670726878.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Ud6tMMFlHh5CGapvINIzcQ', 'imported_post', 'https://vnexpress.net/dinh-hong-quan-thang-vo-si-philippines-4546813.html', 0, 1670730502, 1670819742, 1670819742),
(23, 5, 1, 'Southgate: \'Tuyển Anh xứng đáng nhận kết cục khác\'', 'Anonymous', '<a href=\"https://vnexpress.net/southgate-tuyen-anh-xung-dang-nhan-ket-cuc-khac-4546807.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/group-i-poland-v-england-67830-2679-2221-1670726027.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=eLa0YV209JR-qnMl2SBeIg\"></a>Theo HLV Gareth Southgate, Anh đã chơi xuất sắc, hết mình và đáng ra phải vượt qua Pháp ở tứ kết World Cup 2022.', 'Theo HLV Gareth Southgate, Anh đã chơi xuất sắc, hết mình và đáng ra phải vượt qua Pháp ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/group-i-poland-v-england-67830-2679-2221-1670726027.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eLa0YV209JR-qnMl2SBeIg', 'imported_post', 'https://vnexpress.net/southgate-tuyen-anh-xung-dang-nhan-ket-cuc-khac-4546807.html', 0, 1670726060, 1670819742, 1670819742),
(24, 5, 1, 'HLV Deschamps: \'Pháp may mắn khi thắng Anh\'', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-deschamps-phap-may-man-khi-thang-anh-4546766.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/NewProject33-1670721578-3623-1670721778.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9xnC5ZxxRCovYiIaP92t6g\"></a>HLV Didier Deschamps thừa nhận Pháp đã may mắn khi đánh bại Anh 2-1 ở tứ kết World Cup 2022, tối 10/12.', 'HLV Didier Deschamps thừa nhận Pháp đã may mắn khi đánh bại Anh 2-1 ở tứ kết World Cup 2022, tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/NewProject33-1670721578-3623-1670721778.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=9xnC5ZxxRCovYiIaP92t6g', 'imported_post', 'https://vnexpress.net/hlv-deschamps-phap-may-man-khi-thang-anh-4546766.html', 0, 1670723790, 1670819742, 1670819742),
(25, 5, 1, 'Kane lặng người khi đá bay hy vọng của tuyển Anh', 'Anonymous', '<a href=\"https://vnexpress.net/kane-lang-nguoi-khi-da-bay-hy-vong-cua-tuyen-anh-4546752.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/kane-2-1670708188.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=P11pPvh1UzagWIl7_i_MFA\"></a>Thủ quân Harry Kane đưa áo lên che mặt vì bỏ lỡ quả phạt đền đầu tiên trong lịch sử đội tuyển Anh ở World Cup, khi thua Pháp 1-2 tại tứ kết tối 10/12.', 'Thủ quân Harry Kane đưa áo lên che mặt vì bỏ lỡ quả phạt đền đầu tiên trong lịch sử đội tuyển Anh ở World Cup, khi thua Pháp 1-2 tại tứ kết tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/kane-2-1670708188.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=P11pPvh1UzagWIl7_i_MFA', 'imported_post', 'https://vnexpress.net/kane-lang-nguoi-khi-da-bay-hy-vong-cua-tuyen-anh-4546752.html', 0, 1670715741, 1670819742, 1670819742),
(26, 5, 1, 'Tiền vệ Phạm Đức Huy đầu quân cho Nam Định', 'Anonymous', '<a href=\"https://vnexpress.net/tien-ve-pham-duc-huy-dau-quan-cho-nam-dinh-4546704.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/A1-1670681974-7916-1670681982.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DKBEbQgQ8seMSjVrto65KA\"></a>Cầu thủ từng giành HC bạc U23 châu Á 2018 Phạm Đức Huy chia tay Hà Nội FC, ký hợp đồng ba năm với CLB Nam Định.', 'Cầu thủ từng giành HC bạc U23 châu Á 2018 Phạm Đức Huy chia tay Hà Nội FC, ký hợp đồng ba năm với CLB Nam Định.', 'https://i1-thethao.vnecdn.net/2022/12/10/A1-1670681974-7916-1670681982.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=DKBEbQgQ8seMSjVrto65KA', 'imported_post', 'https://vnexpress.net/tien-ve-pham-duc-huy-dau-quan-cho-nam-dinh-4546704.html', 0, 1670715409, 1670819742, 1670819742),
(27, 5, 1, 'Bạn gái và chị Ronaldo lại công kích HLV Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/ban-gai-va-chi-ronaldo-lai-cong-kich-hlv-bo-dao-nha-4546751.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/image-jpeg-1670704863-5477-1670705169.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=a2tvVGEMoSe6Ehxq098K3g\"></a>Georgina Rodriguez và Elma Aveiro chỉ trích HLV Fernando Santos vì tiếp tục để Cristiano Ronaldo dự bị khi Bồ Đào Nha thua Morocco 0-1 ở tứ kết World Cup 2022, tối 10/12.', 'Georgina Rodriguez và Elma Aveiro chỉ trích HLV Fernando Santos vì tiếp tục để Cristiano Ronaldo dự bị khi Bồ Đào Nha thua Morocco 0-1 ở tứ kết World Cup 2022, tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/image-jpeg-1670704863-5477-1670705169.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=a2tvVGEMoSe6Ehxq098K3g', 'imported_post', 'https://vnexpress.net/ban-gai-va-chi-ronaldo-lai-cong-kich-hlv-bo-dao-nha-4546751.html', 0, 1670705201, 1670819742, 1670819742),
(28, 5, 1, 'HLV Morocco mơ vô địch World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-morocco-mo-vo-dich-world-cup-4546750.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/regragui-jpeg-1670703756-7056-1670703976.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Pz2r8YGeOQ0yD6bTBD-daw\"></a>HLV Walid Regragui so sánh tuyển Morocco với nhân vật huyền thoại \"Rocky Balboa\" và mơ vô địch World Cup 2022, sau khi hạ Bồ Đào Nha tối 10/12.', 'HLV Walid Regragui so sánh tuyển Morocco với nhân vật huyền thoại \"Rocky Balboa\" và mơ vô địch World Cup 2022, sau khi hạ Bồ Đào Nha tối 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/regragui-jpeg-1670703756-7056-1670703976.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Pz2r8YGeOQ0yD6bTBD-daw', 'imported_post', 'https://vnexpress.net/hlv-morocco-mo-vo-dich-world-cup-4546750.html', 0, 1670704042, 1670819742, 1670819742),
(29, 5, 1, 'Pepe ám chỉ trọng tài Argentina cố tình loại Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/pepe-am-chi-trong-tai-argentina-co-tinh-loai-bo-dao-nha-4546743.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/portugals-pepe-talks-referee-f-7327-5436-1670702734.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=nIdFoUL3KjeufQWIOyj4Ig\"></a>Theo trung vệ Pepe, tổ trọng tài Argentina đã xử ép để loại Bồ Đào Nha, qua đó mở đường cho Lionel Messi cùng đồng đội vô địch World Cup 2022.', 'Theo trung vệ Pepe, tổ trọng tài Argentina đã xử ép để loại Bồ Đào Nha, qua đó mở đường cho Lionel Messi cùng đồng đội vô địch World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/portugals-pepe-talks-referee-f-7327-5436-1670702734.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=nIdFoUL3KjeufQWIOyj4Ig', 'imported_post', 'https://vnexpress.net/pepe-am-chi-trong-tai-argentina-co-tinh-loai-bo-dao-nha-4546743.html', 0, 1670703313, 1670819742, 1670819742),
(30, 5, 1, 'HLV Santos: \'Bồ Đào Nha bị cóng\'', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-santos-bo-dao-nha-bi-cong-4546738.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/santos-jpeg-1670695482-9953-1670695530.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Zh0sik72xvBWVyNeKGQTZA\"></a>Theo HLV Fernando Santos, cầu thủ Bồ Đào Nha quá lo sợ trong khoảng 20 phút cuối trận thua Morocco tại tứ kết World Cup 2022.', 'Theo HLV Fernando Santos, cầu thủ Bồ Đào Nha quá lo sợ trong khoảng 20 phút cuối trận thua Morocco tại tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/11/santos-jpeg-1670695482-9953-1670695530.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Zh0sik72xvBWVyNeKGQTZA', 'imported_post', 'https://vnexpress.net/hlv-santos-bo-dao-nha-bi-cong-4546738.html', 0, 1670700885, 1670819742, 1670819742),
(31, 5, 1, 'Màn trình diễn phòng ngự đỉnh cao của Morocco', 'Anonymous', '<a href=\"https://vnexpress.net/man-trinh-dien-phong-ngu-dinh-cao-cua-morocco-4546748.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/Ronaldo-danh-dau-hut-LUSA-jpeg.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=C40vnBWBXnlNJH9iV2UVSw\"></a>Trung phong El-Nesyri ghi bàn duy nhất, nhưng thủ môn Yaccine Bono cùng hệ thống phòng ngự xuất sắc cũng góp phần quyết định giúp Morocco loại Bồ Đào Nha ở tứ kết World Cup 2022 ngày 10/12.', 'Trung phong El-Nesyri ghi bàn duy nhất, nhưng thủ môn Yaccine Bono cùng hệ thống phòng ngự xuất sắc cũng góp phần quyết định giúp Morocco loại Bồ Đào Nha ở tứ kết World Cup 2022 ngày 10/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/Ronaldo-danh-dau-hut-LUSA-jpeg.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=C40vnBWBXnlNJH9iV2UVSw', 'imported_post', 'https://vnexpress.net/man-trinh-dien-phong-ngu-dinh-cao-cua-morocco-4546748.html', 0, 1670700616, 1670819742, 1670819742),
(32, 5, 1, 'Ronaldo khóc sau thất bại ở tứ kết World Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/ronaldo-khoc-sau-that-bai-o-tu-ket-world-cup-2022-4546742.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/Untitled-1670692669.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=L-bcOeeH6JGFb-B-6_OoNg\"></a>Cristiano Ronaldo lau nước mắt, một mình đi vào đường hầm trong khi các đồng đội Bồ Đào Nha thất thần vì thua Morocco.', 'Cristiano Ronaldo lau nước mắt, một mình đi vào đường hầm trong khi các đồng đội Bồ Đào Nha thất thần vì thua Morocco.', 'https://i1-thethao.vnecdn.net/2022/12/11/Untitled-1670692669.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=L-bcOeeH6JGFb-B-6_OoNg', 'imported_post', 'https://vnexpress.net/ronaldo-khoc-sau-that-bai-o-tu-ket-world-cup-2022-4546742.html', 0, 1670695422, 1670819742, 1670819742),
(33, 5, 1, 'Pháp loại Anh khỏi World Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/anh-vs-phap-4546720-tong-thuat.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/xxvv1-1670706170-1670706177-3109-1670706194.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ak0R5uMhMsSCp-Iwrjzenw\"></a>Olivier Giroud ghi bàn quyết định còn Harry Kane đá hỏng phạt đền, khi Pháp thắng Anh 2-1 tại tứ kết World Cup 2022 hôm 11/12.', 'Olivier Giroud ghi bàn quyết định còn Harry Kane đá hỏng phạt đền, khi Pháp thắng Anh 2-1 tại tứ kết World Cup 2022 hôm 11/12.', 'https://i1-thethao.vnecdn.net/2022/12/11/xxvv1-1670706170-1670706177-3109-1670706194.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ak0R5uMhMsSCp-Iwrjzenw', 'imported_post', 'https://vnexpress.net/anh-vs-phap-4546720-tong-thuat.html', 0, 1670691600, 1670819742, 1670819742),
(34, 5, 1, 'Thủ môn Neuer gãy chân khi trượt tuyết', 'Anonymous', '<a href=\"https://vnexpress.net/thu-mon-neuer-gay-chan-khi-truot-tuyet-4546450.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/686E2E41ACC3478597F69A0EDAD471-5612-2651-1670679068.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wCEci7by-44tqn6Gr2ywjg\"></a>Đội trưởng tuyển Đức và Bayern Manuel Neuer phải nghỉ thi đấu hết mùa này sau khi bị gãy chân khi đi trượt tuyết.', 'Đội trưởng tuyển Đức và Bayern Manuel Neuer phải nghỉ thi đấu hết mùa này sau khi bị gãy chân khi đi trượt tuyết.', 'https://i1-thethao.vnecdn.net/2022/12/10/686E2E41ACC3478597F69A0EDAD471-5612-2651-1670679068.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=wCEci7by-44tqn6Gr2ywjg', 'imported_post', 'https://vnexpress.net/thu-mon-neuer-gay-chan-khi-truot-tuyet-4546450.html', 0, 1670679252, 1670819742, 1670819742),
(35, 5, 1, 'Morocco hạ Bồ Đào Nha ở tứ kết World Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/morocco-vs-bodaonha-4546656-tong-thuat.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/11/10worldcup-1159-1-8a3c-threeby-7804-5696-1670693117.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=pVzMp8Jns1PM8JU-NE8LXA\"></a>Thắng Bồ Đào Nha 1-0 trong trận tứ kết tối 10/12, Morocco là đại diện châu Phi đầu tiên vào bán kết một kỳ World Cup.', 'Thắng Bồ Đào Nha 1-0 trong trận tứ kết tối 10/12, Morocco là đại diện châu Phi đầu tiên vào bán kết một kỳ World Cup.', 'https://i1-thethao.vnecdn.net/2022/12/11/10worldcup-1159-1-8a3c-threeby-7804-5696-1670693117.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=pVzMp8Jns1PM8JU-NE8LXA', 'imported_post', 'https://vnexpress.net/morocco-vs-bodaonha-4546656-tong-thuat.html', 0, 1670677200, 1670819742, 1670819742),
(36, 5, 1, 'Ten Hag: \'Tôi không còn muốn dành năng lượng cho Ronaldo\'', 'Anonymous', '<a href=\"https://vnexpress.net/ten-hag-toi-khong-con-muon-danh-nang-luong-cho-ronaldo-4546678.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/ten-hag-ronaldo-jpeg-167067244-7139-2267-1670672496.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BBtnEKhyCxHYFd_xBHW5WQ\"></a>Từng muốn Cristiano Ronaldo ở lại, nhưng hiện tại HLV Erik ten Hag không còn bận tâm đến tương lai của tiền đạo 37 tuổi vì anh bất hợp tác.', 'Từng muốn Cristiano Ronaldo ở lại, nhưng hiện tại HLV Erik ten Hag không còn bận tâm đến tương lai của tiền đạo 37 tuổi vì anh bất hợp tác.', 'https://i1-thethao.vnecdn.net/2022/12/10/ten-hag-ronaldo-jpeg-167067244-7139-2267-1670672496.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=BBtnEKhyCxHYFd_xBHW5WQ', 'imported_post', 'https://vnexpress.net/ten-hag-toi-khong-con-muon-danh-nang-luong-cho-ronaldo-4546678.html', 0, 1670674163, 1670819742, 1670819742),
(37, 5, 1, 'Tư duy chơi bóng của Jude Bellingham', 'Anonymous', '<a href=\"https://vnexpress.net/tu-duy-choi-bong-cua-jude-bellingham-4541569.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/894DEC744E0C46EA862393C0B18C38-1730-1524-1670681122.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=fNde7UoImmMwdxSCjnpK7Q\"></a>Kỹ thuật và sức mạnh khi có bóng, thông minh và không hề ích kỷ với những pha di chuyển không bóng, đó là nhận định của cựu tiền vệ Yaya Toure về Jude Bellingham trong một bài viết trên tờ The Athletic.', 'Kỹ thuật và sức mạnh khi có bóng, thông minh và không hề ích kỷ với những pha di chuyển không bóng, đó là nhận định của cựu tiền vệ Yaya Toure về Jude Bellingham trong một bài viết...', 'https://i1-thethao.vnecdn.net/2022/12/10/894DEC744E0C46EA862393C0B18C38-1730-1524-1670681122.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=fNde7UoImmMwdxSCjnpK7Q', 'imported_post', 'https://vnexpress.net/tu-duy-choi-bong-cua-jude-bellingham-4541569.html', 0, 1670673600, 1670819742, 1670819742),
(38, 5, 1, 'Nội bộ Bồ Đào Nha lại dậy sóng vì Ronaldo', 'Anonymous', '<a href=\"https://vnexpress.net/noi-bo-bo-dao-nha-lai-day-song-vi-ronaldo-4546679.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/img-1200x676-2022-12-09-01-32-7179-1759-1670671135.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=by8bEDF82vnc9C-mN-cOXQ\"></a>Việc bạn thân và quản lý riêng của Cristiano Ronaldo, Ricky Regufe góp mặt trong thành phần đội tuyển dự World Cup 2022 làm nhiều cầu thủ bất bình.', 'Việc bạn thân và quản lý riêng của Cristiano Ronaldo, Ricky Regufe góp mặt trong thành phần đội tuyển dự World Cup 2022 làm nhiều cầu thủ bất bình.', 'https://i1-thethao.vnecdn.net/2022/12/10/img-1200x676-2022-12-09-01-32-7179-1759-1670671135.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=by8bEDF82vnc9C-mN-cOXQ', 'imported_post', 'https://vnexpress.net/noi-bo-bo-dao-nha-lai-day-song-vi-ronaldo-4546679.html', 0, 1670671199, 1670819742, 1670819742),
(39, 5, 1, 'HLV Deschamps: \'Tuyển Anh không có điểm yếu\'', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-deschamps-tuyen-anh-khong-co-diem-yeu-4546667.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/fnz6tnaygnmh5g4jb7ida3sfti-jpe-7890-2262-1670667626.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IXEhR3Wqg6dX4GdYHWdzfA\"></a>Theo HLV Didier Deschamps, đội hình Anh đồng đều ở cả phòng ngự lẫn tấn công, trước khi đấu Pháp ở tứ kết World Cup 2022.', 'Theo HLV Didier Deschamps, đội hình Anh đồng đều ở cả phòng ngự lẫn tấn công, trước khi đấu Pháp ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/fnz6tnaygnmh5g4jb7ida3sfti-jpe-7890-2262-1670667626.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=IXEhR3Wqg6dX4GdYHWdzfA', 'imported_post', 'https://vnexpress.net/hlv-deschamps-tuyen-anh-khong-co-diem-yeu-4546667.html', 0, 1670667656, 1670819742, 1670819742),
(40, 5, 1, 'Anh - Pháp: Đại chiến các vì sao ở World Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/anh-phap-dai-chien-cac-vi-sao-o-world-cup-2022-4546664.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/skysportsenglandfranceworldcup-5835-9842-1670667043.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_kzJ0PuXlzIEDpY3vuyvdA\"></a>Sở hữu nhiều ngôi sao hàng đầu của bóng đá thế giới trong đội hình, trận đấu giữa Anh và Pháp hứa hẹn tạo ra những khoảnh khắc bùng nổ để khép lại vòng tứ kết World Cup 2022.', 'Sở hữu nhiều ngôi sao hàng đầu của bóng đá thế giới trong đội hình, trận đấu giữa Anh và Pháp hứa hẹn tạo ra những khoảnh khắc bùng nổ để khép lại vòng tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/skysportsenglandfranceworldcup-5835-9842-1670667043.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=_kzJ0PuXlzIEDpY3vuyvdA', 'imported_post', 'https://vnexpress.net/anh-phap-dai-chien-cac-vi-sao-o-world-cup-2022-4546664.html', 0, 1670667119, 1670819742, 1670819742),
(41, 5, 1, 'Sự hoàn hảo trái ngược của Mbappe và Kane trong mắt HLV Pochettino', 'Anonymous', '<a href=\"https://vnexpress.net/su-hoan-hao-trai-nguoc-cua-mbappe-va-kane-trong-mat-hlv-pochettino-4546630.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/pochettino-kane-mbappe-jpeg-16-9905-4131-1670659426.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=XdI6r7YW26WtPj8YLOS8lQ\"></a>Trong bài viết riêng cho The Athletic (Anh), Mauricio Pochettino - HLV duy nhất từng dẫn dắt cả Harry Kane lẫn Kylian Mbappe - phân tích điểm mạnh của hai học trò trước khi họ đối đầu ở tứ kết World Cup 2022 hôm nay.', 'Trong bài viết riêng cho The Athletic (Anh), Mauricio Pochettino - HLV duy nhất từng dẫn dắt cả Harry Kane lẫn Kylian Mbappe - phân tích điểm mạnh của hai học trò trước khi họ đối đầu ở tứ...', 'https://i1-thethao.vnecdn.net/2022/12/10/pochettino-kane-mbappe-jpeg-16-9905-4131-1670659426.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=XdI6r7YW26WtPj8YLOS8lQ', 'imported_post', 'https://vnexpress.net/su-hoan-hao-trai-nguoc-cua-mbappe-va-kane-trong-mat-hlv-pochettino-4546630.html', 0, 1670666292, 1670819742, 1670819742),
(42, 5, 1, 'HLV Argentina ám chỉ tuyển Hà Lan đá xấu', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-argentina-am-chi-tuyen-ha-lan-da-xau-4546624.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/scaloni-jpeg-1670656698-4207-1670656944.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=YmX-UxGZmtgYLPkmqc-v4w\"></a>HLV Lionel Scaloni ca ngợi cách chiến thắng của Argentina trong loạt sút luân lưu, dù bị Hà Lan kéo vào trận đấu xấu xí ở tứ kết World Cup 2022.', 'HLV Lionel Scaloni ca ngợi cách chiến thắng của Argentina trong loạt sút luân lưu, dù bị Hà Lan kéo vào trận đấu xấu xí ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/scaloni-jpeg-1670656698-4207-1670656944.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=YmX-UxGZmtgYLPkmqc-v4w', 'imported_post', 'https://vnexpress.net/hlv-argentina-am-chi-tuyen-ha-lan-da-xau-4546624.html', 0, 1670657140, 1670819742, 1670819742),
(43, 5, 1, 'Tương quan trước trận Anh - Pháp', 'Anonymous', '<a href=\"https://vnexpress.net/tuong-quan-truoc-tran-anh-phap-4546626.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/Anh-Phap-settop-jpeg.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vDpXFSwruarwVHcsbKDqLg\"></a>Anh ổn định và ghi bàn nhiều hơn từ đầu giải, nhưng Pháp có nhân tố đột biến Kylian Mbappe khi đọ tài tại tứ kết World Cup 2022.', 'Anh ổn định và ghi bàn nhiều hơn từ đầu giải, nhưng Pháp có nhân tố đột biến Kylian Mbappe khi đọ tài tại tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/Anh-Phap-settop-jpeg.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=vDpXFSwruarwVHcsbKDqLg', 'imported_post', 'https://vnexpress.net/tuong-quan-truoc-tran-anh-phap-4546626.html', 0, 1670655813, 1670819742, 1670819742),
(44, 5, 1, 'Tương quan trước trận Morocco - Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/tuong-quan-truoc-tran-morocco-bo-dao-nha-4545970.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/Morocco-BDN-settop-copy-jpeg.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=grmf3e8JUcgCeXjyC8wGNQ\"></a>Trận đấu trên sân Al Thumama hôm nay là màn so tài giữa hàng thủ tốt nhất với hàng công mạnh nhất trong số tám đội vào tứ kết World Cup 2022.', 'Trận đấu trên sân Al Thumama hôm nay là màn so tài giữa hàng thủ tốt nhất với hàng công mạnh nhất trong số tám đội vào tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/Morocco-BDN-settop-copy-jpeg.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=grmf3e8JUcgCeXjyC8wGNQ', 'imported_post', 'https://vnexpress.net/tuong-quan-truoc-tran-morocco-bo-dao-nha-4545970.html', 0, 1670654101, 1670819742, 1670819742),
(45, 5, 1, 'Tuyệt chiêu phòng ngự của Morocco', 'Anonymous', '<a href=\"https://vnexpress.net/tuyet-chieu-phong-ngu-cua-morocco-4545872.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/2022638059539902205216220jp919-4428-9335-1670652393.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=iUvKm4jEefvFFhUYV-o8FQ\"></a>Cách tổ chức phòng ngự tập thể giúp Morocco khoá chặt dàn sao hùng hậu của Tây Ban Nha ở vòng 1/8, và hứa hẹn gây khó khăn cho Bồ Đào Nha ở tứ kết World Cup 2022.', 'Cách tổ chức phòng ngự tập thể giúp Morocco khoá chặt dàn sao hùng hậu của Tây Ban Nha ở vòng 1/8, và hứa hẹn gây khó khăn cho Bồ Đào Nha ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/2022638059539902205216220jp919-4428-9335-1670652393.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=iUvKm4jEefvFFhUYV-o8FQ', 'imported_post', 'https://vnexpress.net/tuyet-chieu-phong-ngu-cua-morocco-4545872.html', 0, 1670652407, 1670819742, 1670819742),
(46, 5, 1, 'Modric: \'Giờ không ai dám nghi ngờ Croatia\'', 'Anonymous', '<a href=\"https://vnexpress.net/modric-gio-khong-ai-dam-nghi-ngo-croatia-4546550.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/tmoqruk8-luca-modric-vs-brazil-2356-7097-1670649916.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hpvXQ1F6eSciM1OjQcIqSw\"></a>Đội trưởng Luka Modric xem chiến thắng trước Brazil ở tứ kết World Cup 2022 là lời đáp trả trước những nghi ngờ về năng lực của Croatia.', 'Đội trưởng Luka Modric xem chiến thắng trước Brazil ở tứ kết World Cup 2022 là lời đáp trả trước những nghi ngờ về năng lực của Croatia.', 'https://i1-thethao.vnecdn.net/2022/12/10/tmoqruk8-luca-modric-vs-brazil-2356-7097-1670649916.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=hpvXQ1F6eSciM1OjQcIqSw', 'imported_post', 'https://vnexpress.net/modric-gio-khong-ai-dam-nghi-ngo-croatia-4546550.html', 0, 1670650092, 1670819742, 1670819742),
(47, 5, 1, 'HLV Santos: \'Bồ Đào Nha sẽ rất khó đá trước Morocco\'', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-santos-bo-dao-nha-se-rat-kho-da-truoc-morocco-4546481.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/ap-ad881e014b71452ab06f080b543-6455-9560-1670632140.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rvLSB51_qoeaIONDT93QSQ\"></a>Theo HLV Fernando Santos, trước một Morocco thi đấu kỷ luật và trưởng thành vượt bậc thời gian qua, Bồ Đào Nha không được đánh giá cao hơn ở tứ kết World Cup 2022.', 'Theo HLV Fernando Santos, trước một Morocco thi đấu kỷ luật và trưởng thành vượt bậc thời gian qua, Bồ Đào Nha không được đánh giá cao hơn ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/ap-ad881e014b71452ab06f080b543-6455-9560-1670632140.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=rvLSB51_qoeaIONDT93QSQ', 'imported_post', 'https://vnexpress.net/hlv-santos-bo-dao-nha-se-rat-kho-da-truoc-morocco-4546481.html', 0, 1670648400, 1670819742, 1670819742),
(48, 5, 1, 'Cựu tiền đạo Morocco chỉ ra điểm yếu của Bồ Đào Nha', 'Anonymous', '<a href=\"https://vnexpress.net/cuu-tien-dao-morocco-chi-ra-diem-yeu-cua-bo-dao-nha-4546497.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/skysports-nunez-pepe-5980974-j-1769-3022-1670635393.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=GCUlX7uz9eIBpHREw5Yqjw\"></a>Hassan Nader, từng ghi gần 100 bàn tại giải VĐQG Bồ Đào Nha, tin Morocco có thể khai thác hàng thủ chậm chạp của đối thủ để tạo bất ngờ ở tứ kết World Cup 2022.', 'Hassan Nader, từng ghi gần 100 bàn tại giải VĐQG Bồ Đào Nha, tin Morocco có thể khai thác hàng thủ chậm chạp của đối thủ để tạo bất ngờ ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/skysports-nunez-pepe-5980974-j-1769-3022-1670635393.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=GCUlX7uz9eIBpHREw5Yqjw', 'imported_post', 'https://vnexpress.net/cuu-tien-dao-morocco-chi-ra-diem-yeu-cua-bo-dao-nha-4546497.html', 0, 1670648400, 1670819742, 1670819742),
(49, 5, 1, 'Vì sao hậu vệ Argentina chế nhạo tuyển Hà Lan?', 'Anonymous', '<a href=\"https://vnexpress.net/vi-sao-hau-ve-argentina-che-nhao-tuyen-ha-lan-4546593.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/jzkrepb5njarpmnfvoey356nim-jpe-4837-4729-1670647208.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qtSrUQRMxb7qZWx0BtVNmQ\"></a>Nicolas Otamendi đáp lại sự khiêu khích của hậu vệ Denzel Dumfries, sau khi Argentina thắng Hà Lan trong loạt luân lưu ở tứ kết World Cup 2022.', 'Nicolas Otamendi đáp lại sự khiêu khích của hậu vệ Denzel Dumfries, sau khi Argentina thắng Hà Lan trong loạt luân lưu ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/jzkrepb5njarpmnfvoey356nim-jpe-4837-4729-1670647208.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=qtSrUQRMxb7qZWx0BtVNmQ', 'imported_post', 'https://vnexpress.net/vi-sao-hau-ve-argentina-che-nhao-tuyen-ha-lan-4546593.html', 0, 1670647310, 1670819742, 1670819742),
(50, 5, 1, 'Van Dijk: \'Chúng tôi đã tập đá 11m rất nhiều\'', 'Anonymous', '<a href=\"https://vnexpress.net/van-dijk-chung-toi-da-tap-da-11m-rat-nhieu-4546487.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/NewProject30-1670635540-2692-1670635766.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Jh2AzepWT5j7fXavU0Q2Tw\"></a>Theo đội trưởng Virgil Van Dijk, Hà Lan đã tập luyện 11m thường xuyên nhưng vẫn thua Argentina trong loạt đá luân lưu ở tứ kết World Cup 2022.', 'Theo đội trưởng Virgil Van Dijk, Hà Lan đã tập luyện 11m thường xuyên nhưng vẫn thua Argentina trong loạt đá luân lưu ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/NewProject30-1670635540-2692-1670635766.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Jh2AzepWT5j7fXavU0Q2Tw', 'imported_post', 'https://vnexpress.net/van-dijk-chung-toi-da-tap-da-11m-rat-nhieu-4546487.html', 0, 1670646182, 1670819742, 1670819742),
(51, 5, 1, 'Cầu thủ Croatia biết ơn thủ môn', 'Anonymous', '<a href=\"https://vnexpress.net/cau-thu-croatia-biet-on-thu-mon-4546579.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/afp-33272fj-jpeg-1670646093-1531-1670646114.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TWHFi3bViYsATt6DoTTelQ\"></a>Lovro Majer, Mislav Orsic và Bruno Petkovic tri ân thủ thành Dominik Livakovic sau khi Croatia hạ Brazil trong loạt luân lưu ở tứ kết World Cup 2022.', 'Lovro Majer, Mislav Orsic và Bruno Petkovic tri ân thủ thành Dominik Livakovic sau khi Croatia hạ Brazil trong loạt luân lưu ở tứ kết World Cup 2022.', 'https://i1-thethao.vnecdn.net/2022/12/10/afp-33272fj-jpeg-1670646093-1531-1670646114.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TWHFi3bViYsATt6DoTTelQ', 'imported_post', 'https://vnexpress.net/cau-thu-croatia-biet-on-thu-mon-4546579.html', 0, 1670646147, 1670819742, 1670819742),
(52, 5, 1, 'Võ sĩ Đinh Hồng Quân bị tước đai IBF', 'Anonymous', '<a href=\"https://vnexpress.net/vo-si-dinh-hong-quan-bi-tuoc-dai-ibf-4546528.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/DinhHongQuanJPG-1670639185-3214-1670639287.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dHEfeHCxVJbmzK2HhMo_jw\"></a>Do vượt qua số cân nặng so với quy định, võ sĩ Đinh Hồng Quân đã bị tước đai vô địch IBF châu Á ngay trước khi thượng đài.', 'Do vượt qua số cân nặng so với quy định, võ sĩ Đinh Hồng Quân đã bị tước đai vô địch IBF châu Á ngay trước khi thượng đài.', 'https://i1-thethao.vnecdn.net/2022/12/10/DinhHongQuanJPG-1670639185-3214-1670639287.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=dHEfeHCxVJbmzK2HhMo_jw', 'imported_post', 'https://vnexpress.net/vo-si-dinh-hong-quan-bi-tuoc-dai-ibf-4546528.html', 0, 1670644408, 1670819742, 1670819742),
(53, 5, 1, '\'Siêu nhân\' Messi trong đại chiến ở tứ kết World Cup 2022', 'Anonymous', '<a href=\"https://vnexpress.net/sieu-nhan-messi-trong-dai-chien-o-tu-ket-world-cup-2022-4546502.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/messi-jpeg-1670645772.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gvED78rM060pKBmIU64Fjg\"></a>Đội trưởng 35 tuổi Lionel Messi được ví như \"siêu nhân\" khi giúp Argentina thắng Hà Lan tại tứ kết World Cup 2022 tối 9/12.', 'Đội trưởng 35 tuổi Lionel Messi được ví như \"siêu nhân\" khi giúp Argentina thắng Hà Lan tại tứ kết World Cup 2022 tối 9/12.', 'https://i1-thethao.vnecdn.net/2022/12/10/messi-jpeg-1670645772.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=gvED78rM060pKBmIU64Fjg', 'imported_post', 'https://vnexpress.net/sieu-nhan-messi-trong-dai-chien-o-tu-ket-world-cup-2022-4546502.html', 0, 1670644256, 1670819742, 1670819742),
(54, 5, 1, 'Pele động viên Neymar', 'Anonymous', '<a href=\"https://vnexpress.net/pele-dong-vien-neymar-4546518.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/NewProject31-1670640627-6249-1670640881.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=bEYci1xb0BKKXOQuU48GaA\"></a>Huyền thoại 82 tuổi đăng thông điệp chúc mừng Neymar san bằng kỷ lục ghi bàn của ông cho đội tuyển Brazil, đồng thời động viên hậu bối vì thua Croatia.', 'Huyền thoại 82 tuổi đăng thông điệp chúc mừng Neymar san bằng kỷ lục ghi bàn của ông cho đội tuyển Brazil, đồng thời động viên hậu bối vì thua Croatia.', 'https://i1-thethao.vnecdn.net/2022/12/10/NewProject31-1670640627-6249-1670640881.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=bEYci1xb0BKKXOQuU48GaA', 'imported_post', 'https://vnexpress.net/pele-dong-vien-neymar-4546518.html', 0, 1670643823, 1670819742, 1670819742);
INSERT INTO `in_posts` (`post_id`, `post_category_id`, `post_feed_id`, `post_title`, `post_author`, `post_content`, `post_excerpt`, `post_featured_image`, `post_type`, `post_source`, `post_hits`, `post_pubdate`, `created_at`, `updated_at`) VALUES
(55, 5, 1, 'Messi khiêu khích tuyển Hà Lan', 'Anonymous', '<a href=\"https://vnexpress.net/messi-khieu-khich-tuyen-ha-lan-4546469.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/messi-3-jpeg-1670629980-167062-8929-4204-1670631569.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=63cS514WCnojCjiU1IfobQ\"></a>Ở trận tứ kết World Cup 2022 hôm qua, Lionel Messi nhiều lần tỏ thái độ với HLV Louis van Gaal, trợ lý Edgar Davids và tiền đạo Wout Weghorst.', 'Ở trận tứ kết World Cup 2022 hôm qua, Lionel Messi nhiều lần tỏ thái độ với HLV Louis van Gaal, trợ lý Edgar Davids và tiền đạo Wout Weghorst.', 'https://i1-thethao.vnecdn.net/2022/12/10/messi-3-jpeg-1670629980-167062-8929-4204-1670631569.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=63cS514WCnojCjiU1IfobQ', 'imported_post', 'https://vnexpress.net/messi-khieu-khich-tuyen-ha-lan-4546469.html', 0, 1670632437, 1670819742, 1670819742),
(56, 5, 1, 'Messi đề nghị FIFA xem lại tư cách trọng tài World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/messi-de-nghi-fifa-xem-lai-tu-cach-trong-tai-world-cup-4546443.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/messi-5-jpeg-1670628086-4647-1670628141.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ydAvfZkxRtUn6Ik5vgu4Yg\"></a>Thủ quân Lionel Messi phàn nàn về năng lực của trọng tài Mateu Lahoz, khi trận Argentina - Hà Lan phá kỷ lục thẻ vàng ở World Cup.', 'Thủ quân Lionel Messi phàn nàn về năng lực của trọng tài Mateu Lahoz, khi trận Argentina - Hà Lan phá kỷ lục thẻ vàng ở World Cup.', 'https://i1-thethao.vnecdn.net/2022/12/10/messi-5-jpeg-1670628086-4647-1670628141.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ydAvfZkxRtUn6Ik5vgu4Yg', 'imported_post', 'https://vnexpress.net/messi-de-nghi-fifa-xem-lai-tu-cach-trong-tai-world-cup-4546443.html', 0, 1670630316, 1670819742, 1670819742),
(57, 5, 1, 'Con trai tiền vệ Croatia an ủi Neymar', 'Anonymous', '<a href=\"https://vnexpress.net/con-trai-tien-ve-croatia-an-ui-neymar-4546441.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/perisic-neymar-jpeg-1670623392-3472-1670624758.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7OeIH_uuq41glR6Xv5ylcQ\"></a>Khi Neymar khóc sau thất bại trước Croatia ở tứ kết World Cup 2022, Leonardo Perisic - con trai tiền vệ Ivan Perisic - đến động viên ngôi sao Brazil.', 'Khi Neymar khóc sau thất bại trước Croatia ở tứ kết World Cup 2022, Leonardo Perisic - con trai tiền vệ Ivan Perisic - đến động viên ngôi sao Brazil.', 'https://i1-thethao.vnecdn.net/2022/12/10/perisic-neymar-jpeg-1670623392-3472-1670624758.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=7OeIH_uuq41glR6Xv5ylcQ', 'imported_post', 'https://vnexpress.net/con-trai-tien-ve-croatia-an-ui-neymar-4546441.html', 0, 1670628685, 1670819742, 1670819742),
(58, 5, 1, 'Bản lĩnh trên loạt \'đấu súng\' của Croatia ở World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/ban-linh-tren-loat-dau-sung-cua-croatia-o-world-cup-4546434.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/croatia-1670608968.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=x4KgauvalzizflP8o240FA\"></a>Hai cú sút luân lưu đầu tiên vào giữa cầu môn thể hiện bản lĩnh của đương kim á quân Croatia khi đả bại Brazil ở tứ kết World Cup 2022, tối 9/12.', 'Hai cú sút luân lưu đầu tiên vào giữa cầu môn thể hiện bản lĩnh của đương kim á quân Croatia khi đả bại Brazil ở tứ kết World Cup 2022, tối 9/12.', 'https://i1-thethao.vnecdn.net/2022/12/10/croatia-1670608968.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=x4KgauvalzizflP8o240FA', 'imported_post', 'https://vnexpress.net/ban-linh-tren-loat-dau-sung-cua-croatia-o-world-cup-4546434.html', 0, 1670624251, 1670819742, 1670819742),
(59, 5, 1, 'Messi phá kỷ lục của Pele ở World Cup', 'Anonymous', '<a href=\"https://vnexpress.net/messi-pha-ky-luc-cua-pele-o-world-cup-4546440.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/messi-jpeg-1670620095-16706201-2513-9665-1670623320.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ttTps61k9OwVcwEd7B-XIg\"></a>Đường chuyền cho hậu vệ Nahuel Molina ghi bàn vào lưới Hà Lan giúp Lionel Messi phá kỷ lục kiến tạo của Pele ở các vòng knock-out World Cup.', 'Đường chuyền cho hậu vệ Nahuel Molina ghi bàn vào lưới Hà Lan giúp Lionel Messi phá kỷ lục kiến tạo của Pele ở các vòng knock-out World Cup.', 'https://i1-thethao.vnecdn.net/2022/12/10/messi-jpeg-1670620095-16706201-2513-9665-1670623320.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ttTps61k9OwVcwEd7B-XIg', 'imported_post', 'https://vnexpress.net/messi-pha-ky-luc-cua-pele-o-world-cup-4546440.html', 0, 1670624080, 1670819742, 1670819742),
(60, 5, 1, 'HLV Brazil từ chức', 'Anonymous', '<a href=\"https://vnexpress.net/hlv-brazil-tu-chuc-4546438.html\"><img src=\"https://i1-thethao.vnecdn.net/2022/12/10/tite-1670617611-8656-1670617674.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5v4-NO_zV4QxJ_I_Tp9Tcg\"></a>HLV 61 tuổi Tite khép lại sáu năm dẫn dắt Brazil sau trận thua Croatia ở tứ kết World Cup 2022 tối 9/12.', 'HLV 61 tuổi Tite khép lại sáu năm dẫn dắt Brazil sau trận thua Croatia ở tứ kết World Cup 2022 tối 9/12.', 'https://i1-thethao.vnecdn.net/2022/12/10/tite-1670617611-8656-1670617674.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=5v4-NO_zV4QxJ_I_Tp9Tcg', 'imported_post', 'https://vnexpress.net/hlv-brazil-tu-chuc-4546438.html', 0, 1670623889, 1670819742, 1670819742),
(61, 8, 2, 'Siêu sale 12/12 đã đến, săn ngay loạt deal khủng giảm đến 74% nhiều đồ hay chờ năm mới', 'Anonymous', '<a href=\"https://genk.vn/sieu-sale-12-12-da-den-san-ngay-loat-deal-khung-giam-den-74-nhieu-do-hay-cho-nam-moi-20221212012646484.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/11/may-chieu-samsung-the-freestyle-14-16707825212831290509392-33-0-658-1000-crop-1670782527328381563108.jpg\"></a> (Tổ Quốc) - Cùng xem 3 sàn TMĐT lớn đang “nổ sale” đến mức nào trong đợt giảm giá lớn cuối cùng của năm này.', '(Tổ Quốc) - Cùng xem 3 sàn TMĐT lớn đang “nổ sale” đến mức nào trong đợt giảm giá lớn cuối cùng của năm này.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/11/may-chieu-samsung-the-freestyle-14-16707825212831290509392-33-0-658-1000-crop-1670782527328381563108.jpg', 'imported_post', 'https://genk.vn/sieu-sale-12-12-da-den-san-ngay-loat-deal-khung-giam-den-74-nhieu-do-hay-cho-nam-moi-20221212012646484.chn', 4, 1670819460, 1670819865, 1670819865),
(62, 8, 2, 'NASA vừa hoàn thành xuất sắc sứ mệnh Artemis I', 'Anonymous', '<a href=\"https://genk.vn/nasa-vua-hoan-thanh-xuat-sac-su-menh-artemis-i-20221212113158312.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670819455958-1670819456600859133393.jpg\"></a> (Tổ Quốc) - Tàu vũ trụ Orion đã đáp xuống Thái Bình Dương một cách an toàn sau sứ mệnh lịch sử quanh Mặt trăng.', '(Tổ Quốc) - Tàu vũ trụ Orion đã đáp xuống Thái Bình Dương một cách an toàn sau sứ mệnh lịch sử quanh Mặt trăng.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670819455958-1670819456600859133393.jpg', 'imported_post', 'https://genk.vn/nasa-vua-hoan-thanh-xuat-sac-su-menh-artemis-i-20221212113158312.chn', 0, 1670819400, 1670819865, 1670819865),
(63, 8, 2, 'Hé lộ tin nhắn giữa các nhà lãnh đạo tiền số: Tỷ phú CZ đã đưa ra cảnh báo trước ngày FTX sụp đổ', 'Anonymous', '<a href=\"https://genk.vn/he-lo-tin-nhan-giua-cac-nha-lanh-dao-tien-so-ty-phu-cz-da-dua-ra-canh-bao-truoc-ngay-ftx-sup-do-20221212113216922.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670818879967-1670818880254748314863.png\"></a> Tờ New York Times cho biết, trên ứng dụng Signal có một nhóm chat gồm nhiều lãnh đạo cấp cao của các công ty và sàn giao dịch tiền số. Một ngày trước khi sàn FTX nộp đơn xin phá sản, Changpeng Zhao, CEO Binance, đã có tin nhắn cảnh cáo gửi tới Sam Bankman-Fried (SBF).', 'Tờ New York Times cho biết, trên ứng dụng Signal có một nhóm chat gồm nhiều lãnh đạo cấp cao của các công ty và sàn giao dịch tiền số. Một ngày trước khi sàn FTX nộp đơn xin...', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670818879967-1670818880254748314863.png', 'imported_post', 'https://genk.vn/he-lo-tin-nhan-giua-cac-nha-lanh-dao-tien-so-ty-phu-cz-da-dua-ra-canh-bao-truoc-ngay-ftx-sup-do-20221212113216922.chn', 0, 1670818800, 1670819865, 1670819865),
(64, 8, 2, 'Đối thủ tăng tốc bàn giao xe điện theo cách không giống ai, Elon Musk phán ngắn gọn: ‘họ đang tự tử đấy’', 'Anonymous', '<a href=\"https://genk.vn/doi-thu-tang-toc-ban-giao-xe-dien-theo-cach-khong-giong-ai-elon-musk-phan-ngan-gon-ho-dang-tu-tu-day-20221212111803422.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670818339720-1670818340253963736019.jpg\"></a> Hiếm có một vị CEO nào như Elon Musk: sẵn sàng nhận xét về đối thủ của mình, thậm chí khẳng định đối thủ sẽ sớm phá sản.', 'Hiếm có một vị CEO nào như Elon Musk: sẵn sàng nhận xét về đối thủ của mình, thậm chí khẳng định đối thủ sẽ sớm phá sản.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670818339720-1670818340253963736019.jpg', 'imported_post', 'https://genk.vn/doi-thu-tang-toc-ban-giao-xe-dien-theo-cach-khong-giong-ai-elon-musk-phan-ngan-gon-ho-dang-tu-tu-day-20221212111803422.chn', 0, 1670818260, 1670819865, 1670819865),
(65, 8, 2, 'Toyota đang phát triển hộp số sàn cho ô tô điện', 'Anonymous', '<a href=\"https://genk.vn/toyota-dang-phat-trien-hop-so-san-cho-o-to-dien-20221212112908484.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670815039172-1670815039974179090081.jpg\"></a> (Tổ Quốc) - Hộp số sàn từng là đặc trưng của các dòng xe đời thấp và xe thể thao cao cấp, nhưng chúng ta sẽ có thể sớm thấy chúng xuất hiện trên xe điện.', '(Tổ Quốc) - Hộp số sàn từng là đặc trưng của các dòng xe đời thấp và xe thể thao cao cấp, nhưng chúng ta sẽ có thể sớm thấy chúng xuất hiện trên xe điện.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670815039172-1670815039974179090081.jpg', 'imported_post', 'https://genk.vn/toyota-dang-phat-trien-hop-so-san-cho-o-to-dien-20221212112908484.chn', 0, 1670815020, 1670819865, 1670819865),
(66, 8, 2, 'Microsoft âm thầm phát triển một siêu ứng dụng, để giành giật thị phần tìm kiếm di động với Google', 'Anonymous', '<a href=\"https://genk.vn/microsoft-am-tham-phat-trien-mot-sieu-ung-dung-de-gianh-giat-thi-phan-tim-kiem-di-dong-voi-google-20221212094402011.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670812475112-16708124759362024556292.jpg\"></a> (Tổ Quốc) - Tương tự như WeChat của Tencent, Microsoft cũng đang theo đuổi việc tạo ra một siêu ứng dụng nơi người dùng có kết hợp nhiều hoạt động của mình trên đó.', '(Tổ Quốc) - Tương tự như WeChat của Tencent, Microsoft cũng đang theo đuổi việc tạo ra một siêu ứng dụng nơi người dùng có kết hợp nhiều hoạt động của mình trên đó.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670812475112-16708124759362024556292.jpg', 'imported_post', 'https://genk.vn/microsoft-am-tham-phat-trien-mot-sieu-ung-dung-de-gianh-giat-thi-phan-tim-kiem-di-dong-voi-google-20221212094402011.chn', 5, 1670812440, 1670819865, 1670819865),
(67, 8, 2, 'Elon Musk dọa kiện và bắt nhân viên bồi thường nếu rò rỉ tin mật của công ty cho các phương tiện truyền thông', 'Anonymous', '<a href=\"https://genk.vn/elon-musk-doa-kien-va-bat-nhan-vien-boi-thuong-neu-ro-ri-tin-mat-cua-cong-ty-cho-cac-phuong-tien-truyen-thong-20221212092714031.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670811957402-16708119581271180116520.jpeg\"></a> Trớ trêu thay, thông tin này đã được tiết lộ cho một phóng viên không lâu sau đó và người này đã “khoe” luôn lên Twitter.', 'Trớ trêu thay, thông tin này đã được tiết lộ cho một phóng viên không lâu sau đó và người này đã “khoe” luôn lên Twitter.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670811957402-16708119581271180116520.jpeg', 'imported_post', 'https://genk.vn/elon-musk-doa-kien-va-bat-nhan-vien-boi-thuong-neu-ro-ri-tin-mat-cua-cong-ty-cho-cac-phuong-tien-truyen-thong-20221212092714031.chn', 0, 1670811900, 1670819865, 1670819865),
(68, 8, 2, 'Sinh nhật Shopee – Siêu Deal Quà Khủng từ Samsung, LG, Mocato', 'Anonymous', '<a href=\"https://genk.vn/sinh-nhat-shopee-sieu-deal-qua-khung-tu-samsung-lg-mocato-20221210115228484.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/10/avatar1670647830024-16706478306331785154505.png\"></a> (Tổ Quốc) - Những tín đồ công nghệ hãy tham khảo các \"Deal\" lớn trong ngày 12.12 trên Shopee để chọn về cho mình món đồ \"hời\" nhất!', '(Tổ Quốc) - Những tín đồ công nghệ hãy tham khảo các \"Deal\" lớn trong ngày 12.12 trên Shopee để chọn về cho mình món đồ \"hời\" nhất!', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/10/avatar1670647830024-16706478306331785154505.png', 'imported_post', 'https://genk.vn/sinh-nhat-shopee-sieu-deal-qua-khung-tu-samsung-lg-mocato-20221210115228484.chn', 0, 1670810400, 1670819865, 1670819865),
(69, 8, 2, 'Cựu Phó chủ tịch Apple kể chuyện bị sa thải lúc 1 rưỡi sáng: ‘22 năm gắn bó của tôi tan biến chỉ trong 25 giây’', 'Anonymous', '<a href=\"https://genk.vn/cuu-pho-chu-tich-apple-ke-chuyen-bi-sa-thai-luc-1-ruoi-sang-22-nam-gan-bo-cua-toi-tan-bien-chi-trong-25-giay-20221212082851729.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670808352207-1670808352485142980284.png\"></a> Vì một câu nói trong video trên TikTok, Tony Blevins đã bị Apple cho thôi việc.', 'Vì một câu nói trong video trên TikTok, Tony Blevins đã bị Apple cho thôi việc.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670808352207-1670808352485142980284.png', 'imported_post', 'https://genk.vn/cuu-pho-chu-tich-apple-ke-chuyen-bi-sa-thai-luc-1-ruoi-sang-22-nam-gan-bo-cua-toi-tan-bien-chi-trong-25-giay-20221212082851729.chn', 0, 1670808540, 1670819865, 1670819865),
(70, 8, 2, 'Giá iPhone 14 giảm kỷ lục', 'Anonymous', '<a href=\"https://genk.vn/gia-iphone-14-giam-ky-luc-20221212081602537.chn\"><img src=\"https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670807639913-16708076404261045360089.jpg\"></a> Càng về giữa tháng 12, giá iPhone 14 càng giảm mạnh, rẻ hơn rất nhiều so với thời điểm ra mắt.', 'Càng về giữa tháng 12, giá iPhone 14 càng giảm mạnh, rẻ hơn rất nhiều so với thời điểm ra mắt.', 'https://genk.mediacdn.vn/zoom/700_438/139269124445442048/2022/12/12/avatar1670807639913-16708076404261045360089.jpg', 'imported_post', 'https://genk.vn/gia-iphone-14-giam-ky-luc-20221212081602537.chn', 0, 1670807580, 1670819865, 1670819865),
(71, 7, 3, '7 khoảnh khắc buồn nhất lịch sử World Cup mãi đọng lại trong lòng người hâm mộ: Messi bước qua cúp vàng, cái cúi đầu của Zidane và nước mắt của Son Heung-min', 'Anonymous', '<a href=\"https://cafebiz.vn/7-khoanh-khac-buon-nhat-lich-su-world-cup-mai-dong-lai-trong-long-nguoi-ham-mo-messi-buoc-qua-cup-vang-cai-cui-dau-cua-zidane-va-nuoc-mat-cua-son-heung-min-176221212104131526.chn\"><img src=\"https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670816448176-1670816448543777127139.jpg\"></a> World Cup không chỉ đem lại cảm xúc háo hức, sôi nổi, vỡ òa mà cũng có không ít những khoảng lặng.', 'World Cup không chỉ đem lại cảm xúc háo hức, sôi nổi, vỡ òa mà cũng có không ít những khoảng lặng.', 'https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670816448176-1670816448543777127139.jpg', 'imported_post', 'https://cafebiz.vn/7-khoanh-khac-buon-nhat-lich-su-world-cup-mai-dong-lai-trong-long-nguoi-ham-mo-messi-buoc-qua-cup-vang-cai-cui-dau-cua-zidane-va-nuoc-mat-cua-son-heung-min-176221212104131526.chn', 0, 1670819940, 1670822384, 1670822384),
(72, 7, 3, 'Vợ chồng Hoàng tử William tiết lộ lý do luôn cho con ngồi giữa đám đông khi đi xem bóng đá: Nghe mà phục cách dạy dỗ!', 'Anonymous', '<a href=\"https://cafebiz.vn/vo-chong-hoang-tu-william-tiet-lo-ly-do-luon-cho-con-ngoi-giua-dam-dong-khi-di-xem-bong-da-nghe-ma-phuc-cach-day-do-176221212101349768.chn\"><img src=\"https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670814742565-1670814742664542050379-0-48-314-550-crop-1670814800374770591160.jpg\"></a> Vợ chồng Hoàng gia Anh có những phương pháp giáo dục con cái khoa học, được công chúng ngưỡng mộ.', 'Vợ chồng Hoàng gia Anh có những phương pháp giáo dục con cái khoa học, được công chúng ngưỡng mộ.', 'https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670814742565-1670814742664542050379-0-48-314-550-crop-1670814800374770591160.jpg', 'imported_post', 'https://cafebiz.vn/vo-chong-hoang-tu-william-tiet-lo-ly-do-luon-cho-con-ngoi-giua-dam-dong-khi-di-xem-bong-da-nghe-ma-phuc-cach-day-do-176221212101349768.chn', 0, 1670818800, 1670822384, 1670822384),
(73, 7, 3, 'Du học sinh Việt kể chuyện đi chợ truyền thống Hàn Quốc: Bán theo rổ, giá rẻ như cho nhưng coi chừng bị lừa trắng mắt', 'Anonymous', '<a href=\"https://cafebiz.vn/du-hoc-sinh-viet-ke-chuyen-di-cho-truyen-thong-han-quoc-ban-theo-ro-gia-re-nhu-cho-nhung-coi-chung-bi-lua-trang-mat-176221212104247973.chn\"><img src=\"https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670816514932-1670816515242578134759-0-62-427-745-crop-1670816527558118356415.jpg\"></a> Chợ truyền thống Hàn Quốc có gì? Liệu có giống với chợ ở Việt Nam? Đó là câu hỏi đầy tò mò mà rất nhiều bạn du học sinh hoặc du khách muốn biết khi đặt chân tới xứ sở kim chi. Đi chợ vốn là việc hàng ngày cần làm để có nguồn rau củ quả, thực phẩm phục vụ đời sống hàng ngày. Tuy nhiên, đôi khi, việc đi chợ còn là trải nghiệm thú vị, đặc biệt với những du khách ưa khám phá, tìm hiểu nếp sống văn hóa của người bản địa.', 'Chợ truyền thống Hàn Quốc có gì? Liệu có giống với chợ ở Việt Nam? Đó là câu hỏi đầy tò mò mà rất nhiều bạn du học sinh hoặc du khách muốn biết khi đặt chân tới xứ...', 'https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670816514932-1670816515242578134759-0-62-427-745-crop-1670816527558118356415.jpg', 'imported_post', 'https://cafebiz.vn/du-hoc-sinh-viet-ke-chuyen-di-cho-truyen-thong-han-quoc-ban-theo-ro-gia-re-nhu-cho-nhung-coi-chung-bi-lua-trang-mat-176221212104247973.chn', 0, 1670817900, 1670822384, 1670822384),
(74, 7, 3, 'Đôi vợ chồng Hà Nội kết hôn 10 năm ao ước có nhà mới: Cải tạo nhà 58m2 chật chội thành các không gian riêng tư', 'Anonymous', '<a href=\"https://cafebiz.vn/doi-vo-chong-ha-noi-ket-hon-10-nam-ao-uoc-co-nha-moi-cai-tao-nha-58m2-chat-choi-thanh-cac-khong-gian-rieng-tu-176221212093111423.chn\"><img src=\"https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670817626310-1670817627520352858105.png\"></a> Không gian bí bách của căn nhà cũ đã khiến vợ chồng chủ nhà nhiều lần không đồng thuận với nhau. Vì thế, họ đã đưa ra quyết định cuối cùng.', 'Không gian bí bách của căn nhà cũ đã khiến vợ chồng chủ nhà nhiều lần không đồng thuận với nhau. Vì thế, họ đã đưa ra quyết định cuối cùng.', 'https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670817626310-1670817627520352858105.png', 'imported_post', 'https://cafebiz.vn/doi-vo-chong-ha-noi-ket-hon-10-nam-ao-uoc-co-nha-moi-cai-tao-nha-58m2-chat-choi-thanh-cac-khong-gian-rieng-tu-176221212093111423.chn', 0, 1670817600, 1670822384, 1670822384),
(75, 7, 3, 'Những chiếc áo số 10 Messi với 60.000 mũi chỉ: Đằng sau là một vành đai sản xuất-tiêu thụ hàng World Cup đồ sộ của Trung Quốc', 'Anonymous', '<a href=\"https://cafebiz.vn/nhung-chiec-ao-so-10-messi-voi-60000-mui-chi-dang-sau-la-mot-vanh-dai-san-xuat-tieu-thu-hang-world-cup-do-so-cua-trung-quoc-176221212101606217.chn\"><img src=\"https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670814918054-16708149182321779774231.gif\"></a> Doanh nhân Trung Quốc tỏ ra rất nhanh nhạy trong việc phát triển thị trường tiêu thụ hàng hóa World Cup 2022.', 'Doanh nhân Trung Quốc tỏ ra rất nhanh nhạy trong việc phát triển thị trường tiêu thụ hàng hóa World Cup 2022.', 'https://cafebiz.cafebizcdn.vn/zoom/700_438/162123310254002176/2022/12/12/avatar1670814918054-16708149182321779774231.gif', 'imported_post', 'https://cafebiz.vn/nhung-chiec-ao-so-10-messi-voi-60000-mui-chi-dang-sau-la-mot-vanh-dai-san-xuat-tieu-thu-hang-world-cup-do-so-cua-trung-quoc-176221212101606217.chn', 0, 1670817540, 1670822384, 1670822384),
(76, 6, 4, 'Lâm Thanh Hà thấy có lỗi với chồng', 'Anonymous', '<a href=\"https://vnexpress.net/lam-thanh-ha-thay-co-loi-voi-chong-4547095.html\"><img src=\"https://i1-giaitri.vnecdn.net/2022/12/12/topha1-1670818244-7484-1670818555.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Dg66lrJXPFXllzBaAPpHrA\"></a>Minh tinh Hong Kong Lâm Thanh Hà nói chồng - tỷ phú Hình Lý Nguyên - chấp nhận hy sinh sự riêng tư để cưới bà.', 'Minh tinh Hong Kong Lâm Thanh Hà nói chồng - tỷ phú Hình Lý Nguyên - chấp nhận hy sinh sự riêng tư để cưới bà.', 'https://i1-giaitri.vnecdn.net/2022/12/12/topha1-1670818244-7484-1670818555.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Dg66lrJXPFXllzBaAPpHrA', 'imported_post', 'https://vnexpress.net/lam-thanh-ha-thay-co-loi-voi-chong-4547095.html', 0, 1670821448, 1670822501, 1670822501),
(77, 6, 4, 'Khánh Thi khóc trong lễ ăn hỏi', 'Anonymous', '<a href=\"https://vnexpress.net/khanh-thi-khoc-trong-le-an-hoi-4547002.html\"><img src=\"https://i1-giaitri.vnecdn.net/2022/12/12/khanhthi11-1670814378-5213-1670815532.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DxpvSzRij9USmtdPHHlISg\"></a>Khánh Thi bật khóc khi cùng Phan Hiển làm lễ ra mắt họ hàng hai gia đình sau nhiều năm bên nhau, sáng 12/12.', 'Khánh Thi bật khóc khi cùng Phan Hiển làm lễ ra mắt họ hàng hai gia đình sau nhiều năm bên nhau, sáng 12/12.', 'https://i1-giaitri.vnecdn.net/2022/12/12/khanhthi11-1670814378-5213-1670815532.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=DxpvSzRij9USmtdPHHlISg', 'imported_post', 'https://vnexpress.net/khanh-thi-khoc-trong-le-an-hoi-4547002.html', 0, 1670817487, 1670822501, 1670822501),
(78, 6, 4, 'Lý Hùng, Thu Hà tái ngộ', 'Anonymous', '<a href=\"https://vnexpress.net/ly-hung-thu-ha-tai-ngo-4546942.html\"><img src=\"https://i1-giaitri.vnecdn.net/2022/12/11/lyhungtop-1670777056-6973-1670777313.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sV9iFg_JwQ3QQir5vIbjXA\"></a>Tài tử Lý Hùng cùng Thu Hà - người đẹp \"Lá ngọc cành vàng\"- ôn kỷ niệm thời hoàng kim khi đóng cặp đầu thập niên 1990.', 'Tài tử Lý Hùng cùng Thu Hà - người đẹp \"Lá ngọc cành vàng\"- ôn kỷ niệm thời hoàng kim khi đóng cặp đầu thập niên 1990.', 'https://i1-giaitri.vnecdn.net/2022/12/11/lyhungtop-1670777056-6973-1670777313.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=sV9iFg_JwQ3QQir5vIbjXA', 'imported_post', 'https://vnexpress.net/ly-hung-thu-ha-tai-ngo-4546942.html', 0, 1670778323, 1670822501, 1670822501),
(79, 6, 4, 'Nhịp sống Sài Gòn qua ký họa', 'Anonymous', '<a href=\"https://vnexpress.net/nhip-song-sai-gon-qua-ky-hoa-4546843.html\"><img src=\"https://i1-giaitri.vnecdn.net/2022/12/11/233A5369-1670733454.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TWzz_ZssDlsa7Opf29W2BA\"></a>Hơn 40 bức ký họa nhịp sống, di sản ở Sài Gòn được trưng bày trước Bưu điện thành phố, thu hút khách tham quan, sáng 11/12.', 'Hơn 40 bức ký họa nhịp sống, di sản ở Sài Gòn được trưng bày trước Bưu điện thành phố, thu hút khách tham quan, sáng 11/12.', 'https://i1-giaitri.vnecdn.net/2022/12/11/233A5369-1670733454.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=TWzz_ZssDlsa7Opf29W2BA', 'imported_post', 'https://vnexpress.net/nhip-song-sai-gon-qua-ky-hoa-4546843.html', 0, 1670778000, 1670822501, 1670822501),
(80, 6, 4, 'Show nhạc của Patti LaBelle bị dọa đánh bom', 'Anonymous', '<a href=\"https://vnexpress.net/show-nhac-cua-patti-labelle-bi-doa-danh-bom-4546923.html\"><img src=\"https://i1-giaitri.vnecdn.net/2022/12/11/pattilabelle-1670768330-4617-1670768523.png?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xbSRdSJFUjzFLmJscEdckw\"></a>Đêm nhạc của ca sĩ Patti LaBelle ở Milwaukee phải hủy giữa giờ vì bị đe dọa đánh bom.', 'Đêm nhạc của ca sĩ Patti LaBelle ở Milwaukee phải hủy giữa giờ vì bị đe dọa đánh bom.', 'https://i1-giaitri.vnecdn.net/2022/12/11/pattilabelle-1670768330-4617-1670768523.png?w=1200&h=0&q=100&dpr=1&fit=crop&s=xbSRdSJFUjzFLmJscEdckw', 'imported_post', 'https://vnexpress.net/show-nhac-cua-patti-labelle-bi-doa-danh-bom-4546923.html', 0, 1670770313, 1670822501, 1670822501),
(81, 10, 5, 'Khó thở do đầy hơi, khi nào cần đến bác sĩ?', 'Anonymous', '<a href=\"https://thanhnien.vn/kho-tho-do-day-hoi-khi-nao-can-den-bac-si-post1529621.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/unvjxbf/2022_12_07/3-day-hoi-shuttesrtock-9646.jpg\" align=\"left\" hspace=\"5\"></a><p>Đầy hơi đặc trưng với cảm giác đầy hoặc căng tức ở bụng. Một vấn đề kèm theo đầy hơi ít được nhắc đến là khó thở. Đầy hơi và khó thở xuất hiện cùng lúc có thể là dấu hiệu của một số bất ổn <a href=\"https://thanhnien.vn/suc-khoe/\" title=\"sức khỏe\" target=\"_blank\" rel=\"noopener noreferrer\">sức khỏe</a>.</p><div><a href=\"https://thanhnien.vn/vi-sao-an-trai-cay-bi-kho-tieu-post1522633.html\">Vì sao ăn trái cây bị khó tiêu?</a><a href=\"https://thanhnien.vn/bi-trao-nguoc-da-day-can-tap-luyen-the-nao-de-giam-trieu-chung-post1519927.html\">Bị trào ngược dạ dày, cần tập luyện thế nào để giảm triệu chứng? </a><a href=\"https://thanhnien.vn/loai-hat-nay-co-the-cai-thien-suc-khoe-duong-ruot-cua-ban-post1518161.html\">Loại hạt này có thể cải thiện sức khỏe đường ruột của bạn</a></div>', 'Đầy hơi đặc trưng với cảm giác đầy hoặc căng tức ở bụng. Một vấn đề kèm theo đầy hơi ít được nhắc đến là khó thở. Đầy hơi và khó thở xuất hiện cùng lúc có thể là...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/unvjxbf/2022_12_07/3-day-hoi-shuttesrtock-9646.jpg', 'imported_post', 'https://thanhnien.vn/kho-tho-do-day-hoi-khi-nao-can-den-bac-si-post1529621.html', 0, 1670819192, 1670822685, 1670822685),
(82, 10, 5, 'Cứu sống bệnh nhân nguy kịch do nhồi máu cơ tim cấp bằng kỹ thuật ECMO', 'Anonymous', '<a href=\"https://thanhnien.vn/cuu-song-benh-nhan-nguy-kich-do-viem-co-tim-bang-ky-thuat-ecmo-post1530932.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/jbvunuc/2022_12_12/benh-nhan-1-8450.jpg\" align=\"left\" hspace=\"5\"></a><p>Các bác sĩ Bệnh viện đa khoa <a href=\"https://thanhnien.vn/quang-nam/\" title=\"Quảng Nam\" target=\"_blank\" rel=\"noopener noreferrer\">Quảng Nam</a> vừa cứu sống thêm một bệnh nhân nguy kịch do nhồi máu cơ tim cấp bằng kỹ thuật <a href=\"https://thanhnien.vn/ecmo/\" title=\"ECMO\" target=\"_blank\" rel=\"noopener noreferrer\">ECMO</a>.</p><div><a href=\"https://thanhnien.vn/nguy-co-dien-giat-khi-tam-binh-nong-lanh-bac-si-chi-cach-so-cap-cuu-post1521362.html\">Nguy cơ điện giật khi tắm bình nóng lạnh: Bác sĩ chỉ cách sơ cấp cứu </a><a href=\"https://thanhnien.vn/be-gai-so-sinh-bi-bo-roi-trong-rung-da-tu-vong-sau-2-ngay-cuu-chua-post1519020.html\">Bé gái sơ sinh bị bỏ rơi trong rừng đã tử vong sau 2 ngày cứu chữa</a><a href=\"https://thanhnien.vn/benh-vien-o-tphcm-noi-gi-ve-benh-nhan-ngung-tim-ve-nha-thi-duoc-cuu-song-post1517966.html\">Bệnh viện ở TP.HCM nói gì về bệnh nhân ngưng tim, về nhà thì được cứu sống?</a></div>', 'Các bác sĩ Bệnh viện đa khoa Quảng Nam vừa cứu sống thêm một bệnh nhân nguy kịch do nhồi máu cơ tim cấp bằng kỹ thuật ECMO.Nguy cơ điện giật khi tắm bình nóng lạnh: Bác sĩ chỉ...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/jbvunuc/2022_12_12/benh-nhan-1-8450.jpg', 'imported_post', 'https://thanhnien.vn/cuu-song-benh-nhan-nguy-kich-do-viem-co-tim-bang-ky-thuat-ecmo-post1530932.html', 0, 1670815010, 1670822685, 1670822685),
(83, 10, 5, 'Nam giới không có tinh trùng vẫn có thể sinh con', 'Anonymous', '<a href=\"https://thanhnien.vn/nam-gioi-khong-co-tinh-trung-van-co-the-sinh-con-post1530940.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/tqmvkpic/2022_12_12/phoi-4461.jpg\" align=\"left\" hspace=\"5\"></a><p>Người đàn ông 31 tuổi ở Phú Thọ không có tinh trùng do teo tinh hoàn đã có thể sinh con sau khi được vi phẫu thuật tìm tinh trùng.</p><div><a href=\"https://thanhnien.vn/tinh-trung-co-xu-huong-yeu-hon-o-nam-gioi-beo-phi-post1523100.html\">Tinh trùng có xu hướng yếu hơn ở nam giới béo phì</a><a href=\"https://thanhnien.vn/ho-tro-thu-tinh-trong-ong-nghiem-cho-cac-cap-vo-chong-kho-khan-post1518809.html\">Hỗ trợ thụ tinh trong ống nghiệm cho các cặp vợ chồng khó khăn</a><a href=\"https://thanhnien.vn/cau-be-15-tuoi-mac-chung-xoan-tinh-hoan-suyt-bi-hoai-tu-post1518147.html\">Cậu bé 15 tuổi mắc chứng xoắn tinh hoàn suýt bị hoại tử</a></div>', 'Người đàn ông 31 tuổi ở Phú Thọ không có tinh trùng do teo tinh hoàn đã có thể sinh con sau khi được vi phẫu thuật tìm tinh trùng.Tinh trùng có xu hướng yếu hơn ở nam giới...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/tqmvkpic/2022_12_12/phoi-4461.jpg', 'imported_post', 'https://thanhnien.vn/nam-gioi-khong-co-tinh-trung-van-co-the-sinh-con-post1530940.html', 0, 1670814656, 1670822685, 1670822685),
(84, 10, 5, '4 món cần có trong bếp khi đang bị cảm cúm', 'Anonymous', '<a href=\"https://thanhnien.vn/4-mon-can-co-trong-bep-khi-dang-bi-cam-cum-post1530356.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/unvjxbf/2022_12_09/4-thit-bo-bam-shutterstock-2066.jpg\" align=\"left\" hspace=\"5\"></a><p><a href=\"https://thanhnien.vn/thoi-tiet/\" title=\"Thời tiết\" target=\"_blank\" rel=\"noopener noreferrer\">Thời tiết</a> trở lạnh vào cuối năm là điều kiện thuận lợi cho cảm cúm lây lan. Nếu không may mắc bệnh, mọi người cần để sẵn trong nhà những món có khả năng hỗ trợ hệ miễn dịch khỏe mạnh.</p><div><a href=\"https://thanhnien.vn/3-loi-khuyen-tot-nhat-de-giu-suc-khoe-trong-mua-cum-lay-lan-post1519336.html\">3 lời khuyên tốt nhất để giữ sức khỏe trong mùa cúm lây lan</a><a href=\"https://thanhnien.vn/7-ly-do-tuyet-voi-ban-nen-bao-gom-toi-vao-bua-an-hang-ngay-post1497915.html\">7 lý do tuyệt vời bạn nên bao gồm tỏi vào bữa ăn hằng ngày</a><a href=\"https://thanhnien.vn/chuyen-gia-6-thu-tot-ban-nen-an-khi-bi-cam-cum-post1520488.html\">Chuyên gia: 6 thứ tốt bạn nên ăn khi bị cảm cúm </a></div>', 'Thời tiết trở lạnh vào cuối năm là điều kiện thuận lợi cho cảm cúm lây lan. Nếu không may mắc bệnh, mọi người cần để sẵn trong nhà những món có khả năng hỗ trợ hệ miễn dịch...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/unvjxbf/2022_12_09/4-thit-bo-bam-shutterstock-2066.jpg', 'imported_post', 'https://thanhnien.vn/4-mon-can-co-trong-bep-khi-dang-bi-cam-cum-post1530356.html', 0, 1670810918, 1670822685, 1670822685),
(85, 10, 5, 'Vì sao nhiều người mắc bệnh hô hấp trong thời điểm này?', 'Anonymous', '<a href=\"https://thanhnien.vn/vi-sao-nhieu-nguoi-mac-benh-ho-hap-trong-thoi-diem-nay-post1530847.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/wobjohb/2022_12_11/cum-804.jpg\" align=\"left\" hspace=\"5\"></a><p>Gần đây em xem <a href=\"https://thanhnien.vn/\" title=\"tin tức\" target=\"_blank\" rel=\"noopener noreferrer\">tin tức</a> thấy số ca nhập viện do cúm, viêm phổi phế cầu gia tăng, nhiều ca biến chứng nặng thậm chí tử vong. Bác sĩ cho em hỏi vì sao các bệnh hô hấp nguy hiểm hơn về cuối năm ạ? (Phạm Thảo, <a href=\"https://thanhnien.vn/hung-yen/\" title=\"Hưng Yên\" target=\"_blank\" rel=\"noopener noreferrer\">Hưng Yên</a>)<br></p><div><a href=\"https://thanhnien.vn/nghien-cuu-moi-phat-hien-nguoi-benh-nay-co-the-phai-kieng-yeu-post1520495.html\">Nghiên cứu mới phát hiện người bệnh này có thể phải kiêng \'yêu\'</a><a href=\"https://thanhnien.vn/nguoi-phu-nu-bi-can-den-30-do-phai-cat-bo-doi-mat-post1530600.html\">Người phụ nữ bị cận đến 30 độ, phải cắt bỏ đôi mắt</a><a href=\"https://thanhnien.vn/4-thoi-quen-an-uong-giup-tang-co-giam-mo-post1528942.html\">4 thói quen ăn uống giúp tăng cơ, giảm mỡ</a></div>', 'Gần đây em xem tin tức thấy số ca nhập viện do cúm, viêm phổi phế cầu gia tăng, nhiều ca biến chứng nặng thậm chí tử vong. Bác sĩ cho em hỏi vì sao các bệnh hô hấp...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/wobjohb/2022_12_11/cum-804.jpg', 'imported_post', 'https://thanhnien.vn/vi-sao-nhieu-nguoi-mac-benh-ho-hap-trong-thoi-diem-nay-post1530847.html', 6, 1670793694, 1670822685, 1670822685),
(86, 3, 6, 'Những nước “hốt đậm” từ dầu mỏ nhờ chiến sự Ukraine', 'Anonymous', '<a href=\"https://thanhnien.vn/nhung-nuoc-hot-dam-tu-dau-mo-nho-chien-su-ukraine-post1530900.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/pwivoviu/2022_12_12/23a-6237.jpg\" align=\"left\" hspace=\"5\"></a><p>Trong khi nhiều nước đối mặt không ít khó khăn do sự bất ổn của thị trường năng lượng do <a href=\"https://thanhnien.vn/chau-au-tang-cuong-chi-tieu-quoc-phong-giua-chien-su-ukraine-post1529873.html\" title=\"Châu Âu tăng cường chi tiêu quốc phòng giữa chiến sự Ukraine\">chiến sự Ukraine</a>, <a href=\"https://thanhnien.vn/trung-quoc/\" title=\"Trung Quốc\" target=\"_blank\" rel=\"noopener noreferrer\">Trung Quốc</a>, Ấn Độ và Qatar lại là những quốc gia được cho là thủ lợi từ thị trường này.</p><div><a href=\"https://thanhnien.vn/nga-khong-chap-nhan-gia-tran-dau-du-phai-giam-san-luong-post1528765.html\">Nga thà giảm sản lượng, không chấp nhận giá trần dầu mỏ phương Tây áp đặt</a><a href=\"https://thanhnien.vn/thieu-do-la-my-ghana-dung-vang-mua-dau-mo-post1525327.html\">Thiếu đô la Mỹ, Ghana dùng vàng mua dầu mỏ</a><a href=\"https://thanhnien.vn/eu-chinh-thuc-de-xuat-cam-nhap-khau-toan-bo-dau-mo-nga-post1455134.html\">EU chính thức đề xuất cấm nhập khẩu hoàn toàn dầu mỏ Nga</a></div>', 'Trong khi nhiều nước đối mặt không ít khó khăn do sự bất ổn của thị trường năng lượng do chiến sự Ukraine, Trung Quốc, Ấn Độ và Qatar lại là những quốc gia được cho là thủ lợi...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/pwivoviu/2022_12_12/23a-6237.jpg', 'imported_post', 'https://thanhnien.vn/nhung-nuoc-hot-dam-tu-dau-mo-nho-chien-su-ukraine-post1530900.html', 0, 1670822147, 1670822764, 1670822764),
(87, 3, 6, 'Phát hiện \'nghĩa địa\' cá mập ở Ấn Độ Dương', 'Anonymous', '<a href=\"https://thanhnien.vn/phat-hien-nghia-dia-ca-map-o-an-do-duong-post1530980.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/sgtnrb/2022_12_12/camap-2-4447.jpg\" align=\"left\" hspace=\"5\"></a><p>Các nhà khoa học Úc mới đây đã phát hiện ra một \"kho báu\" thực sự có thể giúp giải mã những bí ẩn quá khứ về loài <a href=\"https://thanhnien.vn/ca-map/\" title=\"cá mập\" target=\"_blank\" rel=\"noopener noreferrer\">cá mập</a>.</p><div><a href=\"https://thanhnien.vn/hang-tram-con-ca-voi-hoa-tieu-dat-vao-bo-phan-nua-da-chet-post1502199.html\">Hàng trăm con cá voi hoa tiêu dạt vào bờ, phân nửa đã chết</a><a href=\"https://thanhnien.vn/bi-ca-map-tan-cong-2-du-khach-nuoc-ngoai-thiet-mang-o-ai-cap-post1474601.html\">Bị cá mập tấn công, 2 du khách nước ngoài thiệt mạng ở Ai Cập</a><a href=\"https://thanhnien.vn/protein-tu-ca-map-co-kha-nang-ngan-chan-ca-bien-the-delta-lan-omicron-post1412557.html\">Protein từ cá mập có khả năng ngăn chặn cả biến thể Delta lẫn Omicron</a></div>', 'Các nhà khoa học Úc mới đây đã phát hiện ra một \"kho báu\" thực sự có thể giúp giải mã những bí ẩn quá khứ về loài cá mập.Hàng trăm con cá voi hoa tiêu dạt vào bờ,...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/sgtnrb/2022_12_12/camap-2-4447.jpg', 'imported_post', 'https://thanhnien.vn/phat-hien-nghia-dia-ca-map-o-an-do-duong-post1530980.html', 0, 1670822048, 1670822764, 1670822764),
(88, 3, 6, 'Mỹ nhấn mạnh không khuyến khích Ukraine tấn công lãnh thổ Nga', 'Anonymous', '<a href=\"https://thanhnien.vn/my-nhan-manh-khong-khuyen-khich-ukraine-tan-cong-lanh-tho-nga-post1530986.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/ihvcpuo/2022_12_12/000-32v34eq-4417.jpg\" align=\"left\" hspace=\"5\"></a><p>Mỹ tuyên bố không khuyến khích Ukraine tấn công vào lãnh thổ Nga sau thông tin gần đây gợi ý rằng Washington đã ngầm bật đèn xanh cho hành động này.</p><div><a href=\"https://thanhnien.vn/chien-su-ngay-291-quan-ukraine-co-thu-bakhmut-crimea-rung-chuyen-post1530885.html\">Chiến sự ngày 291: Quân Ukraine cố thủ Bakhmut, Crimea rung chuyển</a><a href=\"https://thanhnien.vn/lau-nam-goc-bat-den-xanh-cho-ukraine-tan-cong-bang-uav-vao-lanh-tho-nga-post1530524.html\">Lầu Năm Góc ‘bật đèn xanh’ cho Ukraine tấn công bằng UAV vào lãnh thổ Nga</a><a href=\"https://thanhnien.vn/ukraine-gui-thong-diep-nuoc-nga-se-khong-con-an-toan-post1529403.html\">Ukraine gửi thông điệp nước Nga sẽ không còn an toàn</a></div>', 'Mỹ tuyên bố không khuyến khích Ukraine tấn công vào lãnh thổ Nga sau thông tin gần đây gợi ý rằng Washington đã ngầm bật đèn xanh cho hành động này.Chiến sự ngày 291: Quân Ukraine cố thủ Bakhmut,...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/ihvcpuo/2022_12_12/000-32v34eq-4417.jpg', 'imported_post', 'https://thanhnien.vn/my-nhan-manh-khong-khuyen-khich-ukraine-tan-cong-lanh-tho-nga-post1530986.html', 0, 1670821843, 1670822764, 1670822764),
(89, 3, 6, 'Gặp Thủ tướng tại Hà Lan, kiều bào hiến kế và những đề xuất từ thực tiễn', 'Anonymous', '<a href=\"https://thanhnien.vn/gap-thu-tuong-tai-ha-lan-kieu-bao-hien-ke-va-nhung-de-xuat-tu-thuc-tien-post1530897.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/znosgo/2022_12_12/kieu-bao-ha-lan-2-585.jpg\" align=\"left\" hspace=\"5\"></a><p>Nhiều chia sẻ thân tình và mong muốn cống hiến được đại diện bà con kiều bào gửi gắm tới Thủ tướng <a href=\"https://thanhnien.vn/pham-minh-chinh/\" title=\"Phạm Minh Chính\" target=\"_blank\" rel=\"noopener noreferrer\">Phạm Minh Chính</a> nhân chuyến thăm chính thức Hà Lan.</p><div><a href=\"https://thanhnien.vn/viet-nam-dat-muc-tieu-trung-tam-logistics-trung-chuyen-hang-hoa-toan-cau-post1530893.html\">Việt Nam đặt mục tiêu trung tâm logistics, trung chuyển hàng hóa toàn cầu</a><a href=\"https://thanhnien.vn/phat-trien-quan-he-dia-phuong-viet-nam-ha-lan-thuc-chat-va-hieu-qua-post1530884.html\">Phát triển quan hệ địa phương Việt Nam - Hà Lan thực chất và hiệu quả</a><a href=\"https://thanhnien.vn/thu-tuong-de-nghi-ha-lan-ho-tro-xay-dung-khu-cong-nghe-cao-brainport-ha-noi-post1530814.html\">Thủ tướng đề nghị Hà Lan hỗ trợ xây dựng Brainport Hà Nội</a></div>', 'Nhiều chia sẻ thân tình và mong muốn cống hiến được đại diện bà con kiều bào gửi gắm tới Thủ tướng Phạm Minh Chính nhân chuyến thăm chính thức Hà Lan.Việt Nam đặt mục tiêu trung tâm logistics,...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/znosgo/2022_12_12/kieu-bao-ha-lan-2-585.jpg', 'imported_post', 'https://thanhnien.vn/gap-thu-tuong-tai-ha-lan-kieu-bao-hien-ke-va-nhung-de-xuat-tu-thuc-tien-post1530897.html', 0, 1670818099, 1670822764, 1670822764),
(90, 3, 6, 'Tàu vũ trụ Orion của NASA về trái đất sau sứ mệnh lịch sử', 'Anonymous', '<a href=\"https://thanhnien.vn/tau-vu-tru-orion-cua-nasa-ve-trai-dat-sau-su-menh-lich-su-post1530923.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/ihvcpuo/2022_12_12/orion-4638.jpg\" align=\"left\" hspace=\"5\"></a><p>Tàu vũ trụ Orion của Cơ quan Hàng không vũ trụ Mỹ (NASA) đã quay trở về trái đất sau chuyến hành trình 25 ngày quanh mặt trăng.</p><div><a href=\"https://thanhnien.vn/my-tuyen-bo-se-danh-bai-trung-quoc-trong-cuoc-dua-len-mat-trang-post1530700.html\">Mỹ tuyên bố sẽ đánh bại Trung Quốc trong cuộc đua lên mặt trăng</a><a href=\"https://thanhnien.vn/tau-vu-tru-cua-nasa-lap-ky-luc-moi-post1526593.html\">Tàu vũ trụ của NASA lập kỷ lục mới</a><a href=\"https://thanhnien.vn/my-phong-tau-vu-tru-khoi-dau-su-menh-dua-con-nguoi-quay-lai-mat-trang-post1522119.html\">Mỹ phóng tàu vũ trụ khởi đầu sứ mệnh đưa con người quay lại mặt trăng </a></div>', 'Tàu vũ trụ Orion của Cơ quan Hàng không vũ trụ Mỹ (NASA) đã quay trở về trái đất sau chuyến hành trình 25 ngày quanh mặt trăng.Mỹ tuyên bố sẽ đánh bại Trung Quốc trong cuộc đua lên...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/ihvcpuo/2022_12_12/orion-4638.jpg', 'imported_post', 'https://thanhnien.vn/tau-vu-tru-orion-cua-nasa-ve-trai-dat-sau-su-menh-lich-su-post1530923.html', 0, 1670816898, 1670822764, 1670822764),
(91, 1, 7, 'Quảng Ninh thôi nhất thể hóa chức danh lãnh đạo ở H.Tiên Yên', 'Anonymous', '<a href=\"https://thanhnien.vn/quang-ninh-thoi-nhat-the-hoa-chuc-danh-lanh-dao-o-htien-yen-post1530561.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/wlyrstlstpf/2022_12_01/2031444-dong-chi-trinh-thi-minh-thanh-pho-bi-thu-tinh-uy-trao-quyet-dinh-cua-ban-thuong-vu-tinh-uy-ve-viec-dieu-dong-phan-cong-dong-chi-nguyen-chi-thanh-thoi-13415801-1648.jpg\" align=\"left\" hspace=\"5\"></a><p>HĐND H.Tiên Yên (<a href=\"https://thanhnien.vn/quang-ninh/\" title=\"Quảng Ninh\" target=\"_blank\" rel=\"noopener noreferrer\">Quảng Ninh</a>) vừa bầu chức danh chủ tịch UBND huyện. Như vậy huyện vùng cao của Quảng Ninh đã thôi <a href=\"https://thanhnien.vn/quang-ninh-hoan-thanh-bau-cu-truc-tiep-gan-1-500-truong-thon-ban-khu-pho-post1465821.html\" title=\"Quảng Ninh hoàn thành bầu cử trực tiếp gần 1.500 trưởng thôn, bản, khu phố\">nhất thể hóa</a> chức danh Bí thư huyện ủy kiêm Chủ tịch UBND huyện.</p><div><a href=\"https://thanhnien.vn/hon-3000-can-bo-doi-du-chua-duoc-sap-xep-post1499304.html\">Hơn 3.000 cán bộ dôi dư chưa được sắp xếp</a><a href=\"https://thanhnien.vn/sap-xep-huyen-xa-xong-tiet-kiem-bao-nhieu-phuc-vu-dan-co-tot-hon-khong-post1499013.html\">\'Sắp xếp huyện, xã xong tiết kiệm bao nhiêu, phục vụ dân có tốt hơn không?\'</a><a href=\"https://thanhnien.vn/bo-chinh-tri-yeu-cau-giam-5-can-bo-cong-chuc-10-vien-chuc-post1482021.html\">Bộ Chính trị yêu cầu giảm 5% cán bộ, công chức, 10% viên chức</a></div>', 'HĐND H.Tiên Yên (Quảng Ninh) vừa bầu chức danh chủ tịch UBND huyện. Như vậy huyện vùng cao của Quảng Ninh đã thôi nhất thể hóa chức danh Bí thư huyện ủy kiêm Chủ tịch UBND huyện.Hơn 3.000 cán bộ...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/wlyrstlstpf/2022_12_01/2031444-dong-chi-trinh-thi-minh-thanh-pho-bi-thu-tinh-uy-trao-quyet-dinh-cua-ban-thuong-vu-tinh-uy-ve-viec-dieu-dong-phan-cong-dong-chi-nguyen-chi-thanh-thoi-13415801-1648.jpg', 'imported_post', 'https://thanhnien.vn/quang-ninh-thoi-nhat-the-hoa-chuc-danh-lanh-dao-o-htien-yen-post1530561.html', 0, 1670677898, 1670822814, 1670822814),
(92, 1, 7, 'Quảng Ninh: Phó chủ tịch Thường trực UBND TX.Quảng Yên bị kỷ luật khiển trách', 'Anonymous', '<a href=\"https://thanhnien.vn/quang-ninh-pho-chu-tich-thuong-truc-ubnd-txquang-yen-bi-ky-luat-khien-trach-post1530347.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/bahgtm/2022_12_10/received-690008102657611-4581.jpeg\" align=\"left\" hspace=\"5\"></a><p>Ông<a href=\"https://thanhnien.vn/ne-tram-thu-phi-bot-xe-container-dai-nao-khu-dan-cu-post879540.html\" title=\"Né trạm thu phí BOT, xe container &#039;đại náo&#039; khu dân cư\"> Lê Mạnh Tuyến</a>, Phó chủ tịch Thường trực UBND TX.Quảng Yên (<a href=\"https://thanhnien.vn/quang-ninh/\" title=\"Quảng Ninh\" target=\"_blank\" rel=\"noopener noreferrer\">Quảng Ninh</a>), bị kỷ luật khiển trách vì thiếu kiểm tra trong quá trình xét, duyệt hồ sơ bồi thường, hỗ trợ giải phóng mặt bằng.</p><div><a href=\"https://thanhnien.vn/quang-ninh-khai-tru-dang-doi-voi-cuu-truong-phong-gd-dt-txquang-yen-post1524800.html\">Quảng Ninh: Khai trừ Đảng đối với cựu Trưởng phòng GD-ĐT TX.Quảng Yên</a><a href=\"https://thanhnien.vn/quang-ninh-tam-giam-6-bi-can-thong-thau-gay-thiet-hai-gan-5-ti-dong-post1522010.html\">Quảng Ninh: Tạm giam 6 bị can thông thầu gây thiệt hại gần 5 tỉ đồng</a><a href=\"https://thanhnien.vn/quang-ninh-bat-tam-giam-3-can-bo-tham-o-lam-quyen-post1516125.html\">Quảng Ninh: Bắt tạm giam 3 cán bộ tham ô, lạm quyền</a></div>', 'Ông Lê Mạnh Tuyến, Phó chủ tịch Thường trực UBND TX.Quảng Yên (Quảng Ninh), bị kỷ luật khiển trách vì thiếu kiểm tra trong quá trình xét, duyệt hồ sơ bồi thường, hỗ trợ giải phóng mặt bằng.Quảng Ninh:...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/bahgtm/2022_12_10/received-690008102657611-4581.jpeg', 'imported_post', 'https://thanhnien.vn/quang-ninh-pho-chu-tich-thuong-truc-ubnd-txquang-yen-bi-ky-luat-khien-trach-post1530347.html', 0, 1670648453, 1670822814, 1670822814),
(93, 1, 7, 'Tiếp tục vun đắp mối quan hệ Việt Nam - Lào', 'Anonymous', '<a href=\"https://thanhnien.vn/tiep-tuc-vun-dap-moi-quan-he-viet-nam-lao-post1530366.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/bozngu/2022_12_10/viet-nam-lao2-7931.jpg\" align=\"left\" hspace=\"5\"></a><p>Bày tỏ tin tưởng về tương lai tươi sáng của mối quan hệ đoàn kết đặc biệt Việt Nam - Lào, ông <a href=\"https://thanhnien.vn/nguyen-trong-nghia/\" title=\"Nguyễn Trọng Nghĩa\" target=\"_blank\" rel=\"noopener noreferrer\">Nguyễn Trọng Nghĩa</a> khẳng định Việt Nam sẽ làm hết sức mình cùng với Lào giữ gìn, vun đắp và truyền tiếp cho các thế hệ mai sau tài sản chung vô giá này của hai Đảng, hai dân tộc.<br></p><div><a href=\"https://thanhnien.vn/khang-dinh-y-nghia-cua-moi-quan-he-dac-biet-viet-nam-lao-post1529414.html\">Khẳng định ý nghĩa của mối quan hệ đặc biệt Việt Nam - Lào</a><a href=\"https://thanhnien.vn/giu-gin-va-vun-dap-moi-quan-he-doan-ket-dac-biet-viet-nam-lao-post1520099.html\">Giữ gìn và vun đắp mối quan hệ đoàn kết đặc biệt Việt Nam - Lào</a><a href=\"https://thanhnien.vn/trong-1-nam-hai-nuoc-viet-lao-pha-van-vu-an-thu-hang-chuc-tan-ma-tuy-post1514510.html\">Trong 1 năm, hai nước Việt - Lào phá vạn vụ án, thu hàng chục tấn ma túy</a></div>', 'Bày tỏ tin tưởng về tương lai tươi sáng của mối quan hệ đoàn kết đặc biệt Việt Nam - Lào, ông Nguyễn Trọng Nghĩa khẳng định Việt Nam sẽ làm hết sức mình cùng với Lào giữ gìn,...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/bozngu/2022_12_10/viet-nam-lao2-7931.jpg', 'imported_post', 'https://thanhnien.vn/tiep-tuc-vun-dap-moi-quan-he-viet-nam-lao-post1530366.html', 0, 1670630710, 1670822814, 1670822814),
(94, 1, 7, 'Tăng cường phối hợp, chia sẻ quan điểm giữa cơ quan lập pháp Việt Nam - Pháp', 'Anonymous', '<a href=\"https://thanhnien.vn/tang-cuong-phoi-hop-chia-se-quan-diem-giua-co-quan-lap-phap-viet-nam-phap-post1529987.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/zokttb/2022_12_09/1-2-4445.jpg\" align=\"left\" hspace=\"5\"></a><p>Chiều 8.12, tại Trụ sở T.Ư Đảng, Tổng Bí thư <a href=\"https://thanhnien.vn/nguyen-phu-trong/\" title=\"Nguyễn Phú Trọng\" target=\"_blank\" rel=\"noopener noreferrer\">Nguyễn Phú Trọng</a> đã tiếp Đoàn đại biểu Thượng viện Pháp do Chủ tịch Thượng viện Gérard Larcher dẫn đầu nhân dịp thăm chính thức VN từ ngày 8 - 9.12.</p><div><a href=\"https://thanhnien.vn/khang-dinh-y-nghia-cua-moi-quan-he-dac-biet-viet-nam-lao-post1529414.html\">Khẳng định ý nghĩa của mối quan hệ đặc biệt Việt Nam - Lào</a><a href=\"https://thanhnien.vn/tong-bi-thu-chu-tich-nuoc-thu-tuong-du-hoi-nghi-dang-uy-cong-an-tu-post1529473.html\">Tổng Bí thư, Chủ tịch nước, Thủ tướng dự hội nghị Đảng ủy Công an T.Ư</a><a href=\"https://thanhnien.vn/nam-2045-tphcm-se-la-trung-tam-kinh-te-tai-chinh-dich-vu-cua-chau-a-post1528025.html\">Năm 2045, TP.HCM sẽ là trung tâm kinh tế, tài chính, dịch vụ của châu Á </a></div>', 'Chiều 8.12, tại Trụ sở T.Ư Đảng, Tổng Bí thư Nguyễn Phú Trọng đã tiếp Đoàn đại biểu Thượng viện Pháp do Chủ tịch Thượng viện Gérard Larcher dẫn đầu nhân dịp thăm chính thức VN từ ngày 8...', 'https://image.thanhnien.vn/460x306/Uploaded/2022/zokttb/2022_12_09/1-2-4445.jpg', 'imported_post', 'https://thanhnien.vn/tang-cuong-phoi-hop-chia-se-quan-diem-giua-co-quan-lap-phap-viet-nam-phap-post1529987.html', 0, 1670545069, 1670822814, 1670822814),
(95, 1, 7, 'Tổ chức lễ tang ông Vũ Oanh theo nghi thức cấp nhà nước', 'Anonymous', '<a href=\"https://thanhnien.vn/to-chuc-le-tang-ong-vu-oanh-theo-nghi-thuc-cap-nha-nuoc-post1529951.html\"><img width=\"80px\" border=\"0\" src=\"https://image.thanhnien.vn/80x80/Uploaded/2022/nokvrb/2022_12_08/vu-oanh-1622.jpeg\" align=\"left\" hspace=\"5\"></a><p><a href=\"https://thanhnien.vn/de-xuat-dai-tuong-chanh-an-tand-toi-cao-vien-truong-vksnd-toi-cao-la-doi-tuong-canh-ve-post1529887.html\" title=\"Đề xuất đại tướng, Chánh án TAND tối cao, Viện trưởng VKSND tối cao là &#039;đối tượng cảnh vệ&#039;\">T.Ư Đảng</a>, Quốc hội, Chủ tịch nước, Chính phủ, Ủy ban T.Ư Mặt trận Tổ quốc Việt Nam quyết định tổ chức lễ tang nguyên <a href=\"https://thanhnien.vn/uy-vien-bo-chinh-tri/\" title=\"Ủy viên Bộ Chính trị\" target=\"_blank\" rel=\"noopener noreferrer\">Ủy viên Bộ Chính trị</a> Vũ Oanh với nghi thức cấp nhà nước.</p>', 'T.Ư Đảng, Quốc hội, Chủ tịch nước, Chính phủ, Ủy ban T.Ư Mặt trận Tổ quốc Việt Nam quyết định tổ chức lễ tang nguyên Ủy viên Bộ Chính trị Vũ Oanh với nghi thức cấp nhà nước.', 'https://image.thanhnien.vn/460x306/Uploaded/2022/nokvrb/2022_12_08/vu-oanh-1622.jpeg', 'imported_post', 'https://thanhnien.vn/to-chuc-le-tang-ong-vu-oanh-theo-nghi-thuc-cap-nha-nuoc-post1529951.html', 0, 1670517968, 1670822814, 1670822814);
INSERT INTO `in_posts` (`post_id`, `post_category_id`, `post_feed_id`, `post_title`, `post_author`, `post_content`, `post_excerpt`, `post_featured_image`, `post_type`, `post_source`, `post_hits`, `post_pubdate`, `created_at`, `updated_at`) VALUES
(96, 10, 5, '11 phút cho điều này, giảm một nửa nguy cơ chết sớm vì ung thư, tim mạch', 'Anonymous', '<img src=\"https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/istockphoto-513252352-612x612-16708189329411135936057.jpg\" alt=\"11 phút cho điều này, giảm một nửa nguy cơ chết sớm vì ung thư, tim mạch\" title=\"11 phút cho điều này, giảm một nửa nguy cơ chết sớm vì ung thư, tim mạch\" width=\"600px\" height=\"315px\">(NLĐO) - Một vài lần phải thở dốc trong ngày vì làm việc nặng hay rượt theo taxi, xe buýt có tác động khó ngờ lên tuổi thọ của bạn và lên những nhóm bệnh gây tử vong sớm hàng đầu như ung thư, tim mạch.', '(NLĐO) - Một vài lần phải thở dốc trong ngày vì làm việc nặng hay rượt theo taxi, xe buýt có tác động khó ngờ lên tuổi thọ của bạn và lên những nhóm bệnh gây tử vong sớm...', 'https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/istockphoto-513252352-612x612-16708189329411135936057.jpg', 'imported_post', 'https://nld.com.vn/suc-khoe/11-phut-cho-dieu-nay-giam-mot-nua-nguy-co-chet-som-vi-ung-thu-tim-mach-20221212112449746.htm', 3, 1670823211, 1670823211, 1670823211),
(97, 10, 5, 'Chuyển giao kỹ thuật cao từ TP HCM lên Lâm Đồng', 'Anonymous', '<img src=\"https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/lam-dong-16708123655441803536029.jpg\" alt=\"Chuyển giao kỹ thuật cao từ TP HCM lên Lâm Đồng\" title=\"Chuyển giao kỹ thuật cao từ TP HCM lên Lâm Đồng\" width=\"600px\" height=\"315px\">(NLĐO)-Các lĩnh vực được Bệnh viện Chợ Rẫy chuyển giao gồm: kỹ thuật ECMO, nội cơ xương khớp, kỹ thuật trong SPECT/CT và hoá trị trong ung thư', '(NLĐO)-Các lĩnh vực được Bệnh viện Chợ Rẫy chuyển giao gồm: kỹ thuật ECMO, nội cơ xương khớp, kỹ thuật trong SPECT/CT và hoá trị trong ung thư', 'https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/lam-dong-16708123655441803536029.jpg', 'imported_post', 'https://nld.com.vn/suc-khoe/chuyen-giao-ky-thuat-cao-tu-tp-hcm-len-lam-dong-20221212094047321.htm', 0, 1670820596, 1670823211, 1670823211),
(98, 10, 5, 'Cơ sở thẩm mỹ khiến cô gái tử vong: Hai lần kiểm tra đều không hoạt động', 'Anonymous', '<img src=\"https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/20221207110555-16703895406971949479713-16708157573321440573607.jpg\" alt=\" Hai lần kiểm tra đều không hoạt động\" title=\" Hai lần kiểm tra đều không hoạt động\" width=\"600px\" height=\"315px\">(NLĐO) – Liên quan đến sự việc cô gái 25 tuổi tử vong sau khi thực hiện thẩm mỹ tại cơ sở Key Beauty Center UBND phường 8, quận Phú Nhuận cho biết đơn vị đã phối hợp với công an phường tổ chức kiểm tra 2 lần nhưng cơ sở này không hoạt động', '(NLĐO) – Liên quan đến sự việc cô gái 25 tuổi tử vong sau khi thực hiện thẩm mỹ tại cơ sở Key Beauty Center UBND phường 8, quận Phú Nhuận cho biết đơn vị đã phối hợp với...', 'https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/20221207110555-16703895406971949479713-16708157573321440573607.jpg', 'imported_post', 'https://nld.com.vn/suc-khoe/co-so-tham-my-khien-co-gai-tu-vong-hai-lan-kiem-tra-deu-khong-hoat-dong-20221212103054512.htm', 0, 1670820414, 1670823211, 1670823211),
(99, 10, 5, 'Cấp cứu kịp thời một quân nhân từ đảo Song Tử Tây bị sốc mất máu', 'Anonymous', '<img src=\"https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/cc1-16708080664351861520054.jpg\" alt=\"Cấp cứu kịp thời một quân nhân từ đảo Song Tử Tây bị sốc mất máu\" title=\"Cấp cứu kịp thời một quân nhân từ đảo Song Tử Tây bị sốc mất máu\" width=\"600px\" height=\"315px\">(NLĐO) - Tổ cấp cứu, vận chuyển đường không, Bệnh viện Quân y 175 (TP HCM) kịp thời đưa bệnh nhân từ đảo Song Tử Tây về đất liền điều trị', '(NLĐO) - Tổ cấp cứu, vận chuyển đường không, Bệnh viện Quân y 175 (TP HCM) kịp thời đưa bệnh nhân từ đảo Song Tử Tây về đất liền điều trị', 'https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/12/cc1-16708080664351861520054.jpg', 'imported_post', 'https://nld.com.vn/suc-khoe/cap-cuu-kip-thoi-mot-quan-nhan-tu-dao-song-tu-tay-bi-soc-mat-mau-20221212083050651.htm', 0, 1670814044, 1670823211, 1670823211),
(100, 10, 5, 'Xây dựng thương hiệu \"bác sĩ Huế\"', 'Anonymous', '<img src=\"https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/11/z3951277963785c5a9b08e0e337bde1d9a38d7f4b81af9-16707554427011625379650.jpg\" alt=\'Xây dựng thương hiệu &quot;bác sĩ Huế&quot;\' title=\'Xây dựng thương hiệu &quot;bác sĩ Huế&quot;\' width=\"600px\" height=\"315px\">(NLĐO) - Hội Thầy thuốc trẻ tỉnh Thừa Thiên - Huế phối hợp với các bệnh viện, đơn vị xây dựng thương hiệu bác sĩ Huế để đáp ứng nhiệm vụ khám, chữa bệnh cho người dân.', '(NLĐO) - Hội Thầy thuốc trẻ tỉnh Thừa Thiên - Huế phối hợp với các bệnh viện, đơn vị xây dựng thương hiệu bác sĩ Huế để đáp ứng nhiệm vụ khám, chữa bệnh cho người dân.', 'https://nld.mediacdn.vn/zoom/600_315/291774122806476800/2022/12/11/z3951277963785c5a9b08e0e337bde1d9a38d7f4b81af9-16707554427011625379650.jpg', 'imported_post', 'https://nld.com.vn/suc-khoe/xay-dung-thuong-hieu-bac-si-hue-20221211174232023.htm', 0, 1670760043, 1670823211, 1670823211);

-- --------------------------------------------------------

--
-- Table structure for table `in_roles`
--

CREATE TABLE `in_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` bigint DEFAULT '0',
  `updated_at` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_roles`
--

INSERT INTO `in_roles` (`role_id`, `role_name`, `is_protected`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, 1543473719, 1567752494),
(2, 'Moderator', 1, 1543473766, 1567320523),
(3, 'User', 1, 1543473780, 1544779012);

-- --------------------------------------------------------

--
-- Table structure for table `in_role_perm`
--

CREATE TABLE `in_role_perm` (
  `role_id` int UNSIGNED NOT NULL,
  `perm_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_role_perm`
--

INSERT INTO `in_role_perm` (`role_id`, `perm_id`) VALUES
(3, 1),
(1, 19),
(1, 17),
(1, 18),
(1, 15),
(1, 14),
(1, 13),
(1, 12),
(1, 11),
(1, 10),
(1, 9),
(1, 8),
(1, 7),
(1, 6),
(1, 5),
(1, 4),
(1, 20),
(1, 3),
(2, 15),
(2, 12),
(2, 11),
(2, 3),
(1, 2),
(2, 2),
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `in_tokens`
--

CREATE TABLE `in_tokens` (
  `token_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `token_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_expires` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `in_users`
--

CREATE TABLE `in_users` (
  `user_id` int UNSIGNED NOT NULL COMMENT 'user ID',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'user e-mail',
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'password hash',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unique username',
  `full_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user''s legal name',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user''s gender, 1 = male, 2 = female, 0 = non-binary',
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'user''s avatar url',
  `user_ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'user''s creation IP',
  `role_id` int UNSIGNED NOT NULL DEFAULT '3' COMMENT 'role ID of user',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user''s block status',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'whether the user is verifed or not',
  `last_seen` bigint DEFAULT '0' COMMENT 'last activity timestamp',
  `created_at` bigint NOT NULL DEFAULT '0' COMMENT 'when the row was created',
  `updated_at` bigint DEFAULT '0' COMMENT 'when the row was last updated'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_users`
--

INSERT INTO `in_users` (`user_id`, `email`, `password`, `username`, `full_name`, `gender`, `avatar`, `user_ip`, `role_id`, `is_blocked`, `is_verified`, `last_seen`, `created_at`, `updated_at`) VALUES
(1, 'demo@gmail.com', '$2y$10$09bdroxeJw0mgu9TuQL3q.CZzL7Wrho7/2QKfIX8Tc71L3NphcCf.', 'johndoe', 'John Doe', 1, NULL, '127.0.0.1', 1, 0, 1, 1670825678, 1532602768, 1670825678);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `in_attempts`
--
ALTER TABLE `in_attempts`
  ADD PRIMARY KEY (`attempt_id`);

--
-- Indexes for table `in_categories`
--
ALTER TABLE `in_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `cat_slug` (`category_slug`);

--
-- Indexes for table `in_content`
--
ALTER TABLE `in_content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_slug` (`content_slug`);

--
-- Indexes for table `in_engines`
--
ALTER TABLE `in_engines`
  ADD PRIMARY KEY (`engine_id`);

--
-- Indexes for table `in_feeds`
--
ALTER TABLE `in_feeds`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `in_options`
--
ALTER TABLE `in_options`
  ADD UNIQUE KEY `options_name_unique` (`option_name`);

--
-- Indexes for table `in_permissions`
--
ALTER TABLE `in_permissions`
  ADD PRIMARY KEY (`perm_id`),
  ADD UNIQUE KEY `perm_desc` (`perm_desc`);

--
-- Indexes for table `in_posts`
--
ALTER TABLE `in_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `in_roles`
--
ALTER TABLE `in_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `in_role_perm`
--
ALTER TABLE `in_role_perm`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_id` (`perm_id`);

--
-- Indexes for table `in_tokens`
--
ALTER TABLE `in_tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `in_users`
--
ALTER TABLE `in_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `in_attempts`
--
ALTER TABLE `in_attempts`
  MODIFY `attempt_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `in_categories`
--
ALTER TABLE `in_categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `in_content`
--
ALTER TABLE `in_content`
  MODIFY `content_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `in_engines`
--
ALTER TABLE `in_engines`
  MODIFY `engine_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `in_feeds`
--
ALTER TABLE `in_feeds`
  MODIFY `feed_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `in_permissions`
--
ALTER TABLE `in_permissions`
  MODIFY `perm_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `in_posts`
--
ALTER TABLE `in_posts`
  MODIFY `post_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `in_roles`
--
ALTER TABLE `in_roles`
  MODIFY `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `in_tokens`
--
ALTER TABLE `in_tokens`
  MODIFY `token_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `in_users`
--
ALTER TABLE `in_users`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'user ID', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
