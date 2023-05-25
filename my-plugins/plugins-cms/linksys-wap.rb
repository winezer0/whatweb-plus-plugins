Plugin.define do
name "linksys-wap"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAP'},
]
end