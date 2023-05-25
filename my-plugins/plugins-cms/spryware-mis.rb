Plugin.define do
name "SpryWare-MIS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SpryWare Market Information Server (MIS)"
website "http://www.spryware.com/products_MIS.html"
matches [
{:search=>"headers[server]", :version=>/^SpryWare\/([^\s]+)$/},
{:search=>"headers[x-deprecated-response]", :regexp=>/^Invalid CheckSum Received$/},
]
end
