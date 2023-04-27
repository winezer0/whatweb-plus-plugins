Plugin.define do
name "protovis" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Protovis'},
{:search=>'body', :regexp=>/protovis.*\.js/},
]
end