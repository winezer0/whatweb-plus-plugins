Plugin.define do
name "Hitbox-Gateway"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.3"
description "Adobe Omniture Hitbox Gateway collects HTTP headers for web site usage statistics"
website "http://login.hitbox.com/"
matches [
{:regexp=>/^Hitbox Gateway/, :search=>"headers[server]"},
{:url=>"/favicon.ico", :md5=>"0c7fdff990b60f5c7ec6ecf995c6f59f"},
{:version=>/^Hitbox Gateway ([^\s]{1,10})$/, :search=>"headers[server]"},
]
end
