<?php  
/* 
 * Template contiene los nuevos tipos de post registrados
 */

function create_post_type()
{

	/*|-----SLIDER HOME ----------------------|*/
	
	$labels = array(
		'name'               => __('Slider Home'),
		'singular_name'      => __('Slider'),
		'add_new'            => __('Nuevo Slider'),
		'add_new_item'       => __('Agregar nuevo Slider Principal'),
		'edit_item'          => __('Editar Slider'),
		'view_item'          => __('Ver Slider'),
		'search_items'       => __('Buscar Slider'),
		'not_found'          => __('Slider no encontrado'),
		'not_found_in_trash' => __('Slider no encontrado en la papelera'),
	);

	$args = array(
		'labels'      => $labels,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag','banner_category'),
		'menu_icon'   => 'dashicons-nametag',
	);
	
	#SLIDER HOME
	register_post_type( 'slider-home' , $args  );


	/*|----- INSTRUMENTOS ----------------------|*/
	
	$labels_instruments = array(
		'name'               => __('Instrumentos'),
		'singular_name'      => __('Instrumento'),
		'add_new'            => __('Nuevo Instrumento'),
		'add_new_item'       => __('Agregar nuevo Instrumento Principal'),
		'edit_item'          => __('Editar Instrumento'),
		'view_item'          => __('Ver Instrumento'),
		'search_items'       => __('Buscar Instrumento'),
		'not_found'          => __('Instrumento no encontrado'),
		'not_found_in_trash' => __('Instrumento no encontrado en la papelera'),
	);

	$args_instruments = array(
		'labels'      => $labels_instruments,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag'),
		'menu_icon'   => 'dashicons-format-audio',
	);
	
	#INSTRUMENTOS
	register_post_type( 'type_instruments' , $args_instruments );




	flush_rewrite_rules();
}

add_action( 'init', 'create_post_type' );
