Plugin.define do
name "segpub"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "SegPub, a hosting solutions provider based in Sydney, Australia"
website "http://segpub.net/"
passive do
m=[]
m << { :os=>"FreeBSD7" } if @headers['server'] =~ /SegPache/
m << { :os=>"FreeBSD7" } if @headers['x-powered-by'] =~ /SegPub/
m << { :os=>"FreeBSD7" } if @headers['x-powered-by'] =~ /SegPod/
m
end
matches [
{:text=>'<a href="http://www.neocrome.net">Powered by Seditio</a><br />'},
{:text=>'<br />Powered by <a href="http://www.neocrome.net" target="_blank">Seditio</a>'},
{:text=>'<meta name="generator" content="Seditio by Neocrome http://www.neocrome.net" />'},
]
end