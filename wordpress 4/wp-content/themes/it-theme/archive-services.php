<?php get_header(); ?>



<div class="container">
	<?php
 		while(have_posts()){
			the_post(); ?>
			<div>
				<div>
					<?php the_post_thumbnail('medium'); ?>
				</div>
				<div>
					<h5><?php the_title(); ?></h5>
					<p><?php the_content(); ?></p>
				</div>
			</div>
		<?php }
		echo paginate_links(); ?>

</div>









<?php get_footer(); ?>
