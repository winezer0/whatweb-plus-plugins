Plugin.define do
name "SpeedTouch"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.3"
description "SpeedTouch is the brand name of a line of networking equipment produced by Alcatel and Technicolor SA. Before 27 January 2010 Technicolor was known as Thomson SA. Under the SpeedTouch name Alcatel and Technicolor retail a variety of equipment including ADSL and ADSL2+ modems, residential gateways, wireless access equipment, VoIP handsets and SHDSL interconnect equipment. They are a major brand in home and business networking products. - More Info: http://en.wikipedia.org/wiki/SpeedTouch"
website "http://www.thomsontelecom.com.au/speedtouch/support.htm"
matches [
{:regexp=>/(Basic|Digest) realm="SpeedTouch/, :search=>"headers[www-authenticate]", :name=>"WWW-Authenticate realm"},
{:string=>/Basic realm="SpeedTouch \(([\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2})\)/, 
:search=>"headers[www-authenticate]", :name=>"WWW-Authenticate realm"},
{:url=>"/favicon.ico", :md5=>"befcded36aec1e59ea624582fcb3225c"},
{:url=>"/favicon.ico",:allhash=>"befcded36aec1e59ea624582fcb3225c"},
]
end
