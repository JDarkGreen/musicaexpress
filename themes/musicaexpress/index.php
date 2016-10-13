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
?>


<!-- Wrapper de Contenido  -->
<div class="pageWrapperLayout containerRelative">


</div> <!-- /.pageWrapperLayout containerRelative -->

<!-- Footer -->
<?php get_footer(); ?>
