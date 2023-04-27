Plugin.define do
name "robpoll"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RobPoll - CGI poll system"
website "Offline"
dorks [
'inurl:robpoll.cgi filetype:cgi'
]
matches [
{:ghdb=>'inurl:"robpoll.cgi?start" filetype:cgi'},
{:regexp=>/<form action="[^"]*\/robpoll\.cgi" method="post">/},
{:text=>'<head><title>RobPoll Admin</title></head>'},
]
end
