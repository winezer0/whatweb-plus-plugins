Plugin.define do
name "sucuri-firewall"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Sucuri/Cloudproxy'},
]
end