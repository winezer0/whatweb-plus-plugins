Plugin.define do
name "blockdos-firewall"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'BlockDos.net'},
]
end