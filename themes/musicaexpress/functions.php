<?php
/**
 * Theme MUSICA EXPRESS funciones y definiciones
 *
 * Configurar el tema y proporciona algunas funciones auxiliares , que se utilizan en el
 * Tema como etiquetas de plantillas personalizadas . Otros están unidos a la acción y el filtro
 * Ganchos en WordPress para cambiar la funcionalidad básica .
 *
 * Cuando se utiliza un tema niño puede anular ciertas funciones (aquellos envueltos
 * En un function_exists ( ) llamada) definiéndolos por primera vez en su tema del niño
 * Archivo functions.php . archivo functions.php del tema de los niños está incluido antes
 * Archivo del tema de los padres , por lo que se utilizarían las funciones de temas niño.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 */

/**
 * Opciones del tema
 */

$options = get_option("theme_settings");


/**
 * Definiendo Constantes
 */
require('functions/constants.php');


/******************************************************************/
/* 	Archivos de Condiguración en el Administrador */
/*******************************************************************/

/*----------------------------------------------------------------------
 * Setear scripts archvos css y javascript de la administracion del tema
 *---------------------------------------------------------------------*/
//css
if( stream_resolve_include_path('admin/assets/custom-styles.php') ):
  require('admin/assets/custom-styles.php');
endif;

//javascript
if( stream_resolve_include_path('admin/assets/custom-scripts.php') ):
  require('admin/assets/custom-scripts.php');
endif;

/*------------------------------------------------------------------
 * Opciones del tema
 *-----------------------------------------------------------------*/
if( stream_resolve_include_path('admin/assets/custom-scripts.php') ):
  include('admin/theme-customizer-modal.php');
endif;


/*******************************************************************/
/* 	Archivos de Condiguración en el Tema  */
/*******************************************************************/

/*--------------------------------------------
 * Registrar Menus
*--------------------------------------------*/
if( stream_resolve_include_path('functions/register-menu.php') ):
  include('functions/register-menu.php');
endif;


/*---------------------------------------------
/* Agregando nuevos tipos de post
*--------------------------------------------*/
if( stream_resolve_include_path('functions/register-posts-type.php') ):
  include('functions/register-posts-type.php');
endif;


/*---------------------------------------------
/* Registrar nuevas Taxonomias
*--------------------------------------------*/
if( stream_resolve_include_path('functions/register-taxonomies.php') ):
  include('functions/register-taxonomies.php');
endif;

/*--------------------------------------------
/* Customizar Campos Taxonomias
*--------------------------------------------*/
if( stream_resolve_include_path('functions/taxonomy/custom-fields-taxonomies.php') ):
	include('functions/taxonomy/custom-fields-taxonomies.php');
endif;

/*---------------------------------------------
/* Registrar Metabox
*---------------------------------------------*/

if( file_exists('functions/register-metabox.php') ):
  include('functions/register-metabox.php');
endif;



