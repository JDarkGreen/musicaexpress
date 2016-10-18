<?php 
/*
 * Template : Category php 
 * Muestras la plantilla categorías por defecto
 */

/*
 * Objecto Actual
 */
$current_category = get_queried_object();

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
 * Variables de paginación
 */
$posts_per_page = 4;
$paged = get_query_var('paged') ? get_query_var('paged') : 1;


/*
 * Query para obtener las entradas de post
 */
$args = array(
	'posts_per_page' => $posts_per_page,
	'cat'            => $current_category->term_id,
	'post_type'      => 'post',
	'order'          => 'DESC',
	'orderby'        => 'date',
	'paged'          => $paged,
	'post_status'    => 'publish',
);

$the_query = new WP_Query($args);

?>

<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<main id="wrapperPageBlog">

					<!-- Título -->
					<h2 class="sectionTitle text-uppercase">
						<?= __( $current_category->name , LANG ); ?>
					</h2>
					
					<?php if($the_query->have_posts()): ?>
						
					<?php while($the_query->have_posts()): $the_query->the_post(); ?>

					<!-- Post Preview Blog -->
					<article class="itemPostPreview flexible scroll-animate">

						<!-- Imagen -->
						<?php  
							$img_url = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id()) : IMAGES . '/default_post.jpg';
						?>
						<a href="<?= get_permalink(); ?>" title="<?= get_the_title() ?>" class="link-to-post">
							<figure class="featured-image" style="background-image: url(<?= $img_url; ?>)">
							</figure> <!-- /.featured-image -->
						</a>

						<div class="content-text">
							
							<!-- Titulo -->
							<h3 class="text-capitalize">
								<a href="<?= get_permalink(); ?>" title="<?= get_the_title() ?>">
								<?= __( get_the_title() ,LANG); ?></a>
							</h3>

							<?php  
								$excerpt_text = wp_strip_all_tags( get_the_content() );
								$excerpt_text = wp_trim_words( $excerpt_text , 25 , '' );
								echo apply_filters( 'the_content' , $excerpt_text  );
							?>
							<a href="<?= get_permalink(); ?>" title="<?= get_the_title() ?>" class="link-read-more"> <?= __('Leer más'); ?> </a>

						</div> <!-- /.content-text -->
						
					</article> <!-- /.itemPostPreview flexible-->

					<?php endwhile; ?>

					<?php else: ?>

						<div class="alert alert-warning" role="alert">
						  <strong> Ops!</strong> Por el momento la categoría se encuentra en mantenimiento puedes ver otras páginas desde  <a href="<?= site_url(); ?>" class="alert-link"> aquí </a>.
						</div>

					<?php endif; ?>

				</main> <!-- /.#wrapperPageBlog -->

			</div> <!-- /.col-xs-12 col-sm-8 -->
			
			<!-- Sidebar -->
			<aside class="col-xs-12 col-sm-4">

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