Plugin.define do
name "LanRTC"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "LanRTC Device"
website "http://www.dorma-time-access.de/prod/content/view/full/36922/%28code%29/product_detail/%28parent%29/36921"
matches [
{:model=>/<title>LanRTC([\d]{4})-System information<\/title>/},
{:model=>/<tr><td><h2>LanRTC([\d]{4})<br>System information<\/h2><\/td>/},
{:regexp=>/<p><font size=-1><strong><a href="javascript:window.history.back()">Back<\/a>|<a href="Index.htm">System Info<\/a>|<a href="TmStatus.htm?TM=1">TM Status<\/a>|<a href="LanStat.htm">LAN Akt.<\/a>|<a href="de\/Buchen.htm">Booking<\/a><\/strong><\/font><\/p><\/body><\/html>/},
{:regexp=>/^LanRTC/, :search=>"headers[server]"},
{:text=>'<td align=right><h2><img src="Logo.gif" width="120" height="59" alt="MBB Gelma"></h2>'},
{:url=>"/Logo.gif", :md5=>"2fe5a40924a7b13c61fcc66a7dacec94"},
{:version=>/^LanRTC\/([\d\.]{1,5})$/, :search=>"headers[server]"},
]
end
