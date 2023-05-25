Plugin.define do
name "oa-webserve"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.4"
description "Boa Webserver - Do You Feel the Need for Speed? Boa currently seems to be the favorite web server in the embedded crowd, and embedded Linux, despite all the marketing hype, really is a big deal. Supposedly, an older version of Boa, v0.92q, runs in 32K address space on m68k, like used in uCLinux."
website "http://www.boa.org/"
matches [
{:search=>"headers", :text=>'Boa'},
{:version=>/^[\s]*Boa\/([^\s]+)/, :search=>"headers[server]"},
]
end
