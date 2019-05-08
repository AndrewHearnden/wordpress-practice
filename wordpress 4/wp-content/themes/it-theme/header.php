<!DOCTYPE html>

<html>

	<head>
		<?php wp_head(); ?>
	</head>

	<body <?php body_class(); ?> >

		<header>

			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="<?php echo site_url() ?>">
					<img src="<?php echo get_theme_file_uri('./images/itco-logo.svg'); ?>" width="30" height="30" class="d-inline-block align-top" alt="">
					IT Company
				</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav ml-auto">
			      <li <?php if (get_post_type() == 'services') echo 'class="nav-item"'; ?>>
			        <a class="nav-link" href="<?php echo get_post_type_archive_link('services'); ?>">Services</a>
			      </li>
			      <li <?php if (get_post_type() == 'partnerships') echo 'class="nav-item"'; ?>>
			        <a class="nav-link" href="<?php echo get_post_type_archive_link('partnerships'); ?>">Partnerships</a>
			      </li>
						<li <?php if (get_post_type() == 'testimonials') echo 'class="nav-item"'; ?>>
			        <a class="nav-link" href="<?php echo get_post_type_archive_link('testimonials'); ?>">Testimonials</a>
			      </li>
						<li class="nav-item">
			        <a class="nav-link" href="#">Blog</a>
			      </li>
						<li class="nav-item">
			        <a class="nav-link" href="#">Contact Us</a>
			      </li>
			    </ul>
			  </div>
			</nav>

		</header>
