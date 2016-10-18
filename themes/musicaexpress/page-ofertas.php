<?php 
/*
 * Template Name: Página Ofertas Template
 */

/*
 * Objecto Actual
 */
global $post;

/*
 * Mostrar Header
 */
get_header();

/*
 * Opciones de Personalización
 */

$options = get_option("theme_settings");

/*
 * Variable para Template banner de página
 */
$banner = $post;

if( stream_resolve_include_path('partials/common/banner-top-page.php') ):
	include('partials/common/banner-top-page.php');
endif;

/*
 * Obtener todas las ofertas por orden
 */
$args = array(
	'posts_per_page' => -1,
	'post_type'      => 'type-offers',
	'post_status'    => 'publish',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'meta_key'       => 'mbox_order_tpost',
);

$ofertas = get_posts( $args );


?>

<!-- Wrapper Container  -->
<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<main id="pageOfertasWrapper">
			
			<?php if( count($ofertas) >= 1 ) : ?>
					
			<?php foreach( $ofertas as  $oferta ): ?>

				<article class="itemOffer">

					<?php if( has_post_thumbnail($oferta->ID) ): ?>
					<?php $url_image = wp_get_attachment_url( get_post_thumbnail_id( $oferta->ID ) ); ?>

					<figure class="featured-image flexible align-items-center justify-center">

						<a href="<?= $url_image ?>" class="gallery-fancybox d-block" title="<?= $oferta->post_title; ?>">
							<?= get_the_post_thumbnail( $oferta->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
						</a>
						
					</figure> <!-- /.featured-image -->
					
					<?php endif; ?>
					
					<!-- Contenido -->
					<?= apply_filters( 'the_content' , $oferta->post_content ); ?>
					
				</article> <!-- /.itemOffer -->


			<?php endforeach; ?>
				
			<?php else: ?>

					<div class="alert alert-warning" role="alert">
					  <strong> Ops!</strong> Por el momento nuestras ofertas están en mantenimiento puedes ver otras páginas desde  <a href="<?= site_url(); ?>" class="alert-link"> aquí </a>.
					</div>

			<?php endif; ?>

		</main> <!-- /#pageMarcasWrapper -->

	</section> <!-- /.wrapperPageLayout -->

</div> <!-- /.wrapperContainer -->


<?php   
/*
 * Importar banner common
 */
if( stream_resolve_include_path('partials/common/partial-banner-common.php') ):
	include('partials/common/partial-banner-common.php');
endif;

/*
 * Incluir template sección miscelaneo
 */
include(locate_template('partials/home/section-miscelaneo.php'));

/*
 * Incluir template sección marcas
 */
include(locate_template('partials/home/section-marcas.php'));
?>

<!-- Footer -->
<?php get_footer(); ?>
