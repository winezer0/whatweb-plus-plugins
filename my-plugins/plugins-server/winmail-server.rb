Plugin.define do
name "winmail-server"
authors [
"winezero",
]
version "0.1"
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
{:text=>'Powered by Winmail Server'},
{:url=>'/favicon.ico', :md5=>'645423e6c549f16a1dc6499ace25a95f'},
{:version=>/<!--[\s]+&copy 20[\d]{2}(-[\d]{4})? AMAX Information Technologies Inc\. All Rights Reserved\.[\s]+WebMail \| Powered by Winmail Server ([^\s]+)[\s]+-->/, :offset=>1},
]
end