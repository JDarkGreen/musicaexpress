<?php 
/* 
 * ESTE TEMPLATE CONTIENE INFORMACION DE :
 * Seccion de Marcas en el Home
 */

/*
 * Obtener Todas las Marcas
 */
$args = array(
	'posts_per_page' => -1,
	'post_type'      => 'type-marcas',
	'post_status'    => 'publish',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'meta_key'       => 'mbox_order_tpost',
);

$marcas = get_posts( $args );

/* Numero de marcas mínimas para carousel */ 
$min_num_marcas = 7;

/*Numero de marcas actuales*/
$marcas_size = count($marcas); 

?>

<section id="sectionMarcas">
	
	<!-- Wrapper Container  -->
	<div class="wrapperContainer">

		<!-- Título -->
		<h2 class="sectionTitle text-uppercase"> <?= __('marcas',LANG); ?> </h2>

		<?php  
			/*
			 * Si el numero de marcas es mayor o igual al minimo hacer carousel
			 */
			if( ($marcas_size >= $min_num_marcas ) ):
		?>
		
		<div id="carosel-marcas" class="js-carousel-gallery" data-items="<?= intval($min_num_marcas); ?>" data-items-responsive="1" data-margins="48" data-dots="true" data-autoplay="true" data-timeautoplay="5000">

			<?php foreach( $marcas as $marca ): ?>

			<?php if( has_post_thumbnail( $marca->ID ) ): ?>
				
				<?= get_the_post_thumbnail( $marca->ID , 'full' , array('class'=>'d-block m-x-auto') ); ?>

			<?php endif; ?>

			<?php endforeach; ?>

		</div> <!-- /.#carosel-marcas -->

		<?php else: ?>

			<div class="flexible align-items-center">
				
				<?php foreach( $marcas as $marca ): ?>

				<?php if( has_post_thumbnail( $marca->ID ) ): ?>
					
					<figure class="item-marcas">
						<?= get_the_post_thumbnail( $marca->ID , 'full' , array('class'=>'d-block m-x-auto') ); ?>
					</figure> <!-- /item-marcas -->

				<?php endif; ?>

				<?php endforeach; ?>

			</div> <!-- /.flexible align-items-center -->

		<?php endif; ?>

	</div> <!-- /.wrapperContainer -->

</section> <!-- /.#sectionMarcas -->