<?php 
/*
 * Template : Sidebars
 * Este archivo registra los sidebars del tema 
 */

if (function_exists('register_sidebar') ) 
{

	register_sidebar(
		array(
			'name'          => __('Main Sidebar', LANG ),
			'id'            => 'main-sidebar',
			'description'   => __('Principal Sidebar', LANG ),
			'before_widget' => '<div class="widgetmainsidebar">',
			'after_widget'  => '</div> <!-- end widgetmainsidebar -->',
			'before_title'  => '<h4>',
			'after_title'   => '</h4>'
		)
	);

}
	