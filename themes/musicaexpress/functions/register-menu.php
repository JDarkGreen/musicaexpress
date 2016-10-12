<?php  
/* 
 * Template muestra o contiene los menus del tema 
 */

function register_my_menus(){
	register_nav_menus(

		array(
			'top-left-menu'  => __('Top Left Menu', LANG ),
			'top-right-menu' => __('Top Right Menu', LANG ),
			'main-menu'      => __('Main Menu', LANG ),
		)
	);
}

add_action('init', 'register_my_menus');
