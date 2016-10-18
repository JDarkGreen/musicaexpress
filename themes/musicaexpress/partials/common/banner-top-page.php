<?php  
/*
 * Archivo que incluye el banner top de la página
 * 
 */

/*
 * Variables
 */

//El banner
$the_banner = isset($banner) && !empty($banner) ? $banner : get_queried_object();

//El título
$the_title = isset($banner_title) && !empty($banner_title) ? $banner_title : $the_banner->post_title;

//El id de banner
$id_banner = isset($banner) && !empty($banner) ? $banner->ID : get_queried_object_id();

//Url de la imagen ( si existe la variable $banner_url_image )
$banner_url_image = isset($banner_url_image) && !empty($banner_url_image) ? $banner_url_image : get_banner_page( $id_banner );


/*
 * Renderizando el banner
 */
	
?>

	<!-- Banner top de Página -->
	<section class="pageCommon__topbanner posrelative">

		<!-- Imagen -->
		<figure style="background-image : url( <?= $banner_url_image; ?> )">
			<img src="<?= $banner_url_image; ?>" alt="<?php bloginfo('description') ?>" class="img-fluid d-block m-x-auto hidden-xs-down" />
		</figure>
		
		<!-- Título -->
		<h2 class="title-page text-uppercase sr-rollIn"> 
			<?= __( $the_title , 'LANG' ); ?> 
		</h2>

	</section> <!-- /.pageCommon__banner -->


