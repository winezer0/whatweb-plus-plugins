Plugin.define do
name "mondo-media"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/Mondo Shop/, :search=>'body'},
{:search=>"all", :text=>'Mondo Media'},
]
end