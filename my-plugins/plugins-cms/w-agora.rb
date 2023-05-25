Plugin.define do
name "w-agora"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "w-agora is web based forum package. It is entirely customizable through a web browser. It allows web publishing and file upload."
website ""
matches [
{:certainty=>25, :ghdb=>'inurl:"w-agora" ext:php3'},
{:text=>"<CAPTION><B>System Administrator's Informations (login : <u>admin</u>)</B></CAPTION>"},
{:text=>'<table border bgcolor="#eeeeee" align="center" cellspacing=0 cellpadding=5 width=400><tr><td align=center><font face="Arial, Verdana" color="#FF2020">Cannot access configuration file: ./conf/site_agora.php3</td></tr></table>'},
{:version=>/<META NAME="GENERATOR" Content="w-agora version ([\d\.]+)"[\/]?>/i},
]
end
