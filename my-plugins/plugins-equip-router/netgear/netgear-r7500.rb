Plugin.define do
name "netgear-r7500"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR R7500'},
]
end