Plugin.define do
name "netgear-r7000"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR R7000'},
]
end