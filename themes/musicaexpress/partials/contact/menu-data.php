<?php 
/*
 * Template Menú - Página Contacto
 * menú de datos
 */
?>

<ul id="menuContactData" class="">
	
	<!-- Telefonos -->
	<li>
		<!-- Icono -->
		<i class="fa fa-phone" aria-hidden="true"></i>
		<!-- Teléfonos -->
		<?php  
			for ( $i=1 ; $i <= 2  ; $i++ ) 
			{ 
				$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';
				$split = $i !== 1 && $phone !== '' ? ' / ' : '';
				
				echo $split . $phone;
			}
		?>
	</li>


	<!-- Celular -->
	<li>
		<!-- Icono -->
		<i class="fa fa-mobile icon-mobile" aria-hidden="true"></i>
		<!--  -->
		<?php  
			for ( $i=1 ; $i <= 2  ; $i++ ) 
			{ 
				$cellphone = isset($options['theme_cel_text_'.$i]) ? $options['theme_cel_text_'.$i] : '';
				$split = $i !== 1 && $cellphone !== '' ? ' / ' : '';
				
				echo $split . $cellphone;
			}
		?>
	</li>

	<!-- Email -->
	<?php if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ) : ?>
	<li>
		<!-- Icono -->
		<i class="fa fa-envelope" aria-hidden="true"></i>
		<!--  -->
		<span class="text-featured"> <?= $options['theme_email_text']; ?> </span>
	</li>
	<?php endif; ?>


</ul> <!-- / -->