Plugin.define do
name "niagara-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Niagara Web Server"
matches [
{:mmh3=>'-676077969'},
{:name=>"Niagara-ffs HTTP Header", :regexp=>//, :search=>"headers[niagara-ffs]"},
{:regexp=>/Niagara Web Server/, :search=>"headers[server]"},
{:search=>"all", :text=>'Niagara Web Server'},
{:version=>/Niagara Web Server\/([\d\.]+)/, :search=>"headers[server]"},
{:version=>/^(.*)$/, :search=>"headers[niagara-release]"},
]
end
