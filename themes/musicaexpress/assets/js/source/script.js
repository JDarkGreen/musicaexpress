'use strict';

var j = jQuery.noConflict();


/*|----------------------------------------------------------------------|*/
/*|-----  CAROUSEL HOME  LIBRERIA OWL CAROUSEL -----|*/
/*|----------------------------------------------------------------------|*/
function HomeCarousel()
{
	if( j("#carousel-home").length )
	{
		j("#carousel-home").revolution({
			sliderType  : "standard",
			sliderLayout: "auto",
			autoHeight  : "on",
			delay       : 9000,
			minHeight   : 280, 
			gridwidth   : 1348,
			gridheight  : 400,
			navigation : {
				arrows : { enable : true ,  hide_onleave: false, }
			}
    	}); 
	}
}

/*|----------------------------------------------------------------------|*/
/*|-----  CAROUSEL TEMPLATES - LIBRERIA OWL CAROUSEL -----|*/
/*|----------------------------------------------------------------------|*/
function customOwlCarousels()
{
	if( j(".js-carousel-gallery").length ){

		j(".js-carousel-gallery").each(function(){

			/* Carousel */
			var current = j(this);

			/* Valor de Items */
			var Items  = current.attr('data-items') !== null && typeof(current.attr('data-items') ) !== "undefined" ? current.attr('data-items') : 3;

			/* Valor de Items Responsive */
			var Itemsresponsive  = current.attr('data-items-responsive') !== "" && typeof(current.attr('data-items-responsive') ) !== "undefined" ? current.attr('data-items-responsive') : Items;

			/* Valor de Márgenes */
			var Margins = current.attr('data-margins') !== null && typeof(current.attr('data-margins') ) !== "undefined"  ? current.attr('data-margins') : 10;	

			/* Habilitar autoplay */
			var Autoplay = current.attr('data-autoplay') !== null && typeof( current.attr('data-autoplay') ) !== "undefined"  && current.attr('data-autoplay') !== "false" ? true : false;
			
			/* Habilitar time autoplay */
			var timeAutoplay = current.attr('data-timeautoplay') !== null && typeof( current.attr('data-timeautoplay') ) !== "undefined"  && current.attr('data-timeautoplay') !== "false" ? current.attr('data-timeautoplay') : 2500;

			/* Habilitar dots */
			var Dot = current.attr('data-dots') !== null && typeof( current.attr('data-dots') ) !== "undefined" && current.attr('data-dots') !== "false" ? true : false;

			/* Generar el carousel */
			current.owlCarousel({
				items          : parseInt( Items ),
				lazyLoad       : false,
				loop           : true,
				margin         : parseInt( Margins ),
				nav            : false,
				autoplay       : Autoplay,
				responsiveClass: true,
				mouseDrag      : true,
				autoplayTimeout: parseInt( timeAutoplay ),
				fluidSpeed     : 2000,
				smartSpeed     : 2000,
				dots           : Dot,
				responsive:{
			      	320:{
			            items: parseInt( Itemsresponsive )
			        },
			        650:{
			            items: parseInt( Items )
			        },
		    	}	
			});
		
		/* end each */
		});
	/* end conditional */
	}

	/* FLECHAS DE CAROUSEL */

	//prev carousel
	j(".js-carousel-prev").on('click',function(e){ 
		e.preventDefault();
		var slider = j(this).attr('data-slider');	
		j("#"+slider).trigger('prev.owl.carousel' , [900] );
	});

	//next carousel
	j(".js-carousel-next").on('click',function(e){ 
		e.preventDefault();
		var slider = j(this).attr('data-slider');	
		j("#"+slider).trigger('next.owl.carousel' , [900] );
	});

}



/*|----------------------------------------------------------------------|*/
/*|-----  SCROLLREVEAL - animación on scroll   -----|*/
/*|----------------------------------------------------------------------|*/
function scrollRevealElements()
{
	window.sr = ScrollReveal({ reset: true });

	// Customizing a reveal set
	sr.reveal('.scroll-animate' , { duration: 1200 } , 50 );

	//Perspective 
	sr.reveal('.sr-perpective', { 
		rotate  : { y: 65 },
		easing  : 'ease-in',
		delay   : 400,
		scale   : 0.9,
		reset   : false,
		duration: 1500,
	} , 50 );

	//RollIn
	sr.reveal('.sr-rollIn', { 
		rotate   : { x:0 , y:1 , z:-120 },
		delay    : 200,
		reset    : true,
		duration : 600,
	} , 50 );

	//LightSpeedIn
	sr.reveal('.sr-lightSpeedIn', { 
		easing   : 'ease-out',
		origin   : 'right',
		distance : '50px',
		scale    : 1,
		delay    : 200,
		reset    : true,
		duration : 1000,

	} , 50 );


}


/*|----------------------------------------------------------------------|*/
/*|-----  ENVIAR DATOS DE CONTACTO POR AJAX  -----|*/
/*|----------------------------------------------------------------------|*/
		
function sendDataFormularybyAjax( formulario )
{
	formulario.submit( function(e){

		e.preventDefault();
		//Subir el formulario mediante ajax
		j.post( url + '/email/enviar.php', 
		{ 
			name    : j("#input_name").val(),
			lastname: j("#input_lastname").val(),
			email   : j("#input_email").val(),
			phone   : j("#input_phone").val(),
			subject : j("#input_subject").val(),
			message : j("#input_message").val(),
			
		},function(data){

			alert( data );

			j("#input_name").val("");
			j("#input_lastname").val("");
			j("#input_email").val("");
			j("#input_phone").val("");
			j("input_subject").val("");
			j("#input_message").val("");

			window.location.reload(false);
		});			
	}); 
}



(function($){
/*|- LIMITE --------------------------------------------------------------|*/

	j(document).on('ready',function(){


		/*
		 * Llamar a funcion Home Carousel
		 */
		HomeCarousel();

		/*
		 * Llamar funcion customiza los OWL carouseles 
		 */
		 customOwlCarousels();

		/*
		 * Llamar funcion customiza para galeria fancybox
		 */
		j("a.gallery-fancybox").fancybox({
			'overlayShow': false,
			'openEffect' : 'elastic',
			'closeEffect': 'elastic',
			'openSpeed'  : 300,
			'closeSpeed' : 300,
		});	
		/*
		 * Llamar funcion customiza para animacion cuando se hace
		 * scroll
		 */
		scrollRevealElements();

		/*
		 * Formulario validador y ajax
		 */
		if( j('#form-contacto').length )
		{

			var formulario = j('#form-contacto');

			//validador parsley 
			formulario.parsley();

			//enviar por ajax
			sendDataFormularybyAjax( formulario );
		}



	/*|- LIMITE ON READY  -----------------------------------------------*/
	});


/*|--LIMITE -------------------------------------------------------------|*/
})(jQuery);