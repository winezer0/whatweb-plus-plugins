Plugin.define do
name "DD-WRT"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DD-WRT is a Linux based alternative OpenSource firmware suitable for a great variety of WLAN routers and embedded systems."
website "http://dd-wrt.com/"
dorks [
'intitle:"DD-WRT" intitle:build intitle:Info "DD-WRT Control Panel"'
]
matches [
{:certainty=>75, :version=>/<title>DD-WRT \((build [^<^\)]+)\) - Info<\/title>/},
{:model=>/<div class="setting">[\s]+<div class="label"><script type="text\/javascript">Capture\(status_router\.sys_model\)<\/script><\/div>[\s]+([^&]+)&nbsp;[\s]+<\/div>[\s]+<div class="setting">/},
{:string=>/<script type="text\/javascript">[\s]+\/\/<!\[CDATA\[[\s]+document\.write\("<span id=\\"(lan|wc|wl)_mac\\" style=\\"cursor:pointer; text-decoration:underline;\\" title=\\"" \+ share\.oui \+ "\\" onclick=\\"getOUIFromMAC\('([A-F\d:]{17})'\)\\" >"\);/, :offset=>1},
{:text=>'<a href="http://www.dd-wrt.com/">DD-WRT</a><br /><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank"><input type="hidden" name="cmd" value="_xclick" /><input type="hidden" name="business" value="paypal@dd-wrt.com" /><input type="hidden" name="item_name" value="DD-WRT Development Support" />'},
{:text=>'<link type="text/css" rel="stylesheet" href="style/pwc/ddwrt.css" />'},
{:text=>'style/pwc/ddwrt.css'},
{:url=>"/images/favicon.ico", :md5=>"9c003f40e63df95a2b844c6b61448310"},
{:url=>"/style/logo.png", :md5=>"4ec5945774160eb5db079e509a67a20e"},
]
end
