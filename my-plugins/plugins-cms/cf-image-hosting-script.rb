Plugin.define do
name "CF-Image-Hosting-Script"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "A simple easy to use standalone image hosting script. This script aims to make it easy to setup image hosting site or just a site for you to share your photo with your friends,family,and collegues."
website "http://codefuture.co.uk/projects/imagehost/"
dorks [
'"powered by CF Image Hosting Script"'
]
matches [
{:text=>'<p>Powered By <a href="http://codefuture.co.uk/projects/imagehost/" title="Free PHP Image Hosting Script">CF Image Hosting script</a>'},
{:text=>'Powered By <a href="http://codefuture.co.uk/projects/imagehost/'},
{:version=>/<p>Powered By <a href="http[s]*:\/\/codefuture.co.uk\/projects\/imagehost[\d\.]*[^>]+>CF Image Hosting script ([\d\.]+)<\/a>/},
]
end
