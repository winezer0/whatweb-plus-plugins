Plugin.define do
name "google" 
authors [
"winezero",

]
version "0.1"
matches [
{:mmh3=>'708578229'},
{:search=>'body', :regexp=>/googleoptimize\.com.optimize\.js/},
]
end