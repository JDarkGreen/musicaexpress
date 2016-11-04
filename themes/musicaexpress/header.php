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

	<?php  
		$mb_descrption = get_post_meta( get_the_ID() , '_yoast_wpseo_metadesc' , true );
		$mb_descrption = !empty($mb_descrption) ? $mb_descrption : get_the_title();
	?>
	<meta name="description" content="<?= $mb_descrption; ?>" />

	<meta name="author" content="" />

	<!-- Mobile Specific Meta -->
	<meta http-equiv="cleartype" content="on" />
    <meta name="MobileOptimized" content="320" />
    <meta name="HandheldFriendly" content="True" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
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

<?php
/*
 * Extraer todas las opciones de personalización
 */ 
$options  = get_option("theme_settings");

/*
 * Comprobar si esta desplegada la barra de Navegación
 */ 
$admin_bar = is_admin_bar_showing() ? 'mainHeader__active-bar' : '';

/*
 * Extraemos el logo de las opciones del tema
 */ 
$logo_theme_url = get_header_image();
$logo_theme_url = !empty( $logo_theme_url ) ? $logo_theme_url : IMAGES . '/logo.png';

?>


<body <?php body_class(); ?>>

<!-- Layer Mobile left -->
<div id="layer-mobile-left" class="layer-mobile">
	
	<!-- Logo -->
	<h1 id="main-logo">
		<a href="<?= site_url(); ?>">
			<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
		</a>
	</h1> <!-- /.mainLogo -->
	
	<!-- Menu Top -->
	<?php if( stream_resolve_include_path('partials/header/mobile-top-navigation.php') ) : include('partials/header/mobile-top-navigation.php'); ?>
	<?php endif; ?>

	<!-- Menu Principal -->
	<nav id="main-navigation" class="mainNavigation text-xs-center text-uppercase">
		<?php 
			if( stream_resolve_include_path('partials/header/main-navigation.php') ): 
				include('partials/header/main-navigation.php');
		endif; ?>
	</nav> <!-- / -->
	
</div> <!-- /#layer-mobile-left -->

<!-- Layer Mobile Right -->
<div id="layer-mobile-right" class="layer-mobile layer-mobile--right">
	
	<!-- Categorias -->
	<?php  
		if( stream_resolve_include_path('partials/common/categories-post.php') ):
			include('partials/common/categories-post.php');
		endif;
	?>
	
	<!-- Sidebar Activo -->
	<?php if( is_active_sidebar( 'main-sidebar' ) ) : ?>
		<?php dynamic_sidebar( 'main-sidebar' ); ?>
	<?php endif; ?>
	
</div> <!-- /#layer-mobile-left -->


<header id="masthead" class="site-header" role="banner">

	<div class="wrapperContainer posrelative">

		<!-- Información de empresa -->
		<div id="information-top" class="">
			
			<i id="icon-whatsapp">
				<img src="<?= IMAGES ?>/whatsapp-icon.png" alt="whatsapp-web-musica-express" class="img-fluid m-x-auto" />
			</i>

			<?php  
				/*
				 * Número de Celular
				 */
				if( isset($options['theme_cel_text_1']) ): ?>

				<!--i class="fa fa-mobile" aria-hidden="true"></i-->
				<span><?= ' ' . $options['theme_cel_text_1']; ?></span>
			<?php endif;

				/*
				 * Número de Casa
				 */
				if( isset($options['theme_phone_text_1']) ): ?>
				<span><?= $options['theme_phone_text_1']; ?></span>
			<?php
				endif;
			?>
		</div> <!-- /.information-top -->

		<!-- Menu Header Desktop -->
		<section class="flexible justify-center align-baseline hidden-xs-down">

			<!-- Menu Left -->
			<div id="nav-top-left-menu" class="menu-top-header">
				<?php 
					wp_nav_menu(
						array(
						'menu_class'     => '',
						'theme_location' => 'top-left-menu'
					));
				?>
			</div> <!-- /nav-top-left-menu-->

			<!-- Logo -->
			<h1 id="main-logo">
				<a href="<?= site_url(); ?>">
					<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
				</a>
			</h1> <!-- /.mainLogo -->

			<!-- Menu Right -->
			<div id="nav-top-right-menu" class="menu-top-header">
				<?php 
					wp_nav_menu(
						array(
						'menu_class'     => '',
						'theme_location' => 'top-right-menu'
					));
				?>
			</div> <!-- /nav-top-right-menu-->

		</section>  <!--  -->

		<!-- Menu Header Mobile -->
		<section id="headerMobile" class="hidden-sm-up">

			<!-- Menu Left -->
			<div class="item-header-mobile">
				<div class="js-mobile-toggle icon-header" data-layer-direction="left">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</div> <!-- /.item-header-mobile -->

			<!-- Logo -->
			<div class="item-header-mobile">
				<h1 id="main-logo">
					<a href="<?= site_url(); ?>">
						<img src="<?= $logo_theme_url; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
					</a>
				</h1> <!-- /.mainLogo -->
			</div> <!-- /. -->

			<!-- Menu Right -->
			<div class="item-header-mobile">
				<div class="js-mobile-toggle icon-header" data-layer-direction="right">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</div> <!-- /.item-header-mobile -->
			
		</section> <!-- /#headerMobile -->
		
	</div> <!-- /.wrapperContainer -->

	<!-- Main Navigation -->
	<nav id="main-navigation" class="mainNavigation text-xs-center text-uppercase hidden-xs-down">
		<?php 
			/*
			 * Import template main navigation
			 */
			if( stream_resolve_include_path('partials/header/main-navigation.php') ): 
				include('partials/header/main-navigation.php');
			endif;
		?>
	</nav> <!-- /#main-navigation -->

</header><!-- .site-header -->


<div id="page" class="site">

