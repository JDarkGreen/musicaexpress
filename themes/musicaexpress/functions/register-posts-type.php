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
		'name'               => __('Productos - Instrumentos'),
		'singular_name'      => __('Producto - Instrumento'),
		'add_new'            => __('Nuevo Producto - Instrumento'),
		'add_new_item'       => __('Agregar nuevo Producto - Instrumento Principal'),
		'edit_item'          => __('Editar Producto - Instrumento'),
		'view_item'          => __('Ver Producto - Instrumento'),
		'search_items'       => __('Buscar Producto - Instrumento'),
		'not_found'          => __('Producto - Instrumento no encontrado'),
		'not_found_in_trash' => __('Producto - Instrumento no encontrado en la papelera'),
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


	/*|----- VIDEOS ----------------------|*/
	
	$labels_videos = array(
		'name'               => __('Galería Videos'),
		'singular_name'      => __('Video'),
		'add_new'            => __('Nuevo Video'),
		'add_new_item'       => __('Agregar nuevo Video Principal'),
		'edit_item'          => __('Editar Video'),
		'view_item'          => __('Ver Video'),
		'search_items'       => __('Buscar Video'),
		'not_found'          => __('Video no encontrado'),
		'not_found_in_trash' => __('Video no encontrado en la papelera'),
	);

	$args_videos = array(
		'labels'      => $labels_videos,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag'),
		'menu_icon'   => 'dashicons-video-alt',
	);
	
	#VIDEOS
	register_post_type( 'type-videos' , $args_videos );

	/*|----- MARCAS ----------------------|*/
	
	$labels_marcas = array(
		'name'               => __('Marcas'),
		'singular_name'      => __('Marca'),
		'add_new'            => __('Nuevo Marca'),
		'add_new_item'       => __('Agregar nueva Marca Principal'),
		'edit_item'          => __('Editar Marca'),
		'view_item'          => __('Ver Marca'),
		'search_items'       => __('Buscar Marca'),
		'not_found'          => __('Marca no encontrada'),
		'not_found_in_trash' => __('Marca no encontrada en la papelera'),
	);

	$args_marcas = array(
		'labels'      => $labels_marcas,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag'),
		'menu_icon'   => 'dashicons-groups',
	);
	
	#MARCAS
	register_post_type( 'type-marcas' , $args_marcas );


	/*|----- OFERTAS ----------------------|*/
	
	$labels_offers = array(
		'name'               => __('Ofertas'),
		'singular_name'      => __('Oferta'),
		'add_new'            => __('Nueva Oferta'),
		'add_new_item'       => __('Agregar nueva Oferta Principal'),
		'edit_item'          => __('Editar Oferta'),
		'view_item'          => __('Ver Oferta'),
		'search_items'       => __('Buscar Oferta'),
		'not_found'          => __('Oferta no encontrada'),
		'not_found_in_trash' => __('Oferta no encontrada en la papelera'),
	);

	$args_offers = array(
		'labels'      => $labels_offers,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => true,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'show_ui' => true,
		'taxonomies'  => array('post-tag'),
		'menu_icon'   => 'dashicons-tickets-alt',
	);
	
	#OFERTAS
	register_post_type( 'type-offers' , $args_offers );




	flush_rewrite_rules();
}

add_action( 'init', 'create_post_type' );
