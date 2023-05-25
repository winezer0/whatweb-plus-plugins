Plugin.define do
name "solidyne-inet-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Solidyne iNET Server - web interface for Solidyne devices"
website "http://www.solidyne.com/"
matches [
{:text=>'<META HTTP-EQUIV="refresh" content="0; url=/hmi/">'},
{:text=>'<frame name="frLeft" scrolling="NO" id="frLeft" src="QFrLeft.aspx">'},
{:text=>'<title>Solidyne iNET Server</title>'},
{:url=>"/hmi/sysapp/QLogin.aspx", :text=>'<form name="form1" method="post" action="QLogin.aspx" id="form1">'},
]
end