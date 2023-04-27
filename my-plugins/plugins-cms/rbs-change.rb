Plugin.define do
name "rbs-change"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<html[^>]+xmlns:change=/},
{:regexp=>/RBS Change/, :search=>'body'},
{:search=>"all", :text=>'RBS Change'},
]
end