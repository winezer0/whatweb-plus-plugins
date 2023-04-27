Plugin.define do
name "LuCI"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "LuCI was founded in March 2008 as 'FFLuCI' as part of the efforts to create a port of the Freifunk-Firmware from OpenWrt Whiterussian to Kamikaze"
website "http://luci.subsignal.org/"
dorks [
'"Powered by LuCI" inurl:"/cgi-bin/luci/"'
]
matches [
{:firmware=>/<div id="header">[\r\n]*<h1>OpenWrt Firmware<\/h1>[\r\n]*<p>[\r\n]*([^<]+)<br \/>[\r\n]*Load: [^<]{10,15}<br \/>[\r\n]*Hostname: ([^\r\n<]+)[\s]*<\/p>[\r\n]*<\/div>/, :offset=>0},
{:string=>/<div id="header">[\r\n]*<h1>OpenWrt Firmware<\/h1>[\r\n]*<p>[\r\n]*([^<]+)<br \/>[\r\n]*Load: [^<]{10,15}<br \/>[\r\n]*Hostname: ([^\r\n<]+)[\s]*<\/p>[\r\n]*<\/div>/, :offset=>1},
{:text=>'<a style="color: white; text-decoration: none" href="/cgi-bin/luci">LuCI - Lua Configuration Interface</a>'},
{:text=>'<li><a href="/cgi-bin/luci/admin/">Administration</a></li>'},
{:text=>'<link rel="stylesheet" type="text/css" media="screen" href="/luci-static/openwrt.org/cascade.css" />'},
{:url=>"/luci-static/openwrt.org/header.png", :md5=>"aba24739c2534a161fab2485e605a960"},
{:version=>/<p class="luci"><a href="\/cgi-bin\/luci\/about">Powered by LuCI ([\d\.]+)<\/a><\/p>/},
{:version=>/<p class="luci"><a href="\/cgi-bin\/luci\/about">Powered by LuCI [^<]+ \(v([^\)]+)\)<\/a><\/p>/, :offset=>0},
]
end
