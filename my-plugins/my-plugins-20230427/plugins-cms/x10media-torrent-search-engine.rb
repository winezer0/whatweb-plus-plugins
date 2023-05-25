Plugin.define do
name "X10media-Torrent-Search-Engine"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "X10 Torrent Script is a bittorrent search engine, users fill in a keyword and get access to 5 000 000 files for search."
website "http://www.x10media.com/torrent-search-engine-script/"
dorks [
'"This search engine is in no way intended for illegal downloads. "',
'"Powered by x10media Torrent Search Engine Script"'
]
matches [
{:text=>"<title>Torrent Search Engine Script</title>"},
{:text=>'	<meta name="contributor" content="X10Media"/>', :certainty=>75},
{:text=>'	<meta name="copyright" content="X10Media"/>', :certainty=>75},
{:text=>'Powered by <a href="http://www.x10media.com/torrent-search-engine-script/" target="_blank">x10media Torrent Search Engine Script</a>'},
{:text=>'This search engine is in no way intended for illegal downloads.', :certainty=>75},
]
end
