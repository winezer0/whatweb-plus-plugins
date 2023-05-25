Plugin.define do
name "ruckus-wireless-router"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'-2069844696'},
{:string=>/<td><h2>Air Quality:<\/h2><\/td>[\s]+<td><img src="images\/[^\/^\.]+\.gif" width="24" height="20" \/>\s*<span id="ssid">([^<^\s]+)<\/span><\/td>/},
{:text=>'<div class="box"><img src="/images/logo_login.gif" width="173" height="52" alt="Ruckus Wireless" title="Ruckus Wireless" />'},
{:text=>'Ruckus Wireless Admin'},
{:text=>'mon.  Tell me your username'},
{:url=>"/favicon.ico",:allhash=>"ed8cf53ef6836184587ee3a987be074a"},
{:url=>"/images/logo_login.gif", :md5=>"5ba0bb42c0400280b45fb43500a6f0f5"},
]
end