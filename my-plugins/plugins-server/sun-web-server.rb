Plugin.define do
name "sun-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Sun web server"
website "http://www.sun.com/"
passive do
m=[]
if @headers["server"] =~ /^Sun/
if @headers["server"] =~ /^Sun-Web-Server$/
m << { :name=>"HTTP Server Header" }
end
if @headers["server"] =~ /^Sun_WebServer\/([^\s]+)$/
m << { :version=>"#{$1}" }
end
if @headers["server"] =~ /^Sun-ONE-Web-Server\/([^\s]+)$/
m << { :version=>"#{$1}" }
end
end
m
end
matches [
{:regexp=>/^[\s]*Sun[\-\ ]{1}Java[\-\ ]{1}System[\/\ ]{1}Application[\-\ ]{1}Server/, :search=>"headers[server]"},
{:version=>/^[\s]*Sun-Java-System-Web-Server\/([\d\.]+)/, :search=>"headers[server]", :module=>"Web Server"},
{:version=>/^[\s]*Sun-Java-System-Web-[Proxy-]*Server\/([\d\.]+)/, :search=>"headers[proxy-agent]", :module=>"Proxy Server"},
]
end