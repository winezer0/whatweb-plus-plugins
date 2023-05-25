Plugin.define do
name "ibm-coremetrics"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'IBM Coremetrics'},
{:search=>'body', :regexp=>/cmdatatagutils\.js/},
]
end