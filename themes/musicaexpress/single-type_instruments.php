<?php 
/*
 * Template: Single tipo de instrumentos / productos
 */

/*
 * Nota los nuevos filtros (como classtoparagraphs ) se encuentran en 
 * function/custom-function/custom-filters.php
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
 * Obtener terminos de post
 */

$terms    = wp_get_post_terms( $post->ID , 'category_instruments' );
$the_term =  $the_parent = '';

foreach( $terms as $term ):
	//verificar si no es padre
	if( $term->parent != 0  ) :
		$the_term   = $term;
	else:
		$the_parent = $term;
	endif;
endforeach;

//Link del Término
$the_term_link = isset($the_term) && !empty($the_term) ? get_term_link($the_term) : '#';

//Obtener Post meta de taxonomía padre
if( isset($the_parent) && !empty($the_parent) ):
	$image_post_meta = get_term_meta( $the_parent->term_id , 'meta_image_taxonomy' , true );
endif;

/*
 * Variable para Template banner de página
 */

//Título
$banner_title = isset($the_parent) ? $the_parent->name : $post->post_title;


//Imagen
$banner_url_image = isset($image_post_meta) && !empty($image_post_meta) ? $image_post_meta : '';

if( stream_resolve_include_path('partials/common/banner-top-page.php') ):
	include('partials/common/banner-top-page.php');
endif;

/* 
 * Detectar plugin share buttons
 */
include_once( ABSPATH . 'wp-admin/includes/plugin.php' );



?>

<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<article class="singleProductArticle">
					
					<?php if( has_post_thumbnail( $post->ID ) ) : ?>	

					<?php 
						$url_img = wp_get_attachment_url( get_post_thumbnail_id( $post->ID ) );
					?>
					<div class="row">

						<!-- Imágen Destacada -->
						<div class="col-xs-12 col-sm-6">

							<figure class="featured-image flexible align-items-center">
								<a href="<?= $url_img ?>" title="<?= $post->post_title; ?>" class="gallery-fancybox">

									<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>

								</a> <!-- / -->
							</figure>
							
						</div> <!-- /.col-xs-12 col-sm-6 -->

						<!-- Texto  -->
						<div class="col-xs-12 col-sm-6">

							<h3 class="title-product"> <?= $post->post_title; ?> </h3>

							<?= apply_filters( 'the_content' , $post->post_content ); ?>
							
							<?php 
								$mb_price = get_post_meta( $post->ID , 'product_price' );
								$mb_price = isset($mb_price) && !empty($mb_price) ? $mb_price[0] : '';
								//opciones normal and offer
							?>

							<?php if( isset($mb_price['normal']) && !empty($mb_price['normal']) ) : ?>
							<span class="price-product d-block"> Precio : <?= $mb_price['normal']; ?> </span>
							<?php endif; ?>

							<?php if( isset($mb_price['offer']) && !empty($mb_price['offer']) ) : ?>
							<span class="price-product d-block"> Ahora a : <?= $mb_price['offer']; ?> </span>
							<?php endif; ?>

							<br />

							<!-- Página a productos -->
							<a href="<?= $the_term_link; ?>" class="btnShowMoreCommon text-uppercase">
								<?= __( 'más productos' , LANG ); ?>
							</a>
							
						</div> <!-- /.col-xs-12 col-sm-6 -->
						
					</div> <!-- /.row -->

					<?php else: ?>

						<div class="alert alert-danger" role="alert">
						  <h4 class="alert-heading"> Ops!</h4>
						  <p> Estamos actualizando este instrumento - producto. </p>
						  <p class="m-b-0"> Le invitamos a recorrer otras secciones de la página.</p>
						</div>

					<?php endif; ?>

				</article> <!-- /.singleProductArticle -->

			</div> <!-- /.col-xs-12 col-sm-8 -->
			
			<!-- Sidebar -->
			<aside class="col-xs-12 col-sm-4">

				<!-- Categorias -->
				<?php  
					if( stream_resolve_include_path('partials/common/categories-products.php') ):
						include('partials/common/categories-products.php');
					endif;
				?>
				
				<!-- Sidebar Activo -->
				<?php if( is_active_sidebar( 'main-sidebar' ) ) : ?>
					<?php dynamic_sidebar( 'main-sidebar' ); ?>
				<?php endif; ?>

			</aside> <!-- /.col-xs-12 col-sm-4 -->
			
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