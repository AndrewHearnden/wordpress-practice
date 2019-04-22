<?php /* Template Name: contact */ ?>

<?php get_header(); ?>

<div class="container">

	<div class="title title-text">
		<h2><?php the_title(); ?><h2>
	</div>

	<div>

		<div>
			<div class="row">

				<div class="col-md-4">
					<div class="contact-img">
						<img src="<?php echo get_theme_file_uri('./images/sales.png'); ?>">
					</div>
					<div class="contact-text">
						<h3>Sales Enquiry:</h3>
						<h4>01234567891</h4>
						<p>Lines Open Mon-Fri 9am-5pm</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="contact-img">
						<img src="<?php echo get_theme_file_uri('./images/support.png'); ?>">
					</div>
					<div class="contact-text">
						<h3>Customer Support:</h3>
						<h4>01234567892</h4>
						<p>Lines Open Mon-Fri 7am-10pm</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="contact-img">
						<img src="<?php echo get_theme_file_uri('./images/support.png'); ?>">
					</div>
					<div class="contact-text">
						<h3>Support Ticket:</h3>
						<h4><a>support@itcorp.com</a></h4>
						<p>Lines Open Mon-Fri 7am-10pm</p>
					</div>
				</div>

			</div>
		</div>

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

	<div>
		<form class="col-md-8 offset-md-2">
			<div class="form-group">
				<label>Full Name</label>
				<input type="email" class="form-control" placeholder="">
			</div>

			<div class="form-group">
				<label>Comapny Name</label>
				<input type="email" class="form-control" placeholder="">
			</div>

			<div class="form-group">
				<label>Email Address</label>
				<input type="email" class="form-control" placeholder="">
			</div>

			<div class="form-group">
				<label>Contact Number</label>
				<input type="email" class="form-control" placeholder="">
			</div>

			<div class="form-group">
				<label>Message</label>
				<textarea class="form-control"></textarea>
			</div>

			<button type="submit" class="btn btn-primary col-md-12">Submit</button>

		</form>


	</div>





</div>

<?php get_footer(); ?>
