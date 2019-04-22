<?php get_header(); ?>


	<div class="container">

		<div class="title">
			<h4><?php the_title(); ?><h4>
		</div>


		<div class="generic-content">
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
