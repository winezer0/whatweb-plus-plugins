Plugin.define do
name "storyblok" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Storyblok'},
{:search=>'body', :regexp=>/storyblok/},
]
end