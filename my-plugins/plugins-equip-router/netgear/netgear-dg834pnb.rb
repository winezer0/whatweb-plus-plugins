Plugin.define do
name "netgear-dg834pnb"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DG834PN'},
{:search=>"headers", :text=>'NETGEAR DG834PNB'},
]
end