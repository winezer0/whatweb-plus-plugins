Plugin.define do
name "linksys-wap11"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAP11'},
]
end