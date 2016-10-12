# WordPress MySQL database migration
#
# Generated: Wednesday 12. October 2016 23:14 UTC
# Hostname: localhost
# Database: `musicaexpress`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/musicaexpress', 'yes'),
(2, 'home', 'http://localhost/musicaexpress', 'yes'),
(3, 'blogname', 'Musica Express', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:143:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:19:"type_instruments/?$";s:36:"index.php?post_type=type_instruments";s:49:"type_instruments/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=type_instruments&feed=$matches[1]";s:44:"type_instruments/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=type_instruments&feed=$matches[1]";s:36:"type_instruments/page/([0-9]{1,})/?$";s:54:"index.php?post_type=type_instruments&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:53:"instrumentos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?category_instruments=$matches[1]&feed=$matches[2]";s:48:"instrumentos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?category_instruments=$matches[1]&feed=$matches[2]";s:29:"instrumentos/([^/]+)/embed/?$";s:53:"index.php?category_instruments=$matches[1]&embed=true";s:41:"instrumentos/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?category_instruments=$matches[1]&paged=$matches[2]";s:23:"instrumentos/([^/]+)/?$";s:42:"index.php?category_instruments=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"type_instruments/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"type_instruments/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"type_instruments/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"type_instruments/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"type_instruments/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"type_instruments/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"type_instruments/([^/]+)/embed/?$";s:49:"index.php?type_instruments=$matches[1]&embed=true";s:37:"type_instruments/([^/]+)/trackback/?$";s:43:"index.php?type_instruments=$matches[1]&tb=1";s:57:"type_instruments/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?type_instruments=$matches[1]&feed=$matches[2]";s:52:"type_instruments/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?type_instruments=$matches[1]&feed=$matches[2]";s:45:"type_instruments/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?type_instruments=$matches[1]&paged=$matches[2]";s:52:"type_instruments/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?type_instruments=$matches[1]&cpage=$matches[2]";s:41:"type_instruments/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?type_instruments=$matches[1]&page=$matches[2]";s:33:"type_instruments/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"type_instruments/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"type_instruments/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"type_instruments/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"type_instruments/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"type_instruments/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:31:"live-admin-customzier/index.php";i:3;s:35:"wp-media-folder/wp-media-folder.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'musicaexpress', 'yes'),
(41, 'stylesheet', 'musicaexpress', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476355011;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476355147;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476372276;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476398310;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(117, 'can_compress_scripts', '1', 'no'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'wpmf_use_taxonomy', '1', 'yes'),
(139, 'rrrlgvwr_options', 'a:15:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";s:2:"10";s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:84:"C:/xampp/htdocs/musicaexpress/wp-content/plugins/error-log-viewer/log/php-errors.log";s:17:"count_visible_log";i:1;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1476284908;s:19:"go_settings_counter";i:1;s:9:"file_path";a:1:{i:1;s:84:"C:/xampp/htdocs/musicaexpress/wp-content/plugins/error-log-viewer/log/php-errors.log";}s:10:"send_email";i:0;s:20:"0_php-errors_visible";i:1;}', 'yes'),
(143, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(144, 'duplicate_post_copyexcerpt', '1', 'yes'),
(145, 'duplicate_post_copyattachments', '0', 'yes'),
(146, 'duplicate_post_copychildren', '0', 'yes'),
(147, 'duplicate_post_copystatus', '0', 'yes'),
(148, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(149, 'duplicate_post_show_row', '1', 'yes'),
(150, 'duplicate_post_show_adminbar', '1', 'yes'),
(151, 'duplicate_post_show_submitbox', '1', 'yes'),
(152, 'duplicate_post_version', '2.6', 'yes'),
(153, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(154, 'wpmf_padding_masonry', '5', 'yes'),
(155, 'wpmf_padding_portfolio', '10', 'yes'),
(156, 'wpmf_usegellery', '1', 'yes'),
(157, 'wpmf_useorder', '1', 'yes'),
(158, 'wpmf_folder_option1', '0', 'yes'),
(159, 'wpmf_option_override', '0', 'yes'),
(160, 'wpmf_active_media', '0', 'yes'),
(161, 'wpmf_folder_option2', '1', 'yes'),
(162, 'wpmf_option_searchall', '0', 'yes'),
(163, 'wpmf_usegellery_lightbox', '1', 'yes'),
(164, 'wpmf_media_rename', '0', 'yes'),
(165, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(166, 'wpmf_rename_number', '0', 'yes'),
(167, 'wpmf_option_media_remove', '0', 'yes'),
(168, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(169, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(170, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(171, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(172, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(173, 'wpmf_option_singlefile', '0', 'yes'),
(174, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476284129;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.2";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.2";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(175, '_wpmf_import_notice_flag', 'no', 'yes'),
(176, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1476226155;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(177, 'current_theme', 'MusicaExpress Theme', 'yes'),
(178, 'theme_mods_musicaexpress', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:13:"top-left-menu";i:2;s:14:"top-right-menu";i:3;s:9:"main-menu";i:4;}}', 'yes'),
(179, 'theme_switched', '', 'yes'),
(204, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(205, 'theme_settings', 'a:7:{s:18:"theme_phone_text_1";s:12:"(01) 3306654";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:9:"963632635";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:0:"";s:18:"theme_address_text";s:0:"";s:19:"theme_atention_text";s:0:"";}', 'yes'),
(217, 'category_instruments_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_edit_lock', '1476226006:1'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1476285872'),
(5, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(6, 5, '_edit_last', '1'),
(7, 5, '_edit_lock', '1476285746:1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1476285762:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1476285781:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1476285807:1'),
(14, 14, '_edit_last', '1'),
(15, 14, '_edit_lock', '1476285817:1'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1476285839:1'),
(18, 18, '_menu_item_type', 'post_type'),
(19, 18, '_menu_item_menu_item_parent', '0'),
(20, 18, '_menu_item_object_id', '9'),
(21, 18, '_menu_item_object', 'page'),
(22, 18, '_menu_item_target', ''),
(23, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 18, '_menu_item_xfn', ''),
(25, 18, '_menu_item_url', ''),
(27, 19, '_menu_item_type', 'post_type'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '7'),
(30, 19, '_menu_item_object', 'page'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', ''),
(36, 20, '_menu_item_type', 'post_type'),
(37, 20, '_menu_item_menu_item_parent', '0'),
(38, 20, '_menu_item_object_id', '5'),
(39, 20, '_menu_item_object', 'page'),
(40, 20, '_menu_item_target', ''),
(41, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 20, '_menu_item_xfn', ''),
(43, 20, '_menu_item_url', ''),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '16'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '14'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(63, 23, '_menu_item_type', 'post_type'),
(64, 23, '_menu_item_menu_item_parent', '0'),
(65, 23, '_menu_item_object_id', '12'),
(66, 23, '_menu_item_object', 'page'),
(67, 23, '_menu_item_target', ''),
(68, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 23, '_menu_item_xfn', ''),
(70, 23, '_menu_item_url', ''),
(71, 24, '_menu_item_type', 'custom'),
(72, 24, '_menu_item_menu_item_parent', '0'),
(73, 24, '_menu_item_object_id', '24'),
(74, 24, '_menu_item_object', 'custom'),
(75, 24, '_menu_item_target', ''),
(76, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 24, '_menu_item_xfn', ''),
(78, 24, '_menu_item_url', '#'),
(80, 25, '_menu_item_type', 'custom'),
(81, 25, '_menu_item_menu_item_parent', '0'),
(82, 25, '_menu_item_object_id', '25'),
(83, 25, '_menu_item_object', 'custom'),
(84, 25, '_menu_item_target', ''),
(85, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 25, '_menu_item_xfn', ''),
(87, 25, '_menu_item_url', '#'),
(89, 26, '_menu_item_type', 'custom'),
(90, 26, '_menu_item_menu_item_parent', '0'),
(91, 26, '_menu_item_object_id', '26'),
(92, 26, '_menu_item_object', 'custom'),
(93, 26, '_menu_item_target', ''),
(94, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 26, '_menu_item_xfn', ''),
(96, 26, '_menu_item_url', '#'),
(98, 27, '_menu_item_type', 'custom'),
(99, 27, '_menu_item_menu_item_parent', '0'),
(100, 27, '_menu_item_object_id', '27'),
(101, 27, '_menu_item_object', 'custom'),
(102, 27, '_menu_item_target', ''),
(103, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 27, '_menu_item_xfn', ''),
(105, 27, '_menu_item_url', '#'),
(107, 28, '_menu_item_type', 'custom'),
(108, 28, '_menu_item_menu_item_parent', '0'),
(109, 28, '_menu_item_object_id', '28') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(110, 28, '_menu_item_object', 'custom'),
(111, 28, '_menu_item_target', ''),
(112, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 28, '_menu_item_xfn', ''),
(114, 28, '_menu_item_url', '#'),
(116, 29, '_menu_item_type', 'custom'),
(117, 29, '_menu_item_menu_item_parent', '0'),
(118, 29, '_menu_item_object_id', '29'),
(119, 29, '_menu_item_object', 'custom'),
(120, 29, '_menu_item_target', ''),
(121, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 29, '_menu_item_xfn', ''),
(123, 29, '_menu_item_url', '#'),
(125, 30, '_menu_item_type', 'custom'),
(126, 30, '_menu_item_menu_item_parent', '0'),
(127, 30, '_menu_item_object_id', '30'),
(128, 30, '_menu_item_object', 'custom'),
(129, 30, '_menu_item_target', ''),
(130, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 30, '_menu_item_xfn', ''),
(132, 30, '_menu_item_url', '#'),
(134, 31, '_menu_item_type', 'custom'),
(135, 31, '_menu_item_menu_item_parent', '0'),
(136, 31, '_menu_item_object_id', '31'),
(137, 31, '_menu_item_object', 'custom'),
(138, 31, '_menu_item_target', ''),
(139, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 31, '_menu_item_xfn', ''),
(141, 31, '_menu_item_url', '#'),
(143, 32, '_menu_item_type', 'custom'),
(144, 32, '_menu_item_menu_item_parent', '0'),
(145, 32, '_menu_item_object_id', '32'),
(146, 32, '_menu_item_object', 'custom'),
(147, 32, '_menu_item_target', ''),
(148, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 32, '_menu_item_xfn', ''),
(150, 32, '_menu_item_url', '#'),
(152, 33, '_menu_item_type', 'custom'),
(153, 33, '_menu_item_menu_item_parent', '0'),
(154, 33, '_menu_item_object_id', '33'),
(155, 33, '_menu_item_object', 'custom'),
(156, 33, '_menu_item_target', ''),
(157, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 33, '_menu_item_xfn', ''),
(159, 33, '_menu_item_url', '#'),
(161, 34, '_menu_item_type', 'post_type'),
(162, 34, '_menu_item_menu_item_parent', '24'),
(163, 34, '_menu_item_object_id', '5'),
(164, 34, '_menu_item_object', 'page'),
(165, 34, '_menu_item_target', ''),
(166, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 34, '_menu_item_xfn', ''),
(168, 34, '_menu_item_url', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-10-11 22:36:50', '2016-10-11 22:36:50', '', 0, 'http://localhost/musicaexpress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/musicaexpress/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-10-12 15:24:32', '2016-10-12 15:24:32', '', 0, 'http://localhost/musicaexpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-11 22:37:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 22:37:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-12 15:24:32', '2016-10-12 15:24:32', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/musicaexpress/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-10-12 15:24:32', '2016-10-12 15:24:32', '', 2, 'http://localhost/musicaexpress/2016/10/12/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 0, 'http://localhost/musicaexpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 5, 'http://localhost/musicaexpress/2016/10/12/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 0, 'http://localhost/musicaexpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 7, 'http://localhost/musicaexpress/2016/10/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 'Alquiler de Instrumentos', '', 'publish', 'closed', 'closed', '', 'alquiler-de-instrumentos', '', '', '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 0, 'http://localhost/musicaexpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 9, 'http://localhost/musicaexpress/2016/10/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-10-12 15:25:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-12 15:25:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 'Soporte Técnico', '', 'publish', 'closed', 'closed', '', 'soporte-tecnico', '', '', '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 0, 'http://localhost/musicaexpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 'Soporte Técnico', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 12, 'http://localhost/musicaexpress/2016/10/12/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 0, 'http://localhost/musicaexpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 14, 'http://localhost/musicaexpress/2016/10/12/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 0, 'http://localhost/musicaexpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 'Contáctenos', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 16, 'http://localhost/musicaexpress/2016/10/12/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-10-12 15:26:56', '2016-10-12 15:26:56', '', 0, 'http://localhost/musicaexpress/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-10-12 15:26:56', '2016-10-12 15:26:56', '', 0, 'http://localhost/musicaexpress/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-10-12 15:26:56', '2016-10-12 15:26:56', '', 0, 'http://localhost/musicaexpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-10-12 15:27:28', '2016-10-12 15:27:28', '', 0, 'http://localhost/musicaexpress/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-10-12 15:27:28', '2016-10-12 15:27:28', '', 0, 'http://localhost/musicaexpress/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-10-12 15:27:28', '2016-10-12 15:27:28', '', 0, 'http://localhost/musicaexpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Guitarras', '', 'publish', 'closed', 'closed', '', 'guitarras', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Bajos', '', 'publish', 'closed', 'closed', '', 'bajos', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Percusión', '', 'publish', 'closed', 'closed', '', 'percusion', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Vientos', '', 'publish', 'closed', 'closed', '', 'vientos', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Teclados', '', 'publish', 'closed', 'closed', '', 'teclados', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Proaudio', '', 'publish', 'closed', 'closed', '', 'proaudio', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=29', 7, 'nav_menu_item', '', 0),
(30, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Amplificadores', '', 'publish', 'closed', 'closed', '', 'amplificadores', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=30', 8, 'nav_menu_item', '', 0),
(31, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Efectos', '', 'publish', 'closed', 'closed', '', 'efectos', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=31', 9, 'nav_menu_item', '', 0),
(32, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Folkloricos', '', 'publish', 'closed', 'closed', '', 'folkloricos', '', '', '2016-10-12 22:55:24', '2016-10-12 22:55:24', '', 0, 'http://localhost/musicaexpress/?p=32', 10, 'nav_menu_item', '', 0),
(33, 1, '2016-10-12 19:56:02', '2016-10-12 19:56:02', '', 'Accesorios', '', 'publish', 'closed', 'closed', '', 'accesorios', '', '', '2016-10-12 22:55:24', '2016-10-12 22:55:24', '', 0, 'http://localhost/musicaexpress/?p=33', 11, 'nav_menu_item', '', 0),
(34, 1, '2016-10-12 22:55:23', '2016-10-12 22:55:23', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-10-12 22:55:23', '2016-10-12 22:55:23', '', 0, 'http://localhost/musicaexpress/?p=34', 2, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 11),
(8, 8, 'category_instruments', '', 0, 0),
(9, 9, 'category_instruments', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(5, 8, 'meta_order_taxonomy', '1'),
(6, 8, 'meta_color_taxonomy', '#000000'),
(7, 9, 'meta_order_taxonomy', '2'),
(8, 9, 'meta_color_taxonomy', '#000000') ;

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Top Left Menu', 'top-left-menu', 0),
(3, 'Top Right Menu', 'top-right-menu', 0),
(4, 'Menu Principal', 'menu-principal', 0),
(8, 'Guitarra', 'guitarra', 0),
(9, 'Bajos', 'bajos', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'true'),
(7, 1, 'admin_color', 'musicaexpress'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"d3a05b67e2d673a50eed0bef506337b2b75b340e4ba2f39081d113d20365e11e";a:4:{s:10:"expiration";i:1476398220;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476225420;}s:64:"755b26ca49f3013728f24e3a06c0c1a83ed648f940dd85d8c27407d8a993d5ee";a:4:{s:10:"expiration";i:1476458562;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476285762;}s:64:"b89661473312e63f3f2a0b3f0c2779aa1d9de61df984be62e97c3c7509cead3d";a:4:{s:10:"expiration";i:1476474804;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476302004;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '4') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BxZsOrWHWXeDUH7NdQlGoS38EWeDA61', 'admin', 'jgomez@ingenioart.com', '', '2016-10-11 22:36:49', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

