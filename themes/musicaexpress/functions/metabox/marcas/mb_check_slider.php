<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** las marcas si se encontrarán en el slider o no.
**/

/*|-------------------------------------------------------------------------|*/
/*|--------------   METABOX DE CHECK MARCAS PARA SLIDER  --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_marcas_check_slider' );

//llamar funcion 
function cd_mb_marcas_check_slider()
{	
	$array_custom_types = array('type-marcas');

	//Solo en productos
	add_meta_box( 'mb-marcas-check-slider', 'Selección para Carousel', 'cd_mb_marcas_check_slider_cb', $array_custom_types , 'side', 'high' );
}

//customizar box
function cd_mb_marcas_check_slider_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

    $values    = get_post_custom( $post->ID );
    $checked   = isset( $values['mb_marcas_check_slider'] ) ? $values['mb_marcas_check_slider'][0] : 'off';


	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    ?>
        <input type="checkbox" name="mb_marcas_check_slider" <?php checked( 'on' , $checked ) ?> /> <?= __('Incluir en Carousel',LANG); ?>
        <br>

    <?php    
}

//guardar la data
add_action( 'save_post', 'cd_mb_marcas_check_slider_save' );

function cd_mb_marcas_check_slider_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if ( !current_user_can( 'edit_post', $post_id ) ) return;
     
    // Make sure your data is set before trying to save it
   $chk = isset( $_POST['mb_marcas_check_slider'] ) && $_POST['mb_marcas_check_slider'] ? 'on' : 'off';

    update_post_meta( $post_id, 'mb_marcas_check_slider', $chk );

}