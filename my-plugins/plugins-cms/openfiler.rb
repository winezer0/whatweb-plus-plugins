Plugin.define do
name "openfiler"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Openfiler is an Open Source Network Attached Storage and Storage Area Network Solution."
website "http://www.openfiler.com/ "
matches [
{:string=>/&copy; 2001 - (2[\d]{3}) <a href="http:\/\/www\.openfiler\.com\/">Openfiler<\/a>\. All rights reserved\.<br \/>/},
{:string=>/<strong>GUI Version:&nbsp;<\/strong>([^<^\s]+)<\/p><\/div>/},
{:url=>"/uptime.html", :text=>'<body bgcolor="#4c555a" style="margin: 0; padding: 0" onload="getSysUptime()">'},
{:url=>"/uptime.html", :text=>'<div id="uptimeDiv" class="uptimeDiv"><span style="line-height: 10px;" id="uptimeData"></span> </div></body>'},
{:version=>/<div><p style="font-size: 90%; color: #aaa; line-height: 14px;"><strong>Distro Release:&nbsp;<\/strong>Openfiler [EN]SA ([^\s]+)/},
]
end
