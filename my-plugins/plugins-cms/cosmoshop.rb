Plugin.define do
name "cosmoshop" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'cosmoshop'},
{:search=>'body', :regexp=>/cosmoshop_functions\.js/},
]
end