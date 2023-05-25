Plugin.define do
name "Winamp-Web-Interface"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "web interface for winamp mp3 player"
website "http://www.winamp.com/"
matches [
{:ghdb=>'"About Winamp Web Interface" intitle:"Winamp Web Interface"', :certainty=>75},
{:text=>'<noframes><p><b>Frames are required for this site!<b></p><p>If no-frames operation is required, check the <b>No Frames Mode</b> box in the Options screen.</p>'},
{:version=>/<a href="JavaScript:about\(\)">About Winamp Web Interface v([\.\d]+)<\/a><\/h6><hr>/},
]
end
