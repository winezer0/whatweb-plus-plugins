Plugin.define do
name "rainmail"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Rainmail Intranet Server is integrated software for providing complete Intranet and Network Infrastructure to enterprises."
website "http://www.carizen.com/carizen/index.php?task=ris"
dorks [
'intitle:"Rainmail Intranet Page"'
]
matches [
{:certainty=>25, :text=>"<form action='/cgi-bin/openwebmail/openwebmail.pl'"},
{:certainty=>75, :text=>'<!--  SCRIPT CONFIGURATION SECTION -->'},
{:search=>"all", :text=>'Rainmail'},
{:text=>'<TD width=50%><font color="ffffff" size="1"face="Verdana, Helvetica">Rainmail is a product of :</font>'},
{:text=>'<div align="center">.: <b>Rainmail Intranet Login </b> :.</div>'},
{:url=>'/chpasswd.php', :text=>'<TD><font color="ffffff" size="1"face="Verdana, Arial, Helvetica, sans-serif">Rainmail is a product of :</font></TD>'},
]
end
