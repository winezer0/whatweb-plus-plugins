Plugin.define do
name "NetGear-Firewall"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The NETGEAR ProSafe wired and wireless VPN solutions offer SMB's a variety of security and remote access options. The ProSafe line of VPN Firewalls deliver all-inclusive business-class security as the first line of defense against network attacks and unauthorized access. The ProSafe SSL VPN Concentrator sits behind the firewall and delivers secure, clientless, Web-based remote access."
website "http://www.netgear.com.au/au/Products/VPN-Firewalls"
matches [
{:search=>"headers[server]", :regexp=>/^NETGEAR Firewall$/},
]
end
