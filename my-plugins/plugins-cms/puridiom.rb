Plugin.define do
name "Puridiom"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Puridiom - eProcurement software"
website "http://www.puridiom.com/"
dorks [
'intitle:"Enabling Self-Service Procurement" "Loading Page"'
]
matches [
{:string=>"Xpress", :text=>'<META NAME="Description" Content="/puridiomx/system/header.jsp">'},
{:string=>"Xpress", :text=>'<TITLE>Puridiom Xpress, Enabling Self-Service Procurement</TITLE>'},
{:text=>'<META NAME="Description" Content="/puridiom/system/header.jsp">'},
{:text=>'<TITLE>Puridiom, Enabling Self-Service Procurement</TITLE>'},
{:text=>'<iframe id="getInfoFrame" name="getInfoFrame" src="/puridiom/system/processing.jsp"'},
{:text=>'<tr><td width=100% align=center valign=top><br><b>Loading Page... Please wait.</b><br><br><br><img src="/puridiom'},
{:version=>/<TITLE>Puridiom ([\d\.]+), Enabling Self-Service Procurement<\/TITLE>/},
]
end
