Plugin.define do
name "netgear-dg834gtb"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'NETGEAR DG834GT'},
{:search=>"headers", :text=>'NETGEAR DG834GTB'},
]
end