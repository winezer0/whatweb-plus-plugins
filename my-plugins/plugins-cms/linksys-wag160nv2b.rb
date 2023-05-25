Plugin.define do
name "linksys-wag160nv2b"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAG160Nv2'},
{:search=>"headers", :text=>'Linksys WAG160Nv2B'},
]
end