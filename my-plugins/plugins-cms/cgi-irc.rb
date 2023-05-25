Plugin.define do
name "cgi-irc"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CGI:IRC is a Perl/CGI program to use IRC from a web browser. This plugin extracts the version and the default server, channel and nickname"
website "http://cgiirc.org/"
dorks [
'intitle:"CGI:IRC Login" Nickname Server Channel'
]
matches [
{:string=>/^bgcolor="#f1f1f1"><input type="text" name="Channel" value="([^"]+)"[^>]*><\/td><\/tr>/},
{:string=>/^bgcolor="#f1f1f1"><input type="text" name="Nickname" value="([^"]+)"><\/td><\/tr>/},
{:string=>/^bgcolor="#f1f1f1"><input type="text" name="Server" value="([^"]+)"[^>]*><\/td><\/tr>/},
{:string=>/^bgcolor="#f1f1f1"><select name="Channel" style="width: 100%"[^>]*><option[^>]*>([^<]*)<\/option>/},
{:string=>/^bgcolor="#f1f1f1"><select name="Server" style="width: 100%"[^>]*><option[^>]*>([^<]*)<\/option>/},
{:text=>"<title>CGI:IRC Login</title>"},
{:text=>'<body bgcolor="#ffffff" text="#000000" onload="setcharset();">'},
{:text=>'<form method="post" action="irc.cgi" name="loginform" onsubmit="setjs()">'},
{:text=>'<small><a href="irc.cgi?adv=1">Advanced..</a></small>'},
{:version=>/^<!-- This is part of CGI:IRC ([\d\.]+)/},
{:version=>/^<small id="ietest"><a href="http:\/\/cgiirc.org\/">CGI:IRC<\/a> ([^<]{3,25})<br \/>/},
{:version=>/^<small id="ietest"><a href="http:\/\/cgiirc.sourceforge.net\/">CGI:IRC<\/a> ([^<]{3,25})<br \/>/},
]
end
