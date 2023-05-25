Plugin.define do
name "teamviewer"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TeamViewer - the All-In-One Solution for Remote Access and Support over the Internet"
website "http://www.TeamViewer.com"
matches [
{:text=>"<html><body>This site is running <a href='http://www.TeamViewer.com'>TeamViewer</a>.</body></html>"},
{:text=>'TeamViewer'},
{:text=>'This site is running'},
]
end
