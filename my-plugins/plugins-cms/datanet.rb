Plugin.define do
name "DataNet"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DataNET is a complete end-to-end system consisting of IP packet data routing server software called DataGate, which links to one or more client programs such as Datalink's DataHost, or third-party software connected over the Internet or Intranet."
website "http://www.datalinksystemsinc.com/software.html"
dorks [
'intitle:"DataNet Tracking System Login" "DataNet Tracking System." "User Name" "Password"'
]
matches [
{:text=>'<div class="scada"><a class="scada" href=\'/scada\'>DataNet Scada Interface</a></div></body>'},
{:version=>/<td><input class="txt" onkeypress='return keyPress\(this,event\);' type='password'( maxlength='10')? id='password'><\/td><\/tr>[\s]+<tr><td class="ver">\(Version ([^\s^<]+)\)<\/td>/, :offset=>1},
]
end
