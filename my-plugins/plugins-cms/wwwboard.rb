Plugin.define do
name "WWWBoard"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "WWWBoard is a threaded World Wide Web discussion forum and message board, which allows users to post new messages, followup to existing ones and more."
website "http://www.scriptarchive.com/wwwboard.html"
matches [
{:name=>"default text",
:text=>'<center><h1>WWWAdmin For WWWBoard</h1></center>'},
{:name=>"default title", 
:text=>'<head><title>WWWAdmin For WWWBoard</title></head>'},
{:name=>'GHDB: inurl:"WWWADMIN.PL" intitle:"wwwadmin"',
:certainty=>75,
:ghdb=>'inurl:"WWWADMIN.PL" intitle:"wwwadmin"'},
]
end
