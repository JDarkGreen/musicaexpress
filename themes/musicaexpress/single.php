<?php 
/*
 * Template: Single
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
 * Variable para Template banner de página
 */

$page_blog = get_page_by_title('Blog');
$banner    = $page_blog;

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

				<article class="singlePostArticle">

					<h2 class="sectionTitle text-capitalize"> <?= __( $post->post_title , LANG ); ?> </h2>

					<!-- Imagen -->
					<?php  
						if( has_post_thumbnail($post->ID) ) :

						$current_img = get_post(get_post_thumbnail_id($post->ID));
						$img_url   = $current_img->guid;
						$alt_image = get_post_meta( $current_img->ID , '_wp_attachment_image_alt' , true );

						else:

						$img_url   = IMAGES . '/default_post.jpg';
						$alt_image = $post->post_name;

						endif;
					?>

					<figure class="featured-image">
						<img src="<?= $img_url; ?>" alt="<?= $alt_image; ?>" class="img-fluid d-block" />
					</figure> <!-- /.featured-image -->

					<!-- El Contenido o texto -->
					<?= apply_filters( 'the_content' , $post->post_content ); ?>
					
					<!-- Opciones de Compartir -->
					<br /><br />
					
					<h2 class="sectionTitle text-capitalize"> No te olvides de compartir en :</h2>

					<!-- Facebook -->
					<a href="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink( $post->ID ); ?>' , '_blank' , 'width=400 , height=500' ); void(0);"><i class="fa fa-facebook
					fa-2x" aria-hidden="true"></i></a>

					<!-- Twitter -->
					<a href="javascript:window.open('https://twitter.com/intent/tweet?text=<?= '!Hola! este artículo me pareció interesante: ' . get_permalink( $post->ID ) . ' !Visítalo!' ; ?>' , '_blank' , 'width=400 , height=500' ); void(0);"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a>
					
				</article> <!-- /.singlePostArticle -->


			</div> <!-- /.col-xs-12 col-sm-8 -->
			
			<!-- Sidebar -->
			<aside class="col-sm-4 hidden-xs-down">

				<!-- Categorias -->
				<?php  
					if( stream_resolve_include_path('partials/common/categories-post.php') ):
						include('partials/common/categories-post.php');
					endif;
				?>
				
				<!-- Sidebar Activo -->
				<?php if( is_active_sidebar( 'main-sidebar' ) ) : ?>
					<?php dynamic_sidebar( 'main-sidebar' ); ?>
				<?php endif; ?>

			</aside> <!-- /.col-sm-4 hidden-xs-down-->
			
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