Plugin.define do
name "appdynamics" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'AppDynamics'},
{:search=>'body', :regexp=>/adrum/},
]
end