Plugin.define do
name "strapdown.js"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Strapdown.js'},
{:search=>'body', :regexp=>/strapdown\.js/},
]
end