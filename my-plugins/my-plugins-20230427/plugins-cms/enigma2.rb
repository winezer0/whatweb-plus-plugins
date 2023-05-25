Plugin.define do
name "Enigma2"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Enigma2 is a framebuffer-based zapping application (GUI) for linux."
website "http://dream.reichholf.net/wiki/Enigma2"
dorks [
'intitle:"Enigma2 movielist" filetype:rss'
]
matches [
{:regexp=>/<\?xml version="1\.0" encoding="UTF-8"\?>[\s]+<rss version="2\.0">[\s]+<channel>[\s]+<title>Enigma2 Movielist<\/title>/},
{:text=>'<html><head><title>Enigma2 WebControl</title></head><body><h1>404 - Page not found</h1></body></html>'},
{:text=>'<link rel="alternate" type="application/rss+xml" title="Movie List" href="/web/movielist.rss?tag" >'},
{:text=>'Enigma2 WebControl'},
{:text=>'href="/web/movielist.rss?tag'},
{:url=>"/web-data/img/favicon.ico", :md5=>"d9aa63661d742d5f7c7300d02ac18d69"},
]
end
