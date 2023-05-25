Plugin.define do
name "netgear-dgn3500b"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DGN3500'},
{:search=>"headers", :text=>'NETGEAR DGN3500B'},
]
end