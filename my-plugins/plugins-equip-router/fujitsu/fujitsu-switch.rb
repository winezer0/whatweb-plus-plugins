Plugin.define do
name "Fujitsu-Switch"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Fujitsu Switch"
website "http://fenics.fujitsu.com/products/sr-s/"
matches [
{:model=>/^(SR-S[A-Z\d]{3,6})$/, :search=>"headers[server]"},
{:url=>"/hgi-bin/Setup/setup.cgi", 
:firmware=>/<TABLE cellspacing=0 cellpadding=0><TR><TD align="center"><A href="\/home.html"><IMG src="\/images\/logo.gif" alt="[^"]+" border=0><\/A><BR><FONT size='2'>SR-S[A-Z\d]{3,6}\(V([\d\.]+) config1\)<BR><\/FONT><\/TD><\/TR><TR><TH colspan=4><HR>/},
]
end
