Plugin.define do
name "Toshiba-Network-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Toshiba network camera web interface"
website "http://www.toshiba.com/"
matches [
{:text=>'    <td height="32"><img src="toshiba.gif" width="68" height="12"><font class="netcam"><strong>&nbsp;&nbsp;Network Camera</strong></font></td>'},
{:text=>'<title>TOSHIBA Network Camera - User Login</title>'},
]
end
