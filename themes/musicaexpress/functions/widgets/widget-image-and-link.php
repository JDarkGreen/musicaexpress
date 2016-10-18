<?php 
/**************************************************************/
/* Widget muestra una imágen con un link adjunto */
/***************************************************************/

/*
 * Obtener los link de entradas y posts
 */
$args = array(
	'posts_per_page' => -1,
	'post_type'      => array('page','post','type_instruments'),
	'orderby'        => 'title',
	'post_status'    => 'publish',
	'order'          => 'ASC',
);

$allposts = get_posts( $args );



	class Imagen_and_Link_Widget extends WP_Widget {
	
		public function __construct() {
			parent::__construct(
				'image_and_link_w',
				'Image y Link',
				array('description' => __('Muestra una imágen cargada con su respectivo link', LANG ))
			); 
		}
		
		public function form($instance) {
			$defaults = array(
				'title'  => __('Imágen', LANG ),
				'w_img'  => '',
				'w_link' => '',
			);
			
			$instance = wp_parse_args((array) $instance, $defaults);
			
			?>
			<!-- The Title -->
			<p>
				<label for="<?= $this->get_field_id('title') ?>"><?php _e('Title:', LANG ); ?></label>
				<input type="text" class="widefat" id="<?= $this->get_field_id('title'); ?>" name="<?= $this->get_field_name('title'); ?>" value="<?php echo esc_attr($instance['title']); ?>" />
			</p>

			<!-- Imagen -->
			<p>
				<?php 
					//Id campo imagen
					$id_field_img    = $this->get_field_id('w_img'); 
					//Valor campo imagen
					$value_field_img = isset($instance['w_img']) ? $instance['w_img'] : '';
				?>

				<label for="<?php echo $this->get_field_id('w_img') ?>"><?php _e('Imágen:', LANG ); ?></label>

				<input type="hidden" class="widefat" id="<?= $id_field_img ?>" name="<?= $this->get_field_name('w_img'); ?>" value="<?= $value_field_img; ?>" />
			
				<!-- Contenedor Padre -->
				<div class="customize-img-container">

		            <!-- Boton Agregar Elemento -->
		            <button class="button button-primary js-add-custom-img" data-type="image" data-field-id="<?= $id_field_img ?>">
		                <?= empty($mb_featured_banner) ? 'Agregar Elemento' : 'Cambiar Elemento'; ?>
		            </button>  
		            
		            <!-- Espaciado -->
		            <div style="clear:both; height: 5px;"> </div>

		            <!-- Botón remover -->
		            <button class="button button-primary js-remove-custom-img" data-field-id="<?= $id_field_img ?>">
		                <?php _e( 'Remover Elemento' , LANG ); ?>
		            </button>

		            <!-- Contenedor Hijo -->
		            <div class="container-preview" style="background: rgba(0,0,0,.3); border: 1px dotted black; margin: 10px 0; text-align: center;">

		                <?php if(!empty($value_field_img)) : ?>
		                    <img src="<?= $value_field_img; ?>" alt="" width="100%" height="auto" />
		                <?php endif; ?>

		            </div>
	            
	        	</div> <!-- /.customize-img-container -->
			
			</p>

			<!-- Link -->
			<p>
				<?php  
					//Valor actual de link
					$current_link = isset($instance['w_link']) ? $instance['w_link'] : ''; 
				?>

				<label for="<?= $this->get_field_id('w_link') ?>"><?php _e('Link:', LANG ); ?></label>

				<select name="<?= $this->get_field_name('w_link'); ?>" id="<?= $this->get_field_id('w_link'); ?>">

					<option value="#" <?php selected( '#' , $current_link ) ?>  > 
						<?= 'Sin Link'; ?>
					</option>
					
					<?php global $allposts; ?>
					<?php foreach( $allposts as $tpost ) : ?>

						<option value="<?= get_permalink($tpost->ID); ?>" <?php selected( get_permalink($tpost->ID) , $current_link ) ?> > 
							<?= $tpost->post_title; ?>
						</option>

					<?php endforeach; ?>	
				
				</select> <!-- /. -->

			</p>
			
			<?php
		}
		
		public function update($new_instance, $old_instance) {
			$instance = $old_instance;
			
			// The Title
			$instance['title'] = strip_tags($new_instance['title']);
			
			// The Image
			$instance['w_img'] = $new_instance['w_img'];

			// The Link
			$instance['w_link'] = $new_instance['w_link'];
			
			return $instance;
		}
		
		public function widget($args, $instance) {
			extract($args);
			
			// Get the title and prepare it for display
			$title  = apply_filters('widget_title', $instance['title']);
			
			// Get the ad image
			$w_img = $instance['w_img'];

			// Get the ad link
			$w_link = $instance['w_link'];
			
			echo $before_widget; ?>
			
			<div class="widget-image-and-link">
			
				<?php 
				//Si tiene Link
				if( !empty($w_link) && $w_link !== '#' ): ?>
					
					<a href="<?= $w_link; ?>">
						<img src="<?= $w_img ?>" alt="<?= $title ?>" class="img-fluid d-block m-x-auto" />
					</a> <!-- /. -->
					
				<?php 
				//Si no hay link
				else: ?>

					<img src="<?= $w_img ?>" alt="<?= $title ?>" class="img-fluid d-block m-x-auto" />

				<?php endif;

				?>

			</div> <!-- /.widget-image-and-link -->

			<?php 
		
			echo $after_widget; 
		}
	}

	register_widget('Imagen_and_Link_Widget');

?>