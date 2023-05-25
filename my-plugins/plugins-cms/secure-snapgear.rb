Plugin.define do
name "secure-snapgear"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Secure SnapGear all-in-one Internet security appliances. Secure SnapGear can be deployed as just a firewall, as a VPN gateway, a UTM security appliance, or as a complete office network-in-a-box Internet appliance for small businesses, with all of the wide area networking tools needed to serve large enterprise remote offices."
website "http://www.snapgear.com/index.cfm?skey=1485"
dorks [
'intitle:"Management Console" "Secure Computing SnapGear unit"'
]
matches [
{:model=>/<td class="menu"><div class="logo"><a href="\/cgi-bin\/cgix\/default"><img class="logo" alt="([^"]+)" src="\/img\/logo\.gif"><\/a>/},
{:string=>/<html><head><title>([^\s]+) - SnapGear Management Console\n<\/title>/},
{:string=>/<html><head><title>([^\s]+)\nManagement Console<\/title>/},
{:url=>"/img/logo.ico", :md5=>"a27c392bc74b2d5c0e10fa7c1132c74d"},
]
end
