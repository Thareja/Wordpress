# Wordpress
Wordpress Script to set permissions recursively

The script does what is listed here:


File Permissions #File Permissions
Some neat features of WordPress come from allowing various files to be writable by the web server. However, allowing write access to your files is potentially dangerous, particularly in a shared hosting environment.

It is best to lock down your file permissions as much as possible and to loosen those restrictions on the occasions that you need to allow write access, or to create specific folders with less restrictions for the purpose of doing things like uploading files.

Here is one possible permission scheme.

All files should be owned by your user account, and should be writable by you. Any file that needs write access from WordPress should be writable by the web server, if your hosting set up requires it, that may mean those files need to be group-owned by the user account used by the web server process.

/

The root WordPress directory: all files should be writable only by your user account, except .htaccess if you want WordPress to automatically generate rewrite rules for you.

/wp-admin/

The WordPress administration area: all files should be writable only by your user account.

/wp-includes/

The bulk of WordPress application logic: all files should be writable only by your user account.

/wp-content/

User-supplied content: intended to be writable by your user account and the web server process.

Within /wp-content/ you will find:

/wp-content/themes/

Theme files. If you want to use the built-in theme editor, all files need to be writable by the web server process. If you do not want to use the built-in theme editor, all files can be writable only by your user account.

/wp-content/plugins/

Plugin files: all files should be writable only by your user account.

Other directories that may be present with /wp-content/ should be documented by whichever plugin or theme requires them. Permissions may vary.



Changing file permissions #Changing file permissions
If you have shell access to your server, you can change file permissions recursively with the following command:

For Directories:

find /path/to/your/wordpress/install/ -type d -exec chmod 755 {} \;
For Files:

find /path/to/your/wordpress/install/ -type f -exec chmod 644 {} \;

Full article on how to Harden Wordpress can be found here: https://wordpress.org/support/article/hardening-wordpress/

