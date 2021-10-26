<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
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
define( 'DB_NAME', 'ravkoo_new_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'ArWx(9a+<||xaM_7mo(jm|tGA%#xH0/4$/u=hn5h^y;%N:ZH>pIYvAdC/O]Z^Cc@' );
define( 'SECURE_AUTH_KEY',  'mEPiWbP/FNxA3O<#6@2BkD73&yEAXP<PS2tk{l6-t-x}o3>1S.HTX#Nv<~e <$GQ' );
define( 'LOGGED_IN_KEY',    '=W?/].iqQgA]p 9M0<4lfeb02MH}%(q}V+*}ZkzIefq0:=SXGG:*xfHJ15x:9Jm[' );
define( 'NONCE_KEY',        '`bVfl_:3jxj3t9A5k4uCfDIe.^;d&YJ`k?b|6/XZaN5a9cKI*Nh;lg/vzEqWcsq)' );
define( 'AUTH_SALT',        'I>|eF>}$Cr<#a/-xA({|[{N/pO8 G{{ ^QPHg>oys8m.61#){%saR/=bjme!Q A6' );
define( 'SECURE_AUTH_SALT', 't.0Gsllij[eD3@kS;b.pjz35jrf|4$^6:=t{hpwti[Q}Pkwu9%GC6=eL@X,s]m h' );
define( 'LOGGED_IN_SALT',   ' ?{=%/}<mXz=PB>$%fK6S!HC3I3fUa(`?_;h`1%kVXmm%ctZqk*VWbLwcMZ5|YUY' );
define( 'NONCE_SALT',       'W:1j?Er1#,G]#f2tC}l/Yyr{8[!S~i}czajsN+VA&+9E:t9WDPiF5}W4#@F}^$|p' );

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
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
