Plugin.define do
name "deepminer"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/deepMiner\.js/, :search=>'body'},
{:search=>"all", :text=>'deepMiner'},
]
end