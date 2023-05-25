Plugin.define do
name "websplanet" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/WebsPlanet/, :search=>'body'},
{:search=>"all", :text=>'WebsPlanet'},
]
end