Plugin.define do
name "optimizely" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Optimizely'},
{:search=>'body', :regexp=>/optimizely\.com.*\.js/},
]
end