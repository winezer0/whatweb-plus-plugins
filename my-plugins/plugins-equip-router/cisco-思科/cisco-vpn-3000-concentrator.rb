Plugin.define do
name "cisco-vpn-3000-concentrator"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cisco VPN 3000 Series Concentrators provide your business with unprecedented cost savings through flexible, reliable, and high-performance remote-access solutions. Last Date of Support: 2012-08-31"
website "http://www.cisco.com/en/US/products/hw/vpndevc/ps2284/index.html"
matches [
{:text=>"<title>Cisco Systems, Inc. VPN 3000 Concentrator "},
{:text=>'<p>You are using an old browser or have disabled JavaScript. You <b>must</b> use version 4 or higher of Netscape Navigator/Communicator or version 4 or higher of Microsoft Internet Explorer with JavaScript enabled.</p>'},
{:text=>'Cisco Systems, Inc. VPN 3000 Concentrator'},
]
end
