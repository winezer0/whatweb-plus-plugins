Plugin.define do
name "smart-soft-vcard-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "SMART-SOFT VCard HTTP/SSL server"
website "http://www.smart-soft.ru/"
matches [
{:name=>"Exception header", :regexp=>/^Directory%20browsing%20not%20allowed$/, :search=>"headers[exception]"},
{:regexp=>/^SMART-SOFT VCard/, :search=>"headers[server]"},
{:string=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \([^\)]+\)<br>Server - ([\w]+)/},
{:text=>"<title>Error</title></head><body><h1>403 - Directory browsing not allowed</h1><hr>SMART-SOFT VCard HTTP/SSL server"},
{:version=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)<br>/},
{:version=>/^SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)$/, :search=>"headers[server]"},
]
end
