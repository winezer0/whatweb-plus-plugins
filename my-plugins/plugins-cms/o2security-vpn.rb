Plugin.define do
name "o2security-vpn"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'client_param=install_active'},
{:serach=>'headers', :text=>'client_param=install_active'},
]
end