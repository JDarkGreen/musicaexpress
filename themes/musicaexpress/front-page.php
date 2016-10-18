<?php
	/*
	 * Obtener Header
	 */
	get_header(); 

	/*
	 * Extraer opciones del tema
	 */
	$options = get_option("theme_settings");
	
	/*
	 * Importar partial de slider
	 */
	if( stream_resolve_include_path('partials/home/slider-home-revolution.php') ):
		include('partials/home/slider-home-revolution.php');
	endif;	

	/*
	 * Importar banner common
	 */
	if( stream_resolve_include_path('partials/common/partial-banner-common.php') ):
		include('partials/common/partial-banner-common.php');
	endif;
?>


<!-- Wrapper Container  -->
<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<!-- Título -->
		<h2 class="sectionTitle text-uppercase">
			<?= __('productos destacados y ofertas'); ?>
		</h2> <!-- /.sectionTitle -->

		<div class="row">

			<div class="col-xs-12 col-sm-8">

			<?php 
				//Incluir Template de Productos Destacados
				if( stream_resolve_include_path('partials/home/products-features.php') ) : 
					include('partials/home/products-features.php');
				endif;
			?>
				
			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!-- Aside -->
			<aside class="col-sm-4 hidden-xs-down">

				<?php if( is_active_sidebar( 'main-sidebar' ) ) : ?>
					<?php dynamic_sidebar( 'main-sidebar' ); ?>
				<?php endif; ?>

				<!-- Espacios --> <br/><br/><br/><br/>

				<!-- Incluir Facebook -->
				<section>
					<!-- Título -->
					<h2 class="sectionTitle text-uppercase"> <?= __('facebook',LANG); ?></h2>

					<?php 
						//Template de Facebook fan page 
						if( stream_resolve_include_path('partials/common/fan-page-facebook.php') ):
							include('partials/common/fan-page-facebook.php');
						endif;
					?>
				</section>

			</aside> <!-- /.col-sm-4 hidden-xs-down-->
			
		</div> <!-- /.row -->
		
	</section> <!-- /.wrapperPageLayout -->

</div> <!-- /.wrapperContainer -->

<?php   
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
