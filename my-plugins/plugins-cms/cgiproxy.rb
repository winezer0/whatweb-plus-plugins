Plugin.define do
name "CGIProxy"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This CGI script acts as an HTTP or FTP proxy. Through it, you can retrieve any resource that is accessible from the server it runs on."
website "http://www.jmarshall.com/tools/cgiproxy/"
matches [
{:ghdb=>'filetype:cgi "Start browsing through this CGI-based proxy by entering a URL below"', :certainty=>75},
{:text=>'<a href="http://www.jmarshall.com/tools/cgiproxy/'},
{:text=>'<title>Start Using CGIProxy</title>'},
{:version=>/<a href="http:\/\/www.jmarshall.com\/tools\/cgiproxy\/"><i>CGIProxy ([^<]+)<\/i><\/a>/},
]
end
