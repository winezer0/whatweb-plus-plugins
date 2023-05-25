Plugin.define do
name "embedthis"
authors [
"Andrew Horton",

]
version "0.2"
description "Web server for embedded devices"
website "http://embedthis.com/products/appweb/embedded-web-server.html"
matches [
{:regexp=>/^Mbedthis-Appweb/, :search=>"headers[server]"},
{:version=>/Mbedthis-Appweb\/(.*)/, :search=>"headers[server]"},
]
end
