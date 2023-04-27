Plugin.define do
name "TRIDENT7-Wave7-OLT"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TRIDENT7 Wave7 optical line terminal (OLT)"
website "http://www.enablence.com/access/product-lines/trident7"
matches [
{:string=>/<TD VALIGN="bottom" COLSPAN=2><FONT SIZE=2 ALIGN="justify">&copy; (20[\d]{2}) Wave7 Optics, Inc\. All rights reserved\./},
{:text=>'<TITLE>Trident7 System Login</TITLE>'},
]
end
