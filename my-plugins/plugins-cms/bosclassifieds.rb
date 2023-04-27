Plugin.define do
name "bosclassifieds"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The BosClassifieds Classified Ad System will allow your web site visitors to place their own classified ads to your web site into categories which you specify. All BosDev, Inc products require a web server running PHP version 4.10 or higher, MySQL 3.23 or higher, and the GD2 graphics library."
website "http://www.bosdev.com/bosclassifieds/"
dorks [
'"powered by BosClassifieds Classified Ads System"'
]
matches [
{:text=>'Powered by <a href="http://www.bosdev.com'},
{:text=>'Powered by <a href="http://www.bosdev.com/" target="_blank">BosClassifieds</a> <a href="http://www.bosdev.com/" target="_blank">Classified Ads</a> System<br>Copyright'},
{:text=>'content="BosClassifieds'},
{:version=>/  <meta name="generator" content="BosClassifieds ([\d\.]+) by BosDev">/},
]
end
