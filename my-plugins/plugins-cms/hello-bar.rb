Plugin.define do
name "hello-bar"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/hellobar\.js/, :search=>'body'},
{:search=>"all", :text=>'Hello Bar'},
]
end