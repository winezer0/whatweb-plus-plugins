Plugin.define do
name "Macs-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Mac's CMS is a Open Source, Flat-File AJAX CMS built using PHP 5 and was tested and run's perfectly on both IIS and APACHE."
website "http://macs-framework.sourceforge.net/"
matches [
{:text=>"<title>Mac's CMS - Admin Login</title>"},
{:text=>'    <!-- START: This block contains all code that the framework generates -->'},
{:text=>'Site Powered by Mac\'s PHP MVC Framework <a href="http://macs-framework.sourceforge.net/" target="_blank">Framework of the future</a><br />'},
]
end
