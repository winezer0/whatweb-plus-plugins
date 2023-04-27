Plugin.define do
name "linksys-e900"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys E900'},
]
end