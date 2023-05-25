Plugin.define do
name "citrix-web-pn-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Citrix Web PN Server - http://www.citrix.com"
matches [
{:search=>"all", :text=>'Citrix Web PN Server'},
{:search=>"headers[server]", :regexp=>/^Citrix Web PN Server$/},
]
end
