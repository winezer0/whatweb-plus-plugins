Plugin.define do
name "NetWin-DBabble"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DBabble is a chat, discussion, and instant messaging server and client, which allows users to send encrypted instant messages, have private conversations, and create and participate in private or public chat rooms and discussions."
website "http://netwinsite.com/dbabble/index.html"
matches [
{:text=>'<LINK REL = "stylesheet" TYPE = "text/css" HREF = "/cgi/dbabble.cgi?cmd_get_js2=dbabble.css">'},
{:text=>'<LINK REL = "stylesheet" TYPE = "text/css" HREF = "/dbabble?cmd_get_js2=dbabble.css">'},
{:text=>'<a target=\'helpwin\' href="/help/English/Standard/contents.htm">DBabble Online Help</a><br>'},
{:text=>'<form style="margin:0" name="loginform" method="POST" target="_top" action="/cgi/dbabble.cgi"'},
{:text=>'<form style="margin:0" name="loginform" method="POST" target="_top" action="/dbabble"'},
{:text=>'<script language="JavaScript" src="/cgi/dbabble.cgi?cmd_get_js2=dbabble.js"></script>'},
{:text=>'<script language="JavaScript" src="/dbabble?cmd_get_js2=dbabble.js"></script>'},
{:text=>'<title>DBabble login</title>'},
{:text=>'You can use DBabble securely but slower through your web browser at <a href="http'},
{:text=>'document.writeln("<b>Warning - DBabble requires a web browser that Supports JavaScript 1.1 or higher.</b><br>");'},
{:text=>'if (window.top!=window && window.location!="/cgi/dbabble.cgi") {'},
{:text=>'if (window.top!=window && window.location!="/dbabble") {'},
{:version=>/^DBabble ([^Server]+)Server Version ([^\ ]+) /, :offset=>1},
{:version=>/^DBabble ([^Server]+)Server Version ([^\(]+)\(/},
]
end
