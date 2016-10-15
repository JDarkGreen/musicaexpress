<?php 
/*
 * Template Name: Página Nosotros Template
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

?>

<!-- Wrapper Container  -->
<div class="wrapperContainer">

	<section class="wrapperPageLayout pageWithGallery">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<!-- Título -->
				<h2 class="sectionTitle text-uppercase text-xs-center">
					<?= !empty($post->post_excerpt) ? $post->post_excerpt : 'musical express'; ?>
				</h2> <!-- /.sectionTitle -->

				<!-- Texto -->
				<?= apply_filters( 'the_content' , $post->post_content ); ?>
				
			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!-- Galería de Imágenes -->
			<div class="col-xs-12 col-sm-4">

				<?php  
					/*
					 * Obtener galería de Imágenes
					 */
					$gallery_nosotros = get_gallery_post( $post->ID );
					if( $gallery_nosotros ):
				?>
				
				<!-- Carousel Galeria   -->
				<div id="carousel-nosotros" class="js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="10" data-dots="true" data-autoplay="true" data-timeautoplay="5000">

				<?php foreach( $gallery_nosotros as $image ): ?>

					<figure class="itemImageNosotros">
						<a href="<?= $image->guid; ?>" class="gallery-fancybox" rel="group1">
							<img src="<?= $image->guid; ?>" alt="<?= $image->post_content; ?>" class="img-fluid d-block m-x-auto" />
						</a>
					</figure> <!-- /.itemImageNosotros -->

				<?php endforeach; ?>

				</div> <!-- /#carousel-nosotros -->

				<?php endif; ?>

			</div> <!-- /.col-xs-12 col-sm-4 -->
			
		</div> <!-- /.row -->
	
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
