Plugin.define do
name "plentymarkets" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Plentymarkets'},
{:search=>'body', :regexp=>/plenty\.shop\.(?:min\.)?js/},
{:search=>'body', :regexp=>/plentymarkets/},
]
end