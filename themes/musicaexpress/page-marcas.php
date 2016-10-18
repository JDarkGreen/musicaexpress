<?php 
/*
 * Template Name: Página Marcas Template
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
 * Obtener todas las marcas por orden
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


?>

<!-- Wrapper Container  -->
<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<main id="pageMarcasWrapper">

			<!-- Contenido si existe -->
			<?= apply_filters( 'the_content' , $post->post_content ); ?>
			
			<?php if( count($marcas) >= 1 ) : ?>

				<div class="flexible align-items-center">
					
					<?php foreach( $marcas as  $marca ): ?>
					
					<?php if( has_post_thumbnail($marca->ID) ): ?>
					<figure class="featured-marcas">
						<?= get_the_post_thumbnail( $marca->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>	
					</figure>
					<?php endif; ?>

					<?php endforeach; ?>

				</div> <!-- /.flexible align-items-center -->
				
			<?php else: ?>

					<div class="alert alert-warning" role="alert">
					  <strong> Ops!</strong> Por el momento nuestras marcas están en mantenimiento puedes ver otras páginas desde  <a href="<?= site_url(); ?>" class="alert-link"> aquí </a>.
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
