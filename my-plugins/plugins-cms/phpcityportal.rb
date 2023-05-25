Plugin.define do
name "PHPCityportal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPCityportal - build your own business portal - Requires PHP and MySQL"
website "http://phpcityportal.com/"
dorks [
'"Powered by PHPCityPortal.com" inurl:"login.php"'
]
matches [
{:certainty=>75, :text=>'<meta name="author" content="Cr8Soft" />'},
{:text=>'<center><a href="http://phpcityportal.com">Powered by PHPCityPortal.com</a></center><p>'},
{:text=>'<center><a href="http://www.phpcityportal.com/index.php">Powered by PHPCityPortal.com</a></center>'},
{:text=>'<form id="frm_login_left" name="frm_login_left" action="includes/check_user.php" method="post">'},
{:text=>'<form id="frm_login_left" name="frm_login_left" action="includes/check_user.php.inc" method="post">'},
]
end
