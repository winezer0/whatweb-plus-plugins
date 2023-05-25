Plugin.define do
name "Sitecom-NAS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sitecom Home Storage Center - Network Attached Storage (NAS)"
website "http://www.sitecom.com/home-storage-center/p/863"
matches [
{:certainty=>75, :search=>"headers[www-authenticate]", :text=>'Basic realm="SITECOM LOGIN Enter Password (default is sitecom)'},
]
end
