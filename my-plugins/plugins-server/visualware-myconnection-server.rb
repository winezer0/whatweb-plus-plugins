Plugin.define do
name "visualware-myconnection-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "MyConnection Server (MCS) delivers a broad range of support managed automated and user initiated self-help connection testing and monitoring services directly via the browser to any online customer/location anywhere in the world. MCS incorporates testing solutions for critical time dependent applications such as VoIP, Video, IPTV, video conferencing."
website "http://www.myconnectionserver.com/"
dorks [
'intitle:"MyConnection" "MyConnection Server" ("expires in"|EXPIRED)'
]
matches [
{:regexp=>/^Visualware MyConnection Server/, :search=>"headers[server]"},
{:string=>/^Visualware MyConnection Server ([^\d]+) \d\.[^\s]+$/, :search=>"headers[server]"},
{:text=>'<!-- Begin MyConnection Server applet -->'},
{:version=>/^Visualware MyConnection Server [^\d]+ (\d\.[^\s]+)$/, :search=>"headers[server]"},
]
end
