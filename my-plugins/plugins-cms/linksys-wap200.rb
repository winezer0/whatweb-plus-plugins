Plugin.define do
name "linksys-wap200"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Linksys WAP200'},
]
end