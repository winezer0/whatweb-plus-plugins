Plugin.define do
name "uckus-wireless-route"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Ruckus Wireless Router web interface"
website "http://www.ruckuswireless.com/"
dorks [
'intitle:"Ruckus Wireless Admin" "Ruckus Wireless Admin" "Username" "Password"'
]
matches [
{:string=>/<td><h2>Air Quality:<\/h2><\/td>[\s]+<td><img src="images\/[^\/^\.]+\.gif" width="24" height="20" \/>\s*<span id="ssid">([^<^\s]+)<\/span><\/td>/},
{:text=>'<div class="box"><img src="/images/logo_login.gif" width="173" height="52" alt="Ruckus Wireless" title="Ruckus Wireless" />'},
{:url=>"/images/logo_login.gif", :md5=>"5ba0bb42c0400280b45fb43500a6f0f5"},
]
end