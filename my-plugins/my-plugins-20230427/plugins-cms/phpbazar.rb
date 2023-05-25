Plugin.define do
name "phpbazar"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP3/PHP4/mySql Classified AD and/or Matchmaking"
website "http://www.smartisoft.com/"
dorks [
'intitle:"phpBazar-AdminPanel" -intitle'
]
matches [
{:text=>"<br>Login to phpBazar with Admin- or Moderator-Level & use the Administration-Functions! ->"},
{:text=>"<title>phpBazar-AdminPanel</title>", :module=>"Admin Page"},
{:version=>/<p><div class="footer">phpBazar Ver. ([\d\.]+) &copy 2001\-[\d]{4} by <a href="http:\/\/www.smartisoft.com[\/]?" target="_blank">SmartISoft<\/a><\/div>/},
]
end
