Plugin.define do
name "xpressengine"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/XpressEngine/, :search=>'body'},
{:search=>"all", :text=>'XpressEngine'},
]
end