Plugin.define do
name "CouchPotato"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CouchPotato is an automatic NZB and torrent downloader"
website "http://couchpotatoapp.com/"
dorks [
'"Update (diff) available: update now , Check for new version"'
]
matches [
{:md5=>"4814f0d48b2944e48d474325fc4a0f86", :url=>"/static/images/homescreen.png"},
{:md5=>"a59c6fead5d55050674f327955df3acb", :url=>"/static/images/favicon.ico"},
{:text=>'<html><body><h1>Error 401 Unauthorized</h1>Something unexpected has happened.</body></html>', :certainty=>25},
{:url=>"/favicon.ico",:allhash=>"a59c6fead5d55050674f327955df3acb"},
{:version=>/<a href="\/cron\/force\/">Force check<\/a> \)[\s]+<\/div>[\s]+<div id="version">[\s]+Version: <em>([^\s^<]+)<\/em>/},
]
end
