<?php  
/**
** Metabox que agregar un campo personalizado para todos 
** los productos setea campos de destacados y oferta
**/

/*|-------------------------------------------------------------------------|*/
/*|--------------   METABOX DE DESTACADOS Y OFERTAS  --------------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_mb_product_fields' );

//llamar funcion 
function cd_mb_product_fields()
{	
	$array_custom_types = array('type_instruments');

	//Solo en productos
	add_meta_box( 'mb-product-fields', 'Selección Destacado y Oferta', 'cd_mb_product_featured_cb', $array_custom_types , 'side', 'high' );
}

//customizar box
function cd_mb_product_featured_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

    $values    = get_post_custom( $post->ID );
    $features  = isset( $values['mb_product_featured'] ) ? $values['mb_product_featured'][0] : '';
    $features  = unserialize($features); 

    /*
     * Variables Internas 
     */
    $featured = isset($features['featured']) ? $features['featured'] : '';
    $offer    = isset($features['offer']) ? $features['offer'] : '';


	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    ?>
        <input type="checkbox" name="mb_product_featured[featured]" value="featured" <?php checked( 'featured' , $featured ) ?> /> <?= __('Destacado',LANG); ?>
        <br>

        <input type="checkbox" name="mb_product_featured[offer]" value="offer" <?php checked( 'offer' , $offer ) ?> /> <?= __('Oferta',LANG); ?>
        <br>

    <?php    
}
//guardar la data
add_action( 'save_post', 'cd_mb_product_featured_save' );

function cd_mb_product_featured_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if ( !current_user_can( 'edit_post', $post_id ) ) return;
     
    // Make sure your data is set before trying to save it
    if( isset($_POST['mb_product_featured']) ) :
        update_post_meta( $post_id, 'mb_product_featured' , $_POST['mb_product_featured'] );
    else: 
        update_post_meta( $post_id, 'mb_product_featured' , '' );
    endif;

}