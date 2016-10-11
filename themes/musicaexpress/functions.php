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



/*******************************************************************/
/* 	Archivos de Condiguración en el Tema  */
/*******************************************************************/

/*--------------------------------------------
 * Registrar Menus
*--------------------------------------------*/
if( file_exists('functions/register-menu.php') ):
  include('functions/register-menu.php');
endif;

/*---------------------------------------------
/* Agregando nuevos tipos de post
*--------------------------------------------*/
if( file_exists('functions/register-posts-type.php') ):
  include('functions/register-posts-type.php');
endif;

/*---------------------------------------------
/* Registrar Metabox
*---------------------------------------------*/

if( file_exists('functions/register-metabox.php') ):
  include('functions/register-metabox.php');
endif;



