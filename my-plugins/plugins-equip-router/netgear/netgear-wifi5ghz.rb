Plugin.define do
name "netgear-wifi5ghz"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'NetGear [WIFI5GHz]'},
]
end