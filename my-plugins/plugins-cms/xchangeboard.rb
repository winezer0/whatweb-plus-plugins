Plugin.define do
name "XchangeBoard"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Old forum"
website "http://www.xchangeboard.de"
matches [
{:text=>'h1,h2,h3,h4,p,ul,ol,li,div,td,th,address,blockquote,nobr,b,i {'},
{:version=>/	<div align="center"><small>Powered by <a href="http:\/\/www.xchangeboard.de">XchangeBoard<\/a> ver ([\d\.a-z]+) - /},
]
end
