Plugin.define do
name "worldgroup-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "The Major BBS (sometimes MajorBBS or MBBS) was a bulletin board system server developed between 1986 and 1999 by Galacticomm. In 1995 it was renamed Worldgroup Server and bundled with a user client interface program named Worldgroup Manager for Microsoft Windows. Originally DOS based, two of the versions were also available as Unix-based edition, and the last versions were also available for Windows NT-based servers. - More Info: http://en.wikipedia.org/wiki/The_Major_BBS"
passive do
m=[]
if @headers["server"] =~ /^Worldgroup\/([^\s]+)/
m << { :version=>"#{$1}" }
end
m
end
matches [
{:search=>"all", :text=>'Winmail Server'},
{:string=>/<td style="color:#888888; font-size: 11px;">&nbsp;&nbsp;&nbsp;&nbsp;POP3,SMTP Server: <font color=red>([^\s^<]+)<\/font><\/td><\/tr>/},
{:text=>'<a target="_blank" href="http://www.magicwinmail.net?sid=winmailcust">Powered by Winmail Server</a>&nbsp;'},
{:text=>'<input type=checkbox name=f_autologin value="1"><acronym style="cursor: hand;" OnClick="f_autologin.click()">Automatically login at next time</acronym>'},
{:text=>'<td align="right" class="hometext"><a href="http://www.magicwinmail.net?sid=winmailcust" target=_blank>Powered by Winmail Server</a></td>'},
{:text=>'<td class=default>&nbsp;<input type=password name=f_password size=30 maxlength=64 onkeyup="javascript: EvalPwd(this.value);" onchange="javascript: EvalPwd(this.value);" class="textbox"><font color=#ff0000>*</font></td>'},
{:text=>'<td rowspan=2 width="264" bgcolor="#FFFFFF"><img src="themes/default/images/mail_pic.jpg" width="264" height="102"></td>'},
{:text=>'<title>Web Administration | Powered by Winmail Server - Login</title>'},
{:text=>'<title>WebMail | Powered by Winmail Server - Login</title>'},
{:url=>'/favicon.ico', :md5=>'645423e6c549f16a1dc6499ace25a95f'},
{:version=>/<!--[\s]+&copy 20[\d]{2}(-[\d]{4})? AMAX Information Technologies Inc\. All Rights Reserved\.[\s]+WebMail \| Powered by Winmail Server ([^\s]+)[\s]+-->/, :offset=>1 },
]
end