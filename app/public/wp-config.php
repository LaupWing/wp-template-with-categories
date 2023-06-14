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
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define('AUTH_KEY',         'XrED7yrtWJhm8r4ymfXQKKuYBk2tEVPd+z9iCMviVHMVLrL1W9+2aIh8DtICjTWILHgLf53+jONVAYKqscP5XA==');
define('SECURE_AUTH_KEY',  'sOUPEoaCSyWNrl9K+7rwRo3FAdvKsjzyraPOkl/JOiUCD6Avb4N14ARoOux3EpxIiyoh/VUR2iXlxCN6DjR3ig==');
define('LOGGED_IN_KEY',    'lNnyoVBq0IUYQllBV3PRATzpfqeO5Nz1h5SY7z49o7aXOT2JFDW8MtVP/3WlAfFVZleJTPYyPEBgiz1mWNfuhQ==');
define('NONCE_KEY',        'g/8eY0RX3jB5qxnl5YpsbzHBta9dE1l3RM89IGuGM7i3z6wLDXor8HRuuk3ckduGgyNOVEdCndEPLTrRpiUuiQ==');
define('AUTH_SALT',        'rDdALMTaxMnZbIUo4uZnDDvUoGe6TNC5k9BbGP4bpPEv9jXaiTN0Zi4K9mGfL0P+mGESXSfHRAWjiCn0lDlwxw==');
define('SECURE_AUTH_SALT', 'hZ6UvIXpbu34cNXOTztbqxNFl6By9pIFhm4a0n2AX+yVyfwJ8kN4aIvOtyJavQ+E22VZidFJKI8t7OKaKVivfw==');
define('LOGGED_IN_SALT',   'nqBJWCqTmhFYx+dnxuSIF1aipS/to5aJ1JVJALe8j9bTGhW8oHEZC3Cg8PRd75+vOJbxvz1NjwiNsvbp+e6zjw==');
define('NONCE_SALT',       'iwnBR3hp8ZJ21KJIROB4LpkYH17aKph9/xF6WeApJ/UGltMbZz3DkoDlwaqg6lK6PLv/gxR5za8aDHetbXdt3A==');


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
