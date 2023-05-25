Plugin.define do
name "intensedebate" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'IntenseDebate'},
{:search=>'body', :regexp=>/intensedebate\.com/},
]
end