Plugin.define do
name "google-plus"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/apis\.google\.com.js.[a-z]*\.js/, :search=>'body'},
{:search=>"all", :text=>'Google Plus'},
]
end