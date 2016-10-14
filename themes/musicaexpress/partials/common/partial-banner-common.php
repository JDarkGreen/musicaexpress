<?php 
/*
 * Template Partial Contiene Banner 
 * Commun Para Páginas o Entradas
 */

/*
 * opciones de tema $options
 */
$email = isset($options['theme_email_text']) ? $options['theme_email_text'] : '';

?>

<section id="commonBannerPages">
	
	<!-- Wrapper de Contenido  -->
	<div class="wrapperContainer">

		<h2 class="title text-xs-center"><?= __('HAZ TU PEDIDO AHORA:',LANG); ?>
			
			<span> <?= $email ?></span>

		</h2> <!-- /. -->

	</div> <!-- /.pageWrapperLayout containerRelative -->
	
</section> <!-- /.commonBannerPages -->