<?php get_header(); ?>

<!--
<div>
	<div class="services-img-container">
		<img src="<?php echo get_theme_file_uri('./images/banner/testimonials/testimonials-background-1.png'); ?>">
		<div class="services-img-text-centered ">Services<br />We Provide</div>
	</div>
</div>
-->


<div class="container">
	<div>
	<?php
 		while(have_posts()){
			the_post(); ?>

			<div>

				<div class="main-services-content-container">
	        <div class="main-services-thumbnail">
	           <?php the_post_thumbnail( array (100,100)); ?>
	        </div>
	        <div class="single-services-content">
	            <h5><?php the_title(); ?></h5>
	            <p><?php the_content();?></p>
	        </div>
	      </div>

			</div>
		<?php }
		echo paginate_links(); ?>

	</div>

</div>









<?php get_footer(); ?>
