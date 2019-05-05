<?php

/* Register CSS and Scripts */

function it_theme_scripts() {
	wp_enqueue_style('bootstrap-css', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css');
	wp_enqueue_script( 'bootstrap-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array('jquery'), '4.3.1', true );
	wp_enqueue_style( 'style', get_stylesheet_uri(), NULL, microtime());
}

add_action('wp_enqueue_scripts', 'it_theme_scripts');

/* Register Navbar */

function it_theme_nav() {
	register_nav_menu('headerMenu',('Header Navbar'));
}

add_action('init', 'it_theme_nav');

add_theme_support( 'post-thumbnails' );


/* taxonomy */

function category_service() {
	register_taxonomy_for_object_type( 'category', 'services' );
}

add_action( 'init', 'category_service' );


/* custom post type titles placeholders */

function wpb_change_title_text( $title ){
     $screen = get_current_screen();
     if  ( 'services' == $screen->post_type ) {
          $title = 'Enter Service Name';
     }
     return $title;
}
add_filter( 'enter_title_here', 'wpb_change_title_text' );
