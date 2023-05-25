Plugin.define do
name "chance-i-divis-dvr"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "CHANCE-i DiViS digital video recorder device"
website "http://www.chance-i.com/dvr_system"
matches [
{:search=>"headers", :text=>'Techno Vision Security System Ver'},
{:search=>"headers[server]", :version=>/^Techno Vision Security System Ver. ([\d\.]+)$/},
]
end