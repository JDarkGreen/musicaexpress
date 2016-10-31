<?php 
/*
 * Template Acción:
 * Mostrar las categorías / términos de taxonomías de los productos 
 */

global $post;

//Si está en taxonomía
if( is_tax() ):
	$current_object = get_queried_object(); 
else:
	$current_object = $post;
endif;

/*
 * Taxonomía de Productos
 */
$the_taxonomy = 'category_instruments';


/*
 * Obtener los terminos de la taxonomía si es taxonomía o
 * del post
 */
if( is_tax() ) :
	$args = array(
		'taxonomy'   => $the_taxonomy,
		'hide_empty' => false,
		'parent'     => $current_object->parent,
		'meta_key'   => 'meta_order_taxonomy',
		'orderby'    => 'meta_value_num',
		'order'      => 'ASC',
	);

	$terms = get_terms( $args );
else:
	$terms = wp_get_post_terms( $post->ID , $the_taxonomy );
endif;


/*
 * Obtenemos el id del padre y concatenamos tambien los términos en un
 * string 
 */
$the_parent    = '';
$current_terms = array();

foreach( $terms as $term ):

	if( $term->parent == 0 ) :
		//verificar si hay padre
		$the_parent = $term;
	endif;
	
	//añadir terminos actuales al array
	if( is_tax() ) :
		$current_terms = array( $current_object->slug );
	else:
		$current_terms[] = $term->slug;
	endif;

endforeach;

//Finalmente el padre 
$the_parent = $current_object->parent !== '' ? get_term( $current_object->parent , $the_taxonomy ) : $the_parent;


#var_dump($the_parent->errors);

/*
 * Si hay un padre
 */
if( count($the_parent->errors) < 1 && $the_parent !== '' && !empty($the_parent) ) : ?> 
	
<!-- Sección -->
<section class="menu-categories-post">

<!-- Título -->
<h2 class="sectionTitle text-uppercase"> <?= __(  $the_parent->name , 'LANG' ); ?> </h2>

<?php 
	/*
	 * Obtener todas los terminos segun la taxonomía
	 */
	$args = array(
		'hide_empty' => false , 
		'parent'     => intval($the_parent->term_id),
		'order'      => 'ASC',
		'orderby'    => 'meta_value_num',
		'meta_key'   => 'meta_order_taxonomy',
		'taxonomy'   => $the_taxonomy,
	);

	$the_terms = get_terms($args);

	foreach( $the_terms as $the_term ):
?>
	
	<a href="<?= get_term_link( $the_term ); ?>" class="item-link <?= in_array( $the_term->slug , $current_terms ) ? 'active' : '' ?>"> 
				
		<?= $the_term->name; ?>

	</a> <!-- /. -->

<?php endforeach; ?>

</section> <!-- /end of section -->

<?php endif; ?>


