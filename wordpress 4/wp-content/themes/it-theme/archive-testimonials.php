<?php get_header(); ?>

<div>
	<div class="img-container">
		<img src="<?php echo get_theme_file_uri('./images/banner/testimonials/testimonials-background-1.png'); ?>">
		<div class="centered">what our<br />clients say</div>
	</div>
</div>


<div class="container">
	<?php
 		while(have_posts()){
			the_post(); ?>
			<div class="testimonial-content">
				<div class="testimonial-value">
					<h5><?php the_title(); ?></h5>
					<p><?php the_content(); ?></p>
				</div>
			</div>
		<?php }
		echo paginate_links(); ?>

</div>









<?php get_footer(); ?>
