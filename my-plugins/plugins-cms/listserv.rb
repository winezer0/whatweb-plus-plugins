Plugin.define do
name "LISTSERV"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LISTSERV launched the email list management industry in 1986 and remains the industry standard. It provides the power, reliability and enterprise-level performance you need to manage all your opt-in email lists, including email newsletters, announcement lists, discussion groups and email communities."
website "http://www.lsoft.com/products/listserv.asp"
dorks [
'"Server Administration" "List Management" "List Moderation" "Subscriber\'s Corner" "Email Lists"'
]
matches [
{:text=>'<TITLE>LISTSERV - Redirecting ...</TITLE>'},
{:text=>'_white-space:pre;   /* IE only hack to re-specify in addition to word-wrap  */'},
{:text=>'alt="Powered by the LISTSERV Email List Manager" title="Powered by the LISTSERV Email List Manager" border="0"></a>'},
{:text=>'div.catalist h2 { font-family:times;  font-size:18pt; font-weight: bold; margin-bottom: }'},
{:version=>/<a href="\/scripts\/wa.exe\?[^"]+"><img src="\/archives\/images\/b-[a-z]{0,2}version\.jpg" alt="LISTSERV ([\d\.]+)" title="LISTSERV [\d\.]+" border="0"><\/a><\/td>/},
{:version=>/<title>Welcome to LISTSERV ([\d\.]+)<\/title>/},
]
end
