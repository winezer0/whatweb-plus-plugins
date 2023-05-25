Plugin.define do
name "Seditio"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Seditio"
website "http://www.neocrome.net"
matches [
{:text=>'<a href="http://www.neocrome.net">Powered by Seditio</a><br />'},
{:text=>'<br />Powered by <a href="http://www.neocrome.net" target="_blank">Seditio</a>'},
{:text=>'<meta name="generator" content="Seditio by Neocrome http://www.neocrome.net" />'},
]
end
