Plugin.define do
name "essentia-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Essentia Web Server - High performance HTTP/1.1 compliant multi-threaded server."
passive do
m=[]
if @headers["server"] =~ /^Essentia\/([^\s]+)$/
m << { :version=>"#{$1}" }
end
m
end
matches [
{:search=>"headers", :text=>'Ericsson Television Web server'},
{:search=>"headers[server ]", :regexp=>/^Ericsson Television Web server$/},
]
end