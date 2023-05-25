Plugin.define do
name "AV-Arcade"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AV-Arcade. Requires PHP"
website "http://www.avscripts.net/avarcade/"
dorks [
'"powered by AV Arcade" -Vulnerability'
]
matches [
{:text=>'	  <!--MUST BE INCLUDED IN ALL TEMPLATES AND UNMODIFIED UNLESS YOU HAVE PAID FOR COPYRIGHT REMOVAL-->', :version=>"3.x"},
{:text=>'<!--MUST BE INCLUDED IN ALL TEMPLATES AND UNMODIFIED UNLESS YOU HAVE PAID FOR COPYRIGHT REMOVAL-->'},
{:text=>'<b><span class="copytext">Powered by <a href="http://www.avscripts.net/avarcade/">AV Arcade Free Edition</a> - Copyright 2006-2010 <a href="http://www.avscripts.net">AV Scripts</a></span></b>', :version=>"Free"},
{:text=>'<b><span class="copytext">Powered by <a href="http://www.avscripts.net/avarcade/">AV Arcade v3</a> - Copyright 2006-2008 <a href="http://www.avscripts.net">AV Scripts</a></span></b>', :version=>"3.x"},
{:text=>'Powered by <a href="http://www.avscripts.net/avarcade/">AV Arcade Pro</a> - Copyright <a href="http://www.avscripts.net">AV Scripts</a> 2006-2010 <a href="http://www.avscripts.net"></a>', :version=>"Pro"},
{:text=>'Powered by <a href="http://www.avscripts.net/avarcade/'},
]
end
