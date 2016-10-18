<?php  
/*
 * Contiene los metabox que serán utilizados por sus respectivos 
 * tipos de post como post , páginas , etc.
 */


/*
 * Metabox de Orden
 */
if( stream_resolve_include_path('metabox/mb_order_tposts.php') ):
	include('metabox/mb_order_tposts.php');
endif;


/*****************************************************************/
/**- COMUNES **/

/******************************************************************/

/**[ INCLUIR METABOX DE BANNER DE PÁGINA ]**/
if( stream_resolve_include_path('metabox/common/mb_custom_banner.php') ):
	include("metabox/common/mb_custom_banner.php");
endif;

/**[ INCLUIR METABOX DE GALERÍA ]**/
if( stream_resolve_include_path('metabox/common/mb_custom_gallery.php') ):
	include("metabox/common/mb_custom_gallery.php");
endif;



/******************************************************************/
/**- SLIDER HOME **/
/******************************************************************/

/**[ INCLUIR METABOX DE REVOLUTION EFFECT ]**/
if( stream_resolve_include_path('metabox/slider-home/mb_revolution_slider.php') ):
	include("metabox/slider-home/mb_revolution_slider.php");
endif;

/******************************************************************/
/**- PRODUCTOS  **/
/******************************************************************/

/**[ INCLUIR METABOX DE DESTACADO Y OFERTA ]**/
if( stream_resolve_include_path('metabox/product/mb_featured_fields.php') ):
	include("metabox/product/mb_featured_fields.php");
endif;

/**[ INCLUIR METABOX DE PRECIO ]**/
if( stream_resolve_include_path('metabox/product/mb_price_product.php') ):
	include("metabox/product/mb_price_product.php");
endif;


/******************************************************************/
/**- MARCAS **/
/******************************************************************/

/**[ INCLUIR METABOX DE MARCAS PARA SLIDER  ]**/
if( stream_resolve_include_path('metabox/marcas/mb_check_slider.php') ):
	include('metabox/marcas/mb_check_slider.php');
endif;