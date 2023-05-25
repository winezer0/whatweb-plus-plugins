Plugin.define do
name "NetPort"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "NetPort server - used by several routers."
matches [
{:name=>"Netport HTTP Header", :regexp=>/^Power by NetPort$/, :search=>"headers[netport]"},
{:regexp=>/^NetPort Software/, :search=>"headers[server]"},
{:version=>/^NetPort Software ([^\s]+)$/, :search=>"headers[server]"},
]
end
