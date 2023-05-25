Plugin.define do
name "october-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/OctoberCMS/, :search=>'body'},
{:search=>"all", :text=>'october cms'},
]
end