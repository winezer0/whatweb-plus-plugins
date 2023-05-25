Plugin.define do
name "PHP-Live"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHP Live! enables live help and live customer support communication directly from your website."
website "http://www.phplivesupport.com/"
dorks [
'"powered by PHP Live!" -Vulnerability'
]
matches [
{:text=>'// image is NOT CACHED (Netscape problem).  keep this or bad things could happen'},
{:text=>'<!-- BEGIN PHP Live! Code, copyright 2001 OSI Codes -->'},
{:text=>'<!-- END PHP Live! Code, copyright 2001 OSI Codes -->'},
{:text=>'<!-- copyright OSI Codes Inc. http://www.osicodes.com [DO NOT DELETE] -->'},
{:text=>'<!-- copyright OSI Codes, http://www.osicodes.com [DO NOT DELETE] -->'},
{:text=>'<font color="#FF0000">[Configuration Error: config files not found!] Exiting'},
{:text=>'<title> Knowledge BASE (FAQ) </title>'},
{:version=>/	<div id="copyright">Powered by <a href='http:\/\/www.phplivesupport.com\/\?link' target='newwin'>PHP Live\!<\/a>  v([\d\.]+) &copy; OSI Codes Inc.<\/div>/},
]
end
