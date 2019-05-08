<?php get_header(); ?>

	<div>
		<div class="partnerships-img-container">
			<img src="<?php echo get_theme_file_uri('./images/banner/testimonials/testimonials-background-1.png'); ?>">
			<div class="partnerships-img-text-centered">Welcome To<br />The Blog</div>
		</div>
	</div>


	<div class="container">

		<div>

			<div class="title">
				<h4><?php the_title(); ?><h4>
			</div>

			<div>
				<p>Posted <?php the_time('n.j.y'); ?></p>
			</div>

		</div>


		<div>
			<?php
				if (have_posts()):
  				while (have_posts()) : the_post();
    		the_content();
  				endwhile;
				else:
  				echo '<p>Sorry, no posts matched your criteria.</p>';
				endif;
			?>
		</div>

	</div>




<?php get_footer(); ?>
