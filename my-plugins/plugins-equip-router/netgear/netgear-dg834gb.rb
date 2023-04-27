Plugin.define do
name "netgear-dg834gb"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DG834GB'},
{:search=>"headers", :text=>'Netgear DG834G'},
]
end