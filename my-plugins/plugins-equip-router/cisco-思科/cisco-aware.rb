Plugin.define do
name "cisco-aware"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Cisco AWARE'},
]
end