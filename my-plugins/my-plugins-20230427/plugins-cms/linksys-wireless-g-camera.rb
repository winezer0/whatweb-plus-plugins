Plugin.define do
name "Linksys-Wireless-G-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Linksys Wireless-G Camera web interface"
website "http://www.linksys.com/"
matches [
{:text=>'<body bgcolor="#ffffff" marginheight="0" marginwidth="0" leftmargin="0" topmargin="0" onload="parent.chkRefresh(\'vr\')"> </body>'},
{:text=>'<title>Linksys Wireless-G Internet Video Camera</title>'},
{:text=>'<title>Linksys Wireless-G Internet-Videokamera</title>'},
]
end
