Plugin.define do
name "iceflow-vpn"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'ICEFLOW VPN'},
{:search=>"headers", :text=>'Server: ICEFLOW'},
]
end