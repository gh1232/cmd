<?php
define('WP_USE_EXT_MYSQL', false);
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpdb' );
/** MySQL database username */
define( 'DB_USER', 'wpuser' );
/** MySQL database password */
define( 'DB_PASSWORD', 'eo' );
/** MySQL hostname */
define( 'DB_HOST', 'localhost' );
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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ']<=D*@kiZNkB7Zfu#?&le>|T/j#*IG^WCV_5S$HdSmI+bRX.T^}#-09ECw(5rID9');
define('SECURE_AUTH_KEY',  'dcYLW?}v%x[ +--smwhS~;G?k:=4x|_W;2e {=;eirRbL.HW;bokkeI~Xi=CLP92');
define('LOGGED_IN_KEY',    'K*K-dn=& L-z?v^n;n=|^!*R`fkA,s*vf77M*ZVQ~<cgeMwlaw *FggHH0`.=8rH');
define('NONCE_KEY',        'HWVOW6N4TuIJM?vWH~QYJ4k^P|kkr:%X50B[XM|23Z-N_tY[~./<g189rg@K.v[@');
define('AUTH_SALT',        'F|o{L@Do@^y.1F6$,-!*`L!hB)~4%Q4)w@1u3$)&XT>%#K2F$>y&jYjDWG-q$,R.');
define('SECURE_AUTH_SALT', 'P7)t4Sy?|6c]`(a/RT>B|74RyDvZlw}<bE-m*5?;Z]ykKkOy&mb7<lZ(tV|eL^;*');
define('LOGGED_IN_SALT',   ':3!j;e[ad9)LFgkBsB#jPj5|AJ.sb^Pm?1dUAY~^k*E0w;kL^N0M:&U1}T2Z6eB2');
define('NONCE_SALT',       'PSDLG5vJ0F,h|*?~?-z:*(MOBCkAU|D=ui,CFqfqOfAbI^6srb~#*)OM(6h4|g|w');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */

require_once ABSPATH . 'wp-settings.php';



