Plugin.define do
name "unimep-station-controller"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Mepsan fuel pump controller"
website "http://www.mepsan.com.tr/eng/index.htm"
dorks [
'intitle:"UniMep Station Controller"'
]
matches [
{:string=>/<TITLE>([A-F:\d]{17}) UniMep Station Controller<\/TITLE>/},
{:text=>"<input type='button' value='Cashier' onclick=\"window.open('/cgi-bin/cashier.cgi?usc_ip="},
{:text=>'<META Name="Description" Content="UniMep Station Controller">'},
{:text=>'<a href="cgi-bin/log.log.cgi" target="_blank">Log1.cgi</a>&nbsp;<a href="/Log.log" target="_blank">Log1.log</a>'},
{:text=>'<center><a href="cgi-bin/usc.ver.cgi">USC&nbsp;Version</a>'},
]
end