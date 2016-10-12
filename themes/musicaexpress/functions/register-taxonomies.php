<?php  
/* 
 * Template contiene nuevas taxonomias creadas
 */

//create a custom taxonomy
add_action( 'init', 'create_category_taxonomy', 0 );

function create_category_taxonomy() 
{

  /*
   * Categoría Instrumentos
   */
  $labels_instrumentos = array(
    'name'             => __( 'Categoría Instrumentos'),
    'singular_name'    => __( 'Categoría Instrumentos'),
    'search_items'     => __( 'Buscar Categoría Instrumentos'),
    'all_items'        => __( 'Todas Categorías de Instrumentos' ),
    'parent_item'      => __( 'Categoría padre de Instrumentos' ),
    'parent_item_colon'=> __( 'Categoría padre:' ),
    'edit_item'        => __( 'Editar categoría de Instrumentos' ), 
    'update_item'      => __( 'Actualizar categoría de Instrumentos' ),
    'add_new_item'     => __( 'Agregar nueva categoría de Instrumentos' ),
    'new_item_name'    => __( 'Nuevo nombre categoría de Instrumentos' ),
    'menu_name'        => __( 'Categoria Instrumentos' ),
  ); 

  // Ahora registramos esta taxonomia
  register_taxonomy('category_instruments',array('type_instruments'), array(
    'hierarchical'     => true,
    'labels'           => $labels_instrumentos,
    'show_ui'          => true,
    'show_admin_column'=> true,
    'query_var'        => true,
    'rewrite'          => array( 'slug' => 'instrumentos' ),
  ));  


 


}
