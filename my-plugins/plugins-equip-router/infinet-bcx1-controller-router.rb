Plugin.define do
name "infinet-bcx1-controller-router"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Infinet bCX1 Controller Router (bCX1-CR-INF) is a native BACnet/IP protocol controller with a built-in web server."
website "http://plpartner.tac.com/Content?contentId=document/11984"
matches [
{:text=>'<H2><u><A HREF="/BCXMain"><font face="Arial" size="3">Controller Configuration Options</FONT></A></u></H2>', :model=>"bCX1-CR-INF"},
{:text=>'<img BORDER="0" src="/Images/AndoverContinuum"</A><P>', :model=>"bCX1-CR-INF"},
{:text=>'<img BORDER="0" src="/Images/taclogo" </A></H3>', :model=>"bCX1-CR-INF"},
{:url=>"/Images/AndoverContinuum", :md5=>"189881eb72f08995d14ff4bd6678dfc7", :model=>"bCX1-CR-INF"},
]
end
