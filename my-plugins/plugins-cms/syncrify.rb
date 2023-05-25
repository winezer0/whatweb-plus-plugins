Plugin.define do
name "Syncrify"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Syncrify is a fast incremental remote backup that backs up files using the HTTP protocol."
website "http://web.synametrics.com/Syncrify.htm"
matches [
{:md5=>"b5a85ee65b5fda5f8180e1f9c2ab0560"},
{:text=>"<p>Powered by <a href='http://www.syncrify.com' >Syncrify</a></p>"},
{:text=>'<meta NAME="Keywords" CONTENT="Syncrify - Fast incremental backup" />'},
{:url=>"/images/468x60.gif", :md5=>"2197210023deed6e71c704b6a27867a1"},
{:version=>/<h3>Syncrify - <small>Version: ([\d\.]+ - build [\d]+)<\/small><\/h3>/},
{:version=>/<title>[\s]+Syncrify - Fast incremental backup - Version: ([\d\.]+ - build [\d]+) [\s]+<\/title>/},
]
end
