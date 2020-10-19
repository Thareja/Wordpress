#!/bin/sh
#
# This script configures WordPress file permissions based on recommendations
# from https://wordpress.org/support/article/hardening-wordpress/
#
# Author: Dhiraj Thareja
# Website: https://www.thareja.org
#

ROOT=/var/www/yourdomain.com/public_html #your wordpress site's root directory
if [ $# = 1 ];
then
WP_ROOT=$ROOT$1;

#reset to safe defaults

find ${WP_ROOT} -type d -exec chmod 755 {} \;
find ${WP_ROOT} -type f -exec chmod 644 {} \;

#secure WordPress configuration file
chmod 440 ${WP_ROOT}/wp-config.php

#secure .htaccess
chmod 444 ${WP_ROOT}/.htaccess
echo "Done: Permissions have been reset in folder $WP_ROOT";
else
echo "Please provide the WordPress directory relative to the root directory: $ROOT";
fi
view raw
