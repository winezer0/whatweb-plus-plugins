Plugin.define do
name "tac-xenta-controller"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "SCADA - The TAC Xenta devices are multifunctional control systems with an embedded web server that allows you to access your control application and configuration pages via a web browser anywhere in the world, anytime."
website "http://www.tac.com/ap/Navigate?node=1656"
matches [
{:firmware=>/^TAC\/Xenta[^\ ]+ ([\d\.]{4})/, :search=>"headers[server]"},
{:model=>/^TAC\/Xenta([\d]{3}|[\d]{3}-[A-Z]{3}) [\d\.]{4}/, :search=>"headers[server]"},
{:regexp=>/^TAC\/Xenta/, :search=>"headers[server]"},
{:text=>'<html><body><script>var url="https://"+location.hostname+"/www/index/Slogin.html";location.href=url;</script></body></html>'},
]
end