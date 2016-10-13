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


(function($){
/*|- LIMITE --------------------------------------------------------------|*/

	j(document).on('ready',function(){


		/*
		 * Llamar a funcion Home Carousel
		 */
		HomeCarousel();



	/*|- LIMITE ON READY  -----------------------------------------------*/
	});


/*|--LIMITE -------------------------------------------------------------|*/
})(jQuery);