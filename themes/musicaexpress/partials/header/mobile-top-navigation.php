<?php
/*
 * Template File : Archivo Parcial que incluye 
 * menú de navegación superior solo en mobile
 */ 
?>

<br/>

<!-- Menu Left -->
<div id="nav-top-left-menu" class="menu-top-header text-uppercase">
	<?php 
		wp_nav_menu(
			array(
			'menu_class'     => '',
			'theme_location' => 'top-left-menu'
		));
	?>
</div> <!-- /nav-top-left-menu-->

<!-- Menu Right -->
<div id="nav-top-right-menu" class="menu-top-header text-uppercase">
	<?php 
		wp_nav_menu(
			array(
			'menu_class'     => '',
			'theme_location' => 'top-right-menu'
		));
	?>
</div> <!-- /nav-top-right-menu-->

<br/>