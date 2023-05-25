Plugin.define do
name "linksys-wag54gsb"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAG54GS'},
{:search=>"headers", :text=>'Linksys WAG54GSB'},
]
end