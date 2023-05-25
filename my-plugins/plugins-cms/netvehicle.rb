Plugin.define do
name "NetVehicle"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Fujitsu NetVehicle router [Japanese]"
website "http://fenics.fujitsu.com/products/netvehicle/"
matches [
{:model=>/^NetVehicle-([A-Z\d]{1,3})/, :search=>"headers[server]"},
{:regexp=>/^NetVehicle/, :search=>"headers[server]"},
{:text=>"<HEAD><TITLE>Welcome to NetVehicle</TITLE></HEAD>"},
{:url=>"/nv_logo.gif", :md5=>"efff3142fb8f4e34836ca5b38ca40512"},
]
end
