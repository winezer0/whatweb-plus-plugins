Plugin.define do
name "NetShelter-VPN"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Fujitsu NetShelter/VPN [Japanese] - an IPSec-compliant VPN device with 56-bit DES encryption. - Manual: http://fenics.fujitsu.com/products/downloads/products/material/lan0104/lc0104_netshelter.pdf"
matches [
{:search=>"headers[server]", :regexp=>/^NetShelter\/VPN$/},
{:text=>"<HEAD><TITLE>Welcome to NetShelter</TITLE></HEAD>"},
{:url=>"/images/sb_logo.gif", :md5=>"ffacfeae7e203bd8de5c9da889d217ec"},
]
end
