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

/******************************************************************/
/**- SLIDER HOME **/
/******************************************************************/

/**[ INCLUIR METABOX DE REVOLUTION EFFECT ]**/
if( stream_resolve_include_path('metabox/slider-home/mb_revolution_slider.php') ):
	include("metabox/slider-home/mb_revolution_slider.php");
endif;
