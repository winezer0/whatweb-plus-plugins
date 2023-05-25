Plugin.define do
name "Netious-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Netious CMS - http://www.netious.com/"
dorks [
'"Powered by netious.com"'
]
matches [
{:text=>'&nbsp; &nbsp; Powered by <a href="http://pl.netious.com" title="Netious.com - Polska. Darmowe strony internetowe z CMS.">netious.com</a>'},
{:text=>'&nbsp; &nbsp; Powered by <a href="http://www.netious.com" title="Netious.com - free scripts, CMS-based internet services, RSS editors">netious.com</a>'},
{:text=>'&nbsp; &nbsp; Powered by <a href="http://www.netious.com" title="Netious.com - free scripts, CMS-based services, RSS editors">netious.com</a>'},
{:text=>'<center><a href="../" title="Home page"><b class=visible>Go back to the home page of the service</b></a></center>'},
{:text=>'<title>CMS - powered by netious.com</title>'},
]
end
