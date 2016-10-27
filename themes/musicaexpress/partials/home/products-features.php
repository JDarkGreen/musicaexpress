<?php 
/*
 * Partial Name : Products Features 
 * Archivo parcial que muestra 
 * Productos DESTACADOS
 */

/*
 * Variables de paginación 
 */
$posts_per_page = 12;

$paged = get_query_var('page') ? get_query_var('page') : 1;

/*
 *Obtener todos los productos destacados y ofertas
 * que tengan el metabox de order
 * que tengan el metabox destacado entre featured u offer
 */
$args = array(
	'posts_per_page' => $posts_per_page,
	'post_type'      => 'type_instruments',
	'meta_key'       => 'mbox_order_tpost',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'paged'          => $paged,
	'meta_query'     => array(
		'relation' => 'OR',
		array(
			'key'     => 'mb_product_featured',
			'value'   => 'offer',
			'compare' => 'REGEXP',
		),		
		array(
			'key'     => 'mb_product_featured',
			'value'   => 'featured',
			'compare' => 'REGEXP',
		),
	),
);

$the_query = new WP_Query( $args );

//echo '<pre>'; var_dump($products);

?>

<section class="sectionFeaturedProducts">

	<!-- Espacio -->

	<?php  
		//Si hay productos destacados
		if( $the_query->have_posts() ) : 
	?>
		
	<section class="flexible align-flex-end">
		
		<?php while($the_query->have_posts()) : $the_query->the_post(); ?>
		
		<!-- Artículo -->
		<article class="itemProductPreview">

			<!-- Imagen Destacada -->
			<?php 
				if( has_post_thumbnail() ) :
					$attachment = get_post( get_post_thumbnail_id() );
					$url_image  = $attachment->guid; 
				    $image_alt  = get_post_meta( $attachment->ID, '_wp_attachment_image_alt', true );
				else: 
					$url_image  = IMAGES . '/default_product.jpg';
					$image_alt  = get_the_title(); 
				endif;
			?>

			<a href="<?= get_permalink() ?>">
			<figure class="featured-image flexible align-items-center posrelative">
					<img src="<?= $url_image; ?>" alt="<?= $image_alt; ?>" class="img-fluid d-block m-x-auto" /> 
			</figure> <!-- /. end of image -->
			</a>

			<div class="contentText text-xs-center">

				<!-- Título -->
				<h2 class="text-uppercase"> <?= get_the_title(); ?></h2>

				<!-- Precio -->
				<?php 
					$current_price = get_post_meta( get_the_ID() , 'product_price' , true  ); 
					$class_price = !empty($current_price['offer']) ? 'strike-text' : '';
				?>
				<span class="price-normal <?= $class_price; ?>"> 
					<?= !empty($current_price['normal']) ? $current_price['normal'] : '' ?>
				</span> <!--  -->

				<span class="price-offer"> <?= !empty($current_price['offer']) ? $current_price['offer'] : ''; ?></span> <!--  -->

				<!-- Limpiar floats --> <div class="clearfix"></div>

				<!-- Boton Detalle -->
				<a href="<?= get_permalink() ?>" class="btnShowMoreCommon text-uppercase"> <?= __('ver detalle'); ?> </a>
				
			</div> <!-- /.contentText -->

		</article> <!-- /.itemProductPreview -->

		<?php endwhile; ?>

	</section>

	<!-- Paginator Here -->
	<section class="sectionPagination text-xs-center">

		<?php $max_pages = $the_query->max_num_pages; ?>

		<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>

		<!-- Link -->
		<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?></a>

		<?php } ?>

		<!-- Next -->
		<a href="<?= get_pagenum_link($paged+1); ?>" class="<?= $paged == $max_pages ? 'disabled' : '' ?>" role="button" aria-disabled="<?= $paged == $max_pages ? 'true' : '' ?>">
			<!-- Icon --><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
		</a>

	</section> <!-- /.sectionPagination -->

	<?php endif; wp_reset_postdata(); ?>
	
</section> <!-- /.sectionFeaturedProducts -->