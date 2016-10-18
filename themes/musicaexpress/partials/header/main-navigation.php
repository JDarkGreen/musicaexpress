<?php  
/*
 * Template Partial : Este template Contiene:
 * ---------  Menu de Navegacion Principal
 */

wp_nav_menu(
	array(
	'menu_class'     => 'menu-menu-principal',
	'theme_location' => 'main-menu',
	'link_before' => '<span>',
	'link_after' => '</span>',
 ));