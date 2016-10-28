<?php /**------ Plantilla Configuración del Tema ----------**/


/*------------------------------*
* SECCION TAXONOMÍAS REWRITE
*------------------------------*/
if( stream_resolve_include_path('template-fields/taxonomy-fields.php')) 
	include('template-fields/taxonomy-fields.php');

/*------------------------------*
* SECCION REDES SOCIALES
*------------------------------*/
if( stream_resolve_include_path('template-fields/social-fields.php')) 
	include('template-fields/social-fields.php');

/*------------------------------*
* SECCION PÁGINA HOME
*------------------------------*/
if( stream_resolve_include_path('template-fields/home-fields.php')) 
	include('template-fields/home-fields.php');

/*------------------------------*
* SECCION EMPRESA
*------------------------------*/
if( stream_resolve_include_path('template-fields/empresa-fields.php'))
	include('template-fields/empresa-fields.php');

/*------------------------------*
* SECCION CONTACTO
*------------------------------*/
if( stream_resolve_include_path('template-fields/contacto-fields.php'))
	include('template-fields/contacto-fields.php');

/*------------------------------*
* SECCION FOOTER
*------------------------------*/
if( stream_resolve_include_path('template-fields/footer-fields.php'))
	include('template-fields/footer-fields.php');


