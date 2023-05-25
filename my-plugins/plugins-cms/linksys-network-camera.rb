Plugin.define do
name "Linksys-Network-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Linksys network camera web interface"
website "http://www.linksys.com/"
dorks [
'inurl:/img/main.cgi inurl:next_file'
]
matches [
{:text=>'<meta name="description" content="WVC54GCA">', :model=>"WVC54GCA"},
{:text=>'<meta name="description" content="WVC80N">', :model=>"WVC80N"},
{:text=>'<td bgcolor="#6766CC" align="right" valign="top"><span class="model" style="position:relative;top:-12px">WVC54GCA</span><img src="../blue_top_right.gif" alt="" border="0">', :model=>"WVC54GCA"},
{:text=>'<td bgcolor="#6766CC" align="right" valign="top"><span class="model" style="position:relative;top:-12px">WVC80N</span><img src="../blue_top_right.gif" alt="" border="0">', :model=>"WVC80N"},
]
end
