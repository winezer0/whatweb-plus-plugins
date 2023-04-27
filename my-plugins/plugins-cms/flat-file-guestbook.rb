Plugin.define do
name "Flat-File-Guestbook"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Flat File PHP Guestbook is designed to be lightweight, easy on the server, and simple to install. Requires PHP 4+."
website "http://www.advancebydesign.com/software/php-scripts-and-programmes/mail-and-feedback/php-flat-file-guestbook.html"
dorks [
'inurl:ffgb_admin.php "Please enter the administration area login information to manage the guestbook."'
]
matches [
{:text=>'<a href="ffgb_admin.php"><i>Manage this Guestbook</i></a>'},
{:text=>'<a href="guestbook.php">Return to the Guestbook</a><br>&nbsp;<br>'},
{:text=>'<link rel="stylesheet" type="text/css" href="ffgb_styles.css">'},
{:text=>'<td align="right"><input type="password" value="" name="ffgb_pass"></td></tr>'},
]
end
