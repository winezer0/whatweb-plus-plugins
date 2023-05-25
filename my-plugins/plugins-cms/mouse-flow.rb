Plugin.define do
name "mouse-flow"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn\.mouseflow\.com/, :search=>'body'},
{:search=>"all", :text=>'Mouse Flow'},
]
end