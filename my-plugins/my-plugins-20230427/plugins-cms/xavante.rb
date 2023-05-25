Plugin.define do
name "Xavante"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Xavante is a Lua HTTP 1.1 Web server that uses a modular architecture based on URI mapped handlers."
website "http://keplerproject.github.com/xavante/"
matches [
{:search=>"headers[server]", :version=>/^Xavante (.+)$/},
]
end
