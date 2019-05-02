<?php get_header(); ?>

<!-- banner -->

<div>
	<div class="partnerships-img-container">
		<img src="<?php echo get_theme_file_uri('./images/banner/testimonials/testimonials-background-1.png'); ?>">
		<div class="partnerships-img-text-centered">Partners We<br />Work With</div>
	</div>
</div>

<!-- main information -->

<div class="container">
	<?php
 		while(have_posts()){
			the_post(); ?>
			<div class="row padding">
				<div class="col-md-4 offset-md-1">
					<?php the_post_thumbnail('medium'); ?>
				</div>
				<div class="col-md-6">
					<h5><?php the_title(); ?></h5>
					<p><?php the_content(); ?></p>
				</div>
			</div>
		<?php }
		echo paginate_links(); ?>

</div>

<?php get_footer(); ?>
