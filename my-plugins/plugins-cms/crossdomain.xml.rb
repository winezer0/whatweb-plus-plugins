Plugin.define do
name "crossdomain.xml"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extracts allowed domain from crossdomain.xml"
matches [
{:string=>/<allow-access-from domain="([^"]+)"/, :path=>"crossdomain.xml", :module=>"Allow"},
{:text=>'<cross-domain-policy>', :path=>"crossdomain.xml"},
{:text=>'<site-control permitted-cross-domain-policies="none"/>', :string=>"none", :module=>"Permit", :path=>"crossdomain.xml"},
]
end
