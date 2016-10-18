<?php 
/*
 * Template Name: Página Contacto Plantilla
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

$banner = $post;

if( stream_resolve_include_path('partials/common/banner-top-page.php') ):
	include('partials/common/banner-top-page.php');
endif;

?>


<div class="wrapperContainer">

	<section class="wrapperPageLayout">

		<div class="row">
			
			<!-- Sección de datos -->
			<div class="col-xs-12 col-sm-5">
				
				<div class="itemPageContact">

					<!-- Subtítulo -->
					<h2 class="sectionsubTitle text-uppercase">
						<?= __( 'datos' , LANG ); ?>
					</h2>

					<!-- Incluir template de datos -->
					<?php if( stream_resolve_include_path('partials/contact/menu-data.php') ): ?>
						<?php include('partials/contact/menu-data.php'); ?>
					<?php endif; ?>
					
				</div> <!-- /.itemPageContact -->

				<div class="itemPageContact">

					<!-- Subtítulo -->
					<h2 class="sectionsubTitle text-uppercase">
						<?= __( 'redes sociales' , LANG ); ?>
					</h2>

					<!-- Incluir template de datos -->
					<?php if( stream_resolve_include_path('partials/contact/contact-social-links.php') ): ?>
						<?php include('partials/contact/contact-social-links.php'); ?>
					<?php endif; ?>
					
				</div> <!-- /.itemPageContact -->

			</div> <!-- /.col-xs-12 col-sm-5 -->

			<!-- Sección Formulario -->
			<div class="col-xs-12 col-sm-7">

				<div class="itemPageContact">

					<!-- Subtítulo -->
					<h2 class="sectionsubTitle text-uppercase">
						<?= __( 'formulario' , LANG ); ?>
					</h2>

					<p class="d-block"> <?= __( 'Si tiene alguna pregunta relacionada con su pedido,sugerencia o comentarios, por favor no dude en comunicarse con nosotros que lo atenderemos con mucho gusto. Gracias por confiar en nosotros.' , LANG ); ?> </p>

					<br />

					<!-- Incluir template de datos -->
					<?php if( stream_resolve_include_path('partials/contact/formulary-template.php') ): ?>
						<?php include('partials/contact/formulary-template.php'); ?>
					<?php endif; ?>
					
				</div> <!-- /.itemPageContact -->
				
			</div> <!-- /.col-xs-12 col-sm-7 -->			

		</div> <!-- /.row -->

	</section>  <!-- /.wrapperPageLayout -->

</div>  <!-- /.wrapperContainer -->

<!-- Sección de Mapa -->
<div class="wrapperContainer">

	<!-- Subtítulo -->
	<h2 class="sectionsubTitle text-uppercase">
		<?= __( 'mapa de ubicación' , LANG ); ?>
	</h2>

</div>  <!-- /.wrapperContainer -->

<?php //Verificar si el mapa está seteado o no
	 if( exist_map() ) : ?> <div id="canvas-map"></div>

<?php else: ?>
	
	<div class="wrapperContainer">

		<div class="alert alert-danger" role="alert">
		  <h4 class="alert-heading"> Ops!</h4>
		  <p> Oh disculpe nuestro mapa de ubicación se encuentra en mantenimiento </p>
		  <p class="m-b-0"> Le invitamos a recorrer otras secciones de la página.</p>
		</div>

	</div> <!-- /.wrapperContainer -->

	<br /><br /><br />

<?php endif; ?>	



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


<!-- Script Google Mapa -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<?php //Verificar si el mapa está seteado o no
	  if( exist_map() ) : ?>

	<script type="text/javascript">	
		<?php  
			$lat = $options['theme_lat_coord'];
			$lng = $options['theme_long_coord'];
			$zoom_mapa = isset( $options['theme_zoom_mapa'] ) && !empty( $options['theme_zoom_mapa'] ) ? $options['theme_zoom_mapa'] : 16;
		?>
	    var map;
	    var lat = <?= $lat ?>;
	    var lng = <?= $lng ?>;
	    function initialize() {
	      //crear mapa
	      map = new google.maps.Map(document.getElementById('canvas-map'), {
	        center: {lat: lat, lng: lng},
	        zoom  : <?= $zoom_mapa; ?>,
	      });
	      //infowindow
	      <?php  
	      	$default_markup = "";
	      	if ( isset($options['theme_text_markup_map']) and !empty($options['theme_text_markup_map']) ) :
	      		$contenido_markup = trim( $options['theme_text_markup_map'] );
	      		$contenido_markup = !empty($contenido_markup) ? apply_filters("the_content" , $options['theme_text_markup_map']  ) : $default_markup;
	      	else:
	      		$contenido_markup = $default_markup;
	      	endif;
	      ?>
	      var contenido_markup = <?= json_encode( $contenido_markup ) ?>;
	      var infowindow  = new google.maps.InfoWindow({
	        content: contenido_markup
	      });
	      //icono
	      //var icono = "<?= IMAGES ?>/icon/contacto_icono_mapa.jpg";
	      //crear marcador
	      marker = new google.maps.Marker({
	        map      : map,
	        draggable: false,
	        animation: google.maps.Animation.DROP,
	        position : {lat: lat, lng: lng},
	        title    : "<?php _e(bloginfo('name') , LANG )?>",
	        //icon     : "<?= IMAGES . '/icon/icon_map.png' ?>",
	      });
	      //marker.addListener('click', toggleBounce);
	      marker.addListener('click', function() {
	        infowindow.open( map, marker);
	      });
	    }
	    google.maps.event.addDomListener(window, "load", initialize);
	</script>

<?php endif; ?>


<!-- Footer -->
<?php get_footer(); ?>