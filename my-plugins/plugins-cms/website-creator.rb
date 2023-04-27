Plugin.define do
name "website-creator"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/Website Creator by hosttech/, :search=>'body'},
{:search=>"all", :text=>'Website Creator'},
]
end