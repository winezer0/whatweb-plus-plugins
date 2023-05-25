Plugin.define do
name "linksys-gw"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys GW'},
]
end