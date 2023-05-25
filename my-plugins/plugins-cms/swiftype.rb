Plugin.define do
name "swiftype" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Swiftype'},
{:search=>'body', :regexp=>/swiftype\.com.embed\.js$/},
]
end