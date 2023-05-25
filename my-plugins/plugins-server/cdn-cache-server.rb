Plugin.define do
name "cdn-cache-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "CDN-Cache-Server"
matches [
{:search=>"headers", :text=>'Cdn Cache Server'},
{:version=>/^Cdn Cache Server V([\d\.]+)/, :search=>"headers[server]"},
]
end
