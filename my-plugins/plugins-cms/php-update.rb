Plugin.define do
name "PHP-Update"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "Open-source Content Management System. Homepage used to be http://www.php-update.co.uk"
dorks [
'"powered by PHP-Update"'
]
matches [
{:regexp=>/>Powered by PHP-Update<\/a>/i},
{:regexp=>/Powered by <a href=[^>]*http:\/\/www.php-update.co.uk[^>]*>PHP[\ \-]*Update<\/a>/},
{:text=>'<a href="http://www.php-update.co.uk">Powered by PHP-Update </a>'},
{:text=>'Powered by <a href="http://www.php-update.co.uk" target="_blank">PHP-Update</a>'},
]
end