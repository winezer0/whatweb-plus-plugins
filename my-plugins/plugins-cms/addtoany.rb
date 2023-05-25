Plugin.define do
name "addtoany" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'AddToAny'},
{:search=>'body', :regexp=>/addtoany\.com.menu.page\.js/},
]
end