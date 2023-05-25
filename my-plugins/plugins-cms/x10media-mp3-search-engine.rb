Plugin.define do
name "X10media-MP3-Search-Engine"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "X10media MP3 search engine"
website "http://www.x10media.com/mp3-script.php"
dorks [
'"powered by x10media.com a MP3 Search Script"',
'"This search engine is in no way intended for illegal downloads. "'
]
matches [
{:text=>"<title>x10media Mp3 Search Engine</title>"},
{:text=>'	<meta name="contributor" content="X10Media"/>', :certainty=>75},
{:text=>'	<meta name="copyright" content="X10Media"/>', :certainty=>75},
{:text=>'Cannot connect to the database. Possibly, the X10Media Mp3 Search engine is not installed. Click <a href="install/">here</a>, to install it.'},
{:text=>'Powered by <a href="http://www.x10media.com">x10media.com</a> a <a href="http://www.x10media.com/mp3-script.php">MP3 Search Script</a>'},
{:version=>/<meta name="dc\.publisher" content="x10media`s Mp3 Search Engine V\.([\d\.]+)"\/>/},
{:version=>/<meta name="dc\.rights" content="x10media`s Mp3 Search Engine V\.([\d\.]+)"\/>/},
{:version=>/<meta name="owner" content="x10media`s Mp3 Search Engine V\.([\d\.]+)"\/>/},
{:version=>/<meta name="publisher" content="x10media`s Mp3 Search Engine V\.([\d\.]+)"\/>/},
{:version=>/<title>x10media`s Mp3 Search Engine V\.([\d\.]+)[\ Installer]*<\/title>/},
]
end
