<?php get_header(); ?>

<div>
	<div class="services-img-container">
		<img src="<?php echo get_theme_file_uri('./images/banner/testimonials/testimonials-background-1.png'); ?>">
		<div class="services-img-text-centered ">Services<br />We Provide</div>
	</div>
</div>


<div class="container">
	<div class="row">
	<?php
 		while(have_posts()){
			the_post(); ?>

			<div class="col-lg-3">

				<div class="main-services-content-container">
	        <div class="main-services-thumbnail">
	           <?php the_post_thumbnail( array (75,75)); ?>
	        </div>
	        <div class="main-services-content">
	            <h5><?php the_title(); ?></h5>
	            <p><?php echo wp_trim_words( get_the_content(), 25, '...' ); ?><a href="<?php the_permalink(); ?>">Read More</a></p>
	        </div>
	      </div>

			</div>
		<?php }
		echo paginate_links(); ?>

	</div>

</div>









<?php get_footer(); ?>
