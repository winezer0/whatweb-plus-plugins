Plugin.define do
name "netgear-wnr3500l" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR WNR3500L'},
{:search=>"headers", :text=>'Netgear-WNR3500l'},
]
end