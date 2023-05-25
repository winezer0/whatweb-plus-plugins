Plugin.define do
name "VMware-Horizon"
authors [
"Max Davitt", 

]
version "0.1"
description "VMware Horizon is a modern platform for secure delivery of virtual desktops and apps across the hybrid cloud, from the market leader in software-defined data center and digital workspaces."
website "https://www.vmware.com/products/horizon.html"
matches [
{:mmh3=>'-1255992602'},
{:mmh3=>'-991123252'},
{:mmh3=>'1895360511'},
{:name=>"info", :url=>"/portal/info.jsp", :version=>/\"clientVersion\":\"([\d\.]+)\"/},
{:name=>"title", :certainty=>75, :text=>"<title>VMware Horizon</title>"},
{:search=>"all", :text=>'VMware Horizon'},
]
end
