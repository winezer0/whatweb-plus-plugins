Plugin.define do
name "phpVID"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpVID is a video sharing software or a video shating script and has all the features that are needed to run a successful video sharing website like youtube.com."
website "http://www.vastal.com/phpvid-the-video-sharing-software.html"
dorks [
'"Powered By phpVID"'
]
matches [
{:text=>"<div align=\"center\" class='powered_by_a'>Powered By <a href='http://www.vastal.com/' target='_blank' class='powered_by_a'>"},
]
end
