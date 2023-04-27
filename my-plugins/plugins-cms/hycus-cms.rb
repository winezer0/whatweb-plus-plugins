Plugin.define do
name "Hycus-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "India's first CMS. Free and open-source PHP based CMS."
website "http://www.hycus.com/"
dorks [
'"powered by Hycus CMS"'
]
matches [
{:text=>'<meta name="generator" content="Hycus - Open Source PHP Based Content Management" />'},
{:text=>'Powered By <a href="http://www.hycus.com" target="_blank" >Hycus-CMS</a>. Developed By <a href="http://www.hycus.com" target="_blank" >Hycus Team</a>.'},
{:text=>'Powered By <a href="http://www.hycus.com'},
{:text=>'content="Hycus'},
]
end
