Plugin.define do
name "netgear-router"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.3"
description "Netgear Router - From wireless routers and adapters to Layer 3 Managed Switches we have the networking equipment you need for your home or small business."
website "http://www.netgear.com/products/"
matches [
{:model=>/^Basic realm="?[\s]*NETGEAR ([^"]+)[\s]*"?/, :certainty=>75, :search=>"headers[www-authenticate]"},
{:regexp=>/^Basic realm="?[\s]*Netgear/, :certainty=>75, :search=>"headers[www-authenticate]"},
{:search=>"headers", :text=>'NETGEAR ROUTER'},
]
end