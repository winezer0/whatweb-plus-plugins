Plugin.define do
name "netgear-dgn2200mb"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DGN2200M'},
{:search=>"headers", :text=>'NETGEAR DGN2200MB'},
]
end