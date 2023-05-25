Plugin.define do
name "future-shop"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/future-shop.*\.js/, :search=>'body'},
{:search=>"all", :text=>'Future Shop'},
]
end