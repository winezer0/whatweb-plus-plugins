Plugin.define do
name "citrix-netscaler"
authors [
"Aung Khant <http://yehg.net/>", 

"Andrew Horton", 

"Bhavin Senjaliya", 

]
version "0.3"
description "Citrix NetScaler  - http://www.citrix.com/netscaler"
matches [
{:regexp=>/NS\-CACHE/, :search=>"headers[via]"},
{:search=>"all", :text=>'Citrix NetScaler'},
{:search=>"all", :text=>'NS-CACHE'},
{:search=>"all", :text=>'ns_af'},
{:search=>"headers[set-cookie]", :regexp=>/^NSC_/, :name=>"NSC_ cookie"},
{:version=>/NS\-CACHE\-(\d{1,4}\.\d{1,4}):/, :search=>"headers[via]"},
]
end
