Plugin.define do
name "netgear-dgn2000b"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DGN2000'},
{:search=>"headers", :text=>'NETGEAR DGN2000B'},
]
end