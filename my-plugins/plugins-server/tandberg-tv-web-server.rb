Plugin.define do
name "tandberg-tv-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Tandberg - Video Conferencing Solutions and Telepresence Products"
website "http://www.tandberg.com/"
passive do
m=[]
if @headers["server"] =~ /^Tandberg Television Web server$/ or @headers["server "] =~ /^Tandberg Television Web server$/
m << { :name=>"HTTP Server Header" }
end
m
end
matches [
{:search=>"headers[server]", :version=>/^SX Webserver ([\d\.]{1,5})/},
{:status=>400, :text=>"<head></head><body><html><h1>Error 400</h1><p>The server couldn't understand your request.</html></body>\r\n"},
{:status=>403, :text=>"<head></head><body><html><h1>Error 403</h1><p>Forbidden.</html></body>\r\n"},
{:status=>404, :text=>"<head></head><body><html><h1>Error 404</h1><p>Document not found.</html></body>\r\n"},
{:status=>500, :text=>"<head></head><body><html><h1>Error 500</h1><p>The server encountered an unexpected condition which prevented it from fulfilling the request.</html></body>\r\n"},
{:status=>501, :text=>"<head></head><body><html><h1>Error 501</h1><p>This feature is not implemented.</html></body>\r\n"},
{:status=>505, :text=>"<head></head><body><html><h1>Error 505</h1><p>HTTP Version not supported.  This server supports HTTP 1.0 and HTTP 1.1.</html></body>\r\n"},
]
end