Plugin.define do
name "netgear-dd-wrt"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'NetGear DD-wrt'},
]
end