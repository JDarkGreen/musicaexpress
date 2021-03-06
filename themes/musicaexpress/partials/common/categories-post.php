<?php 
/*
 * Template Acción:
 * Mostrar las categorías del post
 */

global $post;

//Obtener Todas las categorias
$args = array(
	'hide_empty' => false , 
	'parent'     => 0,
	'order'      => 'ASC',
	'orderby'    => 'meta_value_num',
	'meta_key'   => 'meta_order_taxonomy',
);


$categorias = get_categories($args);
//
$current_id = isset($id_current_actual) ? $id_current_actual : '';
?>


<section class="menu-categories-post">
	
	<!-- Título -->
	<h2 class="sectionTitle text-uppercase"> <?= __(  'Categorías' , 'LANG' ); ?> </h2>

	<?php foreach( $categorias as $categoria ): ?>

		<a href="<?= get_term_link( $categoria ); ?>" class="item-link <?= $categoria->term_id === $current_id ? 'active' : '' ?>"> 
				
			<?= $categoria->name; ?>
			 
		</a>

	<?php endforeach; ?>

</section> <!-- /. -->