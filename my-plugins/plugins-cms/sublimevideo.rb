Plugin.define do
name "sublimevideo" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'SublimeVideo'},
{:search=>'body', :regexp=>/cdn\.sublimevideo\.net.js.[a-z\d]+\.js/},
]
end