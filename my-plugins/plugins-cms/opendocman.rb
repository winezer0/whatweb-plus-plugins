Plugin.define do
name "OpenDocMan"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "OpenDocMan - Open Source Document Management System - Requires PHP"
website "http://www.opendocman.com/"
dorks [
'"OpenDocMan" "Stephen Lawrence" intitle:"Document Repository"'
]
matches [
{:regexp=>/<td valign="top">\s+Welcome to OpenDocMan\.?\s+<p>/},
{:text=>'<td align="left"><img src="images/logo.gif" alt="Site Logo" border=0></td>'},
{:version=>/<a href="http:\/\/www\.opendocman\.com\/" target="_new">OpenDocMan v([^"^\s]+)<\/a>/},
]
end