Plugin.define do
name "captch-me"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^https?:..api\.captchme\.net./, :search=>'body'},
{:search=>"all", :text=>'Captch Me'},
]
end