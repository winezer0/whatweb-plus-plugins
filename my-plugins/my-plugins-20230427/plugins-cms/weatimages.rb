Plugin.define do
name "Weatimages"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Weatimages is very easy to use program that allows you to organize powerful web-based photo albums on your website in a minimal time. To publish photo album you just need to put one file from Weatimages distributive to a separate website directory containing your photos or folders (which become sub-albums) with your photos."
website "http://nazarkin.name/projects/weatimages/"
matches [
{:text=>'<div align="center" class="weatimages_toppest_navig" style="text-decoration:underline;">'},
{:text=>'<meta name="Generator" content="Weatimages"/>'},
{:text=>'Powered by <a href="http://nazarkin.name/projects/weatimages/">Weatimages</a>'},
]
end
