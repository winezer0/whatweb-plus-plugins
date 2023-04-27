Plugin.define do
name "Fujitsu-Wireless-AP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Fujitsu Wireless Access Point"
website "http://fenics.fujitsu.com/products/sr-m/"
matches [
{:model=>/^(SR-M20A[C|P]{1}1)$/, :search=>"headers[server]"},
{:url=>"/hgi-bin/Setup/setup.cgi", :firmware=>/<TABLE cellspacing=0 cellpadding=0><TR><TD align="center"><A href="\/home.html"><IMG src="\/images\/logo.gif" alt="[^"]+" border=0><\/A><BR><FONT size='2'>SR-M20A[C|P]{1}1\(V([\d\.]+) config1\)<BR><\/FONT><\/TD><\/TR><TR><TH colspan=4><HR>/},
]
end
