Plugin.define do
name "NetApp-NAS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetApp network-attached storage solutions and a unified storage architecture can help solve your file-storage challenges and lower your costs."
website "http://www.netapp.com/us/products/protocols/nas/nas.html"
matches [
{:search=>"headers[server]", :version=>/^NetApp\/(.+)$/},
]
end
