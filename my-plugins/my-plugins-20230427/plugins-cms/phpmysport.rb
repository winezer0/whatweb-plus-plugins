Plugin.define do
name "phpMySport"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PhpMySport is an open source software designed for all sport clubs and leagues which want to easily create and manage their website."
website "phpmysport.sourceforge.net"
dorks [
'intext:"Powered by phpMySport" -intext'
]
matches [
{:text=>'/tpl_image/by_phpmysport.gif" border="0"'},
{:text=>'<a href="http://phpmysport.sourceforge.net" title="phpMySport">', :certainty=>25},
{:text=>'<div id="footer">R&eacute;alisation phpMySport'},
{:text=>'Powered by phpMySport <a href="http://phpmysport.sourceforge.net" title="phpMySport">'},
]
end
