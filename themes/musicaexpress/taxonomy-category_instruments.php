<?php 
/*
 * File Template para las categorías de Intrumentos
 * 
 */

$current_term = get_queried_object();

/*
 * Actual id 
 */
$current_term_id = $current_term->term_id;

/*
 * Actual nombre
 */
$current_term_name = $current_term->name;

/*
 * Actual taxonomía
 */
$current_taxonomy  = $current_term->taxonomy;

/*
 * Mostrar Header
 */
get_header();

/*
 * Opciones de Personalización
 */

$options = get_option("theme_settings");

/*
 * Imágen de banner
 */

/*
 * Si no la tiene el padre (categoria super padre )
 * entonces la asignamos al hijo y si no tiene lo dejamos con un
 * banner por default
 */

/*
 * Obtener Super Categoría Padre
 */
$ancestors = get_ancestors( $current_term_id , 'category_instruments' );
//Super taxonomía padre (su ID)
$super_taxonomy_id = count($ancestors) >= 1 ? end($ancestors) : false;

//Extraer la imagen de la taxonomia super
$image_post_meta   = !empty($super_taxonomy_id) ? get_term_meta( $super_taxonomy_id , 'meta_image_taxonomy' , true ) : false;

//en caso de no tener imagen la taxonomía super entonces
//acudimos a la imagen de la taxonomía actual
$image_post_meta  = $image_post_meta !== false ? $image_post_meta : get_term_meta( $current_term_id , 'meta_image_taxonomy' , true );

//Por ultimo seteamos en la variable url banner que pasa como parametro
//al banner principal
$banner_url_image = isset($image_post_meta) && !empty($image_post_meta) ? $image_post_meta : IMAGES . '/sample_banner.jpg';

//Título
$banner_title = $current_term_name;

/*
 * Variable para Template banner de página
 */

if( stream_resolve_include_path('partials/common/banner-top-page.php') ):
	include('partials/common/banner-top-page.php');
endif;

/*
 * Variables de paginación
 */
$posts_per_page = 6;
$paged = get_query_var('paged') ? get_query_var('paged') : 1;


/*
 * Query para obtener las entradas de post
 */
$args = array(
	'posts_per_page' => $posts_per_page,
	'post_type'      => 'type_instruments',
	'order'          => 'DESC',
	'orderby'        => 'meta_value_num',
	'meta_key'       => 'mbox_order_tpost',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'tax_query' => array(
		array(
			'taxonomy' => $current_taxonomy,
			'field'    => 'slug',
			'terms'    => $current_term->slug,
		),
	),
);

$the_query = new WP_Query($args);

?>


<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<div class="row">

			<!-- Contenido -->
			<div class="col-xs-12 col-sm-8">

				<main id="wrapperPageProducts">

					<h2 class="sectionTitle text-uppercase">
						<?= __(  $current_term_name , LANG ); ?>
					</h2>

					<!-- Espacio --> <br />
					
					<?php if($the_query->have_posts()): ?>

					<div class="row">
						
						<?php while($the_query->have_posts()): $the_query->the_post(); ?>

							<div class="col-xs-12 col-sm-4">
		
								<article class="itemProductPreview scroll-animate">

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
								
							</div> <!-- /.col-xs-12 col-sm-4 -->					

						<?php endwhile; ?>
						
						<!-- Espacio -->
						<div class="d-block clearfix"></div>

						<!-- Paginación -->
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

					</div> <!-- /end of row -->

					<?php else: ?>

						<div class="alert alert-warning" role="alert">
						  <strong> Ops!</strong> Por el momento este contenido está en mantenimiento puedes ver otras páginas desde  <a href="<?= site_url(); ?>" class="alert-link"> aquí </a>.
						</div>

					<?php endif; ?>

				</main> <!-- /.#wrapperPageProducts -->

			</div> <!-- /.col-xs-12 col-sm-8 -->
			
			<!-- Sidebar -->
			<aside class="col-xs-12 col-sm-4">

				<!-- Espacio --> 
				<div class="clearfix hidden-sm-up"><br /><br /></div>

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