Plugin.define do
name "HeiTel-Digital-Video-Device"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "HeiTel Digital Video Device - Platform-independent live image transmission and camera remote control via PC, Smartphone and PDA browser "
website "http://www.heitel.com/en/products/software/web-server/index.html"
matches [
{:regexp=>/^HeiTel GmbH Web Server/, :search=>"headers[server]"},
{:search=>"headers", :text=>'HeiTel GmbH Web Server'},
{:version=>/^HeiTel GmbH Web Server \[V([\d\.]+)\/V([\d\.]+)\/V([\d\.]+)\]$/, :search=>"headers[server]"},
]
end
