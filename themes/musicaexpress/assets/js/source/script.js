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
/*|----- FANCYBOX IMAGES - LIBRERIA FANCYBOX -----|*/
/*|----------------------------------------------------------------------|*/

function itemsFancybox()
{
	j("a.gallery-fancybox").fancybox({
		'overlayShow': false,
		'openEffect' : 'elastic',
		'closeEffect': 'elastic',
		'openSpeed'  : 300,
		'closeSpeed' : 300,
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
		 itemsFancybox();
		/*
		 * Llamar funcion customiza para animacion cuando se hace
		 * scroll
		 */
		scrollRevealElements();



	/*|- LIMITE ON READY  -----------------------------------------------*/
	});


/*|--LIMITE -------------------------------------------------------------|*/
})(jQuery);