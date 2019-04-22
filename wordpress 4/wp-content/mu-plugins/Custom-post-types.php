<?php

function custom_post_types() {

	register_post_type('services', array(
		'supports' => array('title', 'editor', 'excerpt', 'thumbnail'),
		'rewrite' => array('slug' => 'services'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Services',
			'add_new_item' => 'Add New Service',
			'edit_item' => 'Edit Service Details',
			'all_items' => 'All Services',
			'singular_name' => 'Services'
		),
		'menu_icon' => 'dashicons-admin-tools'
	));

  register_post_type('partnerships', array(
    'supports' => array('title', 'editor', 'thumbnail'),
    'rewrite' => array('slug' => 'partnerships'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Partnerships',
      'add_new_item' => 'Add New Partner',
      'edit_item' => 'Edit Partner',
      'all_items' => 'All Partnerships',
      'singular_name' => 'Partnerships'
    ),
    'menu_icon' => 'dashicons-groups'
  ));

	register_post_type('testimonials', array(
    'supports' => array('title', 'editor', 'thumbnail'),
    'rewrite' => array('slug' => 'testimonials'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Testimonials',
      'add_new_item' => 'Add New Testimonial',
      'edit_item' => 'Edit Testimonial',
      'all_items' => 'All Testimonial',
      'singular_name' => 'Testimonials'
    ),
    'menu_icon' => 'dashicons-testimonial'
  ));

}

add_action('init', 'custom_post_types');
