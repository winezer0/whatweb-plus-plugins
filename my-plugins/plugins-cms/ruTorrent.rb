Plugin.define do
name "rutorrent"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "ruTorrent is a front-end for the popular Bittorrent client rTorrent."
website "http://code.google.com/p/rutorrent/"
passive do
m=[]
m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="My ruTorrent web site"$/
m
end
matches [
{:ghdb=>'"powered by RunCMS" inurl:module inurl:viewcat.php'},
{:version=>/<div align='center'><a href='http:\/\/www.runcms.org\/' target='_blank'> Powered by  RunCms ([\d\.a-z]+)[^&]* &copy; [\d]{4}-[\d]{4} /},
{:version=>/<meta name="generator" content="[\s^"]*RUNCMS ([\d\.a-z]+)[^"]*"/i },
]
end