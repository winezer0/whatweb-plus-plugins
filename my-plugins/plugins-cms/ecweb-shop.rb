Plugin.define do
name "ecweb-shop"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'ecweb_shop'},
{:url=>'/ecweb/js/common.js', :text=>'function returnTop(speed)'},
]
end