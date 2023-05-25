Plugin.define do
name "Tele-Data-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tele Data's Contact Management Server - Contact Management Server for Windows / Asterisk - a custom designed HTTP server which act as a front end to a SQLite Database designed to provide contact management services, accessible from a Web Browser, to a single or group of users on a LAN or WAN network."
website "http://teledata.qc.ca/td_cms/"
dorks [
'"Powered by Teledata" "Best viewed in IE6"'
]
matches [
{:regexp=>/Powered by Teledata<br>\n<center>Best viewed in IE6\.<\/center>/},
{:text=>'<!--To reduce the gap between banner and content the below if condition is added-->'},
{:text=>'<iframe onload="postload(0);" scrolling="no" style="position:absolute;top:0;left:0;height:0;width:0;" id="fraLH" name="fraLH" src="default.aspx" frameborder="0" marginheight="0" marginwidth="0"></iframe>'},
{:text=>'<input name="txthomepassword" type="password"  size="22" id="txthomepassword" maxlength="200" />'},
{:text=>'align=center class="tdi-errormessage" style="height: 25px"><script type="text/javascript">showerror();</script></td>'},
]
end
