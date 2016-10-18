<?php 
/*
 * Template for Formulary of Contact
 * Página de Contacto Formulario Template
 */
?>

<!-- Formulario -->
<form id="form-contacto" class="pageContacto__form" method="POST">

	<div class="row">
		
		<!-- Nombre -->
		<div class="pageContacto__form__group col-xs-12 col-sm-6">
			<label for="input_name" class="sr-only">Nombres </label>
			<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombres:', LANG ); ?>" required />
		</div> <!-- /.pageContacto__form__group -->
			
		<!-- Apellidos -->
		<div class="pageContacto__form__group col-xs-12 col-sm-6">
			<label for="input_lastname" class="sr-only">Nombres </label>
			<input type="text" id="input_lastname" name="input_lastname" placeholder="<?php _e( 'Apellidos:', LANG ); ?>" required />
		</div> <!-- /.pageContacto__form__group -->

	</div> <!-- /.row -->

	<!-- 2 item -->
	<div class="row">

		<!-- Email -->
		<div class="pageContacto__form__group col-xs-12 col-sm-6">
			<label for="input_email" class="sr-only">E-mail</label>
			<input type="email" id="input_email" name="input_email" placeholder="<?php _e( 'Email:', LANG ); ?>" data-parsley-trigger="change" required="" data-parsley-type-message="Escribe un email válido"/>
		</div> <!-- /.pageContacto__form__group -->	

		<!-- Teléfono -->
		<div class="pageContacto__form__group col-xs-12 col-sm-6">
			<label for="input_phone" class="sr-only">Teléfono</label>
			<input type="text" id="input_phone" name="input_phone" placeholder="Teléfono:" data-parsley-type='digits' data-parsley-type-message="Solo debe contener números" required="" />
		</div> <!-- /.pageContacto__form__group -->
		
	</div> <!-- /.row -->

	<!-- Asunto -->
	<div class="pageContacto__form__group">
		<label for="input_subject" class="sr-only">Asunto </label>
		<input type="text" id="input_subject" name="input_subject" placeholder="<?php _e( 'Asunto:', LANG ); ?>" required />
	</div> <!-- /.pageContacto__form__group -->
	
	<!-- Mensaje -->
	<div class="pageContacto__form__group">
		<label for="input_message" class="sr-only"> Mensaje</label>
		<textarea name="input_message" id="input_message" placeholder="<?php _e( 'Mensaje:', LANG ); ?>" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="500" data-parsley-minlength-message="Necesitas más de 20 caracteres" data-parsley-validation-threshold="10"></textarea>
	</div> <!-- /.pageContacto__form__group -->

	
	<!-- Botón Enviar Mensaje -->
	<button id="btnContacto" type="submit" class="text-uppercase">
	enviar
	</button>

</form> <!-- /#form-contacto -->