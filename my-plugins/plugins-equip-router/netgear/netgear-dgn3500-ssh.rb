Plugin.define do
name "netgear-dgn3500-ssh"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DGN3500_SSH'},
]
end