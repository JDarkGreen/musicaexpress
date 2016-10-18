<?php
/**
 * La plantilla para mostrar el pie de página
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage
 * @since 
 */

/*
 * Extraer opciones del tema
 */
$options = get_option( 'theme_settings' );


?>

	<footer id="main-footer" class="site-footer" role="contentinfo">

		<!-- Wrapper Container  -->
		<div class="wrapperContainer">

			<div class="row">
				
				<!-- Logo -->
				<div class="col-xs-12 col-sm-3 mainFooter__item flexible align-items-center">
				
					<!-- Logo -->
					<h1 id="logoFooter">
						<a href="<?= site_url(); ?>" class="center-block">
							<img src="<?= IMAGES ?>/logo_footer.png" alt="<?= get_bloginfo('description') ?>" class="img-fluid m-x-auto" />
						</a>
					</h1> <!-- /.logoFooter -->

				</div> <!-- /.col-xs-12 col-sm-3 -->


				<!-- Datos -->
				<div class="col-xs-12 col-sm-6 mainFooter__item">
					
					<div class="content-item">

						<!-- Título -->
						<h3 class="title-footer text-uppercase text-xs-center text-sm-left"> <?= __('datos:',LANG); ?> </h3>

						<!-- Menú de Datos -->
						<ul id="mainFooter__list-data">

							<!-- Dirección -->
							<?php $address = isset($options['theme_address_text']) ? $options['theme_address_text'] : ''; ?>
							<li>
								<!-- Icono -->
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span> <?= $address; ?></span>
							</li> <!-- /. -->

							<!-- Teléfono -->
							<li class="">
								<!-- Icono -->
								<i class="fa fa-mobile icon-mobile" aria-hidden="true"></i>
								<span>
									<?php for ($i = 1; $i <= 2 ; $i++) 
									{ 
										$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';
										$split = $i !== 1 && $phone !== '' ? ' - ' : '';
										echo $split . $phone; 
									} 
									?>
								</span>
							</li> <!-- /. -->

							<!-- Email -->
							<?php $email = isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>
							<li>
								<!-- Icono -->
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<span> <?= $email; ?></span>
							</li> <!-- /. -->
							
						</ul> <!-- /#mainFooter__list-data -->
						
					</div> <!-- /.content-item --> 	

				</div> <!-- /.col-xs-12 col-sm-6 -->

				<!-- Redes Sociales -->
				<div class="col-xs-12 col-sm-3 mainFooter__item">

					<div class="content-item">

						<!-- Título -->
						<h3 class="title-footer text-uppercase text-xs-center text-sm-left"> <?= __('redes sociales:',LANG); ?> </h3>
				
						<?php  
							/*
							 * Incluir template redes sociales footer
							 */
							include(locate_template('partials/footer/social-links.php'));
						?>
							
						<!-- Espacio --> <br />

						<!-- Texto web -->
						<a id="text-web" href="<?= site_url(); ?>" class="text-uppercase text-xs-center d-block"> www.musicalexpress.com </a>

					</div> <!-- /.content-item -->
					
				</div> <!-- /.col-xs-12 col-sm-3 mainFooter__item -->

			</div> <!-- /.row -->			

		</div> <!-- /.wrapperContainer -->

	</footer><!-- .site-footer -->

</div><!-- .site -->

<script> var url = "<?= THEMEROOT ?>"; </script>

<?php wp_footer(); ?>

</body>
</html>
