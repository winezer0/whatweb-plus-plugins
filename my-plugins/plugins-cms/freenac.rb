Plugin.define do
name "FreeNAC"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FreeNAC is an OpenSource solution for LAN access control and dynamic Vlan management"
website "http://freenac.net/"
matches [
{:text=>'<a href="unknowns.php" title="List unknown end devices and print/edit/delete them">Find unknowns</a><br/>'},
]
end
