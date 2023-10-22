-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://template-with-categories.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://template-with-categories.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','template-with-categories','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/portfolio/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"portfolio/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"portfolio/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"portfolio/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"portfolio/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"portfolio/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"portfolio/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"portfolio/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"portfolio/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"portfolio/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"portfolio/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"portfolio/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"portfolio/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"portfolio/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"portfolio/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"portfolio/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"portfolio/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"portfolio/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"portfolio/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"portfolio/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"portfolio/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"portfolio/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"portfolio/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"portfolio/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"portfolio/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"portfolio/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"portfolio/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"portfolio/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"portfolio/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"portfolio/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"portfolio/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"portfolio/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"portfolio/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"portfolio/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"portfolio/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"portfolio/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:50:\"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:45:\"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','template','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','template','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','7','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','24','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1702299801','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1697306603;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697331803;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697332765;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697375003;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697375965;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697375966;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697720603;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','d0iTeW>WuE#Wv|f^bMC1zf#;yLHg)a|+|0x[vj.3U!yIJOf([b,q-7<zZUALAQ=,','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','+`duamkUM_pKpFZK;!9J!y[&yEflQQl/:_QtF)cvEaA~HL~%RPnoWD%sTF~|IE`a','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686748994;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (125,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.3-rollback-2.zip\";}s:7:\"current\";s:5:\"6.2.3\";s:7:\"version\";s:5:\"6.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:5:\"6.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1697303064;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (149,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'current_theme','Template with Categories','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_template','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"headerMenuLocation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (166,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (179,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":5,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (192,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (199,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (200,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (245,'acf_version','6.1.6','yes');
INSERT INTO `wp_options` VALUES (246,'recovery_mode_email_last_sent','1687164924','yes');
INSERT INTO `wp_options` VALUES (503,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697303063;s:7:\"checked\";a:5:{s:7:\"exports\";s:0:\"\";s:8:\"template\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (504,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1697303062;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (535,'_transient_doing_cron','1697303057.8000130653381347656250','yes');
INSERT INTO `wp_options` VALUES (538,'_site_transient_timeout_theme_roots','1697304862','no');
INSERT INTO `wp_options` VALUES (539,'_site_transient_theme_roots','a:5:{s:7:\"exports\";s:7:\"/themes\";s:8:\"template\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (540,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1697907864','no');
INSERT INTO `wp_options` VALUES (541,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (21,7,'_edit_lock','1692547761:1');
INSERT INTO `wp_postmeta` VALUES (22,9,'_edit_lock','1688277814:1');
INSERT INTO `wp_postmeta` VALUES (23,11,'_edit_lock','1692547618:1');
INSERT INTO `wp_postmeta` VALUES (24,13,'_edit_lock','1692547733:1');
INSERT INTO `wp_postmeta` VALUES (25,15,'_edit_lock','1692547654:1');
INSERT INTO `wp_postmeta` VALUES (35,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (36,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (37,18,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (38,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (39,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (40,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (41,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (42,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,19,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (47,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (53,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (54,20,'_menu_item_menu_item_parent','19');
INSERT INTO `wp_postmeta` VALUES (55,20,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (56,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (57,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (58,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (59,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (60,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (63,21,'_menu_item_menu_item_parent','19');
INSERT INTO `wp_postmeta` VALUES (64,21,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (65,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (66,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (67,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (68,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (69,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (72,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (73,22,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (74,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (75,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (76,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (77,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (78,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (89,24,'_edit_lock','1692547791:1');
INSERT INTO `wp_postmeta` VALUES (90,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,26,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (93,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (2045,788,'_edit_lock','1692547363:1');
INSERT INTO `wp_postmeta` VALUES (2046,789,'_edit_lock','1692547418:1');
INSERT INTO `wp_postmeta` VALUES (2070,863,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (2071,863,'questions','a:1:{i:0;a:3:{s:4:\"type\";s:8:\"checkbox\";s:13:\"question_text\";s:0:\"\";s:7:\"options\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (2072,863,'_questions','');
INSERT INTO `wp_postmeta` VALUES (2073,863,'_edit_lock','1687181127:1');
INSERT INTO `wp_postmeta` VALUES (2074,868,'_wp_attached_file','2023/06/base_logo_transparent_background.png');
INSERT INTO `wp_postmeta` VALUES (2075,868,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:3125;s:6:\"height\";i:1875;s:4:\"file\";s:44:\"2023/06/base_logo_transparent_background.png\";s:8:\"filesize\";i:102710;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"base_logo_transparent_background-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7724;}s:5:\"large\";a:5:{s:4:\"file\";s:45:\"base_logo_transparent_background-1024x614.png\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32713;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"base_logo_transparent_background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4021;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"base_logo_transparent_background-768x461.png\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23276;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:45:\"base_logo_transparent_background-1536x922.png\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53678;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:46:\"base_logo_transparent_background-2048x1229.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1229;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78193;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (2076,24,'_thumbnail_id','868');
INSERT INTO `wp_postmeta` VALUES (2077,26,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2078,19,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2079,20,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2080,21,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2081,18,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2082,22,'_wp_old_date','2023-06-14');
INSERT INTO `wp_postmeta` VALUES (2087,790,'_edit_lock','1692547745:1');
INSERT INTO `wp_postmeta` VALUES (2090,791,'_edit_lock','1687867169:1');
INSERT INTO `wp_postmeta` VALUES (2093,792,'_edit_lock','1687867184:1');
INSERT INTO `wp_postmeta` VALUES (2096,793,'_edit_lock','1687867197:1');
INSERT INTO `wp_postmeta` VALUES (2099,794,'_edit_lock','1687867210:1');
INSERT INTO `wp_postmeta` VALUES (2102,795,'_edit_lock','1687867219:1');
INSERT INTO `wp_postmeta` VALUES (2105,882,'_edit_lock','1692547303:1');
INSERT INTO `wp_postmeta` VALUES (2108,884,'_wp_attached_file','2023/06/house2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (2109,884,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:25:\"2023/06/house2-scaled.jpg\";s:8:\"filesize\";i:929053;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"house2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18897;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"house2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:174296;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"house2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6288;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"house2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101187;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"house2-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:372016;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"house2-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:626708;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"house2.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (2112,882,'_thumbnail_id','884');
INSERT INTO `wp_postmeta` VALUES (2113,885,'_wp_attached_file','2023/06/house1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (2114,885,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2023/06/house1-scaled.jpg\";s:8:\"filesize\";i:565313;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"house1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14865;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"house1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116733;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"house1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6714;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"house1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70469;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"house1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:232167;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"house1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:383306;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"house1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (2117,788,'_thumbnail_id','885');
INSERT INTO `wp_postmeta` VALUES (2118,886,'_wp_attached_file','2023/06/house3-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (2119,886,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1696;s:6:\"height\";i:2560;s:4:\"file\";s:25:\"2023/06/house3-scaled.jpg\";s:8:\"filesize\";i:1035869;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"house3-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22360;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"house3-678x1024.jpg\";s:5:\"width\";i:678;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:211936;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"house3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10111;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"house3-768x1160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1160;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:264413;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"house3-1017x1536.jpg\";s:5:\"width\";i:1017;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:436797;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"house3-1356x2048.jpg\";s:5:\"width\";i:1356;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:715574;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"house3.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (2122,789,'_thumbnail_id','886');
INSERT INTO `wp_postmeta` VALUES (2123,887,'_wp_attached_file','2023/06/house2-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (2124,887,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2023/06/house2-1-scaled.jpg\";s:8:\"filesize\";i:929053;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"house2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18897;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"house2-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:174296;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"house2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6288;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"house2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101187;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"house2-1-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:372016;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"house2-1-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:626708;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"house2-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (2127,889,'_edit_lock','1692547748:1');
INSERT INTO `wp_postmeta` VALUES (2128,891,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (2129,891,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (2130,891,'_menu_item_object_id','889');
INSERT INTO `wp_postmeta` VALUES (2131,891,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (2132,891,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (2133,891,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (2134,891,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (2135,891,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (2137,893,'_edit_lock','1692547693:1');
INSERT INTO `wp_postmeta` VALUES (2138,893,'_thumbnail_id','887');
INSERT INTO `wp_postmeta` VALUES (2139,15,'_thumbnail_id','886');
INSERT INTO `wp_postmeta` VALUES (2140,13,'_thumbnail_id','885');
INSERT INTO `wp_postmeta` VALUES (2143,791,'_thumbnail_id','884');
INSERT INTO `wp_postmeta` VALUES (2146,792,'_thumbnail_id','868');
INSERT INTO `wp_postmeta` VALUES (2149,793,'_thumbnail_id','885');
INSERT INTO `wp_postmeta` VALUES (2152,794,'_thumbnail_id','886');
INSERT INTO `wp_postmeta` VALUES (2155,795,'_thumbnail_id','884');
INSERT INTO `wp_postmeta` VALUES (2156,796,'_edit_lock','1687867547:1');
INSERT INTO `wp_postmeta` VALUES (2159,796,'_thumbnail_id','885');
INSERT INTO `wp_postmeta` VALUES (2162,790,'_thumbnail_id','886');
INSERT INTO `wp_postmeta` VALUES (2163,899,'_edit_lock','1688278443:1');
INSERT INTO `wp_postmeta` VALUES (2164,899,'_thumbnail_id','868');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (2,1,'2023-06-14 13:03:22','2023-06-14 13:03:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://template-with-categories.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-06-14 13:03:22','2023-06-14 13:03:22','',0,'http://template-with-categories.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-06-14 13:03:22','2023-06-14 13:03:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://template-with-categories.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-06-14 13:03:22','2023-06-14 13:03:22','',0,'http://template-with-categories.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-06-14 15:01:31','2023-06-14 15:01:31','','Portfolio','','publish','closed','closed','','portfolio','','','2023-06-14 15:01:31','2023-06-14 15:01:31','',0,'http://template-with-categories.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-06-14 15:01:31','2023-06-14 15:01:31','','Portfolio','','inherit','closed','closed','','7-revision-v1','','','2023-06-14 15:01:31','2023-06-14 15:01:31','',7,'http://template-with-categories.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-06-14 15:01:45','2023-06-14 15:01:45','','Onze diensten','','publish','closed','closed','','onze-diensten','','','2023-06-14 15:01:45','2023-06-14 15:01:45','',0,'http://template-with-categories.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-06-14 15:01:45','2023-06-14 15:01:45','','Onze diensten','','inherit','closed','closed','','9-revision-v1','','','2023-06-14 15:01:45','2023-06-14 15:01:45','',9,'http://template-with-categories.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-06-14 15:01:57','2023-06-14 15:01:57','','Contact','','publish','closed','closed','','contact','','','2023-06-14 15:01:57','2023-06-14 15:01:57','',0,'http://template-with-categories.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-06-14 15:01:57','2023-06-14 15:01:57','','Contact','','inherit','closed','closed','','11-revision-v1','','','2023-06-14 15:01:57','2023-06-14 15:01:57','',11,'http://template-with-categories.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-06-14 15:06:31','2023-06-14 15:06:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Stucwerk','','publish','closed','closed','','stucwerk','','','2023-06-22 06:05:15','2023-06-22 06:05:15','',9,'http://template-with-categories.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-06-14 15:06:31','2023-06-14 15:06:31','','Stucwerk','','inherit','closed','closed','','13-revision-v1','','','2023-06-14 15:06:31','2023-06-14 15:06:31','',13,'http://template-with-categories.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-06-14 15:06:53','2023-06-14 15:06:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Buitenschilderwerk','','publish','closed','closed','','buitenschilderwerk','','','2023-06-22 06:04:42','2023-06-22 06:04:42','',9,'http://template-with-categories.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-06-14 15:06:53','2023-06-14 15:06:53','','Buitenschilderwerk','','inherit','closed','closed','','15-revision-v1','','','2023-06-14 15:06:53','2023-06-14 15:06:53','',15,'http://template-with-categories.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-06-21 17:19:51','2023-06-14 15:40:15',' ','','','publish','closed','closed','','18','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',0,'http://template-with-categories.local/?p=18',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-06-21 17:19:51','2023-06-14 15:40:15',' ','','','publish','closed','closed','','19','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',0,'http://template-with-categories.local/?p=19',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-06-21 17:19:51','2023-06-14 15:40:15',' ','','','publish','closed','closed','','20','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',9,'http://template-with-categories.local/?p=20',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-06-21 17:19:51','2023-06-14 15:40:15',' ','','','publish','closed','closed','','21','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',9,'http://template-with-categories.local/?p=21',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-06-21 17:19:51','2023-06-14 15:40:15',' ','','','publish','closed','closed','','22','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',0,'http://template-with-categories.local/?p=22',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-06-14 15:41:38','2023-06-14 15:41:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget cursus velit. Integer at lacus consectetur, porttitor diam et, viverra orci. Donec malesuada velit at ex blandit, ac cursus magna tempor. Sed ut ipsum ornare, <strong>imperdiet </strong>felis id, dictum odio. Quisque porta condimentum leo eget pulvinar. Vivamus rhoncus magna id sapien gravida vestibulum. Morbi placerat imperdiet odio sed sagittis. In ut magna nec neque efficitur blandit. Fusce blandit mollis urna, a efficitur nisl tristique eget. Aenean dignissim velit sed tellus dapibus luctus. Cras sagittis tellus ex, nec sollicitudin nisl semper in. Ut aliquet posuere justo at faucibus. Ut tempus mauris qui<em>s est congue vehicula. Sed tristique neque risus. Proin bibendum odio lorem, id suscipit mi pulvinar ultrices.</em></p>\n<!-- /wp:paragraph -->','Wand en plafond specialist randstad','','publish','closed','closed','','home','','','2023-06-21 13:29:44','2023-06-21 13:29:44','',0,'http://template-with-categories.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-06-14 15:41:38','2023-06-14 15:41:38','','Home','','inherit','closed','closed','','24-revision-v1','','','2023-06-14 15:41:38','2023-06-14 15:41:38','',24,'http://template-with-categories.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-06-21 17:19:51','2023-06-14 15:42:15','','Home','','publish','closed','closed','','26','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',0,'http://template-with-categories.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (788,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 1','','publish','open','open','','dummy-post-1','','','2023-06-21 13:54:05','2023-06-21 13:54:05','',0,'http://template-with-categories.local/dummy-post-1/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (789,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','<!-- wp:image {\"id\":887,\"width\":288,\"height\":288,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://template-with-categories.local/wp-content/uploads/2023/06/house2-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-887\" width=\"288\" height=\"288\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n<!-- /wp:paragraph -->','Dummy Post 2','','publish','open','open','','dummy-post-2','','','2023-06-21 14:18:12','2023-06-21 14:18:12','',0,'http://template-with-categories.local/dummy-post-2/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (790,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 3','','publish','open','open','','dummy-post-3','','','2023-06-27 12:06:25','2023-06-27 12:06:25','',0,'http://template-with-categories.local/dummy-post-3/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (791,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dummy Post 4','','publish','open','open','','dummy-post-4','','','2023-06-27 12:01:52','2023-06-27 12:01:52','',0,'http://template-with-categories.local/dummy-post-4/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (792,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 5','','publish','open','open','','dummy-post-5','','','2023-06-27 12:02:07','2023-06-27 12:02:07','',0,'http://template-with-categories.local/dummy-post-5/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (793,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 6','','publish','open','open','','dummy-post-6','','','2023-06-27 12:02:19','2023-06-27 12:02:19','',0,'http://template-with-categories.local/dummy-post-6/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (794,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 7','','publish','open','open','','dummy-post-7','','','2023-06-27 12:02:30','2023-06-27 12:02:30','',0,'http://template-with-categories.local/dummy-post-7/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (795,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','<blockquote>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n</blockquote>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dummy Post 8','','publish','open','open','','dummy-post-8','','','2023-06-27 12:02:41','2023-06-27 12:02:41','',0,'http://template-with-categories.local/dummy-post-8/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (796,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 9','Dummy Post 9','','publish','open','open','','dummy-post-9','','','2023-06-27 12:02:52','2023-06-27 12:02:52','',0,'http://template-with-categories.local/dummy-post-9/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (797,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 10','Dummy Post 10','','publish','open','open','','dummy-post-10','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-10/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (798,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 11','Dummy Post 11','','publish','open','open','','dummy-post-11','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-11/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (799,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 12','Dummy Post 12','','publish','open','open','','dummy-post-12','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-12/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (800,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 13','Dummy Post 13','','publish','open','open','','dummy-post-13','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-13/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (801,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 14','Dummy Post 14','','publish','open','open','','dummy-post-14','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-14/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (802,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 15','Dummy Post 15','','publish','open','open','','dummy-post-15','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-15/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (803,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 16','Dummy Post 16','','publish','open','open','','dummy-post-16','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-16/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (804,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 17','Dummy Post 17','','publish','open','open','','dummy-post-17','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-17/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (805,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 18','Dummy Post 18','','publish','open','open','','dummy-post-18','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-18/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (806,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 19','Dummy Post 19','','publish','open','open','','dummy-post-19','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-19/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (807,1,'2023-06-16 15:02:14','2023-06-16 15:02:14','This is the content of Dummy Post 20','Dummy Post 20','','publish','open','open','','dummy-post-20','','','2023-06-16 15:02:14','2023-06-16 15:02:14','',0,'http://template-with-categories.local/dummy-post-20/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (808,1,'2023-06-16 15:02:44','2023-06-16 15:02:44','<!-- wp:paragraph -->\n<p>This is the content of Dummy Post 2</p>\n<!-- /wp:paragraph -->','Dummy Post 2','','inherit','closed','closed','','789-revision-v1','','','2023-06-16 15:02:44','2023-06-16 15:02:44','',789,'http://template-with-categories.local/?p=808',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (863,1,'2023-06-19 13:19:06','2023-06-19 13:19:06','','test','','publish','closed','closed','','863','','','2023-06-19 13:20:14','2023-06-19 13:20:14','',0,'http://template-with-categories.local/?post_type=question_form_step&#038;p=863',0,'question_form_step','',0);
INSERT INTO `wp_posts` VALUES (868,1,'2023-06-21 13:00:12','2023-06-21 13:00:12','','base_logo_transparent_background','','inherit','open','closed','','base_logo_transparent_background','','','2023-06-21 13:00:12','2023-06-21 13:00:12','',24,'http://template-with-categories.local/wp-content/uploads/2023/06/base_logo_transparent_background.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (870,1,'2023-06-21 13:18:45','2023-06-21 13:18:45','','Wand en plafond specialist randstad','','inherit','closed','closed','','24-revision-v1','','','2023-06-21 13:18:45','2023-06-21 13:18:45','',24,'http://template-with-categories.local/?p=870',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (871,1,'2023-06-21 13:27:17','2023-06-21 13:27:17','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget cursus velit. Integer at lacus consectetur, porttitor diam et, viverra orci. Donec malesuada velit at ex blandit, ac cursus magna tempor. Sed ut ipsum ornare, imperdiet felis id, dictum odio. Quisque porta condimentum leo eget pulvinar. Vivamus rhoncus magna id sapien gravida vestibulum. Morbi placerat imperdiet odio sed sagittis. In ut magna nec neque efficitur blandit. Fusce blandit mollis urna, a efficitur nisl tristique eget. Aenean dignissim velit sed tellus dapibus luctus. Cras sagittis tellus ex, nec sollicitudin nisl semper in. Ut aliquet posuere justo at faucibus. Ut tempus mauris quis est congue vehicula. Sed tristique neque risus. Proin bibendum odio lorem, id suscipit mi pulvinar ultrices.</p>\n<!-- /wp:paragraph -->','Wand en plafond specialist randstad','','inherit','closed','closed','','24-revision-v1','','','2023-06-21 13:27:17','2023-06-21 13:27:17','',24,'http://template-with-categories.local/?p=871',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (873,1,'2023-06-21 13:29:44','2023-06-21 13:29:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget cursus velit. Integer at lacus consectetur, porttitor diam et, viverra orci. Donec malesuada velit at ex blandit, ac cursus magna tempor. Sed ut ipsum ornare, <strong>imperdiet </strong>felis id, dictum odio. Quisque porta condimentum leo eget pulvinar. Vivamus rhoncus magna id sapien gravida vestibulum. Morbi placerat imperdiet odio sed sagittis. In ut magna nec neque efficitur blandit. Fusce blandit mollis urna, a efficitur nisl tristique eget. Aenean dignissim velit sed tellus dapibus luctus. Cras sagittis tellus ex, nec sollicitudin nisl semper in. Ut aliquet posuere justo at faucibus. Ut tempus mauris qui<em>s est congue vehicula. Sed tristique neque risus. Proin bibendum odio lorem, id suscipit mi pulvinar ultrices.</em></p>\n<!-- /wp:paragraph -->','Wand en plafond specialist randstad','','inherit','closed','closed','','24-revision-v1','','','2023-06-21 13:29:44','2023-06-21 13:29:44','',24,'http://template-with-categories.local/?p=873',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (874,1,'2023-06-21 13:40:40','2023-06-21 13:40:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 1','','inherit','closed','closed','','788-revision-v1','','','2023-06-21 13:40:40','2023-06-21 13:40:40','',788,'http://template-with-categories.local/?p=874',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (875,1,'2023-06-21 13:40:50','2023-06-21 13:40:50','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n<!-- /wp:paragraph -->','Dummy Post 2','','inherit','closed','closed','','789-revision-v1','','','2023-06-21 13:40:50','2023-06-21 13:40:50','',789,'http://template-with-categories.local/?p=875',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (876,1,'2023-06-21 13:40:58','2023-06-21 13:40:58','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 3','','inherit','closed','closed','','790-revision-v1','','','2023-06-21 13:40:58','2023-06-21 13:40:58','',790,'http://template-with-categories.local/?p=876',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (877,1,'2023-06-21 13:42:07','2023-06-21 13:42:07','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dummy Post 4','','inherit','closed','closed','','791-revision-v1','','','2023-06-21 13:42:07','2023-06-21 13:42:07','',791,'http://template-with-categories.local/?p=877',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (878,1,'2023-06-21 13:42:15','2023-06-21 13:42:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 5','','inherit','closed','closed','','792-revision-v1','','','2023-06-21 13:42:15','2023-06-21 13:42:15','',792,'http://template-with-categories.local/?p=878',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (879,1,'2023-06-21 13:42:25','2023-06-21 13:42:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 6','','inherit','closed','closed','','793-revision-v1','','','2023-06-21 13:42:25','2023-06-21 13:42:25','',793,'http://template-with-categories.local/?p=879',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (880,1,'2023-06-21 13:42:30','2023-06-21 13:42:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.','Dummy Post 7','','inherit','closed','closed','','794-revision-v1','','','2023-06-21 13:42:30','2023-06-21 13:42:30','',794,'http://template-with-categories.local/?p=880',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (881,1,'2023-06-21 13:42:36','2023-06-21 13:42:36','<blockquote>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n</blockquote>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Dummy Post 8','','inherit','closed','closed','','795-revision-v1','','','2023-06-21 13:42:36','2023-06-21 13:42:36','',795,'http://template-with-categories.local/?p=881',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (882,1,'2023-06-21 13:49:11','2023-06-21 13:49:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n<!-- /wp:paragraph -->','Post latests','','publish','open','open','','post-latests','','','2023-06-21 13:53:47','2023-06-21 13:53:47','',0,'http://template-with-categories.local/?p=882',0,'post','',0);
INSERT INTO `wp_posts` VALUES (883,1,'2023-06-21 13:49:11','2023-06-21 13:49:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n<!-- /wp:paragraph -->','Post latests','','inherit','closed','closed','','882-revision-v1','','','2023-06-21 13:49:11','2023-06-21 13:49:11','',882,'http://template-with-categories.local/?p=883',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (884,1,'2023-06-21 13:53:38','2023-06-21 13:53:38','','house2','','inherit','open','closed','','house2','','','2023-06-21 13:53:38','2023-06-21 13:53:38','',882,'http://template-with-categories.local/wp-content/uploads/2023/06/house2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (885,1,'2023-06-21 13:53:57','2023-06-21 13:53:57','','house1','','inherit','open','closed','','house1','','','2023-06-21 13:53:57','2023-06-21 13:53:57','',788,'http://template-with-categories.local/wp-content/uploads/2023/06/house1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (886,1,'2023-06-21 13:54:17','2023-06-21 13:54:17','','house3','','inherit','open','closed','','house3','','','2023-06-21 13:54:17','2023-06-21 13:54:17','',789,'http://template-with-categories.local/wp-content/uploads/2023/06/house3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (887,1,'2023-06-21 14:18:04','2023-06-21 14:18:04','','house2-1','','inherit','open','closed','','house2-1','','','2023-06-21 14:18:04','2023-06-21 14:18:04','',789,'http://template-with-categories.local/wp-content/uploads/2023/06/house2-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (888,1,'2023-06-21 14:18:12','2023-06-21 14:18:12','<!-- wp:image {\"id\":887,\"width\":288,\"height\":288,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://template-with-categories.local/wp-content/uploads/2023/06/house2-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-887\" width=\"288\" height=\"288\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras diam libero, tempor non ultricies vel, pretium ac sapien. Pellentesque at erat faucibus dolor malesuada posuere sit amet eu dui. Pellentesque ac accumsan sapien. Quisque urna est, finibus eget nunc in, lobortis malesuada nibh. Nunc consequat et eros sed vehicula. Quisque nec iaculis eros. Vivamus varius ipsum vitae orci tincidunt, ut laoreet nisl lobortis. Mauris vitae aliquet nisi, ac mattis arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin scelerisque sodales mollis.</p>\n<!-- /wp:paragraph -->','Dummy Post 2','','inherit','closed','closed','','789-revision-v1','','','2023-06-21 14:18:12','2023-06-21 14:18:12','',789,'http://template-with-categories.local/?p=888',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (889,1,'2023-06-21 17:19:27','2023-06-21 17:19:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget cursus velit. Integer at lacus consectetur, porttitor diam et, viverra orci. Donec malesuada velit at ex blandit, ac cursus magna tempor. Sed ut ipsum ornare, <strong>imperdiet </strong>felis id, dictum odio. Quisque porta condimentum leo eget pulvinar. Vivamus rhoncus magna id sapien gravida vestibulum. Morbi placerat imperdiet odio sed sagittis. In ut magna nec neque efficitur blandit. Fusce blandit mollis urna, a efficitur nisl tristique eget. Aenean dignissim velit sed tellus dapibus luctus. Cras sagittis tellus ex, nec sollicitudin nisl semper in. Ut aliquet posuere justo at faucibus. Ut tempus mauris qui<em>s est congue vehicula. Sed tristique neque risus. Proin bibendum odio lorem, id suscipit mi pulvinar ultrices.</em></p>\n<!-- /wp:paragraph -->','Over ons','','publish','closed','closed','','over-ons','','','2023-06-21 17:19:27','2023-06-21 17:19:27','',0,'http://template-with-categories.local/?page_id=889',0,'page','',0);
INSERT INTO `wp_posts` VALUES (890,1,'2023-06-21 17:19:27','2023-06-21 17:19:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget cursus velit. Integer at lacus consectetur, porttitor diam et, viverra orci. Donec malesuada velit at ex blandit, ac cursus magna tempor. Sed ut ipsum ornare, <strong>imperdiet </strong>felis id, dictum odio. Quisque porta condimentum leo eget pulvinar. Vivamus rhoncus magna id sapien gravida vestibulum. Morbi placerat imperdiet odio sed sagittis. In ut magna nec neque efficitur blandit. Fusce blandit mollis urna, a efficitur nisl tristique eget. Aenean dignissim velit sed tellus dapibus luctus. Cras sagittis tellus ex, nec sollicitudin nisl semper in. Ut aliquet posuere justo at faucibus. Ut tempus mauris qui<em>s est congue vehicula. Sed tristique neque risus. Proin bibendum odio lorem, id suscipit mi pulvinar ultrices.</em></p>\n<!-- /wp:paragraph -->','Over ons','','inherit','closed','closed','','889-revision-v1','','','2023-06-21 17:19:27','2023-06-21 17:19:27','',889,'http://template-with-categories.local/?p=890',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (891,1,'2023-06-21 17:19:51','2023-06-21 17:19:51',' ','','','publish','closed','closed','','891','','','2023-06-21 17:19:51','2023-06-21 17:19:51','',0,'http://template-with-categories.local/?p=891',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (893,1,'2023-06-22 06:04:28','2023-06-22 06:04:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Buitenschilderwerk','','publish','closed','closed','','buitenschilderwerk-2','','','2023-06-22 06:04:57','2023-06-22 06:04:57','',9,'http://template-with-categories.local/?page_id=893',0,'page','',0);
INSERT INTO `wp_posts` VALUES (894,1,'2023-06-22 06:04:28','2023-06-22 06:04:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Buitenschilderwerk','','inherit','closed','closed','','893-revision-v1','','','2023-06-22 06:04:28','2023-06-22 06:04:28','',893,'http://template-with-categories.local/?p=894',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (895,1,'2023-06-22 06:04:42','2023-06-22 06:04:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Buitenschilderwerk','','inherit','closed','closed','','15-revision-v1','','','2023-06-22 06:04:42','2023-06-22 06:04:42','',15,'http://template-with-categories.local/?p=895',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (896,1,'2023-06-22 06:05:15','2023-06-22 06:05:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed leo congue, luctus leo et, tempus purus. Nullam vehicula mattis massa semper volutpat. Morbi consectetur elit at libero vulputate, nec sollicitudin orci tincidunt. Cras fringilla efficitur placerat. Morbi non augue lectus. Nullam lobortis nunc nec aliquet pharetra. Nulla maximus, dui ac imperdiet iaculis, urna risus cursus enim, a auctor mauris ante a leo. Curabitur malesuada elit sed elit placerat blandit. Vivamus mattis ligula orci, ac placerat nisi ultrices vel. Ut laoreet non nibh ut pharetra. Vestibulum ac ipsum id risus interdum finibus eget eu ipsum. Integer pretium posuere augue, vel blandit tortor. Cras hendrerit, ipsum id blandit tincidunt, mi turpis auctor felis, quis egestas elit turpis vel eros. Vivamus id sem quis est molestie tempor sit amet at libero.</p>\n<!-- /wp:paragraph -->','Stucwerk','','inherit','closed','closed','','13-revision-v1','','','2023-06-22 06:05:15','2023-06-22 06:05:15','',13,'http://template-with-categories.local/?p=896',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (897,1,'2023-06-27 12:02:52','2023-06-27 12:02:52','This is the content of Dummy Post 9','Dummy Post 9','','inherit','closed','closed','','796-revision-v1','','','2023-06-27 12:02:52','2023-06-27 12:02:52','',796,'http://template-with-categories.local/?p=897',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (899,1,'2023-07-02 06:16:25','2023-07-02 06:16:25','<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->','Test','','publish','closed','closed','','test','','','2023-07-02 06:16:25','2023-07-02 06:16:25','',9,'http://template-with-categories.local/?page_id=899',0,'page','',0);
INSERT INTO `wp_posts` VALUES (900,1,'2023-07-02 06:16:25','2023-07-02 06:16:25','<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->','Test','','inherit','closed','closed','','899-revision-v1','','','2023-07-02 06:16:25','2023-07-02 06:16:25','',899,'http://template-with-categories.local/?p=900',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (18,2,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (788,4,0);
INSERT INTO `wp_term_relationships` VALUES (789,6,0);
INSERT INTO `wp_term_relationships` VALUES (790,5,0);
INSERT INTO `wp_term_relationships` VALUES (791,3,0);
INSERT INTO `wp_term_relationships` VALUES (792,3,0);
INSERT INTO `wp_term_relationships` VALUES (793,5,0);
INSERT INTO `wp_term_relationships` VALUES (794,3,0);
INSERT INTO `wp_term_relationships` VALUES (795,5,0);
INSERT INTO `wp_term_relationships` VALUES (796,5,0);
INSERT INTO `wp_term_relationships` VALUES (797,5,0);
INSERT INTO `wp_term_relationships` VALUES (798,4,0);
INSERT INTO `wp_term_relationships` VALUES (799,6,0);
INSERT INTO `wp_term_relationships` VALUES (800,6,0);
INSERT INTO `wp_term_relationships` VALUES (801,3,0);
INSERT INTO `wp_term_relationships` VALUES (802,3,0);
INSERT INTO `wp_term_relationships` VALUES (803,3,0);
INSERT INTO `wp_term_relationships` VALUES (804,6,0);
INSERT INTO `wp_term_relationships` VALUES (805,3,0);
INSERT INTO `wp_term_relationships` VALUES (806,3,0);
INSERT INTO `wp_term_relationships` VALUES (807,4,0);
INSERT INTO `wp_term_relationships` VALUES (882,1,0);
INSERT INTO `wp_term_relationships` VALUES (891,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Header Menu','main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Category A','category-a',0);
INSERT INTO `wp_terms` VALUES (4,'Category B','category-b',0);
INSERT INTO `wp_terms` VALUES (5,'Category C','category-c',0);
INSERT INTO `wp_terms` VALUES (6,'Category D','category-d',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','root');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"2323ae9263cbd8070a8593e6a026eb233bc18f42de804a0763c495fb5c0e38c0\";a:4:{s:10:\"expiration\";i:1692720178;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1692547378;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','901');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:14:\"featured-image\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-07-02T06:05:08.964Z\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','hidetb=0&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1687353618');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'root','$P$BpkBXjkBM5lqypPhEK.9YZOp45eAWV0','root','dev-email@wpengine.local','http://template-with-categories.local','2023-06-14 13:03:22','',0,'root');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-14 19:04:27
