Plugin.define do
name "netgear-nighthawk"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Netgear Nighthawk'},
]
end