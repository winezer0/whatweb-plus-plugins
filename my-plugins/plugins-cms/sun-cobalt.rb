Plugin.define do
name "Sun-Cobalt"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Cobalt Qube was a computer server appliance product line developed by Cobalt Networks. The Cobalt RaQ is a 1U rackmount server product line developed by Cobalt Networks, Inc. - More Info: http://en.wikipedia.org/wiki/Cobalt_RaQ  &  http://en.wikipedia.org/wiki/Cobalt_Qube"
matches [
{:certainty=>25, :regexp=>/<P ALIGN="CENTER"><FONT SIZE="5" COLOR="#000099" FACE="HELVETICA, ARIAL"><B>Welcome to the Web Site of [^\s^<]+<\/B><\/FONT>/},
{:certainty=>25, :text=>'<META NAME="Copyright" VALUE="Copyright (C) 2000, Cobalt Networks, Inc.  All rights reserved.">'},
{:certainty=>25, :text=>'var url = "/login.php?expired=true&target="+escape(pathname+top.location.search+top.location.hash);'},
{:certainty=>75, :text=>"<HTML><BODY onLoad=\"location='/login.php'\"></BODY></HTML>"},
{:model=>/<TITLE>Login - Sun Cobalt (Qube [\d]+|RaQ [\d]+) - [^<^\s]+[\n]?<\/TITLE>/},
{:model=>/document.write\("\\nThank you for using the Sun Cobalt (Qube [\d]+|RaQ [\d]+)\.\\n"\);/},
]
end
