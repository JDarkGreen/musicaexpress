# WordPress MySQL database migration
#
# Generated: Tuesday 18. October 2016 23:11 UTC
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
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:210:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:19:"type_instruments/?$";s:36:"index.php?post_type=type_instruments";s:49:"type_instruments/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=type_instruments&feed=$matches[1]";s:44:"type_instruments/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=type_instruments&feed=$matches[1]";s:36:"type_instruments/page/([0-9]{1,})/?$";s:54:"index.php?post_type=type_instruments&paged=$matches[1]";s:14:"type-videos/?$";s:31:"index.php?post_type=type-videos";s:44:"type-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-videos&feed=$matches[1]";s:39:"type-videos/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-videos&feed=$matches[1]";s:31:"type-videos/page/([0-9]{1,})/?$";s:49:"index.php?post_type=type-videos&paged=$matches[1]";s:14:"type-marcas/?$";s:31:"index.php?post_type=type-marcas";s:44:"type-marcas/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-marcas&feed=$matches[1]";s:39:"type-marcas/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-marcas&feed=$matches[1]";s:31:"type-marcas/page/([0-9]{1,})/?$";s:49:"index.php?post_type=type-marcas&paged=$matches[1]";s:14:"type-offers/?$";s:31:"index.php?post_type=type-offers";s:44:"type-offers/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-offers&feed=$matches[1]";s:39:"type-offers/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=type-offers&feed=$matches[1]";s:31:"type-offers/page/([0-9]{1,})/?$";s:49:"index.php?post_type=type-offers&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:53:"instrumentos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?category_instruments=$matches[1]&feed=$matches[2]";s:48:"instrumentos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?category_instruments=$matches[1]&feed=$matches[2]";s:29:"instrumentos/([^/]+)/embed/?$";s:53:"index.php?category_instruments=$matches[1]&embed=true";s:41:"instrumentos/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?category_instruments=$matches[1]&paged=$matches[2]";s:23:"instrumentos/([^/]+)/?$";s:42:"index.php?category_instruments=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"type_instruments/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"type_instruments/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"type_instruments/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"type_instruments/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"type_instruments/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"type_instruments/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"type_instruments/([^/]+)/embed/?$";s:49:"index.php?type_instruments=$matches[1]&embed=true";s:37:"type_instruments/([^/]+)/trackback/?$";s:43:"index.php?type_instruments=$matches[1]&tb=1";s:57:"type_instruments/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?type_instruments=$matches[1]&feed=$matches[2]";s:52:"type_instruments/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?type_instruments=$matches[1]&feed=$matches[2]";s:45:"type_instruments/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?type_instruments=$matches[1]&paged=$matches[2]";s:52:"type_instruments/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?type_instruments=$matches[1]&cpage=$matches[2]";s:41:"type_instruments/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?type_instruments=$matches[1]&page=$matches[2]";s:33:"type_instruments/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"type_instruments/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"type_instruments/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"type_instruments/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"type_instruments/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"type_instruments/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"type-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"type-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"type-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"type-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"type-videos/([^/]+)/embed/?$";s:44:"index.php?type-videos=$matches[1]&embed=true";s:32:"type-videos/([^/]+)/trackback/?$";s:38:"index.php?type-videos=$matches[1]&tb=1";s:52:"type-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-videos=$matches[1]&feed=$matches[2]";s:47:"type-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-videos=$matches[1]&feed=$matches[2]";s:40:"type-videos/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?type-videos=$matches[1]&paged=$matches[2]";s:47:"type-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?type-videos=$matches[1]&cpage=$matches[2]";s:36:"type-videos/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?type-videos=$matches[1]&page=$matches[2]";s:28:"type-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"type-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"type-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"type-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"type-marcas/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"type-marcas/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"type-marcas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-marcas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-marcas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"type-marcas/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"type-marcas/([^/]+)/embed/?$";s:44:"index.php?type-marcas=$matches[1]&embed=true";s:32:"type-marcas/([^/]+)/trackback/?$";s:38:"index.php?type-marcas=$matches[1]&tb=1";s:52:"type-marcas/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-marcas=$matches[1]&feed=$matches[2]";s:47:"type-marcas/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-marcas=$matches[1]&feed=$matches[2]";s:40:"type-marcas/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?type-marcas=$matches[1]&paged=$matches[2]";s:47:"type-marcas/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?type-marcas=$matches[1]&cpage=$matches[2]";s:36:"type-marcas/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?type-marcas=$matches[1]&page=$matches[2]";s:28:"type-marcas/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"type-marcas/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"type-marcas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-marcas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-marcas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"type-marcas/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"type-offers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"type-offers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"type-offers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-offers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"type-offers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"type-offers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"type-offers/([^/]+)/embed/?$";s:44:"index.php?type-offers=$matches[1]&embed=true";s:32:"type-offers/([^/]+)/trackback/?$";s:38:"index.php?type-offers=$matches[1]&tb=1";s:52:"type-offers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-offers=$matches[1]&feed=$matches[2]";s:47:"type-offers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?type-offers=$matches[1]&feed=$matches[2]";s:40:"type-offers/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?type-offers=$matches[1]&paged=$matches[2]";s:47:"type-offers/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?type-offers=$matches[1]&cpage=$matches[2]";s:36:"type-offers/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?type-offers=$matches[1]&page=$matches[2]";s:28:"type-offers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"type-offers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"type-offers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-offers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"type-offers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"type-offers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:2:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";s:14:"ssba_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
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
(99, 'sidebars_widgets', 'a:5:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"main";a:1:{i:0;s:18:"image_and_link_w-2";}s:19:"wp_inactive_widgets";a:0:{}s:12:"main-sidebar";a:3:{i:0;s:18:"image_and_link_w-3";i:1;s:18:"image_and_link_w-4";i:2;s:18:"image_and_link_w-5";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476873411;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476873547;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476890676;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476916710;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(117, 'can_compress_scripts', '1', 'no'),
(137, 'recently_activated', 'a:2:{s:31:"wp-socializer/wp-socializer.php";i:1476721988;s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";i:1476721840;}', 'yes'),
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
(174, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476806469;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.3";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.3";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(175, '_wpmf_import_notice_flag', 'no', 'yes'),
(176, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1476226155;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(177, 'current_theme', 'MusicaExpress Theme', 'yes'),
(178, 'theme_mods_musicaexpress', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:13:"top-left-menu";i:2;s:14:"top-right-menu";i:3;s:9:"main-menu";i:4;}}', 'yes'),
(179, 'theme_switched', '', 'yes'),
(204, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(205, 'theme_settings', 'a:18:{s:18:"theme_phone_text_1";s:12:"(01) 3306654";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:9:"963632635";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:30:"ventasmusicalexpress@gmail.com";s:18:"theme_address_text";s:12:"Lima - Perú";s:19:"theme_atention_text";s:0:"";s:20:"theme_social_fb_text";s:33:"https://www.facebook.com/facebook";s:25:"theme_social_twitter_text";s:33:"https://www.facebook.com/facebook";s:25:"theme_social_youtube_text";s:33:"https://www.facebook.com/facebook";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";s:15:"theme_lat_coord";s:10:"-19.919271";s:16:"theme_long_coord";s:10:"-43.938660";s:15:"theme_zoom_mapa";s:2:"16";s:21:"theme_text_markup_map";s:18:"texto del marcador";}', 'yes'),
(281, 'widget_image_and_link_w', 'a:5:{i:2;a:11:{s:5:"title";s:22:"Instrumentos y ofertas";s:8:"ad_img_1";N;s:8:"ad_img_2";N;s:8:"ad_img_3";N;s:8:"ad_img_4";N;s:9:"ad_link_1";N;s:9:"ad_link_2";N;s:9:"ad_link_3";N;s:9:"ad_link_4";N;s:5:"w_img";s:75:"http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget.jpg";s:6:"w_link";s:40:"http://localhost/musicaexpress/nosotros/";}i:3;a:3:{s:5:"title";s:21:"Ofertas y promociones";s:5:"w_img";s:75:"http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget.jpg";s:6:"w_link";s:40:"http://localhost/musicaexpress/nosotros/";}i:4;a:3:{s:5:"title";s:23:"Ofertas y promociones 2";s:5:"w_img";s:75:"http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget.jpg";s:6:"w_link";s:1:"#";}i:5;a:3:{s:5:"title";s:9:"Ofertas 3";s:5:"w_img";s:75:"http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget.jpg";s:6:"w_link";s:1:"#";}s:12:"_multiwidget";i:1;}', 'yes'),
(393, 'category_children', 'a:0:{}', 'yes'),
(401, 'ssba_buttons', '{"buffer":{"full_name":"Buffer"},"diggit":{"full_name":"Diggit"},"email":{"full_name":"Email"},"facebook":{"full_name":"Facebook"},"facebook_save":{"full_name":"Facebook Save"},"flattr":{"full_name":"Flattr"},"google":{"full_name":"Google+"},"linkedin":{"full_name":"LinkedIn"},"pinterest":{"full_name":"Pinterest"},"print":{"full_name":"Print"},"reddit":{"full_name":"Reddit"},"stumbleupon":{"full_name":"StumbleUpon"},"tumblr":{"full_name":"Tumblr"},"twitter":{"full_name":"Twitter"},"vk":{"full_name":"VK"},"yummly":{"full_name":"Yummly"}}', 'yes'),
(403, 'widget_ssba_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(406, 'wpsr_addthis_data', 'a:8:{s:8:"username";s:0:"";s:8:"language";s:2:"en";s:6:"button";s:9:"lg-share-";s:15:"tb_16pxservices";s:45:"facebook,twitter,digg,delicious,email,compact";s:15:"tb_32pxservices";s:45:"facebook,twitter,digg,delicious,email,compact";s:10:"sharecount";s:6:"normal";s:7:"btbrand";s:0:"";s:9:"clickback";s:1:"1";}', 'yes'),
(407, 'wpsr_sharethis_data', 'a:9:{s:12:"vcount_order";s:32:"facebook,twitter,email,sharethis";s:12:"hcount_order";s:32:"facebook,twitter,email,sharethis";s:13:"buttons_order";s:32:"facebook,twitter,email,sharethis";s:11:"large_order";s:32:"facebook,twitter,email,sharethis";s:13:"regular_order";s:32:"facebook,twitter,email,sharethis";s:14:"regular2_order";s:32:"facebook,twitter,email,sharethis";s:6:"pubkey";s:0:"";s:10:"copynshare";s:1:"0";s:4:"addp";s:1:"1";}', 'yes'),
(408, 'wpsr_retweet_data', 'a:6:{s:8:"username";s:0:"";s:4:"type";s:7:"compact";s:7:"service";s:7:"twitter";s:10:"topsytheme";s:4:"blue";s:14:"twitter_recacc";s:0:"";s:12:"twitter_lang";s:2:"en";}', 'yes'),
(409, 'wpsr_digg_data', 'a:1:{s:4:"type";N;}', 'yes'),
(410, 'wpsr_facebook_data', 'a:6:{s:7:"btstyle";s:12:"button_count";s:9:"showfaces";s:1:"0";s:4:"verb";s:4:"like";s:5:"color";s:5:"light";s:5:"appid";s:0:"";s:6:"locale";s:5:"en_US";}', 'yes'),
(411, 'wpsr_socialbt_data', 'a:11:{s:6:"target";s:1:"1";s:8:"nofollow";s:156:"Notice: Undefined index: nofollow in C:\\\\xampp\\\\htdocs\\\\musicaexpress\\\\wp-content\\\\plugins\\\\wp-socializer\\\\admin\\\\wpsr-admin.php on line 860 value=\\"1\\">Yes";s:7:"loadcss";s:1:"1";s:6:"effect";s:7:"opacity";s:5:"label";s:1:"0";s:7:"columns";s:2:"no";s:12:"selected16px";s:72:"facebook,twitter,delicious,linkedin,stumbleupon,addtofavorites,email,rss";s:12:"selected32px";s:72:"facebook,twitter,delicious,linkedin,stumbleupon,addtofavorites,email,rss";s:11:"imgpath16px";s:87:"http://localhost/musicaexpress/wp-content/plugins/wp-socializer/public/social-icons/16/";s:11:"imgpath32px";s:87:"http://localhost/musicaexpress/wp-content/plugins/wp-socializer/public/social-icons/32/";s:10:"usesprites";s:1:"1";}', 'yes'),
(412, 'wpsr_custom_data', 'a:2:{s:7:"custom1";s:0:"";s:7:"custom2";s:0:"";}', 'yes'),
(413, 'wpsr_template1_data', 'a:14:{s:7:"content";s:291:"<div class="wp-socializer-buttons clearfix">\r\n	<span class="wpsr-btn">{facebook-like}</span>\r\n	<span class="wpsr-btn">{retweet-bt}</span>\r\n	<span class="wpsr-btn">{plusone-medium}</span>\r\n	<span class="wpsr-btn">{linkedin-right}</span>\r\n	<span class="wpsr-btn">{stumbleupon-1}</span>\r\n</div>";s:6:"inhome";s:1:"0";s:8:"insingle";s:1:"1";s:6:"inpage";s:1:"1";s:10:"incategory";s:1:"0";s:5:"intag";s:1:"0";s:6:"indate";s:1:"0";s:8:"inauthor";s:1:"0";s:8:"insearch";s:1:"0";s:9:"inexcerpt";s:1:"0";s:6:"infeed";s:1:"0";s:10:"abvcontent";s:1:"1";s:10:"blwcontent";s:1:"0";s:4:"addp";i:0;}', 'yes'),
(414, 'wpsr_template2_data', 'a:14:{s:7:"content";s:43:"<h3>Share and Enjoy</h3>\r\n{social-bts-32px}";s:6:"inhome";s:1:"1";s:8:"insingle";s:1:"1";s:6:"inpage";s:1:"1";s:10:"incategory";s:1:"1";s:5:"intag";s:1:"1";s:6:"indate";s:1:"1";s:8:"inauthor";s:1:"1";s:8:"insearch";s:1:"1";s:9:"inexcerpt";s:1:"1";s:6:"infeed";s:1:"1";s:10:"abvcontent";s:1:"0";s:10:"blwcontent";s:1:"1";s:4:"addp";i:0;}', 'yes'),
(415, 'wpsr_settings_data', 'a:8:{s:9:"smartload";s:6:"normal";s:17:"smartload_timeout";s:1:"1";s:6:"rssurl";s:172:"<br /><b>Notice</b>:  Undefined index: rssurl in <b>C:\\\\xampp\\\\htdocs\\\\musicaexpress\\\\wp-content\\\\plugins\\\\wp-socializer\\\\admin\\\\wpsr-admin.php</b> on line <b>694</b><br />";s:13:"bitlyusername";N;s:8:"bitlyapi";N;s:11:"disablewpsr";s:1:"0";s:14:"disablecredits";s:161:"Notice: Undefined index: disablecredits in C:\\\\xampp\\\\htdocs\\\\musicaexpress\\\\wp-content\\\\plugins\\\\wp-socializer\\\\admin\\\\wpsr-admin.php on line 738 value=\\"0\\">No";s:12:"scriptsplace";s:6:"header";}', 'yes'),
(416, 'wpsr_template_floating_bar_data', 'a:10:{s:11:"selectedbts";s:38:"Facebook,Retweet,Google +1,Email,Print";s:8:"position";s:10:"float_left";s:5:"theme";s:5:"white";s:8:"insingle";i:1;s:6:"inpage";i:1;s:8:"disabled";i:0;s:7:"mobmode";i:0;s:17:"floatleft_movable";i:1;s:16:"floatleft_offset";i:25;s:17:"bottomfixed_width";i:900;}', 'yes'),
(417, 'widget_wp_socializer', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(418, 'wpsr_templates', 'a:2:{i:1;a:1:{s:4:"name";s:10:"Template 1";}i:2;a:1:{s:4:"name";s:10:"Template 2";}}', 'yes'),
(419, 'wpsr_version', '2.4.9.9', 'yes'),
(434, 'category_instruments_children', 'a:1:{i:8;a:2:{i:0;i:17;i:1;i:18;}}', 'yes'),
(466, 'wpmf-category_children', 'a:0:{}', 'yes') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(9, 7, '_edit_lock', '1476489746:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1476572662:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1476285807:1'),
(14, 14, '_edit_last', '1'),
(15, 14, '_edit_lock', '1476573730:1'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1476722851:1'),
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
(192, 1, 'mbox_order_tpost', '1'),
(219, 54, '_edit_last', '1'),
(220, 54, '_edit_lock', '1476391361:1'),
(221, 54, 'mbox_order_tpost', '5'),
(222, 55, '_edit_last', '1'),
(223, 55, '_edit_lock', '1476391374:1'),
(224, 55, 'mbox_order_tpost', '2'),
(225, 56, '_edit_last', '1'),
(226, 56, 'mbox_order_tpost', '4'),
(227, 56, '_edit_lock', '1476391412:1'),
(228, 57, '_edit_last', '1'),
(229, 57, 'mbox_order_tpost', '3'),
(230, 57, '_edit_lock', '1476391475:1'),
(231, 58, '_edit_last', '1'),
(232, 58, 'mbox_order_tpost', '1'),
(233, 58, '_edit_lock', '1476391541:1'),
(234, 59, '_edit_last', '1'),
(235, 59, 'mbox_order_tpost', '6'),
(236, 59, '_edit_lock', '1476392556:1'),
(237, 59, '_dp_original', '58'),
(238, 59, '_wp_trash_meta_status', 'publish'),
(239, 59, '_wp_trash_meta_time', '1476392706'),
(240, 59, '_wp_desired_post_slug', 'nuevo-slider-6'),
(241, 58, '_wp_trash_meta_status', 'publish'),
(242, 58, '_wp_trash_meta_time', '1476392706'),
(243, 58, '_wp_desired_post_slug', 'nuevo-slider-5'),
(244, 57, '_wp_trash_meta_status', 'publish'),
(245, 57, '_wp_trash_meta_time', '1476392707'),
(246, 57, '_wp_desired_post_slug', 'nuevo-slider-4'),
(247, 56, '_wp_trash_meta_status', 'publish'),
(248, 56, '_wp_trash_meta_time', '1476392707'),
(249, 56, '_wp_desired_post_slug', 'nuevo-slider-3'),
(250, 55, '_wp_trash_meta_status', 'publish'),
(251, 55, '_wp_trash_meta_time', '1476392707'),
(252, 55, '_wp_desired_post_slug', 'nuevo-slider-2'),
(253, 54, '_wp_trash_meta_status', 'publish'),
(254, 54, '_wp_trash_meta_time', '1476392707'),
(255, 54, '_wp_desired_post_slug', 'nuevo-slider-1'),
(256, 62, '_edit_last', '1'),
(257, 62, 'mbox_order_tpost', '1'),
(258, 62, '_edit_lock', '1476393776:1'),
(259, 63, '_edit_last', '1'),
(260, 63, 'mbox_order_tpost', '6'),
(261, 63, '_edit_lock', '1476393808:1'),
(262, 64, '_edit_last', '1'),
(263, 64, 'mbox_order_tpost', '3'),
(264, 64, '_edit_lock', '1476394316:1'),
(265, 64, '_dp_original', '63'),
(266, 65, '_edit_last', '1'),
(267, 65, 'mbox_order_tpost', '4'),
(268, 65, '_edit_lock', '1476394143:1'),
(270, 65, '_dp_original', '64'),
(271, 66, '_edit_last', '1'),
(272, 66, 'mbox_order_tpost', '5'),
(273, 66, '_edit_lock', '1476394212:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(274, 68, '_edit_last', '1'),
(275, 68, 'mbox_order_tpost', '1'),
(276, 68, '_edit_lock', '1476394212:1'),
(277, 68, '_dp_original', '66'),
(278, 68, '_wp_trash_meta_status', 'draft'),
(279, 68, '_wp_trash_meta_time', '1476394368'),
(280, 68, '_wp_desired_post_slug', ''),
(281, 69, '_edit_last', '1'),
(282, 69, 'mbox_order_tpost', '2'),
(283, 69, '_edit_lock', '1476394297:1'),
(284, 69, '_dp_original', '62'),
(285, 69, '_wp_trash_meta_status', 'publish'),
(286, 69, '_wp_trash_meta_time', '1476394466'),
(287, 69, '_wp_desired_post_slug', 'nuevo-slider-6'),
(288, 66, '_wp_trash_meta_status', 'publish'),
(289, 66, '_wp_trash_meta_time', '1476394466'),
(290, 66, '_wp_desired_post_slug', 'slider-5'),
(291, 65, '_wp_trash_meta_status', 'publish'),
(292, 65, '_wp_trash_meta_time', '1476394466'),
(293, 65, '_wp_desired_post_slug', 'nuevo-slider-4'),
(294, 64, '_wp_trash_meta_status', 'publish'),
(295, 64, '_wp_trash_meta_time', '1476394466'),
(296, 64, '_wp_desired_post_slug', 'nuevo-slider-3'),
(297, 63, '_wp_trash_meta_status', 'publish'),
(298, 63, '_wp_trash_meta_time', '1476394467'),
(299, 63, '_wp_desired_post_slug', 'nuevo-slider-2'),
(300, 62, '_wp_trash_meta_status', 'publish'),
(301, 62, '_wp_trash_meta_time', '1476394467'),
(302, 62, '_wp_desired_post_slug', 'nuevo-slider-1'),
(303, 70, '_edit_last', '1'),
(304, 70, 'mbox_order_tpost', '1'),
(305, 70, '_edit_lock', '1476458584:1'),
(306, 71, '_wp_attached_file', '2016/10/banner-sample.jpg'),
(307, 71, 'wpmf_size', '138204'),
(308, 71, 'wpmf_filetype', 'jpg'),
(309, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:573;s:4:"file";s:25:"2016/10/banner-sample.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"banner-sample-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"banner-sample-300x90.jpg";s:5:"width";i:300;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"banner-sample-768x229.jpg";s:5:"width";i:768;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"banner-sample-1024x306.jpg";s:5:"width";i:1024;s:6:"height";i:306;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"banner-sample-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"banner-sample-784x234.jpg";s:5:"width";i:784;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(310, 70, '_thumbnail_id', '71'),
(311, 72, '_edit_last', '1'),
(312, 72, '_edit_lock', '1476396045:1'),
(313, 72, '_thumbnail_id', '71'),
(314, 72, 'mbox_order_tpost', '2'),
(315, 70, 'mb_rev_slider_select', 'parallaxtoright'),
(316, 75, '_edit_last', '1'),
(317, 75, '_edit_lock', '1476460989:1'),
(318, 76, '_wp_attached_file', '2016/10/sample-product.jpg'),
(319, 76, 'wpmf_size', '16544'),
(320, 76, 'wpmf_filetype', 'jpg'),
(321, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:529;s:4:"file";s:26:"2016/10/sample-product.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sample-product-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"sample-product-227x300.jpg";s:5:"width";i:227;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"sample-product-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:26:"sample-product-265x350.jpg";s:5:"width";i:265;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 75, '_thumbnail_id', '76'),
(323, 75, 'mbox_order_tpost', '6'),
(324, 77, '_edit_last', '1'),
(325, 77, '_edit_lock', '1476461206:1'),
(326, 77, '_thumbnail_id', '76'),
(327, 77, 'mbox_order_tpost', '2'),
(328, 77, '_dp_original', '75'),
(329, 78, '_edit_last', '1'),
(330, 78, '_edit_lock', '1476736298:1'),
(331, 78, '_thumbnail_id', '76'),
(332, 78, 'mbox_order_tpost', '3'),
(334, 78, '_dp_original', '77'),
(335, 79, '_edit_last', '1'),
(336, 79, '_edit_lock', '1476736292:1'),
(337, 79, '_thumbnail_id', '76'),
(338, 79, 'mbox_order_tpost', '1'),
(340, 79, '_dp_original', '78'),
(341, 80, '_edit_last', '1'),
(342, 80, '_edit_lock', '1476736286:1'),
(343, 80, '_thumbnail_id', '76'),
(344, 80, 'mbox_order_tpost', '5'),
(346, 80, '_dp_original', '79'),
(347, 81, '_edit_last', '1'),
(348, 81, '_edit_lock', '1476743995:1'),
(349, 81, '_thumbnail_id', '76'),
(350, 81, 'mbox_order_tpost', '4'),
(352, 81, '_dp_original', '80'),
(355, 81, 'mb_product_featured', 'a:2:{s:8:"featured";s:8:"featured";s:5:"offer";s:5:"offer";}'),
(356, 80, 'mb_product_featured', 'a:2:{s:8:"featured";s:8:"featured";s:5:"offer";s:5:"offer";}'),
(357, 79, 'mb_product_featured', 'a:1:{s:8:"featured";s:8:"featured";}'),
(358, 78, 'mb_product_featured', 'a:2:{s:8:"featured";s:8:"featured";s:5:"offer";s:5:"offer";}'),
(359, 81, 'product_price', 'a:2:{s:6:"normal";s:8:"S/. 2600";s:5:"offer";s:0:"";}'),
(364, 83, '_wp_attached_file', '2016/10/sample-widget.jpg'),
(365, 83, 'wpmf_size', '20709'),
(366, 83, 'wpmf_filetype', 'jpg'),
(367, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:385;s:6:"height";i:142;s:4:"file";s:25:"2016/10/sample-widget.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-widget-150x142.jpg";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sample-widget-300x111.jpg";s:5:"width";i:300;s:6:"height";i:111;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-widget-210x142.jpg";s:5:"width";i:210;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(368, 84, '_wp_attached_file', '2016/10/sample-widget-1.jpg'),
(369, 84, 'wpmf_size', '20709'),
(370, 84, 'wpmf_filetype', 'jpg'),
(371, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:385;s:6:"height";i:142;s:4:"file";s:27:"2016/10/sample-widget-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-widget-1-150x142.jpg";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-widget-1-300x111.jpg";s:5:"width";i:300;s:6:"height";i:111;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-widget-1-210x142.jpg";s:5:"width";i:210;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(372, 1, '_wp_trash_meta_status', 'publish'),
(373, 1, '_wp_trash_meta_time', '1476477457'),
(374, 1, '_wp_desired_post_slug', 'hola-mundo'),
(375, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(376, 86, '_edit_last', '1'),
(377, 86, '_edit_lock', '1476574083:1'),
(379, 86, 'mbox_order_tpost', '1'),
(380, 86, 'mbox_order_tpost', '1'),
(381, 88, '_edit_last', '1'),
(382, 88, '_edit_lock', '1476574075:1'),
(383, 88, 'mbox_order_tpost', '2'),
(384, 88, 'mbox_order_tpost', '2') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(385, 88, '_dp_original', '86'),
(386, 89, '_edit_last', '1'),
(387, 89, '_edit_lock', '1476574070:1'),
(388, 89, 'mbox_order_tpost', '3'),
(389, 89, 'mbox_order_tpost', '3'),
(391, 89, '_dp_original', '88'),
(394, 92, '_oembed_597901271710f962f02e2d4196bd790f', '<iframe width="500" height="281" src="https://www.youtube.com/embed/OPf0YbXqDm0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(395, 92, '_oembed_time_597901271710f962f02e2d4196bd790f', '1476478379'),
(396, 92, '_edit_last', '1'),
(397, 92, 'mbox_order_tpost', '1'),
(398, 92, '_edit_lock', '1476810629:1'),
(399, 93, '_edit_last', '1'),
(400, 93, '_edit_lock', '1476478858:1'),
(401, 94, '_wp_attached_file', '2016/10/sample-marca.jpg'),
(402, 94, 'wpmf_size', '2761'),
(403, 94, 'wpmf_filetype', 'jpg'),
(404, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:80;s:4:"file";s:24:"2016/10/sample-marca.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(405, 93, '_thumbnail_id', '94'),
(406, 93, 'mbox_order_tpost', '1'),
(407, 95, '_edit_last', '1'),
(408, 95, '_edit_lock', '1476479027:1'),
(409, 95, '_thumbnail_id', '94'),
(410, 95, 'mbox_order_tpost', '2'),
(411, 95, '_dp_original', '93'),
(412, 96, '_edit_last', '1'),
(413, 96, '_edit_lock', '1476479030:1'),
(414, 96, '_thumbnail_id', '94'),
(415, 96, 'mbox_order_tpost', '3'),
(417, 96, '_dp_original', '95'),
(418, 97, '_edit_last', '1'),
(419, 97, '_edit_lock', '1476479033:1'),
(420, 97, '_thumbnail_id', '94'),
(421, 97, 'mbox_order_tpost', '4'),
(423, 97, '_dp_original', '95'),
(424, 98, '_edit_last', '1'),
(425, 98, '_edit_lock', '1476811617:1'),
(426, 98, '_thumbnail_id', '94'),
(427, 98, 'mbox_order_tpost', '5'),
(429, 98, '_dp_original', '95'),
(430, 99, '_edit_last', '1'),
(431, 99, '_edit_lock', '1476811206:1'),
(432, 99, '_thumbnail_id', '94'),
(433, 99, 'mbox_order_tpost', '6'),
(435, 99, '_dp_original', '98'),
(436, 100, '_edit_last', '1'),
(437, 100, '_edit_lock', '1476811197:1'),
(438, 100, '_thumbnail_id', '94'),
(439, 100, 'mbox_order_tpost', '7'),
(441, 100, '_dp_original', '99'),
(442, 7, '_wp_page_template', 'page-nosotros.php'),
(443, 7, 'mbox_order_tpost', '1'),
(444, 103, '_wp_attached_file', '2016/10/sample-images.jpg'),
(445, 103, 'wpmf_size', '44657'),
(446, 103, 'wpmf_filetype', 'jpg'),
(447, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:477;s:4:"file";s:25:"2016/10/sample-images.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-images-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sample-images-300x298.jpg";s:5:"width";i:300;s:6:"height";i:298;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-images-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"sample-images-352x350.jpg";s:5:"width";i:352;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(448, 7, 'mb_featured_banner', ''),
(449, 7, 'mb_image_gallery', ',103,103,103'),
(450, 105, '_wp_attached_file', '2016/10/sample-images-1.jpg'),
(451, 105, 'wpmf_size', '44657'),
(452, 105, 'wpmf_filetype', 'jpg'),
(453, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:477;s:4:"file";s:27:"2016/10/sample-images-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-images-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-images-1-300x298.jpg";s:5:"width";i:300;s:6:"height";i:298;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-images-1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-images-1-352x350.jpg";s:5:"width";i:352;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 9, '_wp_page_template', 'default'),
(455, 9, 'mb_featured_banner', ''),
(456, 9, 'mb_image_gallery', ',105,105,105'),
(457, 14, '_wp_page_template', 'page-blog.php'),
(458, 14, 'mb_featured_banner', ''),
(459, 14, 'mb_image_gallery', ''),
(464, 16, '_wp_page_template', 'page-contacto.php'),
(465, 112, '_menu_item_type', 'taxonomy'),
(466, 112, '_menu_item_menu_item_parent', '24'),
(467, 112, '_menu_item_object_id', '17'),
(468, 112, '_menu_item_object', 'category_instruments'),
(469, 112, '_menu_item_target', ''),
(470, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(471, 112, '_menu_item_xfn', ''),
(472, 112, '_menu_item_url', ''),
(474, 113, '_menu_item_type', 'taxonomy'),
(475, 113, '_menu_item_menu_item_parent', '24'),
(476, 113, '_menu_item_object_id', '18'),
(477, 113, '_menu_item_object', 'category_instruments'),
(478, 113, '_menu_item_target', ''),
(479, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(480, 113, '_menu_item_xfn', ''),
(481, 113, '_menu_item_url', ''),
(483, 81, 'mb_image_gallery', ''),
(484, 114, '_wp_attached_file', '2016/10/sample-banner-tax.jpg'),
(485, 114, 'wpmf_size', '34116'),
(486, 114, 'wpmf_filetype', 'jpg'),
(487, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:219;s:4:"file";s:29:"2016/10/sample-banner-tax.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"sample-banner-tax-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"sample-banner-tax-300x34.jpg";s:5:"width";i:300;s:6:"height";i:34;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"sample-banner-tax-768x88.jpg";s:5:"width";i:768;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"sample-banner-tax-1024x117.jpg";s:5:"width";i:1024;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"sample-banner-tax-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:28:"sample-banner-tax-784x89.jpg";s:5:"width";i:784;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(488, 115, '_edit_last', '1'),
(489, 115, '_edit_lock', '1476806533:1'),
(490, 115, '_wp_page_template', 'default'),
(491, 115, 'mbox_order_tpost', '2'),
(492, 115, 'mb_featured_banner', ''),
(493, 115, 'mb_image_gallery', ''),
(494, 115, 'mbox_order_tpost', '2'),
(495, 117, '_menu_item_type', 'post_type'),
(496, 117, '_menu_item_menu_item_parent', '0'),
(497, 117, '_menu_item_object_id', '115'),
(498, 117, '_menu_item_object', 'page') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(499, 117, '_menu_item_target', ''),
(500, 117, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(501, 117, '_menu_item_xfn', ''),
(502, 117, '_menu_item_url', ''),
(503, 117, '_menu_item_orphaned', '1476806689'),
(504, 118, '_menu_item_type', 'post_type'),
(505, 118, '_menu_item_menu_item_parent', '0'),
(506, 118, '_menu_item_object_id', '14'),
(507, 118, '_menu_item_object', 'page'),
(508, 118, '_menu_item_target', ''),
(509, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(510, 118, '_menu_item_xfn', ''),
(511, 118, '_menu_item_url', ''),
(512, 118, '_menu_item_orphaned', '1476806703'),
(513, 119, '_menu_item_type', 'post_type'),
(514, 119, '_menu_item_menu_item_parent', '0'),
(515, 119, '_menu_item_object_id', '115'),
(516, 119, '_menu_item_object', 'page'),
(517, 119, '_menu_item_target', ''),
(518, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(519, 119, '_menu_item_xfn', ''),
(520, 119, '_menu_item_url', ''),
(522, 100, 'mb_image_gallery', ''),
(523, 100, 'mb_marcas_check_slider', 'on'),
(524, 99, 'mb_image_gallery', ''),
(525, 99, 'mb_marcas_check_slider', 'on'),
(526, 98, 'mb_image_gallery', ''),
(527, 98, 'mb_marcas_check_slider', 'on'),
(528, 121, '_edit_last', '1'),
(529, 121, '_wp_page_template', 'default'),
(530, 121, 'mbox_order_tpost', '3'),
(531, 121, 'mb_featured_banner', ''),
(532, 121, 'mb_image_gallery', ''),
(533, 121, 'mb_marcas_check_slider', 'off'),
(534, 121, 'mbox_order_tpost', '3'),
(535, 121, '_edit_lock', '1476811716:1'),
(536, 123, '_menu_item_type', 'post_type'),
(537, 123, '_menu_item_menu_item_parent', '0'),
(538, 123, '_menu_item_object_id', '121'),
(539, 123, '_menu_item_object', 'page'),
(540, 123, '_menu_item_target', ''),
(541, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(542, 123, '_menu_item_xfn', ''),
(543, 123, '_menu_item_url', ''),
(545, 124, '_edit_last', '1'),
(546, 124, '_edit_lock', '1476812247:1'),
(547, 125, '_wp_attached_file', '2016/10/oferta-sample.jpg'),
(548, 125, 'wpmf_size', '72809'),
(549, 125, 'wpmf_filetype', 'jpg'),
(550, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:408;s:4:"file";s:25:"2016/10/oferta-sample.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"oferta-sample-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"oferta-sample-300x128.jpg";s:5:"width";i:300;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"oferta-sample-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"oferta-sample-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"oferta-sample-784x333.jpg";s:5:"width";i:784;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(551, 124, '_thumbnail_id', '125'),
(552, 124, 'mbox_order_tpost', '1'),
(553, 124, 'mb_image_gallery', ''),
(554, 124, 'mb_marcas_check_slider', 'off'),
(555, 126, '_edit_last', '1'),
(556, 126, '_edit_lock', '1476825768:1'),
(557, 126, '_thumbnail_id', '125'),
(558, 126, 'mbox_order_tpost', '2'),
(559, 126, 'mb_image_gallery', ''),
(560, 126, 'mb_marcas_check_slider', 'off'),
(561, 126, '_dp_original', '124') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2016-10-14 20:37:37', '2016-10-14 20:37:37', '', 0, 'http://localhost/musicaexpress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-11 22:36:50', '2016-10-11 22:36:50', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/musicaexpress/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-10-12 15:24:32', '2016-10-12 15:24:32', '', 0, 'http://localhost/musicaexpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-11 22:37:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 22:37:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-12 15:24:32', '2016-10-12 15:24:32', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/musicaexpress/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-10-12 15:24:32', '2016-10-12 15:24:32', '', 2, 'http://localhost/musicaexpress/2016/10/12/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 0, 'http://localhost/musicaexpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-12 15:24:45', '2016-10-12 15:24:45', '', 5, 'http://localhost/musicaexpress/2016/10/12/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-10-12 15:24:58', '2016-10-12 15:24:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-14 23:27:02', '2016-10-14 23:27:02', '', 0, 'http://localhost/musicaexpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-12 15:24:58', '2016-10-12 15:24:58', '', 7, 'http://localhost/musicaexpress/2016/10/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-10-12 15:25:21', '2016-10-12 15:25:21', '<h2>EQUIPOS DE SONIDO</h2>\r\n\r\n<p class="hola">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n\r\n&nbsp;\r\n<h2>BACKLINE</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'publish', 'closed', 'closed', '', 'alquiler-de-instrumentos', '', '', '2016-10-15 19:14:36', '2016-10-15 19:14:36', '', 0, 'http://localhost/musicaexpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-12 15:25:21', '2016-10-12 15:25:21', '', 9, 'http://localhost/musicaexpress/2016/10/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-10-12 15:25:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-12 15:25:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 'Soporte Técnico', '', 'publish', 'closed', 'closed', '', 'soporte-tecnico', '', '', '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 0, 'http://localhost/musicaexpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 'Soporte Técnico', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-10-12 15:25:44', '2016-10-12 15:25:44', '', 12, 'http://localhost/musicaexpress/2016/10/12/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-15 23:08:34', '2016-10-15 23:08:34', '', 0, 'http://localhost/musicaexpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-10-12 15:25:57', '2016-10-12 15:25:57', '', 14, 'http://localhost/musicaexpress/2016/10/12/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-10-17 16:47:31', '2016-10-17 16:47:31', '', 0, 'http://localhost/musicaexpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 'Contáctenos', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-10-12 15:26:10', '2016-10-12 15:26:10', '', 16, 'http://localhost/musicaexpress/2016/10/12/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-10-18 17:31:14', '2016-10-18 17:31:14', '', 0, 'http://localhost/musicaexpress/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-10-18 17:31:14', '2016-10-18 17:31:14', '', 0, 'http://localhost/musicaexpress/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2016-10-12 15:26:56', '2016-10-12 15:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-10-18 17:31:13', '2016-10-18 17:31:13', '', 0, 'http://localhost/musicaexpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-10-18 16:05:14', '2016-10-18 16:05:14', '', 0, 'http://localhost/musicaexpress/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-10-18 16:05:14', '2016-10-18 16:05:14', '', 0, 'http://localhost/musicaexpress/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2016-10-12 15:27:28', '2016-10-12 15:27:28', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-10-18 16:05:14', '2016-10-18 16:05:14', '', 0, 'http://localhost/musicaexpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Guitarras', '', 'publish', 'closed', 'closed', '', 'guitarras', '', '', '2016-10-17 20:35:39', '2016-10-17 20:35:39', '', 0, 'http://localhost/musicaexpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Bajos', '', 'publish', 'closed', 'closed', '', 'bajos', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2016-10-12 19:56:00', '2016-10-12 19:56:00', '', 'Percusión', '', 'publish', 'closed', 'closed', '', 'percusion', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Vientos', '', 'publish', 'closed', 'closed', '', 'vientos', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Teclados', '', 'publish', 'closed', 'closed', '', 'teclados', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Proaudio', '', 'publish', 'closed', 'closed', '', 'proaudio', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=29', 8, 'nav_menu_item', '', 0),
(30, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Amplificadores', '', 'publish', 'closed', 'closed', '', 'amplificadores', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=30', 9, 'nav_menu_item', '', 0),
(31, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Efectos', '', 'publish', 'closed', 'closed', '', 'efectos', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=31', 10, 'nav_menu_item', '', 0),
(32, 1, '2016-10-12 19:56:01', '2016-10-12 19:56:01', '', 'Folkloricos', '', 'publish', 'closed', 'closed', '', 'folkloricos', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=32', 11, 'nav_menu_item', '', 0),
(33, 1, '2016-10-12 19:56:02', '2016-10-12 19:56:02', '', 'Accesorios', '', 'publish', 'closed', 'closed', '', 'accesorios', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 0, 'http://localhost/musicaexpress/?p=33', 12, 'nav_menu_item', '', 0),
(35, 1, '2016-10-13 15:58:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 15:58:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=35', 0, 'slider-home', '', 0),
(36, 1, '2016-10-13 15:59:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 15:59:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=36', 0, 'slider-home', '', 0),
(37, 1, '2016-10-13 16:00:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:00:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=37', 0, 'slider-home', '', 0),
(38, 1, '2016-10-13 16:03:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:03:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=38', 0, 'slider-home', '', 0),
(39, 1, '2016-10-13 16:06:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:06:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=39', 0, 'slider-home', '', 0),
(40, 1, '2016-10-13 16:37:35', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:37:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=40', 0, 'slider-home', '', 0),
(43, 1, '2016-10-13 16:50:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:50:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=43', 0, 'slider-home', '', 0),
(45, 1, '2016-10-13 16:59:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=45', 0, 'slider-home', '', 0),
(46, 1, '2016-10-13 16:59:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 16:59:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=46', 0, 'slider-home', '', 0),
(54, 1, '2016-10-13 20:45:01', '2016-10-13 20:45:01', '', 'nuevo slider 1', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-1__trashed', '', '', '2016-10-13 21:05:07', '2016-10-13 21:05:07', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=54', 0, 'slider-home', '', 0),
(55, 1, '2016-10-13 20:45:15', '2016-10-13 20:45:15', '', 'nuevo slider 2', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-2__trashed', '', '', '2016-10-13 21:05:07', '2016-10-13 21:05:07', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=55', 0, 'slider-home', '', 0),
(56, 1, '2016-10-13 20:45:26', '2016-10-13 20:45:26', '', 'Nuevo slider 3', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-3__trashed', '', '', '2016-10-13 21:05:07', '2016-10-13 21:05:07', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=56', 0, 'slider-home', '', 0),
(57, 1, '2016-10-13 20:46:20', '2016-10-13 20:46:20', '', 'Nuevo slider 4', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-4__trashed', '', '', '2016-10-13 21:05:07', '2016-10-13 21:05:07', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=57', 0, 'slider-home', '', 0),
(58, 1, '2016-10-13 20:47:06', '2016-10-13 20:47:06', '', 'Nuevo slider 5', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-5__trashed', '', '', '2016-10-13 21:05:06', '2016-10-13 21:05:06', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=58', 0, 'slider-home', '', 0),
(59, 1, '2016-10-13 20:48:10', '2016-10-13 20:48:10', '', 'Nuevo slider 6', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-6__trashed', '', '', '2016-10-13 21:05:06', '2016-10-13 21:05:06', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=59', 0, 'slider-home', '', 0),
(60, 1, '2016-10-13 21:05:12', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 21:05:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=60', 0, 'slider-home', '', 0),
(61, 1, '2016-10-13 21:24:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 21:24:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=61', 0, 'slider-home', '', 0),
(62, 1, '2016-10-13 21:25:15', '2016-10-13 21:25:15', '', 'Nuevo slider 1', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-1__trashed-2', '', '', '2016-10-13 21:34:27', '2016-10-13 21:34:27', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=62', 0, 'slider-home', '', 0),
(63, 1, '2016-10-13 21:25:27', '2016-10-13 21:25:27', '', 'Nuevo slider 2', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-2__trashed-2', '', '', '2016-10-13 21:34:27', '2016-10-13 21:34:27', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=63', 0, 'slider-home', '', 0),
(64, 1, '2016-10-13 21:25:55', '2016-10-13 21:25:55', '', 'Nuevo slider 3', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-3__trashed-2', '', '', '2016-10-13 21:34:26', '2016-10-13 21:34:26', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=64', 0, 'slider-home', '', 0),
(65, 1, '2016-10-13 21:25:59', '2016-10-13 21:25:59', '', 'Nuevo slider 4', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-4__trashed-2', '', '', '2016-10-13 21:34:26', '2016-10-13 21:34:26', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=65', 0, 'slider-home', '', 0),
(66, 1, '2016-10-13 21:31:33', '2016-10-13 21:31:33', '', 'slider 5', '', 'trash', 'closed', 'closed', '', 'slider-5__trashed', '', '', '2016-10-13 21:34:26', '2016-10-13 21:34:26', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=66', 0, 'slider-home', '', 0),
(67, 1, '2016-10-13 21:32:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-13 21:32:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&p=67', 0, 'slider-home', '', 0),
(68, 1, '2016-10-13 21:32:45', '2016-10-13 21:32:45', '', 'slider 5', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-10-13 21:32:48', '2016-10-13 21:32:48', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=68', 0, 'slider-home', '', 0),
(69, 1, '2016-10-13 21:32:52', '2016-10-13 21:32:52', '', 'Nuevo slider 6', '', 'trash', 'closed', 'closed', '', 'nuevo-slider-6__trashed-2', '', '', '2016-10-13 21:34:26', '2016-10-13 21:34:26', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=69', 0, 'slider-home', '', 0),
(70, 1, '2016-10-13 21:35:58', '2016-10-13 21:35:58', '', 'O bisonte', '', 'publish', 'closed', 'closed', '', 'o-bisonte', '', '', '2016-10-14 15:25:22', '2016-10-14 15:25:22', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=70', 0, 'slider-home', '', 0),
(71, 1, '2016-10-13 21:36:55', '2016-10-13 21:36:55', '', 'banner-sample', '', 'inherit', 'open', 'closed', '', 'banner-sample', '', '', '2016-10-13 21:36:55', '2016-10-13 21:36:55', '', 70, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/banner-sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2016-10-13 21:37:28', '2016-10-13 21:37:28', '', 'Slider Home 2', '', 'publish', 'closed', 'closed', '', 'slider-home-2', '', '', '2016-10-13 22:03:06', '2016-10-13 22:03:06', '', 0, 'http://localhost/musicaexpress/?post_type=slider-home&#038;p=72', 0, 'slider-home', '', 0),
(73, 1, '2016-10-14 15:53:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-14 15:53:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&p=73', 0, 'type_instruments', '', 0),
(74, 1, '2016-10-14 15:59:40', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-14 15:59:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&p=74', 0, 'type_instruments', '', 0),
(75, 1, '2016-10-14 16:05:19', '2016-10-14 16:05:19', '', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth', '', '', '2016-10-14 16:05:19', '2016-10-14 16:05:19', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=75', 0, 'type_instruments', '', 0),
(76, 1, '2016-10-14 16:05:08', '2016-10-14 16:05:08', '', 'sample-product', '', 'inherit', 'open', 'closed', '', 'sample-product', '', '', '2016-10-14 16:05:08', '2016-10-14 16:05:08', '', 75, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-product.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2016-10-14 16:05:39', '2016-10-14 16:05:39', '', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth-2', '', '', '2016-10-14 16:06:46', '2016-10-14 16:06:46', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=77', 0, 'type_instruments', '', 0),
(78, 1, '2016-10-14 16:06:24', '2016-10-14 16:06:24', '', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth-3', '', '', '2016-10-17 20:31:38', '2016-10-17 20:31:38', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=78', 0, 'type_instruments', '', 0),
(79, 1, '2016-10-14 16:06:28', '2016-10-14 16:06:28', '', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth-4', '', '', '2016-10-17 20:31:32', '2016-10-17 20:31:32', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=79', 0, 'type_instruments', '', 0),
(80, 1, '2016-10-14 16:06:33', '2016-10-14 16:06:33', '', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth-5', '', '', '2016-10-17 20:31:26', '2016-10-17 20:31:26', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=80', 0, 'type_instruments', '', 0),
(81, 1, '2016-10-14 16:06:37', '2016-10-14 16:06:37', '<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</li>\r\n 	<li>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</li>\r\n 	<li>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</li>\r\n 	<li>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</li>\r\n 	<li>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</li>\r\n 	<li>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n</ul>\r\nthis product is magic', 'Dean - dave mustaine zero angel of deth', '', 'publish', 'closed', 'closed', '', 'dean-dave-mustaine-zero-angel-of-deth-6', '', '', '2016-10-17 21:55:17', '2016-10-17 21:55:17', '', 0, 'http://localhost/musicaexpress/?post_type=type_instruments&#038;p=81', 0, 'type_instruments', '', 0),
(83, 1, '2016-10-14 20:17:02', '2016-10-14 20:17:02', '', 'sample-widget', '', 'inherit', 'open', 'closed', '', 'sample-widget', '', '', '2016-10-14 20:17:02', '2016-10-14 20:17:02', '', 0, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2016-10-14 20:20:08', '2016-10-14 20:20:08', '', 'sample-widget', '', 'inherit', 'open', 'closed', '', 'sample-widget-2', '', '', '2016-10-14 20:20:08', '2016-10-14 20:20:08', '', 0, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-widget-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2016-10-14 20:37:37', '2016-10-14 20:37:37', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-14 20:37:37', '2016-10-14 20:37:37', '', 1, 'http://localhost/musicaexpress/2016/10/14/1-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-10-14 20:38:08', '2016-10-14 20:38:08', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal', '', 'publish', 'open', 'open', '', 'art-personal', '', '', '2016-10-15 23:29:04', '2016-10-15 23:29:04', '', 0, 'http://localhost/musicaexpress/?p=86', 0, 'post', '', 0),
(87, 1, '2016-10-14 20:38:08', '2016-10-14 20:38:08', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-10-14 20:38:08', '2016-10-14 20:38:08', '', 86, 'http://localhost/musicaexpress/2016/10/14/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-10-14 20:38:18', '2016-10-14 20:38:18', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal 2', '', 'publish', 'open', 'open', '', 'art-personal-2', '', '', '2016-10-15 23:29:04', '2016-10-15 23:29:04', '', 0, 'http://localhost/musicaexpress/?p=88', 0, 'post', '', 0),
(89, 1, '2016-10-14 20:38:24', '2016-10-14 20:38:24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal 3', '', 'publish', 'open', 'open', '', 'art-personal-3', '', '', '2016-10-15 23:29:04', '2016-10-15 23:29:04', '', 0, 'http://localhost/musicaexpress/?p=89', 0, 'post', '', 0),
(90, 1, '2016-10-14 20:38:35', '2016-10-14 20:38:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal 3', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-10-14 20:38:35', '2016-10-14 20:38:35', '', 89, 'http://localhost/musicaexpress/2016/10/14/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-10-14 20:38:45', '2016-10-14 20:38:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Art Personal 2', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2016-10-14 20:38:45', '2016-10-14 20:38:45', '', 88, 'http://localhost/musicaexpress/2016/10/14/88-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-10-14 20:53:06', '2016-10-14 20:53:06', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 'Nuevo Video', '', 'publish', 'closed', 'closed', '', 'nuevo-video', '', '', '2016-10-14 20:53:06', '2016-10-14 20:53:06', '', 0, 'http://localhost/musicaexpress/?post_type=type-videos&#038;p=92', 0, 'type-videos', '', 0),
(93, 1, '2016-10-14 21:03:18', '2016-10-14 21:03:18', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg', '', '', '2016-10-14 21:03:18', '2016-10-14 21:03:18', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=93', 0, 'type-marcas', '', 0),
(94, 1, '2016-10-14 21:03:12', '2016-10-14 21:03:12', '', 'sample-marca', '', 'inherit', 'open', 'closed', '', 'sample-marca', '', '', '2016-10-14 21:03:12', '2016-10-14 21:03:12', '', 93, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-marca.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2016-10-14 21:03:25', '2016-10-14 21:03:25', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-2', '', '', '2016-10-14 21:03:46', '2016-10-14 21:03:46', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=95', 0, 'type-marcas', '', 0),
(96, 1, '2016-10-14 21:03:29', '2016-10-14 21:03:29', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-3', '', '', '2016-10-14 21:03:50', '2016-10-14 21:03:50', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=96', 0, 'type-marcas', '', 0),
(97, 1, '2016-10-14 21:03:32', '2016-10-14 21:03:32', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-4', '', '', '2016-10-14 21:03:53', '2016-10-14 21:03:53', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=97', 0, 'type-marcas', '', 0),
(98, 1, '2016-10-14 21:03:36', '2016-10-14 21:03:36', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-5', '', '', '2016-10-18 17:22:37', '2016-10-18 17:22:37', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=98', 0, 'type-marcas', '', 0),
(99, 1, '2016-10-14 21:24:47', '2016-10-14 21:24:47', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-6', '', '', '2016-10-18 17:22:27', '2016-10-18 17:22:27', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=99', 0, 'type-marcas', '', 0),
(100, 1, '2016-10-14 21:24:51', '2016-10-14 21:24:51', '', 'Korg', '', 'publish', 'closed', 'closed', '', 'korg-7', '', '', '2016-10-18 17:22:17', '2016-10-18 17:22:17', '', 0, 'http://localhost/musicaexpress/?post_type=type-marcas&#038;p=100', 0, 'type-marcas', '', 0),
(101, 1, '2016-10-14 23:21:18', '2016-10-14 23:21:18', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2016-10-14 23:21:18', '2016-10-14 23:21:18', '', 7, 'http://localhost/musicaexpress/2016/10/14/7-autosave-v1/', 0, 'revision', '', 0),
(102, 1, '2016-10-14 23:21:27', '2016-10-14 23:21:27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-14 23:21:27', '2016-10-14 23:21:27', '', 7, 'http://localhost/musicaexpress/2016/10/14/7-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2016-10-14 23:26:47', '2016-10-14 23:26:47', '', 'sample-images', '', 'inherit', 'open', 'closed', '', 'sample-images', '', '', '2016-10-14 23:26:47', '2016-10-14 23:26:47', '', 7, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-images.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2016-10-15 18:55:49', '2016-10-15 18:55:49', '<h2>EQUIPOS DE SONIDO</h2>\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n<h2>BACKLINE</h2>\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2016-10-15 18:55:49', '2016-10-15 18:55:49', '', 9, 'http://localhost/musicaexpress/2016/10/15/9-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2016-10-15 18:56:15', '2016-10-15 18:56:15', '', 'sample-images', '', 'inherit', 'open', 'closed', '', 'sample-images-2', '', '', '2016-10-15 18:56:15', '2016-10-15 18:56:15', '', 9, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2016-10-15 18:56:31', '2016-10-15 18:56:31', '<h2>EQUIPOS DE SONIDO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<h2></h2>\r\n<h2>BACKLINE</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-15 18:56:31', '2016-10-15 18:56:31', '', 9, 'http://localhost/musicaexpress/2016/10/15/9-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2016-10-15 19:11:26', '2016-10-15 19:11:26', '<h2>EQUIPOS DE SONIDO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n<h2>BACKLINE</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-15 19:11:26', '2016-10-15 19:11:26', '', 9, 'http://localhost/musicaexpress/2016/10/15/9-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2016-10-15 19:11:32', '2016-10-15 19:11:32', '<h2>EQUIPOS DE SONIDO</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n<h2>BACKLINE</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-15 19:11:32', '2016-10-15 19:11:32', '', 9, 'http://localhost/musicaexpress/2016/10/15/9-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-10-15 19:14:36', '2016-10-15 19:14:36', '<h2>EQUIPOS DE SONIDO</h2>\r\n\r\n<p class="hola">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n\r\n&nbsp;\r\n<h2>BACKLINE</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Alquiler de Instrumentos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-15 19:14:36', '2016-10-15 19:14:36', '', 9, 'http://localhost/musicaexpress/2016/10/15/9-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2016-10-17 20:35:39', '2016-10-17 20:35:39', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2016-10-17 20:35:39', '2016-10-17 20:35:39', '', 8, 'http://localhost/musicaexpress/?p=112', 2, 'nav_menu_item', '', 0),
(113, 1, '2016-10-17 20:35:40', '2016-10-17 20:35:40', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2016-10-17 20:35:40', '2016-10-17 20:35:40', '', 8, 'http://localhost/musicaexpress/?p=113', 3, 'nav_menu_item', '', 0),
(114, 1, '2016-10-17 22:44:12', '2016-10-17 22:44:12', '', 'sample-banner-tax', '', 'inherit', 'open', 'closed', '', 'sample-banner-tax', '', '', '2016-10-17 22:44:12', '2016-10-17 22:44:12', '', 0, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-banner-tax.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(115, 1, '2016-10-18 16:04:25', '2016-10-18 16:04:25', '', 'Marcas', '', 'publish', 'closed', 'closed', '', 'marcas', '', '', '2016-10-18 16:04:25', '2016-10-18 16:04:25', '', 0, 'http://localhost/musicaexpress/?page_id=115', 0, 'page', '', 0),
(116, 1, '2016-10-18 16:04:25', '2016-10-18 16:04:25', '', 'Marcas', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2016-10-18 16:04:25', '2016-10-18 16:04:25', '', 115, 'http://localhost/musicaexpress/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2016-10-18 16:04:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-10-18 16:04:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?p=117', 1, 'nav_menu_item', '', 0),
(118, 1, '2016-10-18 16:05:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-10-18 16:05:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2016-10-18 16:05:14', '2016-10-18 16:05:14', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2016-10-18 16:05:14', '2016-10-18 16:05:14', '', 0, 'http://localhost/musicaexpress/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2016-10-18 17:29:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-18 17:29:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/musicaexpress/?post_type=type-offers&p=120', 0, 'type-offers', '', 0),
(121, 1, '2016-10-18 17:30:55', '2016-10-18 17:30:55', '', 'Ofertas', '', 'publish', 'closed', 'closed', '', 'ofertas', '', '', '2016-10-18 17:30:55', '2016-10-18 17:30:55', '', 0, 'http://localhost/musicaexpress/?page_id=121', 0, 'page', '', 0),
(122, 1, '2016-10-18 17:30:55', '2016-10-18 17:30:55', '', 'Ofertas', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2016-10-18 17:30:55', '2016-10-18 17:30:55', '', 121, 'http://localhost/musicaexpress/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2016-10-18 17:31:14', '2016-10-18 17:31:14', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2016-10-18 17:31:14', '2016-10-18 17:31:14', '', 0, 'http://localhost/musicaexpress/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2016-10-18 17:39:44', '2016-10-18 17:39:44', 'orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '30% descuento guitarras', '', 'publish', 'closed', 'closed', '', '30-descuento-guitarras', '', '', '2016-10-18 17:39:44', '2016-10-18 17:39:44', '', 0, 'http://localhost/musicaexpress/?post_type=type-offers&#038;p=124', 0, 'type-offers', '', 0),
(125, 1, '2016-10-18 17:39:37', '2016-10-18 17:39:37', '', 'oferta-sample', '', 'inherit', 'open', 'closed', '', 'oferta-sample', '', '', '2016-10-18 17:39:37', '2016-10-18 17:39:37', '', 124, 'http://localhost/musicaexpress/wp-content/uploads/2016/10/oferta-sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-10-18 17:39:55', '2016-10-18 17:39:55', 'orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '30% descuento guitarras 2', '', 'publish', 'closed', 'closed', '', '30-descuento-guitarras-2', '', '', '2016-10-18 17:40:04', '2016-10-18 17:40:04', '', 0, 'http://localhost/musicaexpress/?post_type=type-offers&#038;p=126', 0, 'type-offers', '', 0) ;

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
(71, 10, 0),
(75, 8, 0),
(76, 11, 0),
(77, 8, 0),
(78, 8, 0),
(78, 18, 0),
(79, 8, 0),
(79, 18, 0),
(80, 8, 0),
(80, 17, 0),
(81, 8, 0),
(81, 17, 0),
(83, 12, 0),
(84, 12, 0),
(86, 1, 0),
(88, 1, 0),
(89, 1, 0),
(94, 13, 0),
(103, 14, 0),
(105, 15, 0),
(112, 4, 0),
(113, 4, 0),
(114, 19, 0),
(119, 3, 0),
(123, 2, 0),
(125, 20, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 12),
(8, 8, 'category_instruments', '', 0, 6),
(9, 9, 'category_instruments', '', 0, 0),
(10, 10, 'wpmf-category', '', 0, 1),
(11, 11, 'wpmf-category', '', 0, 0),
(12, 12, 'wpmf-category', '', 0, 0),
(13, 13, 'wpmf-category', '', 0, 0),
(14, 14, 'wpmf-category', '', 0, 1),
(15, 15, 'wpmf-category', '', 0, 1),
(16, 16, 'category', '', 0, 0),
(17, 17, 'category_instruments', '', 8, 2),
(18, 18, 'category_instruments', '', 8, 2),
(19, 19, 'wpmf-category', '', 0, 0),
(20, 20, 'wpmf-category', '', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(5, 8, 'meta_order_taxonomy', '1'),
(6, 8, 'meta_color_taxonomy', '#000000'),
(7, 9, 'meta_order_taxonomy', '2'),
(8, 9, 'meta_color_taxonomy', '#000000'),
(9, 16, 'meta_order_taxonomy', '3'),
(10, 16, 'meta_color_taxonomy', '#000000'),
(11, 1, 'meta_order_taxonomy', '1'),
(12, 1, 'meta_color_taxonomy', ''),
(13, 17, 'meta_order_taxonomy', '1'),
(14, 17, 'meta_color_taxonomy', '#000000'),
(15, 18, 'meta_order_taxonomy', '2'),
(16, 18, 'meta_color_taxonomy', '#000000'),
(17, 8, 'meta_image_taxonomy', 'http://localhost/musicaexpress/wp-content/uploads/2016/10/sample-banner-tax.jpg') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Top Left Menu', 'top-left-menu', 0),
(3, 'Top Right Menu', 'top-right-menu', 0),
(4, 'Menu Principal', 'menu-principal', 0),
(8, 'Guitarra', 'guitarra', 0),
(9, 'Bajos', 'bajos', 0),
(10, 'SLIDER HOME', 'slider-home', 1),
(11, 'PRODUCTOS', 'productos', 1),
(12, 'PUBLICIDAD O IMAGEN', 'publicidad-o-imagen', 1),
(13, 'MARCAS', 'marcas', 1),
(14, 'NOSOTROS', 'nosotros', 1),
(15, 'ALQUILER', 'alquiler', 1),
(16, 'Tema 1', 'tema-1', 0),
(17, 'Acústica', 'acustica', 0),
(18, 'Eléctrica', 'electrica', 0),
(19, 'BANNER PRODUCTOS', 'banner-productos', 1),
(20, 'OFERTAS', 'ofertas', 1) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(14, 1, 'session_tokens', 'a:8:{s:64:"eaef9d99e5bd9f0d82a8fe1a8446e61c3d34722ed80432817ac39861def80e48";a:4:{s:10:"expiration";i:1476835070;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476662270;}s:64:"3410025d4c95ca70ddd6908198d01413dc4536559a0ea9bd6a94f2a02a738b7a";a:4:{s:10:"expiration";i:1476890677;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476717877;}s:64:"974da080e058cb293c2d31e9d5caaa4f3f7556294b98b96f7184ec348e773a80";a:4:{s:10:"expiration";i:1476903132;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476730332;}s:64:"e9e4b07b72a9d19812e2a1effe76e5bd1926c84fd5c958166403a09882402e3a";a:4:{s:10:"expiration";i:1476915971;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476743171;}s:64:"fde8878a5aca03ddb796b7c084927db565610af26a0029f8ed887c7111ab72d5";a:4:{s:10:"expiration";i:1476924650;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476751850;}s:64:"77150d3def3ca2911aa7eb4087dd949485865eadb454db4bae51ab0d547f6e9e";a:4:{s:10:"expiration";i:1476979268;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476806468;}s:64:"7a12d8b8f1d91c1db2aaf1e4d3f58388556c4c0c467b71e7dee441bc6c283798";a:4:{s:10:"expiration";i:1476998540;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476825740;}s:64:"356a5ce64242a60a139b261e948674926537f6f1bcbd4964c159ed3ea44378c5";a:4:{s:10:"expiration";i:1477004883;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476832083;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=html'),
(20, 1, 'wp_user-settings-time', '1476810769'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(23, 1, 'closedpostboxes_type-marcas', 'a:1:{i:0;s:10:"postcustom";}'),
(24, 1, 'metaboxhidden_type-marcas', 'a:1:{i:0;s:7:"slugdiv";}') ;

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

