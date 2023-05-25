Plugin.define do
name "PHP-CSL"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP-CSL: Code Snippet Library. PHP-CSL is an online application written in PHP which enables authorised users to store and categorise code snippets."
website "http://www.php-csl.com/"
dorks [
'"Powered by: PHP-CSL"'
]
matches [
{:text=>'<!-- Please note the credit message below is required if you want support -->'},
{:text=>'<meta name="description" content="PHP Code Snippet Library stores all your code for you for easy access, runs on any PHP platform and does not require a database... easy to install and full of features.">'},
{:version=>/<td align="right" class="hdr">Powered by: <a href="http:\/\/www\.php-csl\.com\/" class="foot" title="PHP-CSL">PHP-CSL V([^<]+)<\/a>&nbsp;<\/td>/},
]
end
