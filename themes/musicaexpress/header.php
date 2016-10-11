<?php
/**
 *  El template para mostrar el header
 *
 *  Muestra todos los elementos de la cabeza 
 *  y todo hasta el div "-contenido del sitio".
 *
 *  @package WordPress
 *  @subpackage 
 *  @since 
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>

	<meta name="description" content="<?php bloginfo('description'); ?>" />
	<meta name="author" content="" />

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<link rel="profile" href="http://gmpg.org/xfn/11">
	
	<!-- Pingback -->
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
		<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->
	<link rel="shortcut icon" href="<?= IMAGES ?>/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="<?= IMAGES ?>/favicon.ico" type="image/x-icon" />

	<?php wp_head(); ?>
</head>


<body <?php body_class(); ?>>

<div id="page" class="site">

	<header id="masthead" class="site-header" role="banner">

	</header><!-- .site-header -->

	<div id="content" class="site-content">
