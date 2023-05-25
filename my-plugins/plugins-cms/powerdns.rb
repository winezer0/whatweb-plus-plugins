Plugin.define do
name "PowerDNS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "PowerDNS is a high performance, non-BIND nameserver written in c++"
website "http://www.powerdns.com/"
passive do
m=[]
m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="PowerDNS"$/
m
end
matches [
{:certainty=>25, :text=>'<h1>Protected Object</h1>This object on the Netsilicon is protected.<p>Return to <A TARGET="_top" HREF="index.html">Last page</A><p>'},
]
end