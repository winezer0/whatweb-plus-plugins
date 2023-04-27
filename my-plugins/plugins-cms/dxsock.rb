Plugin.define do
name "DXSock"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "DXSock is a developer library sold with full source code. The product is geared towards low-level client and server development. Supporting TCP/IP and UDP/IP solution, along with low-level Linux and Mac file devices."
website "http://www.dxsock.com/view/"
matches [
{:search=>"headers", :text=>'RemObjects'},
{:search=>"headers[server]", :regexp=>/^RemObjects DXSock Web Server/},
{:search=>"headers[user-agent]", :regexp=>/^RemObjects SDK$/},
]
end
