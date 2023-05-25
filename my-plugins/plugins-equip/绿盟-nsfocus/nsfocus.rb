Plugin.define do
name "NSFocus"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "NSFOCUS Web Application Firewall"
website "http://www.nsfocus.com/"
matches [
{:md5=>"4a6a68c719d64f1dd153a94122287f54"},
{:regexp=>/^NSFocus/, :search=>"headers[server]"},
{:version=>/^NSFocus\/([^\s]+) \( NSFOCUS \)/, :search=>"headers[server]"},
]
end
