Plugin.define do
name "ensighten" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Ensighten'},
{:search=>'body', :regexp=>/..nexus\.ensighten\.com./},
]
end