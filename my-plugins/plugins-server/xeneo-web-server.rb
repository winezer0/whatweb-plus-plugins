Plugin.define do
name "xeneo-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Xeneo Web Server"
website "http://www.northernsolutions.com/products/xeneo/"
matches [
{:search=>"headers[server]", :regexp=>/^Xeneo$/},
{:search=>"headers[server]", :version=>/^Xeneo\/([^\s]+)$/},
]
end
