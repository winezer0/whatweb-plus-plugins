Plugin.define do
name "phpdisk"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<meta name="Copyright" content="Powered by PHPDisk Team, V-Core File Edition'},
{:text=>'Powered by <a href="http://www.phpdisk.com/" target="_blank">PHPDisk Team</a> V-Core File Edition'},
{:text=>'Powered by PHPDisk'},
{:text=>'content="PHPDisk'},
{:url=>'/favicon.ico', :md5=>'297465a972da8844823361c6383ca127'},
{:url=>'/images/login_nav.gif', :md5=>'d0eb8623e5e69148659a03ef5bc8dbc9'},
{:url=>'/includes/js/common.js', :text=>'PHPDISK'},
{:url=>'/includes/js/tree.js', :text=>'PHPDISK'},
{:version=>/<meta name="generator" content="PHPDisk (.+)">/},
]
end