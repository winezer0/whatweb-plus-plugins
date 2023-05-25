Plugin.define do
name "russian-apache"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Russian Apache is based on the popular HTTP server Apache, with additional functionality required for simultaneous support of several cyrillic encodings. Some changes were introduced into the Apache source code as this functionality cannot be ensured by a fully independent module."
website "http://apache.lexa.ru/english/"
passive do
m=[]
if @headers["server"] =~ / rus\/(PL[^\s]+)/
m << { :version=>"#{$1}" }
end
m
end
matches [
{:ghdb=>'"powered by RunCMS" inurl:module inurl:viewcat.php'},
{:version=>/<div align='center'><a href='http:\/\/www.runcms.org\/' target='_blank'> Powered by  RunCms ([\d\.a-z]+)[^&]* &copy; [\d]{4}-[\d]{4} /},
{:version=>/<meta name="generator" content="[\s^"]*RUNCMS ([\d\.a-z]+)[^"]*"/i },
]
end