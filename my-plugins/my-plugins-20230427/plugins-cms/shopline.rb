Plugin.define do
name "shopline" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Shopline'},
{:search=>'body', :regexp=>/https\:\.\.img\.shoplineapp\.com/},
]
end