Plugin.define do
name "battle-blog"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Battle Blog is a Fun Debate and Resolution Tool"
website "http://www.davethewebguy.com/battleblog/"
matches [
{:text=>'<br /><br /><font face="arial" size="1">Powered by <a href="http://www.battleblog.com">Battle Blog</a></font>'},
{:text=>'<form name = "UserInfoCollect" action = "authenticate.asp" method = "post">'},
{:text=>'<table width = "10%" cellpadding = "5" style = "border-style: solid; border-color: #000000; border-width: 1px;">'},
{:text=>'<title>Battle Blog Login</title> '},
]
end
