<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('db_name') );

/** Database username */
define( 'DB_USER', getenv('db_user') );

/** Database password */
define( 'DB_PASSWORD', getenv('db_pwd') );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '9Z0:]f_3s/bJI8Q%!|f(8Cz4ZCYr0O(QQ=g<e@@uL(5,eD]NiIB7p<MR$)nUP+k5');
define('SECURE_AUTH_KEY',  ',}^F}.8k|HG3?M+[bC}ndJnxGS|>*Wlqs{L|Xs,Y[l5,67Z_s+HpWx=|h,M=@&Qz');
define('LOGGED_IN_KEY',    'Vst CY(-#.*r~&Dxx|vY&(8_4M7Sk*2 @!>@T<U~5(<GWnbSNq<E^c*rs&%!mT9m');
define('NONCE_KEY',        '#G,+FWMyK;OEa~&}}MPf0rfv+t|?0R+_FUg6#6,YF)1,z99B :n?>,I%Bzxw ;;:');
define('AUTH_SALT',        '%Wd/(V;%>2|^Wjxsg,Q0:)}o*PnUwlN9CjGat)FK0Uz6Y:arzP~~r_DZLv_OA)Xp');
define('SECURE_AUTH_SALT', '<9xs+we>SnCaG~)pY7x/h4<;<zT`xiQ41z.r_j|-#qdWNm%CL_^xb79UNBb^Z1B0');
define('LOGGED_IN_SALT',   '+Y-Vi-hhZd4Ld+0G;eZBxVSH@$I%T-fs};NVXDq7N] pYg+{$LC4m#!$},=5()lX');
define('NONCE_SALT',       ':IVSypd/3:|* 8=MZNq;&)i`nL.QK:RfIPRWXzT8&URL&j;br#m]#f%FN.(=tntb');
/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
