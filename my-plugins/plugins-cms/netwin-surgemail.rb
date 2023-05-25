Plugin.define do
name "NetWin-Surgemail"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SurgeMail is the fastest, most robust and secure, full-featured email server on the market today supporting all the protocols and standards. Over 10,000 servers installed, serving millions of email accounts world wide."
website "http://netwinsite.com/"
dorks [
'intitle:"Surgemail Welcome Page"'
]
matches [
{:text=>'/surgeweb" target="client"><input type="button" name="" value="Secure WebMail 2.0 Login" onmouseover="MO(event)" onmouseout="MU(event)" onclick="MC3(event)" class=spbutton></a></td>'},
{:text=>'<!-- Start of index.htm --><!-- delayed after doctype-->'},
{:text=>'<!-- Start of na_login.htm --><!-- delayed after doctype-->'},
{:text=>'<!--<body bgcolor="#FFFFFF" onload="window.focus();document.main.username.focus();">-->'},
{:text=>'<a class="about_mail" target="_top" href="/about_mail.htm">about SurgeMail </a></font> </td>'},
{:text=>'<a href="/cgi/user.cgi">User account self management</a> - <font class="small_font">users and domain administrators can modify passwords, forwarding, create new accounts</font></blockquote>'},
{:text=>'<form action="/scripts/webmail.exe" method="post" name="reloginform">'},
{:text=>'<meta name="GENERATOR" content="Mozilla/4.75 [en] (Windows NT 5.0; U) [Netscape]">'},
{:text=>'<td colspan="2" class="about_wrapper"><img src="/web/redline.gif"><br><a class="about_link" href="/about_mail.htm">about SurgeMail</a></td>'},
{:text=>'<title>SurgeMail Welcome Page</title>'},
{:version=>/<a target="_top" href="http:\/\/netwinsite.com\/ref.htm"> WebMail v([^\ ]+) Copyright &copy; <i>NetWin Ltd<\/i>/},
]
end
