<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'it-site' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         's1ei*G|O)6CQ(%g7qyzNa}KL/BC%R(.l<9SI1:*LBsiGv.tmU$BLjtcZqrz(&Vsx' );
define( 'SECURE_AUTH_KEY',  '&_}m|fu5B+mW&d@K|9! VO.^*fkCcA0qyps(t+|cpxDjgpRLuf$&sAM][Xv|/3cc' );
define( 'LOGGED_IN_KEY',    'Dh}jBH(<N+wfvb!}@ewKg:dP %$WIeohFfrx1GQ<9Gb<Rv@qiZB<O7&o&HwhK$ZG' );
define( 'NONCE_KEY',        'GEmi<gCk75RWoMdUWHI 2e3rbEJ>b?}t.TfB<MG^M),JL 44PTdw*NZm@r0QKe:3' );
define( 'AUTH_SALT',        '*]L#u5@NCwf,$CoE%+H$~sdhhD*%IRdZ7YMe$6d9g+}3)gL%RwCNAefpPn?ktE,~' );
define( 'SECURE_AUTH_SALT', '8IdvN-Gy15-~PMVmu`mDEW_R5s]Chn13]c;V.>7b>T_|ALW!ed*)+ln]WcIpuv`!' );
define( 'LOGGED_IN_SALT',   '#bFkEI8B6-jYi>8|Cg1IH/(+cHy>$PK3[/mgKY-O8@_iG~,u9`!>UhRW+DqLt;T3' );
define( 'NONCE_SALT',       'HH3,/d^l1d 1AQ9ahC4}PB|I 5R,C>rz-s0E:!j|6EOkU!?blavgeTijgn9Tt/4A' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

define('WP_CACHE', false);
