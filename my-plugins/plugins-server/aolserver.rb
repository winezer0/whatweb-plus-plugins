Plugin.define do
name "aolserver"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AOLserver is America Online's Open-Source web server. AOLserver is the backbone of the largest and busiest production environments in the world. AOLserver is a multithreaded, Tcl-enabled web server used for large scale, dynamic web sites."
website "http://www.aolserver.com/"
matches [
{:search=>"headers", :text=>'AOLserver'},
{:search=>"headers[server]", :regexp=>/^AOLserver$/},
{:search=>"headers[server]", :version=>/^AOLserver\/([^\s]+)/},
{:search=>'headers[server]',:offset=>1, :regexp=>/AOLserver.?([\d.]+)?/},
]
end
