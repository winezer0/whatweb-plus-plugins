Plugin.define do
name "netgear-print-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "NetGear Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://www.netgear.com.au/au/Products/Print-Servers"
matches [
{:certainty=>25, :version=>/^PRINT_SERVER WEB ([\d\.]+)$/, :search=>"headers[server]"},
{:text=>'<p>To provide an enhanced user interface, this Print Server uses JavaScript extensively.'},
{:text=>'<title>NetGear Print Server Setup</title>'},
{:url=>"/settings.gif", :md5=>"d6b979c739a809658a0e8833bc64b900"},
{:url=>"/start.htm", :text=>"<title>NETGEAR Print Server </title>"},
]
end