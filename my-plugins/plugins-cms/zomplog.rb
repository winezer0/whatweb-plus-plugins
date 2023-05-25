Plugin.define do
name "Zomplog"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Blog"
website "http://www.zomp.nl/zomplog/index.php"
dorks [
'"powered by Zomplog" -Vulnerability -exploit'
]
matches [
{:text=>'/* Navbar (Zomplog-specific) */'},
{:text=>'<meta name="generator" content="Zomplog" />'},
{:text=>'<td width="135"><div align="right"><span class="style1"><a href="http://www.zomp.nl/zomplog/" target="_blank">zomplog &rsaquo;&rsaquo;</a> </span></div></td>'},
{:text=>'<title>Zomplog &rsaquo; Login</title>'},
{:text=>'Powered by <a href="http://zomplog.zomp.nl" target="_blank">Zomplog</a>'},
]
end