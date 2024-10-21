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
/** The name of the  for WordPress */
define( 'DB_NAME', getenv('db1_name') );

/** Database username */
define( 'DB_USER', getenv('db1_user') );

/** Database password */
define( 'DB_PASSWORD', getenv('db1_pwd') );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating  tables. */
define( 'DB_CHARSET', 'utf8' );

/** The  collate type. Don't change this if in doubt. */
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
define('AUTH_KEY',         '{{g7q4npR@]g{|)1/IY&=+!Z$.R5R$&(h)Bbly-.:hQP~h|XOtO2U&6xMJq7=-S;');
define('SECURE_AUTH_KEY',  '7D-F/AU9gt-+3N|uok|:*R[qi6RWRNh9I/ScM!MWB0V@[<N%xVB& zRL!4UCaY;l');
define('LOGGED_IN_KEY',    'XGen7=K8{V$.]QI)s;rTr(L#BV|tqc9rDQ|VMPC?x[h])u+f3wMkA/ofVyFRr3-b');
define('NONCE_KEY',        '{ToxnX)AEjM~DF?uyrt;X*23uRM).RuACk>I%QzmY.|8_=$+s@%KSd=)PHl*$$3N');
define('AUTH_SALT',        'qe-07BP`dG~])+$(/lBT|4XgSjq%; R<wy~`:yL>Y+I<sJEFauwopK-)0}QIHFvY');
define('SECURE_AUTH_SALT', 'K#qJ.n0O:-]UlNz359l5CdIU9e[Ofqbm3iIn%e5D@?/,nap~JU~r3RIek{l5N~aY');
define('LOGGED_IN_SALT',   'l@dHx2^w=bQM=0n8wq57Na?evI0T%6ZkEQ15?qFDv/u/WfhvW[ >zcC%}TdW4-H-');
define('NONCE_SALT',       '`Mf)Kths%2<&a`S_a0yM:I10|cA9Hso=yW2m5FA{|_T:t!f?>%8Nt^q*RR|j!b6;');

/**#@-*/

/**
 * WordPress  table prefix.
 *
 * You can have multiple installations in one  if you give each
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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
