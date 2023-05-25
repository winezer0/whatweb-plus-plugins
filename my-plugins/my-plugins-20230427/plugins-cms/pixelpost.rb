Plugin.define do
name "PixelPost"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Pixelpost is an open-source, standards-compliant, multi-lingual, fully extensible photoblog application for the web. Requirements: PHP 4.3 or greater (w/ GD-lib) and MySQL 3.23.58 or greater"
website "http://www.pixelpost.org/"
dorks [
'"powered by pixelpost"'
]
matches [
{:regexp=>/[Pp]owered by <a href="http:\/\/www.pixelpost.org[\/]?"[\s]*(title="Powered by Pixelpost")?>[Pp]ixel[Pp]ost</},
{:text=>'Powered by <a onclick="window.open(this.href); return false;" href="http://pixelpost.org/" title="Pixelpost">Pixelpost</a>'},
]
end
