Plugin.define do
name "linksys-wrt54gr"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WRT54G'},
{:search=>"headers", :text=>'Linksys WRT54GR'},
]
end