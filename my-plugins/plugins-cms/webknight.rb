Plugin.define do
name "WebKnight"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "AQTRONIX WebKnight is an application firewall for IIS and other web servers and is released under the GNU General Public License. More particularly it is an ISAPI filter that secures your web server by blocking certain requests. If an alert is triggered WebKnight will take over and protect the web server. It does this by scanning all requests and processing them based on filter rules, set by the administrator."
website "http://www.aqtronix.com/?PageID=99"
matches [
{:regexp=>/^WebKnight/, :search=>"headers[server]"},
{:search=>"headers", :text=>'WebKnight'},
{:version=>/^WebKnight\/(.+)$/, :search=>"headers[server]"},
]
end
