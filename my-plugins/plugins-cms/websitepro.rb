Plugin.define do
name "WebSitePro"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebSitePro is an HTTP web server for Microsoft Windows. The 16-bit web server software was originally developed by Bob Denny in 1994 for Windows 3.1. WebSite Professional is now published by Deerfield.com under the name Deerfield WebSite, as of August 20, 2001."
website "http://website.ora.com/"
matches [
{:search=>"all", :text=>'WebSitePro'},
{:search=>"headers[server]", :version=>/^WebSitePro\/([^\s]+)/},
]
end
