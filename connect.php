<?php

/*============================================================================================================
  DATABASE CONNECTION PARAMETERS
  ==============================

  DO NOT edit the values in capitals, these are system constants.
  Edit the values on the right ONLY. Examples:

  define('DB_HOST', 'localhost');
  define('DB_USER', 'abc123');

  Important: The table prefix is for people with only a single database. If you aren`t bothered
  about the prefix, do NOT comment it out. Leave it blank if no prefix is required.

==============================================================================================================*/

define('DB_HOST', (getenv('MM_DB_HOST') ?: 'Database host goes here..'));
define('DB_USER', (getenv('MM_DB_USER') ?: 'Username goes here..'));
define('DB_PASS', (getenv('MM_DB_PASS') ?: 'User pass goes here..'));
define('DB_NAME', (getenv('MM_DB_NAME') ?: 'Database name goes here..'));
define('DB_PREFIX', 'mm_');

// Character set..
// https://dev.mysql.com/doc/refman/5.7/en/charset.html
define('DB_CHAR_SET', 'utf8');

// Locale
// http://dev.mysql.com/doc/refman/5.0/en/locale-support.html
define('DB_LOCALE', 'en_GB');

// Timezone
// https://dev.mysql.com/doc/refman/5.5/en/time-zone-support.html
/* This should not be changed unless you have issues where MySQL date filtering isn`t returning
   the expected results. This offset should correspond to the timezone set in your settings.

   This can be totally deactivated by entering a blank value.*/
define('DB_TIMEZONE', '+00:00');

/*============================================================================================================
  SECRET KEY / SALT
  ==================

  Specify your own unique secret key. This is for security and helps to add an additional layer of
  security to cookies, session cookies and login passwords. The longer and more complex the better.

  This should ideally be a mix of random numbers, letters and special characters.

  Optionally you can use the MSWorld secret key service to generate a random key:
  https://www.maianscriptworld.co.uk/services/keys/

  [!] You can change this at any point in time to invalidate all existing login credentials (if applicable).

============================================================================================================*/

define('SECRET_KEY', 'maian-music-system');

?>
