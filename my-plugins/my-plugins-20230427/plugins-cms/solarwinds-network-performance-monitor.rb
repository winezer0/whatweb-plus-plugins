Plugin.define do
name "solarwinds-network-performance-monitor"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Our flagship network monitoring software manages dynamic networks of all sizes, simply and affordably. Discover how easy it is to detect, diagnose, and resolve network problems with Orion Network Performance Monitor (NPM)."
website "http://www.solarwinds.com/products/orion/"
matches [
{:regexp=>/<title>[\r\n]*	Orion Network Performance Monitor[\r\n]*<\/title>/},
{:string=>"Broken", :text=>"<b>Cannot access main SQL Server database.</b><br><br><b>Connection</b>"},
{:text=>'<!-- Stylesheets left here to support legacy resources -->'},
{:text=>'<TD Class=PageHeader>Network Performance Monitor</TD>'},
{:text=>'<TITLE>SolarWinds Network Management</TITLE>'},
{:text=>'<a href="/Login.asp"><u><b>Retry Login<b><u></a>'},
{:text=>'<img src="../NetPerfMon/images/SolarWinds.Logo.jpg" border=0>'},
{:text=>'<img src="/NetPerfMon/images/SolarWinds.Logo.gif" alt="Site Logo"/>'},
{:text=>'<img src="/NetPerfMon/images/SolarWinds.Logo.jpg" border=0>'},
{:text=>'<link rel="stylesheet" type="text/css" href="/SolarWinds.css" />'},
{:text=>'<link rel="stylesheet" type="text/css" href="/SolarWinds.css">', :version=>"Old"},
{:version=>/<div id="footer">[^S]*SolarWinds Orion Network Performance Monitor ([^&]+)&copy; 1995-[0-9]{4} All Rights Reserved[^<]*<\/div>/},
]
passive do
m=[]
m << { :string=>"Broken" } if @headers["location"] =~ /\/Admin\/CriticalError.asp\?ErrorMessage=<b>Cannot%20access%20main%20SQL%20Server%20database.<\/b>/
m
end
end
