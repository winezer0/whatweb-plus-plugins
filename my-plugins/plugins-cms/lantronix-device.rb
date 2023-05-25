Plugin.define do
name "Lantronix-Device"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Lantronix provides device networking and remote access products for remote IT management allowing remote computer access and offsite device control. Manage industrial control systems, or administer your entire data center using KVM over IP switches."
website "http://www.lantronix.com/"
matches [
{:regexp=>/^Gordian Embedded/, :search=>"headers[server]"},
{:url=>"/navigation.html", :model=>/<font face="Arial,Helvetica" color="#660066"><b>([^<]+)<\/b><\/font><br><br>/},
{:url=>"/navigation.html", :version=>/<img src="logo\.gif" width=129 height=84 border=0 alt="Lantronix ThinWeb Manager ([\d\.]+)"><br>/},
{:url=>"/summary.html", :version=>/<TITLE>Lantronix ThinWeb Manager ([\d\.]+): Home<\/TITLE>/},
{:version=>/^Gordian Embedded([\d\.]+)$/, :search=>"headers[server]"},
]
passive do
m=[]
if @headers["server"] =~ /^Gordian Embedded([\d\.]+)$/
m << { :model=>@body.scan(/<font face="Arial,Helvetica" color="#660066"><b>([^<]+)<\/b><\/font><br><br>/) } if @body =~ /<font face="Arial,Helvetica" color="#660066"><b>([^<]+)<\/b><\/font><br><br>/
end
m
end
end
