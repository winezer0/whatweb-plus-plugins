Plugin.define do
name "ez-platform"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/eZ Platform/, :search=>'body'},
{:search=>"all", :text=>'eZ Platform'},
]
end