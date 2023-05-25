Plugin.define do
name "netgear-dgn1000b"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DGN1000'},
{:search=>"headers", :text=>'NETGEAR DGN1000B'},
]
end