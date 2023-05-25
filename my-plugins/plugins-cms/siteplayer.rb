Plugin.define do
name "siteplayer"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "SitePlayer is an embedded ethernet HTTP server designed to easily and inexpensively web enable any microprocessor-based device. SitePlayer Telnet is an RS232 to Ethernet protocol converter. It allows you to connect legacy RS232 devices to The Internet by providing a TCP/IP telnet session to an RS232 port. There are many devices which can only be controlled via RS232. With SitePlayer you can now control these devices through The Internet."
website "http://netmedia.com/siteplayer/"
matches [
{:model=>"Telnet", :name=>"WWW-Authenticate realm", :regexp=>/^Basic realm="SitePlayer Telnet Configuration"$/, :search=>"headers[www-authenticate]"},
{:model=>"Telnet", :version=>/^SitePlayer Telnet\/([^\s]+)$/, :search=>"headers[server]"},
]
end
