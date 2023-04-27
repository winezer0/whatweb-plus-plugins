Plugin.define do
name "rubicon-project"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/https?:..[^.]*\.rubiconproject\.com/, :search=>'body'},
{:search=>"all", :text=>'Rubicon Project'},
]
end